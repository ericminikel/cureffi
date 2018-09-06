options(stringsAsFactors=FALSE)
alpha = function(rgb_hexcolor, proportion) {
  hex_proportion = sprintf("%02x",round(proportion*255))
  rgba = paste(rgb_hexcolor,hex_proportion,sep='')
  return (rgba)
}

basecol = '#7570B3'
neutral = '#CCCCCC'
solid = '#000000'

lt = read.table('~/d/sci/src/prnp_onset/data/lt_E200K.tsv',sep='\t',header=T)

png('~/j/cureffi/media/2018/09/e200k-median-onset-by-current-age.png',width=800,height=1000, res=110)

par(mfrow=c(2,1))

par(mar=c(4,4,6,4))
plot(NA, NA, xlim=c(0,100), ylim=c(0,25), axes=FALSE, ann=FALSE, xaxs='i', yaxs='i')
axis(side=1, at=(0:10)*10)
mtext(side=1, line=2.5, text='age')
axis(side=2, at=(0:5)*5, las=2, lwd=1, lwd.ticks=1)
mtext(side=2, line=3, text='number of onsets')
polygon(c(lt$age,100,0), c(lt$dt,0,0), border=basecol, lwd=2, col=alpha(basecol,.35))
abline(v=62, lwd=4, lty=3, col=basecol)
par(xpd=TRUE)
points(x=30, y=2, pch=25, bg='#000000', col='#000000')
text(x=30,y=2, pos=3, labels='from\nage\n30', font=2, cex=1)
text(x=62, y=25, pos=4, labels='median onset is 62', font=2, cex=1)
par(xpd=FALSE)

mtext(side=3, line=2, text='E200K median onset by current age', font=2, cex=1.5)

par(mar=c(4,4,3,4))
plot(NA, NA, xlim=c(0,100), ylim=c(0,25), axes=FALSE, ann=FALSE, xaxs='i', yaxs='i')
axis(side=1, at=(0:10)*10)
mtext(side=1, line=2.5, text='age')
axis(side=2, at=(0:5)*5, las=2, lwd=1, lwd.ticks=1)
mtext(side=2, line=3, text='number of onsets')
polygon(c(lt$age[lt$age >= 60],100,60), c(lt$dt[lt$age >= 60],0,0), border=basecol, lwd=2, col=alpha(basecol,.35))
polygon(c(lt$age[lt$age <= 60],60,0), c(lt$dt[lt$age <= 60],0,0), border=neutral, lwd=2, col=alpha(neutral,.15))
abline(v=68, lwd=4, lty=3, col=basecol)
par(xpd=TRUE)
points(x=60, y=2, pch=25, bg='#000000', col='#000000')
text(x=60, y=2, pos=3, labels='from\nage\n60', font=2, cex=1)
text(x=68, y=25, pos=4, labels='median onset is 68', font=2, cex=1)
par(xpd=FALSE)

dev.off()

