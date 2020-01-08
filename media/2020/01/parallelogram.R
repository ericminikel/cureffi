
options(stringsAsFactors=FALSE)
require(sqldf)
require(survival)

# colors for plotting parents and children throughout paper
e200k_col = '#7570B3'
line_col = '#777777'

# source datasets
mrc = read.table('~/d/sci/proj-archive/030e200k/analysis/2/mrc.txt',sep='\t',header=TRUE)
ucsf = read.table('~/d/sci/proj-archive/030e200k/analysis/2/ucsf.txt',sep='\t',header=TRUE)
goett = read.table('~/d/sci/proj-archive/030e200k/analysis/2/goett.txt',sep='\t',header=TRUE)
ancjdr = read.table('~/d/sci/proj-archive/030e200k/analysis/2/ancjdr.txt',sep='\t',header=TRUE)
phen = rbind(mrc,ucsf,goett,ancjdr)
phen = phen[!phen$questionable,]

png('~/j/cureffi/media/2020/01/the_anticipation_parallelogram.png', width=800, height=500, res=125)
par(mar=c(4,4,1,8))
plot(phen$yob[phen$died_cjd], phen$age[phen$died_cjd], pch=20, col=e200k_col, 
	axes=F, ann=F, xaxs='i', yaxs='i', xlim=c(1880,2000), ylim=c(0,100))
axis(side=1, at=seq(1880,2000,10))
axis(side=2, at=seq(0,100,10), las=2)
abline(h=c(31,92), col=line_col)
abline(a=1989,b=-1, col=line_col)
abline(a=2013,b=-1, col=line_col)
mtext(side=4, at=92, las=2, line=0.5, text='max age of onset', col=line_col)
mtext(side=4, at=31, las=2, line=0.5, text='min age of onset', col=line_col)
mtext(side=4, at=13, las=2, line=0.25, text='onset in 2013', col=line_col)
par(xpd=T)
text(x=1987, y=3, pos=4, labels='onset in 1989', col=line_col)
par(xpd=F)
mtext(side=1, line=2.5, text='year of birth')
mtext(side=2, line=3, text='age of onset')
polygon(x=c(1897,1921,1982,1958), y=c(92, 92, 31, 31), col='#CCCCCC')
points(phen$yob[phen$died_cjd], phen$age[phen$died_cjd], pch=20, col=e200k_col)
dev.off()
