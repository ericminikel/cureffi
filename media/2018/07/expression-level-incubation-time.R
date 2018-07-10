# plot of PrPC expression vs incubation time
png('~/d/j/cureffi/media/2018/07/expression-level-incubation-time.png',width=800,height=400,res=135)

# colors
tk = '#24AFB2'
sk = '#E67E23'

# data from Fischer 1996 PMID: 8635458 Table I
explevel = c(.5,1,3.5,6.5,10) # PrPC expression level
terminal = c(415,166,100,68,62) # time to terminal illness
symptoms = c(290,131,87,64,60) # time to symptoms

# empty plot and axes and labels
par(mar=c(4,4,3,2))
plot(NA,NA,xlim=c(0,11),ylim=c(0,500),axes=FALSE,xaxs='i',yaxs='i',ann=FALSE)
axis(side=1, at=0:10, labels=NA, lwd=1, lwd.ticks=1, tck=-0.025)
axis(side=1, at=1:10 - 0.5, labels=NA, lwd=0, lwd.ticks=0.5, tck=-0.0125)
axis(side=1, at=c(0,1,5,10), labels=c(0,1,5,10), lwd=0, lwd.ticks=0)
mtext(side=1, line=2.5, text='PrP expression level (relative to wild-type)', adj=0)
axis(side=2, at=(0:5)*100, lwd=0, lwd.ticks=1, las=2)
mtext(side=2, line=3, text='days post-infection')

# text annotations
par(xpd=TRUE)

text(x=c(0,0.5,1,5), y=c(600,490,300,150), labels=c('complete protection in homozygous knockouts','disease delayed in heterozygous knockouts','wild-type','disease accelerated in\ntransgenic overexpressers'), pos=c(4,4,4,3), cex=0.8)
segments(x0=0,x1=0.15,y0=525,y1=575)
segments(x0=0.5,x1=0.65,y0=415,y1=465)
segments(x0=1,x1=1.15,y0=166,y1=275)
segments(x0=5,x1=5,y0=80,y1=130)

# legend 
legend(x=8,y=-120,c('time to death','time to onset'),col=c(tk,sk),text.col=c(tk,sk),bty='n',lwd=3,pch=19,cex=0.7,text.font=2)

par(xpd=FALSE)

# actual curves
points(explevel,terminal,type='b',pch=19,lwd=3,col=tk)
points(explevel,symptoms,type='b',pch=19,lwd=3,col=sk)
points(c(.5,.2),c(415,600),type='l',lwd=3,col=tk,lty=3)
points(c(.5,.2),c(290,550),type='l',lwd=3,col=sk,lty=3)


dev.off()