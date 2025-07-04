options(stringsAsFactors=F)
if(interactive()) {
  setwd('~/j/cureffi/media/2025/07/')
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

params = tibble(disp=c('unknown','healthy','dementia'),
                color=c('#A9A9A9','#439C71','#CC99CC'),
                phenotype=c('unknown','healthy','dementia'))


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

# check if present in gnomAD v4
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


prnp_gnomad_v4 %>%
  filter(vep_annotation %in% c('frameshift_variant','stop_gained')) %>%
  mutate(variant = gsub('p\\.','',tla_to_ola(protein_consequence))) %>%
  select(variant, allele_count) %>%
  mutate(source='gnomAD') -> gnomad_v4_ptvs

# ptvs %>% clipcopy()

ptv_curation = read_tsv('gnomad_v4_prnp_ptv_curation.tsv')

ptv_curation_2020 = read_tsv('ptv_curation_2020.tsv')
ptv_curation_2020 %>%
  filter(cat != 'curated') %>%
  filter(!(grepl('(Minikel|this work)',ref) & name %in% ptv_curation$variant & phenotype %in% c('healthy','unknown'))) %>%
  select(codon, ac, variants=name, phenotype) %>%
  mutate(source = case_when(variants=='L234Pfs7X' ~ 'gnomAD**',
                            phenotype=='dementia' ~ 'prion cases',
                            TRUE ~ 'gnomAD*')) -> ptv2020

gnomad_v4_ptvs %>%
  select(-allele_count) %>%
  inner_join(ptv_curation, by='variant') %>%
  filter(include) %>%
  mutate(codon = as.integer(gsub('[A-Z].*','',gsub('^[A-Z]','',variant)))) %>%
  group_by(codon, source) %>%
  summarize(.groups='keep', 
            ac=sum(allele_count),
            variants = paste(variant,collapse=', ')) %>%
  ungroup() %>%
  mutate(phenotype = 'unknown') -> ptv2024


rbind(ptv2024, ptv2020) %>% 
  arrange(codon) %>%
  mutate(phenotype = case_when(codon %in% c(37, 75) ~ 'healthy',
                               TRUE ~ phenotype)) %>% # add back annotations from Minikel 2020 ED Table 5
  inner_join(params, by='phenotype') %>%
  filter(codon >= 145) %>%
  mutate(source = case_when(grepl('gnomAD',source) ~ 'gnomAD',
                            TRUE ~ source)) %>%
  pivot_wider(id_cols=c(codon, variants), names_from=source, values_from=ac, values_fill = 0) %>%
  rename(prion = `prion cases`, gnomad=gnomAD) %>%
  mutate(total = prion + gnomad) %>%
  mutate(disp_step0 = gsub('X12','12X',gsub('X10','10X',gsub('X18','18X',variants)))) %>%
  mutate(disp_step1 = paste0(disp_step0, case_when(variants=='L234Pfs7X' ~ '*', 
                                                 TRUE ~ ''))) %>%
  mutate(disp_step2 = str_pad(disp_step1, width=max(nchar(variants)), side='right', pad=' ')) -> cterm_combined

# adapting code from Minikel 2020 Figure 3C:

png('prnp_ptv_diagram_2025.png',width=1600,height=800,res=250)


prion_color = '#542c94'
gnomad_color = '#92DE92'
par(mar=c(2,2,2,1))

# AC scale: 0, 1, 10, >100 = 0, 1, 2, 3
ac_scale = data.frame(disp=c('0','1','10','100+'),yval=c(0.5,1,2,3))
ac_ticks = c(0.5, log10(c(1:10, (2:10)*10)) + 1)
ac_trunc = 100


exon_ybot = 0
exon_ytop = 0.5

plot(NA,NA,xlim=c(143.5,254),ylim=c(exon_ybot,2.2),axes=FALSE,xlab='',ylab='')
axis(side=2, at=ac_ticks, labels=NA, tck=-0.025, cex.axis=0.7)
axis(side=2, at=ac_scale$yval, labels=NA, tck=-0.05, lwd=0, lwd.ticks=1, las=2, cex.axis=0.7)
axis(side=2, at=ac_scale$yval, labels=ac_scale$disp, lwd=0, lwd.ticks=0, las=2, cex.axis=0.7, line=-0.25)
mtext(side=2, line=1.25, text='allele count', cex=0.7)
axis(side=1,at=c(1,(1:4)*50,253),labels=NA,lwd=NA,lwd.ticks=1,tck=-0.02,cex.axis=.7,line=-0.1)
axis(side=1,at=c(1,(1:4)*50,253),labels=c(1,(1:4)*50,253),lwd=NA,lwd.ticks=0,cex.axis=.7,line=-1.15)
rect(xleft=1,xright=253,ybottom=exon_ybot,ytop=exon_ytop,col='#000000',border=NA)

rect(xleft=cterm_combined$codon-0.45, xright=cterm_combined$codon+0.45, ybottom=rep(exon_ytop,nrow(cterm_combined)), ytop=log10(cterm_combined$total)+1, col=gnomad_color, border=NA)
rect(xleft=cterm_combined$codon-0.45, xright=cterm_combined$codon+0.45, ybottom=rep(exon_ytop,nrow(cterm_combined)), ytop=pmax(log10(cterm_combined$prion)+1,exon_ytop), col=prion_color, border=NA)
#points(lof$codon,lof$rel_ac,col=lof$color,type='h',lwd=3,lend=1)
mtext(side=1, line=0.65, text='codon number', cex=0.7)

text(x=cterm_combined$codon+0.5, y=log10(cterm_combined$total)+1+0.2, adj=c(0,0), labels=cterm_combined$disp_step2, cex=0.55, pos=3, srt=90, family='mono')

label_y = 2.2
#segments(x0=15,x1=135,y0=label_y,lwd=3,lend=1)
#segments(x0=140,x1=240,y0=label_y,lwd=3,lend=1)

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
legend(x=230, y=2.5, c('prion cases','gnomAD'), col=c(prion_color,gnomad_color), pch=15, bty='n', title.adj=0, cex=0.8)
par(xpd=F)
dev.off()

cases = 53734
controls = 327258

fisher.test(matrix(c(6, cases-6, 0, controls-0), nrow=2, byrow=T))
fisher.test(matrix(c(5, cases-5, 1, controls-1), nrow=2, byrow=T))
fisher.test(matrix(c(4, cases-4, 2, controls-2), nrow=2, byrow=T))
fisher.test(matrix(c(3, cases-3, 3, controls-3), nrow=2, byrow=T))
fisher.test(matrix(c(2, cases-2, 4, controls-4), nrow=2, byrow=T))
fisher.test(matrix(c(1, cases-1, 5, controls-5), nrow=2, byrow=T))
fisher.test(matrix(c(0, cases-0, 6, controls-6), nrow=2, byrow=T))


ptv2024 %>% filter(codon >= 145) %>% pull(ac) %>% sum()



png('prnp_ptv_diagram_2025_part2.png',width=1600,height=800,res=250)

unknown_color = '#A9A9A9'
prion_color = '#542c94'
benign_color = '#92DE92'
cterm_combined %>%
  mutate(color = case_when(prion > 0 ~ prion_color,
                           codon %in% c(186, 223) ~ prion_color,
                           codon %in% c(155, 157, 159, 196, 217) ~ benign_color,
                           TRUE ~ unknown_color)) -> cterm_combined


par(mar=c(2,2,2,1))

# AC scale: 0, 1, 10, >100 = 0, 1, 2, 3
ac_scale = data.frame(disp=c('0','1','10','100+'),yval=c(0.5,1,2,3))
ac_ticks = c(0.5, log10(c(1:10, (2:10)*10)) + 1)
ac_trunc = 100


exon_ybot = 0
exon_ytop = 0.5

plot(NA,NA,xlim=c(143.5,254),ylim=c(exon_ybot,2.2),axes=FALSE,xlab='',ylab='')
axis(side=2, at=ac_ticks, labels=NA, tck=-0.025, cex.axis=0.7)
axis(side=2, at=ac_scale$yval, labels=NA, tck=-0.05, lwd=0, lwd.ticks=1, las=2, cex.axis=0.7)
axis(side=2, at=ac_scale$yval, labels=ac_scale$disp, lwd=0, lwd.ticks=0, las=2, cex.axis=0.7, line=-0.25)
mtext(side=2, line=1.25, text='allele count', cex=0.7)
axis(side=1,at=c(1,(1:4)*50,253),labels=NA,lwd=NA,lwd.ticks=1,tck=-0.02,cex.axis=.7,line=-0.1)
axis(side=1,at=c(1,(1:4)*50,253),labels=c(1,(1:4)*50,253),lwd=NA,lwd.ticks=0,cex.axis=.7,line=-1.15)
rect(xleft=1,xright=253,ybottom=exon_ybot,ytop=exon_ytop,col='#000000',border=NA)

rect(xleft=cterm_combined$codon-0.45, xright=cterm_combined$codon+0.45, ybottom=rep(exon_ytop,nrow(cterm_combined)), ytop=log10(cterm_combined$total)+1, col=cterm_combined$color, border=NA)
#points(lof$codon,lof$rel_ac,col=lof$color,type='h',lwd=3,lend=1)
mtext(side=1, line=0.65, text='codon number', cex=0.7)

text(x=cterm_combined$codon+0.5, y=log10(cterm_combined$total)+1+0.2, adj=c(0,0), labels=cterm_combined$disp_step2, cex=0.55, pos=3, srt=90, family='mono')

label_y = 2.2
#segments(x0=15,x1=135,y0=label_y,lwd=3,lend=1)
#segments(x0=140,x1=240,y0=label_y,lwd=3,lend=1)

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
legend(x=230, y=2.5, c('pathogenic','benign','unknown'), col=c(prion_color,benign_color,unknown_color), title.col='#000000', title='best guess classification', pch=15, bty='n', title.adj=0, cex=0.8)
par(xpd=F)
dev.off()
