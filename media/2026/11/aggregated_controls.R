# STARTUP ####

overall_start_time = Sys.time()
tell_user = function(...) { cat(file=stderr(), paste0(...)); flush.console() }

# DEPENDENCIES ####

tell_user('Loading required packages...')

options(stringsAsFactors=F)
if (interactive()) {
  setwd('~/j/cureffi/media/2026/11')
}
suppressPackageStartupMessages({
  library(tidyverse)
  library(survival)
  library(coxme)
  library(plotrix)
  library(janitor)
  select = dplyr::select
  summarize = dplyr::summarize
})

# FUNCTIONS ####

tell_user('done.\nDefining functions...')

repeach = function(vec, each) { # because R's default rep() only takes 1 value for "each"
  repped = c()
  for (i in 1:length(vec)) {
    repped = c(repped, rep(vec[i],each=each[i]))
  }
  repped
}

percent = function(x, digits=0, signed=F) gsub(' ','',paste0(ifelse(x <= 0, '', ifelse(signed, '+', '')),formatC(100*x,format='f',digits=digits),'%'))

## survival wraparounds, copied from c16_manuscript.R ####

make_sf = function(survdata) {
  sf = survfit(Surv(dpi, acm) ~ cohort, data=survdata)
  if (is.null(sf$strata)) { # survfit only populates $strata when there are 2+ groups; here we have one pooled group
    sf$cohort = unique(survdata$cohort)
  } else {
    sf$cohort = gsub('cohort=','',names(sf$strata))
  }
  sf$color = survdata$color[match(sf$cohort, survdata$cohort)]
  sf$disp = survdata$disp[match(sf$cohort, survdata$cohort)]
  sf$lty = survdata$lty[match(sf$cohort, survdata$cohort)]
  return(sf)
}

sf_table = function(sf) {
  # per-cohort N, events, and median survival table, from a survfit object
  tab = summary(sf)$table
  if (is.null(dim(tab))) tab = matrix(tab, nrow=1, dimnames=list(paste0('cohort=',sf$cohort), names(tab)))
  as_tibble(tab, rownames='stratum') %>%
    clean_names() %>%
    mutate(cohort = gsub('cohort=','',stratum)) %>%
    select(-stratum) %>%
    left_join(tibble(cohort=sf$cohort, disp=sf$disp) %>% distinct(), by='cohort') %>%
    select(cohort, disp, records, n_start, events, median, x0_95lcl, x0_95ucl)
}

plot_sf = function(sf,
                   anno_dpi=NULL,
                   xlims=c(0,500),
                   xats = seq(0,500,50),
                   xbigs = seq(0,500,100),
                   ylims = c(0,1.05),
                   yats = seq(0,1,.25),
                   show_legend=T,
                   ci_alpha=0.2,
                   show_ci=T,
                   vlines=c(136,192),
                   draw_xaxis=T) { # FALSE lets the caller draw its own (e.g. broken) x axis

  if(!('lty' %in% names(sf))) sf$lty=1

  plot(sf, col=sf$color, lty=sf$lty, lwd=2, conf.int=F, xlim=xlims, ylim=ylims, axes=F, ann=F, xaxs='i', yaxs='i')
  # confidence intervals as semi-transparent step polygons, one per stratum
  n_per_stratum = if (is.null(sf$strata)) length(sf$time) else sf$strata
  stratum_idx = split(seq_along(sf$time), rep(seq_along(n_per_stratum), n_per_stratum))
  for (i in if (show_ci) seq_along(stratum_idx) else c()) {
    ix = stratum_idx[[i]]
    ix = ix[!is.na(sf$lower[ix]) & !is.na(sf$upper[ix])]
    if (length(ix) == 0) next
    tt = c(0, sf$time[ix]); lo = c(1, sf$lower[ix]); hi = c(1, sf$upper[ix])
    n = length(tt)
    step_x = rep(tt, each=2)[-1]
    step_y = function(y) rep(y, each=2)[-(2*n)]
    polygon(x=c(step_x, rev(step_x)), y=c(step_y(hi), rev(step_y(lo))),
            col=scales::alpha(sf$color[i], ci_alpha), border=NA)
  }
  censored = sf$n.censor > 0 & sf$time < 500
  # repeach() needs $strata to know how many time points belong to each color; with one pooled group there's no $strata, so every time point gets the single color
  censor_colors = if (is.null(sf$strata)) rep(sf$color, length(sf$time)) else repeach(sf$color, each=sf$strata)
  points(sf$time[censored], sf$surv[censored], pch=1, lwd=1, col=censor_colors[censored])
  if (draw_xaxis) {
    axis(side=1, at=xbigs, labels=NA, tck=-0.05)
    axis(side=1, at=xbigs, lwd=0, labels=xbigs, line=-0.5)
    axis(side=1, at=xats, labels=NA, tck=-0.025)
    mtext(side=1, line=1.6, text='days post-inoculation', cex=0.8)
  }
  axis(side=2, at=yats, labels=NA, tck=-0.05)
  axis(side=2, at=yats, labels=percent(yats), lwd=0, line=-0.5, las=2)
  mtext(side=2, line=2.75, text='survival', cex=0.8)
  abline(v=vlines, lty=2)
  if (is.null(sf$strata) && length(vlines) == 2) { # annotate % dead before / after the dashed lines (single pooled curve only)
    surv_before = function(t) { i = which(sf$time < t); ifelse(length(i) == 0, 1, sf$surv[max(i)]) } # S just before t
    surv_at = function(t) { i = which(sf$time <= t); ifelse(length(i) == 0, 1, sf$surv[max(i)]) }
    pct_early = 1 - surv_before(vlines[1]) # died strictly before vlines[1]
    pct_late = surv_at(vlines[2])          # died strictly after vlines[2]
    par(xpd=T) # labels sit on the top edge of the plot region, so don't clip them
    text(x=vlines[1], y=max(ylims), pos=2, cex=0.8, labels=paste0('<', vlines[1], ' dpi: ', percent(pct_early, digits=1)))
    text(x=vlines[2], y=max(ylims), pos=4, cex=0.8, labels=paste0('>', vlines[2], ' dpi: ', percent(pct_late, digits=1)))
    par(xpd=F)
  }
  par(xpd=T)
  if (!is.null(anno_dpi)) {
    points(x=c(anno_dpi), y=rep(max(ylims),length(anno_dpi)), pch=25, bg='#000000')
  }
  if(show_legend) {
    leg = tibble(disp=sf$disp, color=sf$color, lty=sf$lty) %>%
      distinct(disp, color, lty)
    legend(x=max(xlims), y=1, bty='n', cex=.8, lwd=2, legend=leg$disp,
           col=leg$color, lty=leg$lty,
           text.col=leg$color)
  }
  par(xpd=F)
}

# DATA ####

tell_user('done.\nReading in data...')

# produced by prep_data.R
# one pooled curve across every cohort, so cohort/disp/color/lty are constants rather than per-experiment
read_tsv('survdata.tsv', col_types=cols(expt=col_character(), cage=col_character())) %>%
  mutate(cohort='pooled', disp='RML controls (all cohorts)', color='#8E2323', lty=1) -> survdata

# DISPLAY ITEMS ####

tell_user('done.\nCreating pooled control survival curve...')

sf = make_sf(survdata)

resx=300
png('figure-pooled-controls.png',width=6.5*resx,height=4.5*resx,res=resx)
par(mar=c(3,4,1,1))
plot_sf(sf, show_legend=F)
silence_is_golden = dev.off()

tell_user('done.\nSummary:\n')
print(sf_table(sf))


## median and IQR of dpi by experiment ####

# for frailty fit of experiments, exclude experiments 2019 onward (all same criteria)
survdata %>%
  mutate(inoc_year = as.numeric(format(as.Date(inoculation_date), '%Y'))) %>%
  distinct(expt, inoc_year) -> years
survdata %>%
  filter(expt %in% years$expt[years$inoc_year > 2018]) -> survdata_later
frailty_fit_expt = coxph(Surv(dpi, acm) ~ frailty(expt), data=survdata_later)
summary(frailty_fit_expt)

survdata %>%
  mutate(inoc_year = as.numeric(format(as.Date(inoculation_date), '%Y'))) %>%
  group_by(expt) %>%
  summarize(inoc_year = min(inoc_year), n = n(), median_dpi = median(dpi), q25 = quantile(dpi, 0.25), q75 = quantile(dpi, 0.75)) %>%
  mutate(era = ifelse(inoc_year > 2018, '2019 onward', '2018'),
         color = ifelse(inoc_year > 2018, '#0072B2', '#E69F00')) %>%
  arrange(median_dpi, q25, expt) -> dpi_by_expt # earliest median first, so it plots at the top
print(dpi_by_expt, n=Inf)

png('figure-dpi-by-expt-forest.png',width=6.5*resx,height=7*resx,res=resx)
par(mar=c(4,6,3,1))
y_pos = rev(seq_len(nrow(dpi_by_expt))) # first row (earliest median) at the top
plot(NA, xlim=c(min(dpi_by_expt$q25)-5, max(dpi_by_expt$q75)+5), ylim=c(0.5, nrow(dpi_by_expt)+0.5), axes=F, ann=F, xaxs='i', yaxs='i')
segments(x0=dpi_by_expt$q25, x1=dpi_by_expt$q75, y0=y_pos, lwd=2, col=dpi_by_expt$color)
points(x=dpi_by_expt$median_dpi, y=y_pos, pch=19, col=dpi_by_expt$color)
axis(side=1, tck=-0.025, labels=NA)
axis(side=1, lwd=0, line=-0.5)
mtext(side=1, line=2.2, text='days post-inoculation (median and IQR)', cex=0.8)
axis(side=2, at=y_pos, labels=NA, tck=-0.015)
axis(side=2, at=y_pos, labels=paste0(dpi_by_expt$expt,' (n=',dpi_by_expt$n,')'), lwd=0, line=-0.5, las=2, cex.axis=0.7)
mtext(side=3, line=1, text='dpi at death by experiment - pooled RML-infected control animals', cex=0.8)
legend('topright', bty='n', cex=0.8, pch=19, lwd=2, legend=c('2018','2019 onward'), col=c('#E69F00','#0072B2'))
silence_is_golden = dev.off()

# FRAILTY MODEL ####

tell_user('Fitting frailty model...')

survdata$cage_id = paste(survdata$expt, survdata$cage, sep='_') # cage letters are only unique within an experiment

frailty_fit = coxph(Surv(dpi, acm) ~ factor(expt) + frailty(cage_id), data=survdata)

tell_user('done.\n')
print(frailty_fit)

# BOOTSTRAP ####

tell_user('Bootstrapping simulated experiments...')

n = 11 # animals per simulated group
n_cages = 3 # unique cages per group in the cagemate-constrained version
n_iter = 1000

logrank_and_medians = function(drawn) {
  sd_fit = survdiff(Surv(dpi, acm) ~ group, data=drawn)
  medians = summary(survfit(Surv(dpi, acm) ~ group, data=drawn))$table[,'median'] # rows ordered treated, untreated
  list(p = pchisq(sd_fit$chisq, df=length(sd_fit$n)-1, lower.tail=F),
       median_treated = unname(medians[1]),
       median_untreated = unname(medians[2]))
}

# draw n animals from exactly n_cages cages (none of which are in exclude_cages)
draw_cagemates = function(data, n, n_cages, exclude_cages=c()) {
  eligible_cages = setdiff(unique(data$cage_id), exclude_cages)
  repeat {
    cages = sample(eligible_cages, n_cages, replace=T)
    in_cages = data[data$cage_id %in% cages, ]
    if (nrow(in_cages) < n) next # these cages don't hold enough animals between them
    drawn = in_cages[sample(nrow(in_cages), n, replace=T), ]
    if (n_distinct(drawn$cage_id) == n_cages) return (drawn) # make sure every chosen cage is represented
  }
}

# one iteration of the bootstrap: returns the drawn animals and test results for both versions
bootstrap_iteration = function(pool) {
  # version 1: draw 2n animals (with replacement) from the pool, then split into simulated treated / untreated groups
  drawn = pool[sample(nrow(pool), 2*n, replace=T), ]
  drawn$group = rep(c('treated','untreated'), each=n)
  indiv = logrank_and_medians(drawn)

  # version 2: each group is n animals from n_cages cagemate cages; the two groups share no cages
  treated_drawn = draw_cagemates(pool, n, n_cages)
  untreated_drawn = draw_cagemates(pool, n, n_cages, exclude_cages=treated_drawn$cage_id)
  cage_drawn = bind_rows(mutate(treated_drawn, group='treated'), mutate(untreated_drawn, group='untreated'))
  cage = logrank_and_medians(cage_drawn)
  list(indiv=indiv, cage=cage, cage_drawn=cage_drawn)
}

run_bootstrap = function(pool) {
  set.seed(1)
  bootstrap_rows = vector('list', n_iter)
  for (i in 1:n_iter) {
    it = bootstrap_iteration(pool)
    bootstrap_rows[[i]] = tibble(iter=i,
                                 p=it$indiv$p, median_treated=it$indiv$median_treated, median_untreated=it$indiv$median_untreated,
                                 p_cage=it$cage$p, median_treated_bycage=it$cage$median_treated, median_untreated_bycage=it$cage$median_untreated)
  }
  bind_rows(bootstrap_rows)
}

# replay the bootstrap RNG stream (same seed, same draws) up to iteration `iter` and return that iteration's cagemate-sampled animals
replay_cage_iteration = function(pool, iter) {
  set.seed(1)
  for (i in 1:iter) it = bootstrap_iteration(pool)
  it$cage_drawn
}

report_type_i = function(results, label) {
  tell_user('Type I error rate (p < 0.05) over ',n_iter,' iterations with n=',n,' per group, ',label,':\n',
            '  individual animals: ',percent(mean(results$p < 0.05), digits=1),'\n',
            '  cagemates (',n_cages,' cages per group): ',percent(mean(results$p_cage < 0.05), digits=1),'\n')
}

# sampling from all pooled controls
indiv_animal_bootstrap_results = run_bootstrap(survdata)
type_i_error = mean(indiv_animal_bootstrap_results$p < 0.05)
type_i_error_cage = mean(indiv_animal_bootstrap_results$p_cage < 0.05)
tell_user('done.\n')
report_type_i(indiv_animal_bootstrap_results, 'pooled controls')

# sampling from experiment T only
indiv_animal_bootstrap_results_T = run_bootstrap(survdata %>% filter(expt == 'T'))
type_i_error_T = mean(indiv_animal_bootstrap_results_T$p < 0.05)
type_i_error_cage_T = mean(indiv_animal_bootstrap_results_T$p_cage < 0.05)
report_type_i(indiv_animal_bootstrap_results_T, 'experiment T only')

## example iteration: experiment T, cagemate sampling, 0.01 < p < 0.05, treated median > untreated median ####

example_iter = indiv_animal_bootstrap_results_T %>%
  filter(p_cage > 0.01 & p_cage < 0.05 & median_treated_bycage > median_untreated_bycage + 8) %>%
  slice(1)
example_drawn = replay_cage_iteration(survdata %>% filter(expt == 'T'), example_iter$iter)
stopifnot(isTRUE(all.equal(logrank_and_medians(example_drawn)$p, example_iter$p_cage))) # replay reproduced the stored result
write_tsv(example_drawn, 'example_cage_iteration_T.tsv', na='')
tell_user('Example iteration ',example_iter$iter,': treated median = ',example_iter$median_treated_bycage,' dpi, untreated median = ',
          example_iter$median_untreated_bycage,' dpi, p = ',signif(example_iter$p_cage,3),'\n')

example_drawn %>%
  mutate(cohort=group, disp=group, color=ifelse(group=='treated','#8E2323','#2F5C8F'), lty=1) -> example_survdata
example_sf = make_sf(example_survdata)
# broken x axis: the plot shows 0 dpi, a break, then 135 dpi onward; plotted x = dpi - 130 (so 135 dpi sits at x = 5, leaving a gap at 0-5 for the break)
x_shift = 130
example_sf$time = example_sf$time - x_shift
png('figure-example-cage-iteration-T.png',width=6.5*resx,height=4.5*resx,res=resx)
par(mar=c(3,4,3,6))
plot_sf(example_sf, xlims=c(0,45), vlines=c(), show_legend=T, show_ci=F, draw_xaxis=F)
dpi_big = seq(140,170,10); dpi_small = seq(135,175,5)
axis(side=1, at=0, labels=NA, tck=-0.05)
axis(side=1, at=0, lwd=0, labels=0, line=-0.5)
axis(side=1, at=dpi_big-x_shift, labels=NA, tck=-0.05)
axis(side=1, at=dpi_big-x_shift, lwd=0, labels=dpi_big, line=-0.5)
axis(side=1, at=dpi_small-x_shift, labels=NA, tck=-0.025)
axis.break(axis=1, breakpos=2.5, style='slash')
mtext(side=1, line=1.6, text='days post-inoculation', cex=0.8)
mtext(side=3, line=1, text='example simulated experiment', cex=0.8)
text(x=45, y=0.8, pos=2, cex=0.8, labels=paste0('median treated: ',example_iter$median_treated_bycage,' dpi\n',
                                                'median untreated: ',example_iter$median_untreated_bycage,' dpi\n',
                                                'log-rank P = ',signif(example_iter$p_cage,2)))
silence_is_golden = dev.off()


# SEQUENTIAL ADDING OF TREATED ANIMALS ####

tell_user('Simulating sequential addition of treated animals...')

m = 8 # treated animals added at each look
max_adds = 3 # up to 3 additions, i.e. up to 24 extra treated animals

run_sequential = function(pool) {
  set.seed(1)
  seq_rows = vector('list', n_iter)
  for (i in 1:n_iter) {
    # draw every animal this iteration could use up front (with replacement): n untreated, n treated, then max_adds batches of m
    drawn = pool[sample(nrow(pool), 2*n + max_adds*m, replace=T), ]
    untreated = drawn[1:n, ] %>% mutate(group='untreated')
    treated = drawn[(n+1):(2*n), ] %>% mutate(group='treated')
    extra = drawn[-(1:(2*n)), ]
    for (add in 0:max_adds) {
      if (add > 0) treated = bind_rows(treated, mutate(extra[((add-1)*m+1):(add*m), ], group='treated'))
      res = logrank_and_medians(bind_rows(treated, untreated))
      if (res$p < 0.05) break # stop as soon as the test is significant
    }
    seq_rows[[i]] = tibble(iter=i, p=res$p, n_untreated=nrow(untreated), n_treated=nrow(treated),
                           median_treated=res$median_treated, median_untreated=res$median_untreated)
  }
  bind_rows(seq_rows)
}

sequential_bootstrap_results = run_sequential(survdata)
sequential_bootstrap_results_T = run_sequential(survdata %>% filter(expt == 'T'))

tell_user('done.\n')
for (scenario in c('pooled controls','experiment T only')) {
  res = if (scenario == 'pooled controls') sequential_bootstrap_results else sequential_bootstrap_results_T
  tell_user('Sequential design, ',scenario,': type I error (final p < 0.05) = ',percent(mean(res$p < 0.05), digits=1),
            '; mean treated n = ',round(mean(res$n_treated),1),' (untreated n = ',n,')\n')
}

## sequential addition, experiment T only, sampled by cage ####

tell_user('Simulating sequential addition of treated animals, experiment T only, sampled by cage...')

add_cages = 2 # cages per added batch of m treated animals (T cages hold ~4 animals, so m=8 needs 2)
# the two groups never share cages, but each added batch samples cages with replacement (any cage not used by the untreated group, including cages
# already used by earlier treated batches), so we can't run out of cages; animals are drawn with replacement

run_sequential_cage = function(pool) {
  set.seed(1)
  seq_rows = vector('list', n_iter)
  for (i in 1:n_iter) {
    treated = draw_cagemates(pool, n, n_cages) %>% mutate(group='treated')
    untreated = draw_cagemates(pool, n, n_cages, exclude_cages=treated$cage_id) %>% mutate(group='untreated')
    for (add in 0:max_adds) {
      if (add > 0) {
        batch = draw_cagemates(pool, m, add_cages, exclude_cages=untreated$cage_id)
        treated = bind_rows(treated, mutate(batch, group='treated'))
      }
      res = logrank_and_medians(bind_rows(treated, untreated))
      if (res$p < 0.05) break # stop as soon as the test is significant
    }
    seq_rows[[i]] = tibble(iter=i, p=res$p, n_untreated=nrow(untreated), n_treated=nrow(treated), n_cages_treated=n_distinct(treated$cage_id),
                           median_treated=res$median_treated, median_untreated=res$median_untreated)
  }
  bind_rows(seq_rows)
}

sequential_cage_results_T = run_sequential_cage(survdata %>% filter(expt == 'T'))
tell_user('done.\n')
tell_user('Sequential design by cage, experiment T only: type I error (final p < 0.05) = ',percent(mean(sequential_cage_results_T$p < 0.05), digits=1),
          '; mean treated n = ',round(mean(sequential_cage_results_T$n_treated),1),' in ',round(mean(sequential_cage_results_T$n_cages_treated),1),
          ' cages (untreated n = ',n,' in ',n_cages,' cages)\n')

# among significant (p < 0.05) results, how big is the median survival difference? absolute % difference relative to untreated median
# (absolute because treated/untreated labels are arbitrary here, so the signed mean would be ~0)
sig_effect = function(p, median_treated, median_untreated, scenario) {
  sig = p < 0.05
  pct_diff = 100 * abs(median_treated - median_untreated) / median_untreated
  tibble(scenario=scenario, n_sig=sum(sig), mean_pct_diff=mean(pct_diff[sig], na.rm=T))
}
bind_rows(
  with(indiv_animal_bootstrap_results, sig_effect(p, median_treated, median_untreated, 'pooled, individual animals')),
  with(indiv_animal_bootstrap_results, sig_effect(p_cage, median_treated_bycage, median_untreated_bycage, 'pooled, cagemates')),
  with(indiv_animal_bootstrap_results_T, sig_effect(p, median_treated, median_untreated, 'T only, individual animals')),
  with(indiv_animal_bootstrap_results_T, sig_effect(p_cage, median_treated_bycage, median_untreated_bycage, 'T only, cagemates')),
  with(sequential_cage_results_T, sig_effect(p, median_treated, median_untreated, 'T only, cagemates, sequential'))
) -> sig_effect_summary
tell_user('Mean absolute % difference in median survival among results with p < 0.05:\n')
print(sig_effect_summary)

elapsed_time = Sys.time() - overall_start_time
tell_user('\nAll tasks complete in ',round(as.numeric(elapsed_time),1),' ',units(elapsed_time),'.\n')



