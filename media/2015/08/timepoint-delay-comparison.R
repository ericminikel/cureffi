options(stringsAsFactors=FALSE)

percent = function(proportion,digits=2) {
  return ( gsub(' ','',paste(formatC(proportion*100, digits=digits, format='fg'),"%",sep="") ) )
}

data = read.table('http://www.cureffi.org/media/2015/08/timepoint-delay-data.tsv',sep='\t',header=TRUE)

data$timepoint = data$treatment_start_dpi / data$control_endpoint_dpi
data$delay = data$treatment_endpoint_dpi / data$control_endpoint_dpi - 1

data$pch = 0
data$pch[data$mouse=='wt'] = 15
data$pch[data$mouse=='tg'] = 17

k_ind24 = '#FF2015'
k_cpdb = '#FF9912'
k_anle138b = '#3445CD'

data$color = ''
data$color[data$compound=='IND24'] = k_ind24
data$color[data$compound=='cpd-b'] = k_cpdb
data$color[data$compound=='anle138b'] = k_anle138b

png('~/d/j/cureffi/media/2015/08/time-of-intervention.png',width=800, height=450, pointsize=15)
par(mar=c(4,5,4,4))
plot(NA, NA, xlab='', ylab='', xlim=c(-.15,1), ylim=c(0,3.5), yaxs='i', axes=FALSE)
abline(h=0, lwd=2, col='#000000')
abline(h=1:3, lwd=.5, col='#888888')
abline(v=0, lwd=1, col='#000000')
axis(side=1, at=(-1:10)/10, labels=percent((-1:10)/10), lwd=0, lwd.ticks=1, cex.axis=1)
axis(side=2, at=(0:6)/2, labels=paste((0:6)/2+1,'x',sep=''), lwd=0, lwd.ticks=.5, cex.axis=.9, las=2)
points(data$timepoint, data$delay, pch=data$pch, col=data$color, cex=2)
mtext(side=1, text='Timepoint when continuous treatment initiated', font=2, line=2.5, cex=.9)
mtext(side=2, text='Survival time relative to controls', font=2, line=3.5, cex=.9)
legend('topright', c('IND24', 'cpd-b', 'anle138b', 'in wt mice', 'in tg mice'), col=c(k_ind24, k_cpdb, k_anle138b, '#000000', '#000000'), pch=c(20,20,20,15,17), bg='#FFFFFF')
title('Time of intervention versus survival outcome for antiprion compounds', cex=.9)
dev.off()

