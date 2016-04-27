# R code to produce a simple vector graphic of a 96-well plate
pdf('~/d/j/cureffi/media/2016/04/96w.pdf',width=3,height=2)
par(mar=rep(0,4),bg='#CCCCCC')
xy = expand.grid(x=1:12,y=1:8)
plot(x=xy$x-.5, xy$y-.5, pch=19, col='#FFFFFF', cex=2, xlim=c(-.5,12.5),ylim=c(-.2,8.2),xaxs='i',yaxs='i',xaxt='n',yaxt='n',xlab='',ylab='',axes=FALSE, ann=FALSE)
dev.off()