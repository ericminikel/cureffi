setwd('~/j/cureffi/media/2018/09')
options(stringsAsFactors=FALSE)
require(sqldf)
require(binom)
source('~/d/sci/src/exac_papers/exac_constants.R') # https://github.com/macarthur-lab/exac_2015/blob/master/exac_constants.R

# generally useful functions
alpha = function(rgb_hexcolor, proportion) {
  hex_proportion = sprintf("%02x",round(proportion*255))
  rgba = paste(rgb_hexcolor,toupper(hex_proportion),sep='')
  return (rgba)
}

percent = function(proportion,digits=2) {
  return ( gsub(' ','',paste(formatC(proportion*100, digits=digits, format='fg'),"%",sep="") ) )
}

expand.range = function(raw_range, by=.5) {
  return ( c(raw_range[1]-by, raw_range[2]+by) )
}

constraintc = load_constraint_data(reload=TRUE) # constraint is a SQLite keyword, so I call the table constraintc
constraintc$lof_obs_exp = constraintc$n_lof / constraintc$exp_lof

non_ttn = constraintc$gene != 'TTN'

png('constraint_by_functional_class.png',width=800,height=300,res=100)
par(mfrow=c(1,3))
plot(constraintc$exp_syn[non_ttn], constraintc$n_syn[non_ttn], pch=20, col=k_syn, xlab='expected', ylab='observed')
abline(a=0,b=1)
mtext(side=3,line=1,text='synonymous',font=2,cex=1.5,col=k_syn)
plot(constraintc$exp_mis[non_ttn], constraintc$n_mis[non_ttn], pch=20, col=k_mis, xlab='expected', ylab='observed')
abline(a=0,b=1)
mtext(side=3,line=1,text='missense',font=2,cex=1.5,col=k_mis)
plot(constraintc$exp_lof[non_ttn], constraintc$n_lof[non_ttn], pch=20, col=k_lof, xlab='expected', ylab='observed')
abline(a=0,b=1)
mtext(side=3,line=1,text='LoF',font=2,cex=1.5,col=k_lof)
dev.off()


# create a master table with one row per gene symbol
genes = constraintc[,c("gene","bp","syn_z","mis_z","lof_z","n_lof","exp_lof","lof_obs_exp","pLI")]
colnames(genes)[1] = "symbol"

# merge in other gene lists for comparison
gene_lists = read.table(textConnection("filename
blekhman_ar
blekhman_ad
omim_all
core_essentials_hart
clingen_level3_genes_2015_02_27
homozygous_lof_tolerant_twohit
olfactory_receptors
fda_approved_drug_targets
gpcr
kinases
gwascatalog
"),sep='|',header=TRUE)
for (i in 1:dim(gene_lists)[1]) {
  path = paste('~/d/sci/src/gene_lists/lists/',gene_lists$filename[i],'.tsv',sep='')
  if (file.exists(path)) {
    gene_list = read.table(path)
  } else {
    path = paste('~/d/sci/src/private_gene_lists/lists/',gene_lists$filename[i],'.tsv',sep='')
  }
  gene_list = read.table(path)
  if (dim(gene_list)[1] < 1) {
    print(paste("No contents in gene list: ",gene_lists$filename[i],sep=''))
    next
  }
  genes[,gene_lists$filename[i]] = genes$symbol %in% gene_list$V1
}
# create a pseudo-list column with all genes included
genes$all = TRUE



list_metadata = read.table(textConnection("
colname|display
all|All
olfactory_receptors|Olfactory receptors
homozygous_lof_tolerant_twohit|Homozygous LoF tolerant
blekhman_ar|Autosomal recessive
blekhman_ad|Autosomal dominant
core_essentials_hart|Essential in culture
clingen_level3_genes_2015_02_27|ClinGen Haploinsufficient
fda_approved_drug_targets|DrugBank FDA-approved
gpcr|Top 'druggable' families*
kinases|Kinases
gwascatalog|GWAS hits
"),sep='|',header=TRUE)
# above - note that the file named "gpcr" is actually multiple druggable families.
# this erratum is explained in the post.

# Forest plot for pHI > .9
lof_oe = list_metadata[1:8,]
lof_oe$mean = 0.0
lof_oe$upper95 = 0.0
lof_oe$lower95 = 0.0
i = 1
for (i in 1:dim(lof_oe)[1]) {
  in_list = as.logical(genes[,lof_oe$colname[i]])
  oe_mean = mean(genes$lof_obs_exp[in_list], na.rm=T)
  oe_sd = sd(genes$lof_obs_exp[in_list], na.rm=T)
  oe_n = sum(!is.na(genes$lof_obs_exp[in_list]))
  lof_oe$mean[i] = oe_mean
  lof_oe$upper95[i] = oe_mean + 1.96 * oe_sd/sqrt(oe_n)
  lof_oe$lower95[i] = oe_mean - 1.96 * oe_sd/sqrt(oe_n)
}

lof_oe$y = -1:(-1*dim(lof_oe)[1])
lof_oe$color = '#777777'
lof_oe$color[lof_oe$colname=='all'] = '#000000'
lof_oe$color[lof_oe$colname=='fda_approved_drug_targets'] = '#2E37FE'

png('forest_lof_oe.png',width=800,height=500,res=100)
par(mar=c(4,12,3,3))
plot(NA,NA, xlim=c(0,1), ylim=expand.range(range(lof_oe$y)), axes=FALSE, xlab='', ylab='')
abline(v=lof_oe$mean[lof_oe$colname=='all'], lty=3, col='#333333', lwd=2)
segments(x0=lof_oe$lower95, x1=lof_oe$upper95, y0=lof_oe$y, col=lof_oe$color, lwd=5)
points(x=lof_oe$mean, y=lof_oe$y, col=lof_oe$color, pch=19, cex=1.5)
axis(side=1, at=(0:4)/4, labels=percent((0:4)/4), lwd=0, lwd.ticks=1)
abline(v=c(0,1))
mtext(side=2, at=lof_oe$y, text=lof_oe$display, las=2, cex = .9)
mtext(side=1, text='mean (95%CI) LoF observed/expected ratio in ExAC', font=2, cex=.9, line = 2.5)
abline(h=lof_oe$y[lof_oe$colname=='approved']+.5, col='#777777', lwd=.5)
abline(h=lof_oe$y[lof_oe$colname=='gpcr']+.5, col='#777777', lwd=.5)
title('loss-of-function intolerance by gene list')
dev.off()

gpcr_drug = table(genes[,c("fda_approved_drug_targets","gpcr")])
kinase_drug = table(genes[,c("fda_approved_drug_targets","kinases")])
gwas_drug = table(genes[,c("fda_approved_drug_targets","gwascatalog")])

sum((genes$gpcr | genes$kinases) & genes$fda_approved_drug_targets) / sum(genes$fda_approved_drug_targets)

fisher.test(gpcr_drug,alternative='two.sided')
fisher.test(gpcr_drug,alternative='two.sided')$p.value
fisher.test(kinase_drug,alternative='two.sided')
fisher.test(gwas_drug,alternative='two.sided')


lof_oe2 = list_metadata[list_metadata$colname %in% c('all','fda_approved_drug_targets','gpcr','kinases','gwascatalog'),]
lof_oe2$mean = 0.0
lof_oe2$upper95 = 0.0
lof_oe2$lower95 = 0.0
i = 1
for (i in 1:dim(lof_oe2)[1]) {
  #if (i %in% 1:4) {
    in_list = as.logical(genes[,lof_oe2$colname[i]])
  #} else if (i == 5) {
  #  in_list = as.logical(genes$fda_approved_drug_targets) & as.logical(genes$gpcr)
  #} else if (i == 6) {
  #  in_list = as.logical(genes$fda_approved_drug_targets) & as.logical(genes$kinases)
  #}
  oe_mean = mean(genes$lof_obs_exp[in_list], na.rm=T)
  oe_sd = sd(genes$lof_obs_exp[in_list], na.rm=T)
  oe_n = sum(!is.na(genes$lof_obs_exp[in_list]))
  lof_oe2$mean[i] = oe_mean
  lof_oe2$upper95[i] = oe_mean + 1.96 * oe_sd/sqrt(oe_n)
  lof_oe2$lower95[i] = oe_mean - 1.96 * oe_sd/sqrt(oe_n)
}

lof_oe2$y = -1:(-1*nrow(lof_oe2))
lof_oe2$color = '#777777'
lof_oe2$color[lof_oe2$colname=='all'] = '#000000'
lof_oe2$color[lof_oe2$colname=='fda_approved_drug_targets'] = '#2E37FE'


png('forest_lof_oe2.png',width=800,height=350,res=100)
par(mar=c(4,12,3,3))
plot(NA,NA, xlim=c(0,1), ylim=expand.range(range(lof_oe2$y)), axes=FALSE, xlab='', ylab='')
abline(v=lof_oe2$mean[lof_oe2$colname=='all'], lty=3, col='#333333', lwd=2)
segments(x0=lof_oe2$lower95, x1=lof_oe2$upper95, y0=lof_oe2$y, col=lof_oe2$color, lwd=5)
points(x=lof_oe2$mean, y=lof_oe2$y, col=lof_oe2$color, pch=19, cex=1.5)
axis(side=1, at=(0:4)/4, labels=percent((0:4)/4), lwd=0, lwd.ticks=1)
abline(v=c(0,1))
mtext(side=2, at=lof_oe2$y, text=lof_oe2$display, las=2, cex = .9)
mtext(side=1, text='mean (95%CI) LoF observed/expected ratio in ExAC', font=2, cex=.9, line = 2.5)
abline(h=lof_oe2$y[lof_oe2$colname=='fda_approved_drug_targets']+.5, col='#777777', lwd=.5)
title('loss of function intolerance by gene list, take 2')
dev.off()


## full distribution of obs/exp


png('lof_obs_exp_histo.png',width=800,height=500,res=100)
color_all = '#000000'
color_drug = '#2E37FE'
hist_breaks = c((0:20)*5/100,10) # 0%, 5%, 10%, ... 100% and then 1,000% (~+Inf)
h_all = hist(genes$lof_obs_exp[genes$all], breaks=hist_breaks,plot=FALSE)
h_drug = hist(genes$lof_obs_exp[genes$fda_approved_drug_targets],plot=FALSE,breaks=hist_breaks)
h_all[['proportion']] = h_all$counts / sum(h_all$counts)
h_drug[['proportion']] = h_drug$counts / sum(h_drug$counts)
h_all_mean = mean(genes$lof_obs_exp[genes$all],na.rm=TRUE)
h_drug_mean = mean(genes$lof_obs_exp[genes$fda_approved_drug_targets],na.rm=TRUE)
plot(NA, NA, xlim=c(0,1), ylim=c(0,.2), xaxs='i', yaxs='i', axes=FALSE, xlab='', ylab='')
polygon(c(0,h_all$breaks), c(0,h_all$proportion,0), col=alpha(color_all,.5),border=NA)
points(h_all$breaks[1:(length(h_all$breaks)-1)], h_all$proportion, col=color_all, type='l', lwd=5)
polygon(c(0,h_drug$breaks), c(0,h_drug$proportion,0), col=alpha(color_drug,.5),border=NA)
points(h_drug$breaks[1:(length(h_drug$breaks)-1)], h_drug$proportion, col=color_drug, type='l', lwd=5)
abline(h=0,lwd=2)
axis(side=1, at=(0:4)/4, labels=c(percent((0:3)/4),'\u2265100%'), lwd=0, lwd.ticks=1)
axis(side=2, at=(0:4)/20, labels=percent((0:4)/20), lwd=0, lwd.ticks=1, las=2)
abline(v=c(0,1),lwd=2)
#legend('topleft',c('all genes','FDA-approved drug targets'),col=c(color_all,color_drug),text.col=c(color_all,color_drug),text.font=2,pch=15,bty='n')
mtext(side=1, text='LoF obs/exp ratio', line=2.5, font=2, cex=.9)
mtext(side=2, text='proportion of genes', line=3.0, font=2, cex=.9)
segments(x0=c(h_all_mean,h_drug_mean),y0=.15,y1=0,col=c(color_all,color_drug),lwd=2,lty=3)
text(x=c(h_all_mean,h_drug_mean),y=c(.16,.16),pos=c(4,2),font=2,labels=paste(c('all\ngenes\n','drug\ntargets\n'),'mean =',percent(c(h_all_mean,h_drug_mean))),col=c(color_all,color_drug))
title(main='histogram of LoF obs/exp ratios across genes')
dev.off()
