options(stringsAsFactors=FALSE)

male_color = '#2016CE'
female_color = '#FF9912'

life = read.table('us_actuarial_life_table_2011.tsv',sep='\t',header=TRUE) # http://web.archive.org/web/20160215194115/https://www.ssa.gov/oact/STATS/table4c6.html

life$last_female_le = 0.0
life$last_female_le[2:120] = life$female_le[1:119]

life$last_male_le = 0.0
life$last_male_le[2:120] = life$male_le[1:119]

life$female_closer = life$last_female_le - life$female_le
life$male_closer = life$last_male_le - life$male_le

png('~/d/j/cureffi/media/2016/02/happy_birthday.png',width=800,height=500,res=100)
par(mar=c(4,6,4,2))
plot(NA,NA,xlim=c(0,90),ylim=c(0,1),xaxs='i',yaxs='i',ann=FALSE,axes=FALSE)
abline(v=c(1,(1:9)*10),lwd=.25)
abline(h=(0:4)/4,lwd=.25)
axis(side=1, at=c(1,(1:9)*10), labels=c('1st',paste((1:9)*10,'th',sep='')), lwd=.25, lwd.ticks=1)
axis(side=2, at=(0:4)/4, labels=c('not at all','3 months','6 months','9 months','a year'), lwd=0, lwd.ticks=1, las=2)
points(life$age[2:120], life$female_closer[2:120], col=female_color, type='l', lwd=5)
points(life$age[2:120], life$male_closer[2:120], col=male_color, type='l', lwd=5)
legend('topright', c('women','men'), col=c(female_color,male_color), lwd=5, bg='white')
mtext(side=3, line=2, text='Happy Birthday!!', font=2, cex=1.5)
mtext(side=1, line=2.5, text='On your ____ birthday...', font=2)
mtext(side=2, line=5, text="...you're ____ closer to death.", font=2)
dev.off()

