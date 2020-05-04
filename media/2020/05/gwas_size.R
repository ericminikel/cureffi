options(stringsAsFactors = F)
library(plotrix)

gwas_size = read.table(header=T,sep='|',textConnection("
study|overall_cases|overall_controls
Mead 2009|929|4254
Mead 2012|2000|6015
Sanchez-Juan 2012|573|7637
Sanchez-Juan 2015|1543|11424
Jones 2020|5208|511585
"))

gwas_size$x = 1:5

png('~/j/cureffi/media/2020/05/prion_disease_gwas_size.png',width=800,height=400,res=125)
xlims = range(gwas_size$x) + c(-0.5, 0.5)
par(mar=c(3,5,1,1))
plot(NA, NA, xlim=xlims, ylim=c(0,20000), axes=F, ann=F, xaxs='i', yaxs='i')
axis(side=1, at=xlims, labels=NA, lwd.ticks=0)
axis(side=1, at=gwas_size$x, labels=gsub(' ','\n',gwas_size$study), lwd=0, cex.axis=0.8)
axis(side=2, at=0:15*1000, labels=NA, tck=-0.025)
axis(side=2, at=0:4*5000, labels=c('0','5,000','10,000','15,000','516,793'), tck=-0.05, las=2)
axis.break(axis=2, breakpos=17500, style = 'slash', brw = 0.05)
mtext(side=2, line=3.5, text='sample size')
rect(xleft=gwas_size$x-0.25, xright=gwas_size$x+0.25, ybottom=rep(0,nrow(gwas_size)), ytop=gwas_size$overall_cases+gwas_size$overall_controls, col='#A9A9A988', border=NA)
rect(xleft=gwas_size$x-0.25, xright=gwas_size$x+0.25, ybottom=rep(0,nrow(gwas_size)), ytop=gwas_size$overall_cases, col='#663B80', border=NA)
legend(x=0.8, y=18000, legend=c('controls','cases'), pch=15, col=c('#A9A9A9','#663B80'), text.col=c('#A9A9A9','#663B80'), text.font=2, bty='n')
dev.off()

gstraint = read.table('~/d/sci/src/gnomad_stuff/gnomad.v2.1.1.lof_metrics.by_gene_20200225.txt.bgz',sep='\t',header=T)

# 1q lead SNP
v2g = read.table('~/j/cureffi/media/2020/05/1_180984717_A_G-assigned-genes-summary.tsv',sep='\t',header=T)
colnames(v2g) = gsub('[^a-z0-9_]','_',tolower(colnames(v2g)))
v2g$v2g_share = v2g$overall_v2g / sum(v2g$overall_v2g)
v2g = v2g[with(v2g, order(-v2g_share, gene)),]

this_pos = 180984717

xlims = range(gstraint$start_position[gstraint$gene %in% v2g$gene]) + c(-1.25e5,+1e5)

gns = subset(gstraint, chromosome==1 & end_position > min(xlims) & end_position < max(xlims))
gns$midpoint = (gns$start_position + gns$end_position) / 2
gns$start_position = gns$start_position 
gns$end_position = gns$end_position
gns$midpoint = gns$midpoint 


gns = gns[with(gns, order(start_position)),]
gns$level = as.integer(NA)
gns$level[1] = 0
for (i in 2:nrow(gns)) {
  if (gns$start_position[i] < gns$end_position[i-1] + 2e5) {
    if (gns$start_position[i] > max(gns$end_position[gns$level==0] + 2e5, na.rm=T)) {
      gns$level[i] = 0
    } else {
      gns$level[i] = gns$level[i-1] + 1
    }
  } else {
    gns$level[i] = 0
  }
}

v2g$pos = gns$midpoint[match(v2g$gene, gns$gene)]

png('~/j/cureffi/media/2020/05/v2g_1q25.3.png',width=800,height=600,res=125)
layout_matrix = matrix(c(1,2),nrow=2,byrow=T)
layout(layout_matrix, heights=c(1,1))

par(mar=c(0,4,2,1))
plot(NA, NA, xlim=xlims, ylim=c(0,0.3), axes=F, ann=F, xaxs='i', yaxs='i')
axis(side=1, at=xlims, labels=NA, lwd.ticks=0)
axis(side=2, at=(0:5)/10, labels=percent((0:5)/10), lwd=1, lwd.ticks=1, las=2)
mtext(side=2, line=3.0, text='share of overall v2g')
segments(x0=this_pos,y0=0,y1=.28,lwd=1,col='#000000')
points(x=this_pos,y=.28,pch=20)
par(xpd=T)
text(x=this_pos,y=.28,pos=3,labels='lead SNP')
par(xpd=F)
points(x=v2g$pos, y=v2g$v2g_share, type='h', lwd=3, lend=1, col='#FF2020')
text(x=v2g$pos, y=v2g$v2g_share+0.03, pos=3, srt=90, col='#FF2020', labels=v2g$gene, cex=0.75, font=4)


par(mar=c(4,4,0,1))
plot(NA, NA, xlim=xlims, ylim=c(-0.1,1.1), axes=F, ann=F, xaxs='i', yaxs='i')
axis(side=1, at=seq(0,2.5e8,1e5), labels=NA, tck=-0.025)
axis(side=1, at=seq(0,2.5e8,5e5), labels=formatC(seq(0,2.5e8,5e5),format='d',big.mark=','), tck=-0.05)
segments(x0=gns$start_position, x1=gns$end_position, y0=1-gns$level/max(gns$level), y1=1-gns$level/max(gns$level), lwd=1)
text(x=gns$midpoint, y=1-gns$level/max(gns$level)+0.05, pos=1, labels=gns$gene, cex=0.75, font=3)
#axis(side=1, at=seq(3e6,8e6,by=5e5), labels=formatC(seq(3e6,8e6,by=5e5), format='fg', big.mark=','))
mtext(side=1, line=2.5, text='chr1 position (GRCh37)')
dev.off()






# 22q lead SNP
v2g = read.table('~/j/cureffi/media/2020/05/22_30557308_C_T-assigned-genes-summary.tsv',sep='\t',header=T)
colnames(v2g) = gsub('[^a-z0-9_]','_',tolower(colnames(v2g)))
v2g$v2g_share = v2g$overall_v2g / sum(v2g$overall_v2g)
v2g = v2g[with(v2g, order(-v2g_share, gene)),]

xlims = range(gstraint$start_position[gstraint$gene %in% v2g$gene]) + c(-1.25e5,+1e5)

gns = subset(gstraint, chromosome==22 & end_position > min(xlims) & end_position < max(xlims))
gns$midpoint = (gns$start_position + gns$end_position) / 2
gns$start_position = gns$start_position 
gns$end_position = gns$end_position
gns$midpoint = gns$midpoint 

this_pos = 30953295

gns = gns[with(gns, order(start_position)),]
gns$level = as.integer(NA)
gns$level[1] = 0
for (i in 2:nrow(gns)) {
  if (gns$start_position[i] < gns$end_position[i-1] + 2e5) {
    if (gns$start_position[i] > max(gns$end_position[gns$level==0] + 2e5, na.rm=T)) {
      gns$level[i] = 0
    } else {
      gns$level[i] = gns$level[i-1] + 1
    }
  } else {
    gns$level[i] = 0
  }
}

v2g$pos = gns$midpoint[match(v2g$gene, gns$gene)]

png('~/j/cureffi/media/2020/05/v2g_22q12.2.png',width=800,height=600,res=125)
layout_matrix = matrix(c(1,2),nrow=2,byrow=T)
layout(layout_matrix, heights=c(1,1))

par(mar=c(0,4,2,1))
plot(NA, NA, xlim=xlims, ylim=c(0,0.3), axes=F, ann=F, xaxs='i', yaxs='i')
axis(side=1, at=xlims, labels=NA, lwd.ticks=0)
axis(side=2, at=(0:5)/10, labels=percent((0:5)/10), lwd=1, lwd.ticks=1, las=2)
mtext(side=2, line=3.0, text='share of overall v2g')
segments(x0=this_pos,y0=0,y1=.25,lwd=1,col='#000000')
points(x=this_pos,y=.25,pch=20)
par(xpd=T)
text(x=this_pos,y=.25,pos=3,labels='lead SNP')
par(xpd=F)
points(x=v2g$pos, y=v2g$v2g_share, type='h', lwd=3, lend=1, col='#FF2020')
text(x=v2g$pos, y=v2g$v2g_share+0.03, pos=3, srt=90, col='#FF2020', labels=v2g$gene, cex=0.75, font=4)

par(mar=c(4,4,0,1))
plot(NA, NA, xlim=xlims, ylim=c(-0.1,1.1), axes=F, ann=F, xaxs='i', yaxs='i')
axis(side=1, at=seq(0,2.5e8,1e5), labels=NA, tck=-0.025)
axis(side=1, at=seq(0,2.5e8,5e5), labels=formatC(seq(0,2.5e8,5e5),format='d',big.mark=','), tck=-0.05)
segments(x0=gns$start_position, x1=gns$end_position, y0=1-gns$level/max(gns$level), y1=1-gns$level/max(gns$level), lwd=1)
text(x=gns$midpoint, y=1-gns$level/max(gns$level)+0.05, pos=1, labels=gns$gene, cex=0.75, font=3)
#axis(side=1, at=seq(3e6,8e6,by=5e5), labels=formatC(seq(3e6,8e6,by=5e5), format='fg', big.mark=','))
mtext(side=1, line=2.5, text='chr22 position (GRCh37)')
dev.off()
