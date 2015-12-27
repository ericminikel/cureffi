options(stringsAsFactors=FALSE)

# load data from Greenfield & Fasman 1969 (PMID: 5346390) Table 1
spec = read.table('~/d/j/cureffi/media/2015/12/cd-reference-spectra.tsv',sep='\t',header=TRUE)

acol = '#0000CD'
bcol = '#FF9912'
rcol = '#625656'

xat = (19:25)*10  
yat = (-3:5)*2e4

png('~/d/j/cureffi/media/2015/12/cd-reference-spectra.png',width=800,height=500,pointsize=18) #800 500 17

par(mar=c(4,5,3,2))
plot(NA,NA,xlim=c(190,250),ylim=c(-6e4,9e4),axes=FALSE,ann=FALSE,xaxs='i',yaxs='i')
abline(h=0)
axis(side=1, at=xat, labels=xat, lwd=1, lwd.ticks=1)
axis(side=2, at=yat, labels=formatC(yat,format='fg',big.mark=','), lwd=1, lwd.ticks=1, las=2)
mtext(side=1, line=2.5, text='wavelength (nm)', font=2)
mtext(side=2, line=4, text='molar ellipticity (deg/m/M)', font=2)
mtext(side=3, line=1.5, text='circular dichroism reference spectra for poly-L-lysine', cex=1.2, font=2)
mtext(side=3, line=.5, text='based on data from Greenfield & Fasman 1969 (PMID: 5346390) Table 1', cex=.8)
points(spec$wavelength, spec$a, type='l', lwd=5, col=acol)
points(spec$wavelength, spec$b, type='l', lwd=5, col=bcol)
points(spec$wavelength, spec$r, type='l', lwd=5, col=rcol)
legend('topright',c('alpha helix','beta sheet','random coil'),lwd=5,col=c(acol,bcol,rcol),text.col=c(acol,bcol,rcol),bty='n',text.font=2)

pts = read.table(sep='|',header=TRUE,textConnection('
x|xs|curve|pos
193|192.5|a|4
195|195|b|3
195|195|r|3
208|208|a|1
218|217|b|1
222|222|a|1
'))

for (i in 1:nrow(pts)) {
    x = pts$xs[i]
    y = spec[spec$wavelength==pts$xs[i], pts$curve[i]]
    k = get(paste(pts$curve[i],'col',sep=''))
    points(x,y,pch='|',col=k,cex=.8)
    text(x,y,lab=paste(pts$x[i],'nm'),pos=pts$pos[i],col=k,cex=.8,font=2)
}

dev.off()