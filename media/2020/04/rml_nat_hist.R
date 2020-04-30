
setwd('~/d/sci/src/prp_lowering')

calculate_ci = function(df) {
  mean_col = colnames(df)[grepl('^mean_',colnames(df))]
  sd_col = colnames(df)[grepl('^sd_',colnames(df))]
  n_col = colnames(df)[grepl('^n_',colnames(df))]
  df$l95 = df[,mean_col] - 1.96*df[,sd_col]/sqrt(df[,n_col])
  df$u95 = df[,mean_col] + 1.96*df[,sd_col]/sqrt(df[,n_col])
  return (df)
}


# Deb's natural history study
expt = 'N'

master = read.table(paste('data/mri/',expt,'_survival.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')
cohorts = read.table(paste('data/mri/',expt,'_cohorts.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')
rr = read.table(paste('data/mri/',expt,'_rotarod.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')
nfl = read.table(paste('data/mri/',expt,'_nfl.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')
nests = read.table(paste('data/mri/',expt,'_nests.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')
weights = read.table(paste('data/mri/',expt,'_weights.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')
behavs = read.table(paste('data/mri/',expt,'_behavs.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')
behavs_meta = read.table(paste('data/mri/',expt,'_behavs_meta.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')


rr$cohort = master$cohort[match(rr$animal,master$animal)]

rr_baseline = sqldf("
                    select   cohort, animal, avg(latency) mean_baseline_latency
                    from     rr
                    where    dpi = -7
                    group by 1, 2
                    order by 1, 2
                    ")

rr_smry1 = sqldf("
                 select   r.cohort, r.animal, r.dpi, avg(r.latency)/b.mean_baseline_latency change_latency
                 from     rr r, rr_baseline b
                 where    r.cohort = b.cohort and r.animal = b.animal
                 group by 1, 2, 3
                 order by 1, 2, 3
                 ;")

rr_smry2 = sqldf("
                 select   cohort, dpi, avg(change_latency) mean_change_lat, stdev(change_latency) sd_change_lat, count(*) n_change_lat
                 from     rr_smry1
                 group by 1, 2
                 having   count(*) > 1
                 order by 1, 2
                 ;")
rr_smry2 = calculate_ci(rr_smry2)
rr_smry2$color = cohorts$color[match(rr_smry2$cohort, cohorts$cohort)]
rr_smry2$lty = cohorts$lty[match(rr_smry2$cohort, cohorts$cohort)]


# add P vals
rr_smry2$ks_p = as.numeric(NA)
for (i in 1:nrow(rr_smry2[rr_smry2$cohort=='RML',])) {
  dpi = rr_smry2$dpi[i]
  rml_rows  = rr_smry1$dpi == dpi & rr_smry1$cohort == 'RML'
  unin_rows = rr_smry1$dpi == dpi & rr_smry1$cohort == 'uninoculated'
  ks_obj = suppressWarnings(ks.test(rr_smry1$change_latency[rml_rows], rr_smry1$change_latency[unin_rows], alternative='two.sided'))
  rr_smry2$ks_p[i] = ks_obj$p.value
}
rr_smry2$p_symb = ''
rr_smry2$p_symb[!is.na(rr_smry2$ks_p) & rr_smry2$ks_p < 0.05] = '*'
rr_smry2$p_symb[!is.na(rr_smry2$ks_p) & rr_smry2$ks_p < 0.01] = '**'
rr_smry2$p_symb[!is.na(rr_smry2$ks_p) & rr_smry2$ks_p < 0.001] = '***'

rr_rel = sqldf("
select   rml.dpi, rml.mean_change_lat - un.mean_change_lat lat_subtracted, rml.ks_p
from     rr_smry2 rml, rr_smry2 un
where    rml.cohort = 'RML'
and      un.cohort = 'uninoculated'
and      rml.dpi = un.dpi
;")
rr_rel$lat_rel = rr_rel$lat_subtracted / max(abs(rr_rel$lat_subtracted))
rr_rel$lat_rel[rr_rel$ks_p > 0.05] = 0


nfl$color = cohorts$color[match(nfl$cohort, cohorts$cohort)]
nfl_smry = sqldf("
                 select   cohort, timepoint, avg(nfl_pgml) mean_nfl, stdev(nfl_pgml) sd_nfl, count(*) n_nfl
                 from     nfl
                 group by 1, 2
                 order by 1, 2
                 ;")
nfl_smry = calculate_ci(nfl_smry)
nfl_smry$color = cohorts$color[match(nfl_smry$cohort, cohorts$cohort)]
nfl_smry$lty =     cohorts$lty[match(nfl_smry$cohort, cohorts$cohort)]

# add P vals
nfl_smry$ks_p = as.numeric(NA)
for (i in 1:nrow(nfl_smry[nfl_smry$cohort=='RML',])) {
  dpi = nfl_smry$timepoint[i]
  rml_rows = nfl$timepoint == dpi & nfl$cohort == 'RML'
  unin_rows = nfl$timepoint == dpi & nfl$cohort == 'uninoculated'
  ks_obj = suppressWarnings(ks.test(nfl$nfl_pgml[rml_rows], nfl$nfl_pgml[unin_rows], alternative='two.sided'))
  nfl_smry$ks_p[i] = ks_obj$p.value
}
nfl_smry$p_symb = ''
nfl_smry$p_symb[!is.na(nfl_smry$ks_p) & nfl_smry$ks_p < 0.05] = '*'
nfl_smry$p_symb[!is.na(nfl_smry$ks_p) & nfl_smry$ks_p < 0.01] = '**'
nfl_smry$p_symb[!is.na(nfl_smry$ks_p) & nfl_smry$ks_p < 0.001] = '***'

nfl_rel = sqldf("
select   rml.timepoint dpi, rml.mean_nfl - un.mean_nfl nfl_subtracted, rml.ks_p
from     nfl_smry rml, nfl_smry un
where    rml.cohort = 'RML'
and      un.cohort = 'uninoculated'
and      rml.timepoint = un.timepoint
;")
nfl_rel$nfl_rel = nfl_rel$nfl_subtracted / max(abs(nfl_rel$nfl_subtracted))
nfl_rel$nfl_rel[nfl_rel$ks_p > 0.05] = 0


weights$cohort = master$cohort[match(weights$animal, master$animal)]
weighall_timepoints = data.frame(dpi=unique(weights$dpi[weights$cohort=='uninoculated']))
weights$plot_dpi = weights$dpi
needmatch = !(weights$plot_dpi %in% weighall_timepoints$dpi)
weights$plot_dpi[needmatch] = weighall_timepoints$dpi[findInterval(x=weights$dpi[needmatch], vec=weighall_timepoints$dpi, left.open=T, rightmost.closed=T)+1]
# check that rounding up worked as expected:
# weights[weights$dpi != weights$plot_dpi,] # yes - looks good
weights_baseline = sqldf("
                         select   cohort, animal, wt baseline_wt
                         from     weights
                         where    dpi = 78
                         order by 1, 2
                         ;")
weight_change = sqldf("
                      select   w.cohort, w.animal, w.plot_dpi, w.wt/b.baseline_wt weight_change
                      from     weights w, weights_baseline b
                      where    w.animal = b.animal
                      ;")
weights_smry = sqldf("
                     select   w.cohort, w.plot_dpi, avg(w.wt/b.baseline_wt) mean_weight_change, stdev(w.wt/b.baseline_wt) sd_weight_change, count(*) n_wt_change
                     from     weights w, weights_baseline b
                     where    w.animal = b.animal
                     group by 1, 2
                     having   count(*) > 1 -- only include dpi with >1 mouse measured
                     order by 1, 2
                     ;")
weights_smry = calculate_ci(weights_smry)
weights_smry$color = cohorts$color[match(weights_smry$cohort, cohorts$cohort)]
weights_smry$lty =     cohorts$lty[match(weights_smry$cohort, cohorts$cohort)]

# add P vals
weights_smry$ks_p = as.numeric(NA)
for (i in 1:nrow(weights_smry[weights_smry$cohort=='RML',])) {
  dpi = weights_smry$plot_dpi[i]
  rml_rows  = weight_change$plot_dpi == dpi & weight_change$cohort == 'RML'
  unin_rows = weight_change$plot_dpi == dpi & weight_change$cohort == 'uninoculated'
  ks_obj = suppressWarnings(ks.test(weight_change$weight_change[rml_rows], weight_change$weight_change[unin_rows], alternative='two.sided'))
  weights_smry$ks_p[i] = ks_obj$p.value
}
weights_smry$p_symb = ''
weights_smry$p_symb[!is.na(weights_smry$ks_p) & weights_smry$ks_p < 0.05] = '*'
weights_smry$p_symb[!is.na(weights_smry$ks_p) & weights_smry$ks_p < 0.01] = '**'
weights_smry$p_symb[!is.na(weights_smry$ks_p) & weights_smry$ks_p < 0.001] = '***'


wts_rel = sqldf("
                select   rml.plot_dpi dpi, rml.mean_weight_change - un.mean_weight_change wt_subtracted, rml.ks_p
                from     weights_smry rml, weights_smry un
                where    rml.cohort = 'RML'
                and      un.cohort = 'uninoculated'
                and      rml.plot_dpi = un.plot_dpi
                and      rml.n_wt_change > 2
                ;")
wts_rel$wts_rel = wts_rel$wt_subtracted / max(abs(wts_rel$wt_subtracted))
wts_rel$pmax = rev(cummax(rev(wts_rel$ks_p)))
wts_rel$wts_rel[wts_rel$pmax > 0.05] = 0


# summarize behaviorals
smry_by_animal = sqldf("
                       select   b.dpi,
                       b.animal,
                       m.cohort,
                       sum(case when score > 0 then 1 else 0 end) n_signs
                       from     behavs b, master m
                       where    b.animal = m.animal
                       group by 1, 2, 3
                       order by 2, 1
                       ;")

smry_by_cohort = sqldf("
                       select   m.cohort, s.dpi, avg(s.n_signs) mean_signs, stdev(s.n_signs) sd_signs, count(*) n_animals
                       from     smry_by_animal s, master m
                       where    s.animal = m.animal
                       group by 1, 2
                       having   count(*) > 1
                       order by 1, 2
                       ;")
smry_by_cohort = calculate_ci(smry_by_cohort)
behavs_smry = smry_by_cohort
behavs_smry$color = cohorts$color[match(behavs_smry$cohort, cohorts$cohort)]
behavs_smry$lty = cohorts$lty[match(behavs_smry$cohort, cohorts$cohort)]
behavs_smry$ks_p = as.numeric(NA)
for (i in 1:nrow(behavs_smry[behavs_smry$cohort=='RML',])) {
  dpi = behavs_smry$dpi[i]
  rml_rows  = smry_by_animal$dpi == dpi & smry_by_animal$cohort == 'RML'
  unin_rows = smry_by_animal$dpi == dpi & smry_by_animal$cohort == 'uninoculated'
  ks_obj = suppressWarnings(ks.test(smry_by_animal$n_signs[rml_rows], smry_by_animal$n_signs[unin_rows], alternative='two.sided'))
  behavs_smry$ks_p[i] = ks_obj$p.value
}
behavs_smry$p_symb = ''
behavs_smry$p_symb[!is.na(behavs_smry$ks_p) & behavs_smry$ks_p < 0.05] = '*'
behavs_smry$p_symb[!is.na(behavs_smry$ks_p) & behavs_smry$ks_p < 0.01] = '**'
behavs_smry$p_symb[!is.na(behavs_smry$ks_p) & behavs_smry$ks_p < 0.001] = '***'




behavs_rel = sqldf("
                select   rml.dpi, rml.mean_signs - un.mean_signs signs_subtracted, rml.ks_p
                from     behavs_smry rml, behavs_smry un
                where    rml.cohort = 'RML'
                and      un.cohort = 'uninoculated'
                and      rml.dpi = un.dpi
                and      rml.n_animals > 2
                ;")
behavs_rel$signs_rel = behavs_rel$signs_subtracted / max(abs(behavs_rel$signs_subtracted))
behavs_rel$signs_rel[behavs_rel$ks_p > 0.05] = 0




expt = 'B'
aso_dpi = 84
master = read.table(paste('data/mri/',expt,'_survival.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')
bli = read.table(paste('data/mri/',expt,'_bli.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')
cohorts = read.table(paste('data/mri/',expt,'_cohorts.tsv',sep=''),sep='\t',header=T,quote='',comment.char='')

bli$cohort = master$treatment[match(bli$animal, master$animal)]
bli$cohort[bli$cohort!='uninfected' & bli$img_dpi < aso_dpi] = 'pre-treatment'

bsmry = sqldf("
              select   img_dpi, cohort, avg(flux) mean_bli, stdev(flux) sd_bli, sum(case when flux is not null then 1 else 0 end) n_bli
              from     bli b
              group by 1, 2
              order by 1, 2
              ;")
bsmry = calculate_ci(bsmry)


bli_rel = sqldf("
                select   rml.img_dpi dpi, rml.mean_bli - un.mean_bli bli_subtracted, case when un.u95 > rml.l95 then 1 else 0 end nonsignif
                from     bsmry rml, bsmry un
                where    rml.cohort in ('pre-treatment','saline')
                and      un.cohort = 'uninfected'
                and      rml.img_dpi = un.img_dpi
                and      rml.n_bli > 3
                ;")
bli_rel$bli_rel = bli_rel$bli_subtracted / max(abs(bli_rel$bli_subtracted))
bli_rel$bli_rel[bli_rel$nonsignif == 1] = 0



rr_col = '#5993E5'
nfl_col = '#BC80BD'
wt_col = '#8DD3C7'
bli_col = '#F0A804'
behav_col = '#FB8072'



png('~/j/cureffi/media/2020/04/rml-nat-hist-mri.png',width=800,height=400,res=125)
par(mar=c(4,4,1,1))
plot(NA, NA, xlim=c(0,181), ylim=c(-1.05,1.05), xaxs='i', yaxs='i', ann=F, axes=F)
axis(side=1, at=0:6*30, lwd=0, lwd.ticks=1, tck=-0.05)
axis(side=1, at=0:18*10, lwd=0, lwd.ticks=1, labels=NA, tck=-0.025)
abline(h=0)
abline(v=0:6*30, lwd=0.125, col='#A9A9A9')
axis(side=2, at=c(-1,0,1), labels=c('-1','0','+1'), tck=-0.05, las=2)
mtext(side=2, line=2, text='proportion max change')
mtext(side=1, line=2, text='days post-infection')

points(rr_rel$dpi, rr_rel$lat_rel, type='l', lwd=2, lty=3, col=rr_col)
points(nfl_rel$dpi, nfl_rel$nfl_rel, type='l', lwd=2,lty=3, col=nfl_col)
points(c(0,wts_rel$dpi), c(0,wts_rel$wts_rel), type='l', lwd=2, lty=3, col=wt_col)
points(c(0,behavs_rel$dpi), c(0,behavs_rel$signs_rel), type='l', lwd=2, lty=3,col=behav_col)
points(bli_rel$dpi, bli_rel$bli_rel, type='l', lwd=2, lty=3, col=bli_col)

points(rr_rel$dpi[rr_rel$ks_p < 0.05], rr_rel$lat_rel[rr_rel$ks_p < 0.05], type='l', lwd=3, col=rr_col)
points(nfl_rel$dpi[nfl_rel$ks_p < 0.05], nfl_rel$nfl_rel[nfl_rel$ks_p < 0.05], type='l', lwd=3, col=nfl_col)
points(wts_rel$dpi[wts_rel$pmax < 0.05], wts_rel$wts_rel[wts_rel$pmax < 0.05], type='l', lwd=3, col=wt_col)
points(behavs_rel$dpi[behavs_rel$ks_p < 0.05], behavs_rel$signs_rel[behavs_rel$ks_p < 0.05], type='l', lwd=3, col=behav_col)
points(bli_rel$dpi[bli_rel$nonsignif == 0], bli_rel$bli_rel[bli_rel$nonsignif == 0], type='l', lwd=3, col=bli_col)

text(x=120, y=-.75, pos=2, labels='rotarod latency', col=rr_col, font=2, cex=0.8)
text(x=148, y=-.41, pos=4, labels='body weight', col=wt_col, font=2, cex=0.8)
text(x=60, y=.1, pos=2, labels='plasma NfL', col=nfl_col, font=2, cex=0.8)
text(x=81, y=.25, pos=2, labels='astrocytosis', col=bli_col, font=2, cex=0.8)
text(x=116, y=.21, pos=4, labels='observable symptoms', col=behav_col, font=2, cex=0.8)
dev.off()





# Sorce & Nuvolone 2020 Fig 1a
deg = data.frame(wpi=c(4,8,12,14,16,18,20),
                 updeg=c(3,101,143,11,33,338,467),
                 downdeg=c(0,712,80,77,320,24,146))
deg$dpi = deg$wpi*7
deg$alldeg = deg$updeg+deg$downdeg
deg$reldeg = deg$alldeg/max(deg$alldeg)


png('~/j/cureffi/media/2020/04/rml-nat-hist-sorce.png',width=800,height=400,res=125)
par(mar=c(4,4,1,1))
plot(NA, NA, xlim=c(0,181), ylim=c(-850,850), xaxs='i', yaxs='i', ann=F, axes=F)
axis(side=1, at=0:6*30, lwd=0, lwd.ticks=1, tck=-0.05)
axis(side=1, at=0:18*10, lwd=0, lwd.ticks=1, labels=NA, tck=-0.025)
abline(h=0)
abline(v=0:6*30, lwd=0.125, col='#A9A9A9')
axis(side=2, at=-10:10*100, labels=NA)
axis(side=2, at=-1:1*500, labels=c(500,0,500), las=2, lwd=0, lwd.ticks=0)
mtext(side=2, at=525, line=3, text='upregulated genes', col='red', cex=0.85)
mtext(side=2, at=-525, line=3, text='downregulated genes', col='blue', cex=0.85)
mtext(side=1, line=2, text='days post-infection')
points(deg$dpi, deg$updeg, type='h', lwd=10, lend=1, col='red')
points(deg$dpi, -deg$downdeg, type='h', lwd=10, lend=1, col='blue')
text(deg$dpi, deg$updeg, labels=deg$updeg, pos=3, col='red')
text(deg$dpi, -deg$downdeg, labels=deg$downdeg, pos=1, col='blue')
dev.off()