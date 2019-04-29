options(stringsAsFactors=F)
library(sqldf)

npv = read.table('~/j/cureffi/media/2019/04/npv-timeseries.tsv',sep='\t',header=T)
colnames(npv) = gsub('[^a-z0-9_]','_',tolower(colnames(npv)))

npv$overall_multiplier = npv$discount_factor*npv$probability_of_reaching

signsym = function(x) {
  signs = character(length(x))
  signs[x < 0] = '-'
  signs[x == 0] = ''
  signs[x > 0] = '+'
  return (signs)
}

percent = function(proportion,digits=2) {
  return ( gsub(' ','',paste(formatC(proportion*100, digits=digits, format='fg'),"%",sep="") ) )
}


alpha = function(rgb_hexcolor, proportion) {
  hex_proportion = sprintf("%02x",round(proportion*255))
  rgba = paste(rgb_hexcolor,hex_proportion,sep='')
  return (rgba)
}

# phases
phases = sqldf("
select   phase,
         min(year)-1 xmin,
         max(year) xmax,
         avg(year)-0.5 xmid
from     npv
group by 1
order by 2
;")
phases$phase[phases$phase=='Registration'] = 'NDA' # abbreviate so x axis labels fit

xlims = c(0,max(npv$year))
xats = 0:max(npv$year)
xoff = 0.1 # offset for rectangles
ylims = c(-6e7,6e7)
yats = (-6:6) * 1e7
ybigs = c(-5,0,5) * 1e7
ybigs_labs = c('$50M', '$0', '$50M') # paste('$',abs(ybigs)/(1e6),'M',sep='')

png('~/j/cureffi/media/2019/04/npv-nominal.png',width=1600,height=800,res=200)
par(mar=c(5,6,2,2))
plot(NA, NA, xlim=xlims, ylim=ylims, xaxs='i', yaxs='i', ann=F, axes=F)
axis(side=1, line=0, at=xats, labels=NA, lwd=1, lwd.ticks=1, tck=-0.02)
axis(side=1, line=-0.5, at=xats-0.5, labels=xats, lwd=0, lwd.ticks=0, cex.axis=0.6)
axis(side=1, line=2.5, at=unique(c(phases$xmin, phases$xmax)), labels=NA, tck=-0.02)
axis(side=1, line=2.25, at=phases$xmid, labels=phases$phase, lwd=0, lwd.ticks=0, cex.axis=0.7, font=2)
par(xpd=T)
axis(side=1, line=-0.5, at=-1, labels='year', lwd=0, lwd.ticks=0, cex.axis=0.6)
axis(side=1, line=2.25, at=-1, labels='phase', lwd=0, lwd.ticks=0, cex.axis=0.7)
par(xpd=F)
axis(side=2, at=yats, labels=NA, lwd=1, lwd.ticks=1, cex=0.8, tck=-0.02)
axis(side=2, at=ybigs, labels=ybigs_labs, lwd=0, lwd.ticks=1, cex=0.8, tck=-0.04, las=2)
mtext(side=2, at=ylims/2, line=3.5, font=2, col=c('red','black'), text=c('nominal\ncosts','nominal\nrevenues'))
rect(xleft=npv$year-1+xoff, xright=npv$year-xoff, ybottom=-npv$cost, ytop=rep(0,nrow(npv)), col='red', border=NA)
rect(xleft=npv$year-1+xoff, xright=npv$year-xoff, ybottom=npv$revenue, ytop=rep(0,nrow(npv)), col='black', border=NA)
abline(h=0)
dev.off()



disc_col = '#E6AB02'
prob_col = '#7570B3'
prod_col = '#E7298A'
leg = data.frame(leg=c('discount factor','probability of reaching phase','overall multiplier'),
                 col=c(disc_col, prob_col, prod_col))
png('~/j/cureffi/media/2019/04/npv-discount-probability.png',width=1600,height=800,res=200)
par(mar=c(5,6,2,2))
plot(NA, NA, xlim=xlims, ylim=c(0,1.05), xaxs='i', yaxs='i', ann=F, axes=F)
axis(side=1, line=0, at=xats, labels=NA, lwd=1, lwd.ticks=1, tck=-0.02)
axis(side=1, line=-0.5, at=xats-0.5, labels=xats, lwd=0, lwd.ticks=0, cex.axis=0.6)
axis(side=1, line=2.5, at=unique(c(phases$xmin, phases$xmax)), labels=NA, tck=-0.02)
axis(side=1, line=2.25, at=phases$xmid, labels=phases$phase, lwd=0, lwd.ticks=0, cex.axis=0.7, font=2)
par(xpd=T)
axis(side=1, line=-0.5, at=-1, labels='year', lwd=0, lwd.ticks=0, cex.axis=0.6)
axis(side=1, line=2.25, at=-1, labels='phase', lwd=0, lwd.ticks=0, cex.axis=0.7)
par(xpd=F)
axis(side=2, at=(0:4)/4, labels=percent((0:4)/4), las=2)
points(npv$year, npv$discount_factor, type='l', lwd=3, col=disc_col)
points(npv$year, npv$probability_of_reaching, type='l', lwd=3, col=prob_col)
points(npv$year, npv$overall_multiplier, type='l', lwd=3, col=prod_col)
par(xpd=T)
legend(x=15,y=1,legend=leg$leg,col=leg$col,lwd=3,bty='n')
par(xpd=F)
dev.off()

zoom_ylims = c(-2e6,2e6)
zoom_yats = (-2:2)*1e6
zoom_yats_labs =paste(signsym(zoom_yats),'$',abs(zoom_yats)/(1e6),'M',sep='')

png('~/j/cureffi/media/2019/04/npv-adjusted.png',width=1600,height=800,res=200)
par(mar=c(5,6,2,2))
plot(NA, NA, xlim=xlims, ylim=zoom_ylims, xaxs='i', yaxs='i', ann=F, axes=F)
axis(side=1, line=0, at=xats, labels=NA, lwd=1, lwd.ticks=1, tck=-0.02)
axis(side=1, line=-0.5, at=xats-0.5, labels=xats, lwd=0, lwd.ticks=0, cex.axis=0.6)
axis(side=1, line=2.5, at=unique(c(phases$xmin, phases$xmax)), labels=NA, tck=-0.02)
axis(side=1, line=2.25, at=phases$xmid, labels=phases$phase, lwd=0, lwd.ticks=0, cex.axis=0.7, font=2)
par(xpd=T)
axis(side=1, line=-0.5, at=-1, labels='year', lwd=0, lwd.ticks=0, cex.axis=0.6)
axis(side=1, line=2.25, at=-1, labels='phase', lwd=0, lwd.ticks=0, cex.axis=0.7)
par(xpd=F)
axis(side=2, at=zoom_yats, labels=zoom_yats_labs, lwd=1, lwd.ticks=1, cex=0.7, tck=-0.025, las=2)
mtext(side=2, at=zoom_ylims/2, line=3.5, font=2, col=c('red','black'), text=c('adjusted\ncosts','adjusted\nrevenues'))
rect(xleft=npv$year-1+xoff, xright=npv$year-xoff, ybottom=-npv$cost*npv$overall_multiplier, ytop=rep(0,nrow(npv)), col='red', border=NA)
rect(xleft=npv$year-1+xoff, xright=npv$year-xoff, ybottom=npv$revenue*npv$overall_multiplier, ytop=rep(0,nrow(npv)), col='black', border=NA)
abline(h=0)
dev.off()



# # tried using alpha to illustrate - but probability is so low that everything just ends up invisible!
# plot(NA, NA, xlim=xlims, ylim=ylims, xaxs='i', yaxs='i', ann=F, axes=F)
# axis(side=1, pos=0, at=xats, labels=NA, lwd=1, lwd.ticks=1, cex=0.8, tck=-0.01)
# axis(side=1, pos=0, at=xats, labels=NA, lwd=1, lwd.ticks=1, cex=0.8, tck=0.01)
# axis(side=1, line=0, at=xats, labels=NA, lwd=1, lwd.ticks=1, cex=0.8, tck=-0.025)
# axis(side=1, line=0, at=xbigs, lwd=0, lwd.ticks=1, cex=0.8, tck=-0.050)
# axis(side=2, at=yats, labels=NA, lwd=1, lwd.ticks=1, cex=0.8, tck=-0.025)
# axis(side=2, at=ybigs, labels=ybigs_labs, lwd=0, lwd.ticks=1, cex=0.8, tck=-0.050, las=2)
# points(npv$year, -npv$cost, type='h', lwd=10, lend=1, col=alpha('#FF0000',npv$discount_factor*npv$probability_of_reaching))
# points(npv$year, npv$revenue, type='h', lwd=10, lend=1, col=alpha('#000000',npv$discount_factor*npv$probability_of_reaching))
