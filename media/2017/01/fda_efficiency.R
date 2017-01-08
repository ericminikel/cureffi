options(stringsAsFactors=FALSE)


png('~/d/j/cureffi/media/2017/01/fda_nda_pdufa.png',width=800,height=500,res=100)
year = 1986:2012
nda_months = c(32.9,29.8,34.1,29.8,27.9,22.9,22.4,23.0,17.4,17.1,15.4,14.4,12.0,12.0,15.6,14.3,16.3,9.9,13.7,8.5,10.0,9.7,12.4,12.9,10.0,10.0,9.8)
plot(NA,NA,xlim=c(1986,2012),ylim=c(0,36),xaxs='i',yaxs='i',axes=FALSE,ylab='FDA average NDA review time',xlab='year',
     main='Impact of PDUFA on NDA review times')
points(year,nda_months,type='l',lwd=4,col='#FF9912')
axis(side=1, at=1986:2012, labels=NA, las=2, lwd.ticks=1, lwd=1)
axis(side=1, at=seq(1986,2012,4), las=2, lwd.ticks=0, lwd=0)
axis(side=2, at=(0:3)*12, las=2, lwd.ticks=1, lwd=1)
abline(v=1993, lty=2, lwd=1.5, col='red')
text(x=1993, y=26, pos=4, labels='PDUFA takes effect', col='red', font=2)
dev.off()

indtime = read.table(textConnection("
startyear endyear ind_months
1971 1973 34.9
1974 1976 53.5
1977 1979 48.4
1980 1982 57.0
1983 1985 58.0
1986 1988 56.9
1989 1991 58.0
1992 1994 60.4
1995 1997 64.7
1998 2000 60.3
2001 2003 56.6
2004 2006 73.6
2007 2009 69.8
2010 2012 73.4
"),header=TRUE)



png('~/d/j/cureffi/media/2017/01/fda_ind_time.png',width=800,height=500,res=100)
year = (indtime$endyear + indtime$startyear) / 2
ind_months = indtime$ind_months
plot(NA,NA,xlim=c(1970,2012),ylim=c(0,84),xaxs='i',yaxs='i',axes=FALSE,ylab='average months spent in INDs tage',xlab='year',
     main='Time spent in IND stage')
points(year,ind_months,type='l',lwd=4,col='#FF9912')
axis(side=1, at=1970:2012, labels=NA, las=2, lwd.ticks=1, lwd=1)
axis(side=1, at=seq(1970,2012,4), las=2, lwd.ticks=0, lwd=0)
axis(side=2, at=(0:7)*12, las=2, lwd.ticks=1, lwd=1)
dev.off()



