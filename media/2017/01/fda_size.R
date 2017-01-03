year = c(1890,1900,1910,1920,1930,1940,1950,1960,1970,1980,1990,1995,2000,2005,2010)
budget = c(12000,17100,880560,1391571,1537300,2741000,4802500,13800000,72352000,312796000,567079000,897104000,1183095000,1776784000,3291676000)
employees = c(NA,NA,70,374,NA,719,955,1660,4363,7517,7692,9264,8857,10668,12381)

budget_color = '#01AC42'
person_color = '#821281'

png('~/d/j/cureffi/media/2017/01/fda_size_over_time.png',width=800,height=500,res=100)
par(mar=c(5,5.5,3,5.5))
plot(year,budget,log='y',type='l',lwd=4,col=budget_color,axes=FALSE,ann=FALSE,xaxs='i',yaxs='i')
axis(side=1,at=(189:210)*10)
axis(side=2,col=budget_color,col.axis=budget_color,font=2,at=10^(4:10),labels=c('$10K','$100K','$1M','$10M','$100M','$1B','$10B'),las=2)
par(new=TRUE)
plot(year[!is.na(employees)],employees[!is.na(employees)],log='y',type='l',lwd=4,col=person_color,axes=FALSE,ann=FALSE)
axis(side=4,col=person_color,col.axis=person_color,font=2,at=10^(1:5),labels=c('10','100','1K','10K','100K'),las=2)
title('U.S. FDA size over time')
mtext(side=2,line=4,text='annual budget',col=budget_color,font=2)
mtext(side=4,line=4,text='personnel',col=person_color,font=2)
dev.off()
