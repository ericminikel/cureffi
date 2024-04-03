options(stringsAsFactors=F)
if(interactive()) {
  setwd('~/j/cureffi/media/2024/03/')
}
library(binom)
library(tidyverse)
library(janitor)

### CONSTANTS

# colors for functional classes
color_syn = k_syn = '#AAAAAA'
color_mis = k_mis = '#FF6103'
color_lof = k_lof = '#9D1309'

# colors for mutational classes
color_cpg = '#2E9FFE'
color_ti = '#458B00'
color_tv = '#E066FF'

# white space between squares
margin = 0.15

# transparency function
alpha = function(rgb_hexcolor, proportion) {
  hex_proportion = sprintf("%02x",round(proportion*255))
  rgba = paste(rgb_hexcolor,hex_proportion,sep='')
  return (rgba)
}

# map TLAs to OLAs for amino acids
tla_to_ola = function(x) {
  mapping = data.frame(tla=c("Ala","Arg","Asn","Asp","Cys","Gln","Glu","Gly","His","Ile","Leu","Lys","Met","Phe","Pro","Ser","Ter","Thr","Trp","Tyr","Val"),
                       ola=c("A",  "R",  "N",  "D",  "C",  "Q",  "E",  "G",  "H",  "I",  "L",  "K",  "M",  "F",  "P",  "S",  "X",  "T",  "W",  "Y",  "V"))
  for (row in 1:dim(mapping)[1]) {
    x = gsub(mapping$tla[row], mapping$ola[row], x)
  }
  return (x)
}

grch38_offset = 4699605 - 4680251

# file downloaded from https://gnomad.broadinstitute.org/gene/ENSG00000171867?dataset=gnomad_r4 on Mar 1, 2024:
prnp_gnomad_v4 = read.table('gnomAD_v4.0.0_ENSG00000171867_2024_03_01_05_24_22.csv',sep=',',header=T) %>% as_tibble() %>% clean_names()

prnp_gnomad_v4$pos_id = paste(prnp_gnomad_v4$chromosome, formatC(prnp_gnomad_v4$position, width=9, flag='0'), prnp_gnomad_v4$reference, prnp_gnomad_v4$alternate, sep='_')

# synthetic VCF Konrad gave me:
synth = read.table('prnp_synthetic.table',sep='\t',header=T)
colnames(synth) = tolower(colnames(synth))
synth$pos_grch37 = synth$pos
synth$pos = synth$pos_grch37 + grch38_offset
synth$pos_id = paste(synth$chrom, formatC(synth$pos, width=9, format='d', flag='0'), synth$ref, synth$alt, sep='_')

# restrict to coding region
synth$codon = floor((synth$cds_position-1)/3)+1
synth = synth[synth$codon %in% 1:762,]

# determine mutational class
cpg_plus_strand = synth$ref=='C' & synth$alt=='T' & grepl('^[ACGT]CG',synth$context)
cpg_minus_strand = synth$ref=='G' & synth$alt=='A' & grepl('^CG[ACGT]',synth$context)
synth$cpg = cpg_plus_strand | cpg_minus_strand
synth$ti = (synth$ref=='C' & synth$alt=='T') | (synth$ref=='T' & synth$alt=='C') | (synth$ref=='A' & synth$alt=='G') | (synth$ref=='G' & synth$alt=='A')
synth$mutclass = 'tv'
synth$mutclass[synth$ti] = 'ti'
synth$mutclass[synth$cpg] = 'cpg'

# generate OLA amino acid substitution codes
hgvsp_split = strsplit(synth$hgvsp,',')
synth$hgvsp1 = mapply('[[',hgvsp_split,1)
hgvsp1_change = strsplit(synth$hgvsp1,'\\.')
synth$hgvsp1_change = mapply('[',hgvsp1_change,3)
synth$hgvsp1_change[grepl('>',synth$hgvsp1_change)] = NA
synth$aa_change = tla_to_ola(synth$hgvsp1_change)
# handle corrupted amino acid changes (this happens at least for initiator codon variants):
synth$aa_change[grepl('\\?',synth$aa_change)] = gsub('\\/',synth$codon[grepl('\\?',synth$aa_change)],synth$amino_acids[grepl('\\?',synth$aa_change)])
# handle synonymous & stop
synth$aa_change[synth$consequence %in% c('synonymous_variant','stop_retained_variant')] = paste0(synth$amino_acids[synth$consequence %in% c('synonymous_variant','stop_retained_variant')], synth$codon[synth$consequence %in% c('synonymous_variant','stop_retained_variant')], synth$amino_acids[synth$consequence %in% c('synonymous_variant','stop_retained_variant')])
synth$aa_change = gsub('\\*','X',synth$aa_change)
synth$aa_change = gsub('ext.*','',synth$aa_change)



# assign functional classes
synth$funclass = gsub('_variant','',synth$consequence)
synth$funclass[synth$consequence=='stop_retained_variant'] = 'synonymous'
synth$funclass[synth$consequence=='initiator_codon_variant'] = 'missense'
synth$funclass[synth$consequence=='stop_lost'] = 'missense'
synth$funclass[synth$consequence=='stop_gained'] = 'ptv'

# check if present in gnomAD v2
synth$in_gnomad_v4 = synth$pos_id %in% prnp_gnomad_v4$pos_id
synth$alpha[synth$in_gnomad_v4] = 1
synth$alpha[!synth$in_gnomad_v4] = 0.2

# assign colors by functional class
synth$color[synth$funclass=='synonymous'] = color_syn
synth$color[synth$funclass=='missense'] = color_mis
synth$color[synth$funclass=='ptv'] = color_lof

# fade by observed/not observed
synth$color = alpha(synth$color, synth$alpha)

# assign box sizes (approximately proportional to mutation rate, though not exact)
synth$boxsize = 1
synth$boxsize[synth$ti] = 9
synth$boxsize[synth$cpg] = 81

# extent is how many units beyond its centroid each box extends in each direction
synth$extent = (sqrt(synth$boxsize)-1)/2

# re-sort by functional class
synth = rbind(synth[synth$funclass=='synonymous',], synth[synth$funclass=='missense',], synth[synth$funclass=='ptv',])

# make a grid of possible positions
gridpos = expand.grid(x=1:100,y=130:1)
gridpos$coord = paste0(gridpos$x,',',gridpos$y)

# blank x and y for each variant
synth$x = 0
synth$y = 0

# grid starts out empty
gridpos$taken = F
# x 1:100 and y 130:1 > sum(synth$boxsize) so this leaves enough room for all variants in PRNP -
# you'll need to customize for your favorite gene
xrange = c(1,100)
yrange = c(130,1)
ystart = max(yrange)
xstart = min(xrange)

# loop over all possible variants
for (i in 1:nrow(synth)) {
  cat(paste0('\rNow on row ',i,'...'),stderr())
  flush.console()
  found = FALSE
  extent = (sqrt(synth$boxsize[i])-1)/2
  # look for a centroid, scanning first top to bottom....
  for (y in ystart:1) {
    if (y - extent < min(yrange) | y + extent > max(yrange)) {
      next
    }
    # ...and then left to right...
    for (x in 1:max(xrange)) {
      # 1. if the box would reach beyond the edge of the plot, keep looking
      if (x - extent < min(xrange) | x + extent > max(xrange)) {
        next
      }
      # 2. if any of the grid positions the box would require are already taken, keep looking
      if (any(gridpos$taken[gridpos$x %in% (x - extent):(x + extent) & gridpos$y %in% (y - extent):(y + extent)])) {
        next
        # 3. if neither of those issues is present, hooray - you've found a spot!
      } else {
        # assign the variant its centroid x and y and cross out all the grid positions it now occupies
        synth$x[i] = x
        synth$y[i] = y
        gridpos$taken[gridpos$x %in% (x - extent):(x + extent) & gridpos$y %in% (y - extent):(y + extent)] = T
        # break the x loop, and flag this variant as having found a spot so you know to break the y loop too:
        found = TRUE 
        break
      }
    }
    # if position found, break the y loop too:
    if (found) { 
      cat(paste('found x=',x,', y=',y,sep=''),stderr())
      flush.console()
      break
    }
  }
  # every now and again, tighten the loop by not starting from square one (ha, literally)
  if (i %% 10 == 0) {
    ystart = max(gridpos$y[!gridpos$taken])
  }
}

# set plot size params
wdth = 1600
xlims = xrange + c(-0.5, 0.5)
ymax = max(synth$y) + 0.5
ymin = min(synth$y - synth$extent) - 0.5
ylims = c(ymin, ymax)
ht = wdth*(max(ylims)-min(ylims))/(max(xlims)-min(xlims))

# PNG version for blog post
png('prnp_possible.png',width=wdth,height=ht,res=150)
par(mar=c(5,2,2,2))
plot(NA, NA, xlim=xlims, ylim=ylims, xaxs='i', yaxs='i', ann=F, axes=F)
rect(xleft=synth$x-synth$extent-0.5+margin, xright=synth$x+synth$extent+0.5-margin, ybottom=synth$y-synth$extent-0.5+margin, ytop=synth$y+synth$extent+0.5-margin, col=synth$color, border=NA)
text(x=synth$x, y=synth$y, labels = synth$aa_change, col='#FFFFFF', font=2, cex=sqrt(synth$boxsize)/9)
par(xpd=T)
legend(x=min(xlims),y=min(ylims)-1,legend=c('synonymous','missense','truncating'),col=c(color_syn, color_mis, color_lof),pch=15,text.col=c(color_syn, color_mis, color_lof),horiz=T,cex=1.5)
legend(x=max(xlims),y=min(ylims)-1,xjust=1,legend=c('observed','not observed'),col=alpha('#000000',c(1,.2)),pch=15,text.col='#000000',horiz=T,cex=1.5)
par(xpd=F)
dev.off()

# PDF version to link to
pdf('prnp_possible.pdf',width=wdth/150,height=ht/150)
par(mar=c(5,2,2,2))
plot(NA, NA, xlim=xlims, ylim=ylims, xaxs='i', yaxs='i', ann=F, axes=F)
rect(xleft=synth$x-synth$extent-0.5+margin, xright=synth$x+synth$extent+0.5-margin, ybottom=synth$y-synth$extent-0.5+margin, ytop=synth$y+synth$extent+0.5-margin, col=synth$color, border=NA)
text(x=synth$x, y=synth$y, labels = synth$aa_change, col='#FFFFFF', font=2, cex=sqrt(synth$boxsize)/9)
par(xpd=T)
legend(x=min(xlims),y=min(ylims)-1,legend=c('synonymous','missense','truncating'),col=c(color_syn, color_mis, color_lof),pch=15,text.col=c(color_syn, color_mis, color_lof),horiz=T,cex=1.5)
legend(x=max(xlims),y=min(ylims)-1,xjust=1,legend=c('observed','not observed'),col=alpha('#000000',c(1,.2)),pch=15,text.col='#000000',horiz=T,cex=1.5)
par(xpd=F)
dev.off()


s14 = read.table('fordist_1KG_mutation_rate_table.txt',header=T) %>% 
  as_tibble() %>%
  mutate(fracmax = mu_snp / max(mu_snp))

synth %>%
  mutate(to = paste0(substr(synth$context,1,1), synth$alt, substr(synth$context,3,3))) %>%
  left_join(s14, by=c('context'='from', 'to'='to')) -> temp

synth = temp


# some stats
sum(synth$boxsize[synth$in_gnomad_v4])/sum(synth$boxsize)
sum(synth$in_gnomad_v4)/nrow(synth)

synth$mutclass = case_when(synth$cpg ~ 'CpG',
                           synth$ti ~ 'Ti',
                           TRUE ~ 'Tv')

synth %>%
  as_tibble() %>%
  group_by(mutclass, funclass) %>%
  summarize(.groups='keep',
            frac = paste0(sum(in_gnomad_v4),'/',n()),
            prop = sum(in_gnomad_v4)/n()) %>%
  ungroup() %>%
  mutate(percent_disp = percent(prop))


synth %>%
  filter(mutclass=='Ti' & funclass %in% c('synonymous','missense')) -> ctable_data
ctable = table(ctable_data[,c('in_gnomad_v4','funclass')])[,c(2,1)]
fisher.test(ctable)


synth %>%
  as_tibble() %>%
  group_by(mutclass) %>%
  summarize(.groups='keep',
            frac = paste0(sum(in_gnomad_v4),'/',n()),
            prop = sum(in_gnomad_v4)/n()) %>%
  ungroup() %>%
  mutate(percent_disp = percent(prop))

synth %>%
  as_tibble() %>%
  summarize(.groups='keep',
            frac = paste0(sum(in_gnomad_v4),'/',n()),
            prop = sum(in_gnomad_v4)/n()) %>%
  ungroup() %>%
  mutate(percent_disp = percent(prop))

gv = read_tsv('~/j/cureffi/media/2024/03/goldman-vallabh-table-s1.tsv') %>% clean_names()

gv %>%
  filter(!grepl('X|OPRI',variant)) %>%
  inner_join(synth, by=c('variant'='aa_change')) %>%
  left_join(prnp_gnomad_v4, by=c('pos_id')) %>%
  mutate(mendelian = !is.na(evidence_for_high_penetrance)) %>%
  mutate(penetrance = case_when(!is.na(evidence_for_high_penetrance) ~ 'high',
                                !is.na(evidence_for_increased_risk) | variant=='M232R' ~ 'low',
                                TRUE ~ 'no evidence')) %>%
  mutate(ac = replace_na(allele_count, 0)) %>%
  select(codon, variant, penetrance, ac) %>%
  group_by(codon, variant, penetrance) %>%
  summarize(.groups='keep', ac=sum(ac)) %>%
  ungroup() -> path_missense

path_missense %>%
  group_by(penetrance) %>%
  summarize(.groups='keep', total_ac = sum(ac))



synth %>%
  inner_join(prnp_gnomad_v4, by='pos_id') %>%
  filter(mutclass=='CpG' & funclass=='missense') %>%
  select(codon, aa_change, ac=allele_count, an=allele_number, af=allele_frequency) -> cpg_mis

ts1 = read.table('minikel_2016_table_s1.tsv',sep='\t',header=T) %>%
  as_tibble() %>%
  filter(country=='TOTAL') %>%
  select(`X2.OPRD`:`M232R`) %>%
  pivot_longer(`X2.OPRD`:`M232R`) %>%
  filter(!grepl('OPR',name)) %>%
  rename(variant=name, ac=value)

mutclass_meta = tibble(mutclass=c('CpG','Ti','Tv'), mutclass_color=c(color_cpg, color_ti, color_tv))

synth %>%
  as_tibble() %>%
  filter(funclass=='missense') %>%
  rename(variant=aa_change) %>%
  left_join(gv, by=c('variant')) %>%
  mutate(mendelian = !is.na(evidence_for_high_penetrance)) %>%
  left_join(prnp_gnomad_v4, by='pos_id') %>%
  left_join(ts1, by='variant') %>%
  mutate(gnomad_ac= as.numeric(allele_count)) %>%
  mutate(case_ac= as.numeric(ac)) %>%
  mutate(gnomad_ac_pseudo = replace_na(gnomad_ac, 0.5)) %>%
  mutate(case_ac_pseudo = replace_na(case_ac, 0.5)) %>% # pseudocounts
  inner_join(mutclass_meta, by='mutclass') %>%
  select(pos_id, variant, gnomad_ac, case_ac, gnomad_ac_pseudo, case_ac_pseudo, mendelian, mutclass, funclass, mutclass_color, mu_snp) %>%
  filter(gnomad_ac < 500) -> allanno


resx=150
png('case_v_control_ac.png',width=800,height=500,res=resx)
par(mar=c(3,3,1,1))
par(mar=c(4,4,4,4))
xlims = c(0.3, 600)
ylims = c(0.3, 600)
xats = rep(1:9,4) * 10^rep(0:3,each=9)
xbigs = c(0.5, 10^(0:3))
xbiglabs = c('0','1','10','100','1,000')
yats = rep(1:9,7) * 10^rep(0:6,each=9)
ybigs = c(0.5, 10^(0:6))
ybiglabs = c('0','1','10','100','1K','10K','100K','1M')
xaxcex=0.8
yaxcex=0.8
plot(NA, NA, xlim=xlims, ylim=ylims, axes=F, ann=F, xaxs='i', yaxs='i', log='xy')
axis(side=1, at=xats,  tck=-0.025, labels=NA)
axis(side=1, at=xbigs, tck=-0.05,  labels=NA)
axis(side=1, at=xbigs, tck=-0.05, lwd=0, line=-0.5, labels=xbiglabs, cex.axis=xaxcex)
axis(side=2, at=yats,  tck=-0.025, labels=NA)
axis(side=2, at=ybigs, tck=-0.05, labels=NA)
axis(side=2, at=ybigs, tck=-0.05, las=2, lwd=0, line=-0.3, labels=ybiglabs, cex.axis=yaxcex)
par(xpd=T)
points(y=allanno$case_ac, x=allanno$gnomad_ac, pch=19, col=allanno$mutclass_color)
points(y=allanno$case_ac[allanno$mendelian], x=allanno$gnomad_ac[allanno$mendelian], pch=2, cex=1.5, col='red', lwd=2)
text(x=allanno$gnomad_ac, y=allanno$case_ac, labels=allanno$variant, cex=0.7, pos=4)
par(xpd=F)
ac_case = c(0.5,1:1000)
n_case = 10460
n_control = 807162
or = 1000
ac_control = pmax(0.7, ac_case * n_control / (or * n_case))
points(y=ac_case, x=ac_control, type='l', lty=3, lwd=0.5)
mtext(side=3, at=max(ac_control[ac_case < max(ylims)]), line=0.25, text='OR=1,000', cex=0.8)

or = 100
ac_control = pmax(0.7, ac_case * n_control / (or * n_case))
points(y=ac_case, x=ac_control, type='l', lty=3, lwd=0.5)
mtext(side=3, at=max(ac_control[ac_case < max(ylims)]), line=0.25, text='OR=100', cex=0.8)

or = 10
ac_control = pmax(0.7, ac_case * n_control / (or * n_case))
points(y=ac_case, x=ac_control, type='l', lty=3, lwd=0.5)
mtext(side=4, at=max(ac_case[ac_control < max(xlims)]), line=0.25, text='OR=10', las=2, cex=0.8)
dev.off()

allanno %>%
  filter(mutclass=='CpG') %>%
  mutate(pos = ifelse(variant %in% c('R156C','S230L','R208C'), 2, 4)) -> cpgs
  
resx=150
png('cpg_mu_snp_vs_gnomad_ac.png',width=800,height=500,res=resx)
par(mar=c(3,3,1,1))
xlims = range(cpgs$mu_snp) + c(-1e-8, 1e-8)
ylims = c(0.6, max(cpgs$gnomad_ac)*1.15)
plot(NA, NA, xlim=xlims, ylim=ylims, axes=F, ann=F, xaxs='i', yaxs='i', log='y')
# xats = rep(1:9, 2) * 10^rep(-8:-7, each=9)
# xbigs = 10^(-8:-7)
xats = 1:100 * 10^-8
xbigs = c(7e-8, 1e-7, 1.3e-7)
# yats = 0:15*10
# ybigs = 0:3*50
yats = rep(1:9, 3) * 10^rep(0:2, each=9)
ybigs = c(1, 10, 100)
axis(side=1, at=xats, tck=-0.02, labels=NA)
axis(side=1, at=xbigs, tck=-0.04)
mtext(side=1, line=2, text='mutation rate')
axis(side=2, at=yats, tck=-0.02, labels=NA)
axis(side=2, at=ybigs, tck=-0.04, las=2)
mtext(side=2, line=2, text='gnomad AC')
points(cpgs$mu_snp, cpgs$gnomad_ac, col=cpgs$mutclass_color, pch=20)
text(cpgs$mu_snp, cpgs$gnomad_ac, labels=cpgs$variant, cex=0.6, pos=cpgs$pos)
text(cpgs$mu_snp[cpgs$mendelian], cpgs$gnomad_ac[cpgs$mendelian], labels=cpgs$variant[cpgs$mendelian], cex=0.6, pos=cpgs$pos[cpgs$mendelian], col='red')
points(x=cpgs$mu_snp[cpgs$mendelian], y=cpgs$gnomad_ac[cpgs$mendelian], pch=2, cex=1.5, col='red', lwd=2)
par(xpd=T)
legend(x=min(xlims),y=max(ylims)+100, c('CpG variant','Mendelian segregation'), pch=c(20, 2), col=c(color_cpg, 'red'), bty='n', cex=0.8)
par(xpd=F)
dev.off()

allanno %>%
  filter(mendelian & gnomad_ac > 0) %>%
  select(variant, mutclass, gnomad_ac) -> table_of_high_penetrance

table_of_high_penetrance


age_dist = tribble(
  ~disp, ~bin, ~exomes, ~genomes,
  '>30', 30, 5982, 3760,
  '30-35', 35, 3337, 1332,
  '35-40', 40, 3806, 1401,
  '40-45', 45, 46374, 1642,
  '45-50', 50, 60862, 2949,
  '50-55', 55, 71023, 4283,
  '55-60', 60, 83028, 3601,
  '60-65', 65, 108358, 3282,
  '65-70', 70, 83329, 2909,
  '70-75', 75, 6292, 1955,
  '75-80', 80, 2814, 1202,
  '>80', 85, 1950, 438
)  %>%
  mutate(total = exomes + genomes) %>%
  mutate(proportion = total/sum(total))

resx=150
png('gnomad_v4_age_distribution.png',width=800,height=500,res=resx)
par(mar=c(3,4,1,1))
binwidth = 5
xlims = c(25, 85)
plot(NA, NA, xlim=xlims, ylim=c(0, 0.25), axes=F, ann=F, xaxs='i', yaxs='i')
axis(side=1, lwd.ticks=0, at=xlims, labels=NA)
mtext(side=1, line=0.125, at=age_dist$bin-binwidth/2, text=age_dist$disp, cex=0.7)
mtext(side=1, line=1.6, text='age bin')
axis(side=2, at=0:5/20, labels=percent(0:5/20), las=2, cex.axis=0.7)
mtext(side=2, line=2.5, text='proportion')
rect(xleft=age_dist$bin-binwidth, xright=age_dist$bin, ybottom=rep(0,nrow(age_dist)), ytop=age_dist$proportion, border='#FFFFFF', col='#FA9A50')
dev.off()


have_age = sum(age_dist$total)
have_age
gnomad_v4_n = 807162
p_have_age = have_age / gnomad_v4_n

sum(age_dist$proportion[age_dist$bin <= 55])
sum(age_dist$proportion[age_dist$bin <= 60])

lt_e200k = read_tsv("https://raw.githubusercontent.com/ericminikel/prnp_onset/master/data/lt_E200K.tsv")

lt_e200k %>%
  select(age, pt) %>%
  mutate(bin = ceiling(age/5)*5) %>%
  mutate(bin = pmin(pmax(bin,30),85)) %>%
  inner_join(select(age_dist, proportion, bin), by='bin') %>%
  group_by(bin) %>%
  mutate(proportion_this_age = proportion / n()) %>%
  mutate(contribution_to_surviving = proportion_this_age * pt) -> temp
  
sum(temp$contribution_to_surviving)


lt_p102l = read_tsv("https://raw.githubusercontent.com/ericminikel/prnp_onset/master/data/lt_P102L.tsv")

lt_p102l %>%
  select(age, pt) %>%
  mutate(bin = ceiling(age/5)*5) %>%
  mutate(bin = pmin(pmax(bin,30),85)) %>%
  inner_join(select(age_dist, proportion, bin), by='bin') %>%
  group_by(bin) %>%
  mutate(proportion_this_age = proportion / n()) %>%
  mutate(contribution_to_surviving = proportion_this_age * pt) -> temp

sum(temp$contribution_to_surviving)



lt_d178n = read_tsv("https://raw.githubusercontent.com/ericminikel/prnp_onset/master/data/lt_D178N.tsv")

lt_d178n %>%
  select(age, pt) %>%
  mutate(bin = ceiling(age/5)*5) %>%
  mutate(bin = pmin(pmax(bin,30),85)) %>%
  inner_join(select(age_dist, proportion, bin), by='bin') %>%
  group_by(bin) %>%
  mutate(proportion_this_age = proportion / n()) %>%
  mutate(contribution_to_surviving = proportion_this_age * pt) -> temp

sum(temp$contribution_to_surviving)



lt_p102l = read_tsv("https://raw.githubusercontent.com/ericminikel/prnp_onset/master/data/lt_P102L.tsv") %>% mutate(variant='P102L')
lt_d178n = read_tsv("https://raw.githubusercontent.com/ericminikel/prnp_onset/master/data/lt_D178N.tsv") %>% mutate(variant='D178N')
lt_e200k = read_tsv("https://raw.githubusercontent.com/ericminikel/prnp_onset/master/data/lt_E200K.tsv") %>% mutate(variant='E200K')

life_tables = rbind(lt_p102l, lt_d178n, lt_e200k)

life_tables %>%
  select(variant, age, pt) %>%
  mutate(bin = ceiling(age/5)*5) %>%
  mutate(bin = pmin(pmax(bin,30),85)) %>%
  inner_join(select(age_dist, proportion, bin), by='bin') %>%
  group_by(variant, bin) %>%
  mutate(proportion_this_age = proportion / n()) %>%
  mutate(contribution_to_surviving = proportion_this_age * pt) %>%
  ungroup() -> p_in_gnomad_dist

p_in_gnomad_dist %>%
  group_by(variant) %>%
  summarize(.groups='keep', total_p = sum(contribution_to_surviving)) %>%
  ungroup() -> p_in_gnomad_dist_smry

p_in_gnomad_dist_smry

case_prevalence = read_tsv('https://raw.githubusercontent.com/ericminikel/prnp_onset/master/data/mutation_prevalence.tsv')

p_in_gnomad_dist_smry %>%
  left_join(case_prevalence, by='variant') %>%
  mutate(representation = proportion * total_p) -> repres

sum(repres$representation / sum(repres$proportion))



prnp_gnomad_v4 %>%
  filter(vep_annotation %in% c('frameshift_variant','stop_gained')) %>%
  mutate(variant = gsub('p\\.','',tla_to_ola(protein_consequence))) %>%
  select(variant, allele_count) -> ptvs

# ptvs %>% clipcopy()

ptv_curation = read_tsv('gnomad_v4_prnp_ptv_curation.tsv')

ptv_curation_2020 = read_tsv('ptv_curation_2020.tsv')
ptv_curation_2020 %>%
  filter(cat != 'curated') %>%
  filter(!(grepl('(Minikel|this work)',ref) & name %in% ptv_curation$variant)) %>%
  select(codon, ac, variants=name, phenotype) -> ptv2020

ptvs %>%
  select(-allele_count) %>%
  inner_join(ptv_curation, by='variant') %>%
  filter(include) %>%
  mutate(codon = as.integer(gsub('[A-Z].*','',gsub('^[A-Z]','',variant)))) %>%
  group_by(codon) %>%
  summarize(.groups='keep', 
            ac=sum(allele_count),
            variants = paste(variant,collapse=', ')) %>%
  ungroup() %>%
  mutate(phenotype = 'unknown') -> ptv2024


# adapting code from Minikel 2020 Figure 3C:

png('prnp_ptv_diagram_2024.png',width=1600,height=500,res=250)

# lof = read.table('data/curation/prnp_lof.tsv',sep='\t',header=T,quote='')

params = tibble(disp=c('unknown','healthy','dementia'),
                                   color=c('#A9A9A9','#439C71','#CC99CC'),
                                   phenotype=c('unknown','healthy','dementia'))

lof = rbind(ptv2024, ptv2020) %>% 
  arrange(codon) %>%
  mutate(phenotype = case_when(codon %in% c(37, 75) ~ 'healthy',
                               TRUE ~ phenotype)) %>% # add back annotations from Minikel 2020 ED Table 5
  inner_join(params, by='phenotype')

par(mar=c(2,2,2,1))

# AC scale: 0, 1, 10, >100 = 0, 1, 2, 3
ac_scale = data.frame(disp=c('0','1','10','100+'),yval=c(0.5,1,2,3))
ac_ticks = c(0.5, log10(c(1:10, (2:10)*10)) + 1)
ac_trunc = 100
lof$rel_ac = log10(pmin(lof$ac,ac_trunc)) + 1

exon_ybot = 0
exon_ytop = 0.5

plot(NA,NA,xlim=c(1,254),ylim=c(exon_ybot,2),axes=FALSE,xlab='',ylab='')
axis(side=2, at=ac_ticks, labels=NA, tck=-0.025, cex.axis=0.7)
axis(side=2, at=ac_scale$yval, labels=NA, tck=-0.05, lwd=0, lwd.ticks=1, las=2, cex.axis=0.7)
axis(side=2, at=ac_scale$yval, labels=ac_scale$disp, lwd=0, lwd.ticks=0, las=2, cex.axis=0.7, line=-0.5)
mtext(side=2, line=1.25, text='allele count', cex=0.7)
axis(side=1,at=c(1,(1:4)*50,253),labels=NA,lwd=NA,lwd.ticks=1,tck=-0.02,cex.axis=.7,line=-0.1)
axis(side=1,at=c(1,(1:4)*50,253),labels=c(1,(1:4)*50,253),lwd=NA,lwd.ticks=0,cex.axis=.7,line=-1.15)
rect(xleft=1,xright=253,ybottom=exon_ybot,ytop=exon_ytop,col='#000000',border=NA)

rect(xleft=lof$codon-0.5, xright=lof$codon+0.5, ybottom=rep(exon_ytop,nrow(lof)), ytop=lof$rel_ac, col=lof$color, border=NA)
#points(lof$codon,lof$rel_ac,col=lof$color,type='h',lwd=3,lend=1)
mtext(side=1, line=0.65, text='codon number', cex=0.7)

label_y = 2.2
segments(x0=15,x1=135,y0=label_y,lwd=3,lend=1)
segments(x0=140,x1=240,y0=label_y,lwd=3,lend=1)

structure = tribble(
  ~label, ~first, ~last, ~color,
  'signal\npeptide', 1, 22, '#C9C9C9',
  'β\n1', 129, 132, '#FF6103',
  'α\n1', 145, 155, '#236B8E',
  'β\n2', 162, 165, '#FF6103',
  'α\n2', 180, 194, '#236B8E',
  'α\n3', 201, 218, '#236B8E',
  'GPI\nsignal', 231, 253, '#C9C9C9'
)
rect(xleft=structure$first, xright=structure$last, ybottom=rep(exon_ybot,nrow(structure)),ytop=rep(exon_ytop,nrow(structure)), col=structure$color, border=NA)
text(x=(structure$first + structure$last)/2, y=(exon_ybot+exon_ytop)/2, labels=structure$label,cex=0.6)

par(xpd=T)
legend(x=230, y=2.5, params$disp, col=params$color, text.col=params$color, title='phenotype: ', title.col='#000000', pch=15, bty='n', title.adj=0, cex=0.8)
par(xpd=F)
dev.off()






assumed_baseline_risk = 2e-4
penetrance = function(af_case, af_control, baseline_risk=assumed_baseline_risk) {
  calculated_penetrance = af_case * baseline_risk / af_control
  estimated_penetrance = pmin(1,pmax(0,calculated_penetrance)) # trim to [0,1] support
  return (estimated_penetrance)
}
penetrance_confint = function (ac_case, n_case, ac_control, n_control, baseline_risk=assumed_baseline_risk) {
  # for a genotypic model, use 1*n_case; for allelic, use 2*n_case
  # here, results are virtually identical.
  case_confint = binom.confint(x=ac_case,n=2*n_case,method='wilson')
  control_confint = binom.confint(x=ac_control,n=2*n_control,method='wilson')
  lower_bound = penetrance(case_confint$lower,control_confint$upper,baseline_risk)
  best_estimate = penetrance(case_confint$mean,control_confint$mean,baseline_risk)
  upper_bound = penetrance(case_confint$upper,control_confint$lower,baseline_risk)
  return ( c(lower_bound, best_estimate, upper_bound) )
}


# for reference, what the penetrance estimates would be based on the new data:

# E200K
penetrance_confint(571,10460,13,807192)
# [1] 0.3653776 0.6779036 1.0000000

# D178N
penetrance_confint(209,10460,1,807192)
# [1] 0.4975661 1.0000000 1.0000000

# P102L
penetrance_confint(221,10460,2,807192)
# [1] 0.4102153 1.0000000 1.0000000