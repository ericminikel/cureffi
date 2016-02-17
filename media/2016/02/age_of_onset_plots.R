options(stringsAsFactors=FALSE)

data = read.table(sep='|',header=T,file=textConnection("
haplotype|onset|population|pch|year|ref|pos
E200K|53|Libyan Jewish|15|1991|Hsiao 1991|4
E200K|56|Libyan Jewish|15|1993|Gabizon 1993|4
E200K|58|Libyan Jewish|15|1994|Chapman 1994|2
E200K|58.5|Libyan Jewish|15|1995|Spudich 1995|4
E200K|59|Libyan Jewish|15|2000|Simon 2000|4
E200K|60.4|Mostly European|16|2005|Kovacs 2005|4
E200K|59|Mostly European|16|2009|Ladogana 2009|2
E200K|63|Mostly European|16|2012|Schelzke 2012|2
E200K|64|Mostly European|16|2014|Minikel 2014|2
E200K|58.5|Japanese|17|2010|Nozaki 2010|4
E200K|61.1|Japanese|17|2016|Minikel 2016|2
"))

png('~/d/j/cureffi/media/2016/02/e200k-onset-over-time.png',width=800,height=500,res=100)
plot(data$year, data$onset, pch=data$pch, col='#2016CE', axes=FALSE, ann=FALSE, ylim=c(52,66), xlim=c(1988, 2017), xaxs='i', yaxs='i')
abline(h=52,lwd=2)
abline(v=1988,lwd=2)
text(data$year, data$onset, labels=data$ref, col='#2016CE', pos=data$pos, cex=.8)
axis(side=1, at=seq(1990,2015,5), labels=seq(1990,2015,5), lwd=0, lwd.ticks=1)
axis(side=2, at=seq(52,66,2), labels=seq(52,66,2), las=2, lwd=0, lwd.ticks=1)
mtext(side=1, line=2.5, text='year reported', font=2)
mtext(side=2, line=3.0, text='mean or median age of onset', font=2)
mtext(side=3, line=2, text='Reported mean or median age of onset in E200K heterozygotes', font=2, cex=1.2)
legend('topleft',title='population',legend=c('Libyan Jewish','Mostly European','Japanese'),pch=c(15,16,17),col='#2016CE', cex=.8)
dev.off()





