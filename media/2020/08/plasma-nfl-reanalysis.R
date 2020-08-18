options(stringsAsFactors = F)
if (interactive()) {
  setwd('~/j/cureffi/media/2020/08/')
}
library(reshape2)
library(beeswarm)

# constants
slowcol = '#1B9E77'
fastcol = '#7570B3'
linecol = '#FF0143'

# functions
percent = function(proportion,digits=2) {
  return ( gsub(' ','',paste(formatC(proportion*100, digits=digits, format='fg'),"%",sep="") ) )
}

# raw data in the weird format enguage digitizer extracts it in
raw = read.table('thompson-2020-fig4b-raw.csv',sep=',',header=T)

# melt to long format
nfldata =  melt(data=raw, id.vars='x', na.rm=T)
colnames(nfldata) = c('years','indiv','nfl')
nfldata$type = substr(nfldata$indiv,1,4)
write.table(nfldata, 'thompson-2020-fig4b.tsv', sep='\t', row.names=F, col.names=T, quote=F)

# other data from table 1
# healthy control distribution properties
hc_percentiles = data.frame(quantile=c(0.0, 0.25, 0.5,0.75,0.90,1.0),
                            disp=c('min','25th','50th','75th','90th','max'),
                            nfl=c(2.42, 4.6, 5.81, 7.92, 11.3, 23.7))
# remained-asymptomatic distribution properties
as_percentiles = data.frame(quantile=c(0.0, 0.25, 0.5,0.75,1.0),
                            disp=c('min','25th','50th','75th','max'),
                            nfl=c(2.64, 3.5, 5.24, 8.38, 28.35))


# log-linear model of year-on-year increase prior to onset
m = lm(log(nfl) ~ years + indiv, data = subset(nfldata, years < 0))
model_results = as.data.frame(summary(m)$coefficients)
colnames(model_results)[c(1,4)] = c('beta','p')
model_results$expbeta = exp(model_results[,'beta'])
model_results = signif(model_results,3)
model_results[1:2,c('beta','expbeta','p')]

# plot version of 4b with slow and rapid separated
png('~/j/cureffi/media/2020/08/nfl-slow-v-fast.png',width=800,height=400,res=100)
par(mfrow=c(1,2), mar=c(4,4,1,4))
xlims=c(-8,.1)
ylims=c(0,30)
plot(NA, NA, xlim=xlims, ylim=ylims, axes=F, ann=F, xaxs='i', yaxs='i')
axis(side=1, at=seq(-8,0,2), labels=seq(8,0,-2))
mtext(side=1, line=2.5, text='years until onset')
axis(side=2, at=0:4*10, las=2)
mtext(side=2, line=2.5, text='plasma NfL (pg/mL)')
mtext(side=3, line=0, text='slow mutations', font=2, col=slowcol)
for (indiv in unique(nfldata$indiv[nfldata$type=='slow'])) {
  subs = nfldata[nfldata$indiv == indiv & nfldata$years < 0,]
  points(x=subs$years, y=subs$nfl, pch=20, col=slowcol)
  points(x=subs$years, y=subs$nfl, type='l', lwd=2, col=slowcol)
}
abline(h=hc_percentiles$nfl,col=linecol,lwd=0.25)
mtext(side=4, at=hc_percentiles$nfl, col=linecol,las=2, line=0.25, text=hc_percentiles$disp, cex=0.9)
par(xpd=T)
text(x=2.0,y=mean(ylims),label='percentile of healthy controls',col=linecol,srt=270)
par(xpd=F)

xlims=c(-8,.1)
ylims=c(0,30)
plot(NA, NA, xlim=xlims, ylim=ylims, axes=F, ann=F, xaxs='i', yaxs='i')
axis(side=1, at=seq(-8,0,2), labels=seq(8,0,-2))
mtext(side=1, line=2.5, text='years until onset')
axis(side=2, at=0:4*10, las=2)
mtext(side=2, line=2.5, text='plasma NfL (pg/mL)')
mtext(side=3, line=0, text='rapid mutations', font=2, col=fastcol)
for (indiv in unique(nfldata$indiv[nfldata$type=='fast'])) {
  subs = nfldata[nfldata$indiv == indiv & nfldata$years < 0,]
  points(x=subs$years, y=subs$nfl, pch=20, col=fastcol)
  points(x=subs$years, y=subs$nfl, type='l', lwd=2, col=fastcol)
}
abline(h=hc_percentiles$nfl,col=linecol,lwd=0.25)
mtext(side=4, at=hc_percentiles$nfl, col=linecol,las=2, line=0.25, text=hc_percentiles$disp, cex=0.9)
par(xpd=T)
text(x=2.0,y=mean(ylims),label='percentile of healthy controls',col=linecol,srt=270)
par(xpd=F)
dev.off()

# how many converters had a reading >90%tile of healthy controls at any point?
sum(nfldata$nfl[nfldata$years < 0] > hc_percentiles$nfl[hc_percentiles$quantile==.9]) # 14
# how many were within 2 years of onset
sum(nfldata$nfl[nfldata$years < 0 & nfldata$years > -2] > hc_percentiles$nfl[hc_percentiles$quantile==.9]) # 9

# 2nd-highest HC point appears to be about 16.9 pg/mL
hc_2nd_highest = 16.9
known_hc_points = c(hc_percentiles$nfl, hc_2nd_highest)
known_as_points = as_percentiles$nfl

# code used for trial and error to find distributions that match published properties of the actual distributions
# # simulate hc distribution
# known_hc_points = c(hc_percentiles$nfl)
# for (i in 1:10000) {
#   set.seed(i)
#   m = 5.85
#   s = 1.7
#   hc = sort(c(10^(rnorm(mean = log10(m), sd=log10(s), n=45-length(known_hc_points))), known_hc_points))
#   hc = pmax(hc, 2.42) # llq?
#   qtiles = quantile(x=hc, probs = hc_percentiles$quantile)
#   
#   if (sum(abs(as.numeric(qtiles) - hc_percentiles$nfl)) < .01) {
#     cat(i)
#     flush.console()
#     break
#   }
# }

# by some trial and error found this distribution comes very close - all percentiles match within < 0.1
seedno = 3204
m = 5.85
s = 1.7
set.seed(seedno)
hc = sort(c(10^(rnorm(mean = log10(m), sd=log10(s), n=45-length(known_hc_points))), known_hc_points))
hc = pmax(hc, 2.42) # llq?
hc_qtiles = quantile(x=hc, probs = hc_percentiles$quantile)

# and by more trial and error found this distribution comes very close - all percentiles match within < 0.1
seedno=2042
set.seed(seedno)
m = 5.7
s = 1.7
as = sort(c(10^(rnorm(mean = log10(m), sd=log10(s), n=70-length(known_as_points))), known_as_points))
as = pmax(as, 2.64) # this appears to be llq or close to it
# if you don't put a lower limit, then increasing the variance skews too low before the 75th percentile hits 8+ pg/mL
as_qtiles = quantile(x=as, probs = as_percentiles$quantile)

all_asymp = nfldata[nfldata$years < 0,c('nfl','years')]
all_asymp$onset2y = all_asymp$years > -2
all_asymp = all_asymp[,-2] # remove years col
all_asymp = rbind(all_asymp, data.frame(nfl=as, onset2y=rep(F,length(as))))
all_asymp$x = 2

all_points = rbind(all_asymp, data.frame(nfl=hc, onset2y=rep(F,length(hc)), x=rep(1, length(hc))))

onset2y_color = '#CD00CD'
noonset_color = '#383838'
all_points$color[all_points$onset2y] = onset2y_color
all_points$color[!all_points$onset2y] = noonset_color

png('cross-sectional-simulation.png',width=800,height=500,res=100)
par(mar=c(4,4,2,8))
beeswarm(nfl ~ x, data=all_points, pch=19, pwcol=all_points$color,
         axes=F, xaxs='i', yaxs='i', xlab='', ylab='', ylim=c(0,30))
axis(side=1, labels=NA, lwd.ticks=0)
axis(side=2, at=0:6*5, las=2)
mtext(side=1, at=c(1,2), text=c('healthy\ncontrols','asymptomatic-at-the-time\ncarriers'), line=1)
mtext(side=2, line=2.5, text='plasma NfL (pg/mL)')
mtext(side=3, line=0.5, text='cross-sectional analysis', col='#777777', font=1)
mtext(side=3, line=-0.5, text='SIMULATION ONLY', col='#777777', font=2)

abline(h=hc_percentiles$nfl[hc_percentiles$quantile==.9], col='red')
mtext(side=4, line=0.25, at=hc_percentiles$nfl[hc_percentiles$quantile==.9], las=2, col='red', text='90th\npercentile\ncontrol\ncutoff')

par(xpd=T)
legend(x=2.25, y=29, c('<2 years from onset','>2 years from onset'), col=c(onset2y_color, noonset_color), pch=19)
par(xpd=F)
dev.off()


# what proportion of symptomatic IPD in the study were rapid v slow?
symptomatic_genotypes = data.frame(mutation=c('E200K','4-OPRI','E196K','V210I','D178N','P102L','A117V','P105L','5-OPRI','6-OPRI','Q212P','Y163X'),
                                   pace=c(rep('rapid',5),rep('slow',7)),
                                   n=c(10,3,1,1,6,26,5,1,7,19,1,3))
sum(symptomatic_genotypes$n[symptomatic_genotypes$pace=='rapid'])
sum(symptomatic_genotypes$n[symptomatic_genotypes$pace=='slow'])



# make table of duration and prevalence
# high-penetrance mutation prevalence from Minikel 2019
prevalence = read.table('https://raw.githubusercontent.com/ericminikel/prnp_onset/master/data/mutation_prevalence.tsv',sep='\t',header=T)
# UK surveillance center data from Minikel 2016
cases_raw = t(read.table('https://raw.githubusercontent.com/ericminikel/prnp_penetrance/master/supplement/table_s01_surveillance_allele_counts.tsv',header=F,sep='\t'))
uk_cases = as.data.frame(cases_raw[9:68,c(1,9)])
colnames(uk_cases) = c('variant','count')
uk_cases$count = as.integer(uk_cases$count)
uk_cases$count[is.na(uk_cases$count)] = 0

prevalence$uk_cases = uk_cases$count[match(prevalence$variant, uk_cases$variant)]
prevalence$uk_prev = prevalence$uk_cases / sum(prevalence$uk_cases)

mutation_tbl = prevalence[1:7,c('rank','variant','proportion','uk_prev')]
mutation_tbl$median_duration_months = as.integer(NA)
mutation_tbl$surv24mo = as.numeric(NA)
for (i in 1:nrow(mutation_tbl)) {
  duration = read.table(paste0('https://raw.githubusercontent.com/ericminikel/prnp_onset/master/data/duration_',mutation_tbl$variant[i],'.tsv'),sep='\t',header=T)
  # see https://github.com/ericminikel/prnp_onset/blob/master/src/shared_code.R#L73-L83 for how to calculate median, adapted here:
  duration$lt1 = duration$alive - duration$censored/2
  duration$qt = duration$dead/duration$lt1
  duration$pt = 0.0 # Pt = cumulative survival
  duration$pt[1] = 1.0
  for (j in 2:nrow(duration)) {
    duration$pt[j] = (1 - duration$qt[j]) * duration$pt[j-1]
  }
  mutation_tbl$median_duration_months[i] = min(duration$months[duration$pt <= 0.5], na.rm=T)
  mutation_tbl$surv24mo[i] = duration$pt[duration$months==24]
}
mutation_tbl$world_pct = percent(mutation_tbl$proportion,digits=0)
mutation_tbl$uk_pct = percent(round(mutation_tbl$uk_prev,2),digits=0)
mutation_tbl$median_duration = paste0(mutation_tbl$median_duration_months, ' months')
mutation_tbl$median_duration[mutation_tbl$median_duration_months > 12] = paste0(round(mutation_tbl$median_duration_months[mutation_tbl$median_duration_months > 12]/12,1), ' years')

# proportion surviving after 24 mo, for body of post:
sum(mutation_tbl$proportion * mutation_tbl$surv24mo)
sum(mutation_tbl$uk_prev * mutation_tbl$surv24mo)

# table for post
mutation_tbl[,c('variant','median_duration','world_pct','uk_pct')]

