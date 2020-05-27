options(stringsAsFactors=F)
if(interactive()) {
  setwd('~/j/cureffi/media/2020/05/')
}

### CONSTANTS

# colors for functional classes
color_syn = k_syn = '#AAAAAA'
color_mis = k_mis = '#FF6103'
color_lof = k_lof = '#9D1309'

# colors for mutational classes - though didn't end up using these
color_cpg = '#2E9FFE'
color_ti = '#458B00'
color_tv = '#EA4444'

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

# file downloaded from https://gnomad.broadinstitute.org/gene/ENSG00000171867?dataset=gnomad_r2_1 on May 25, 2020:
prnp_gnomad_v2 = read.table('gnomAD_v2.1.1_ENSG00000171867_2020_05_25_11_07_30.csv',sep=',',header=T)
colnames(prnp_gnomad_v2) = tolower(colnames(prnp_gnomad_v2))
prnp_gnomad_v2$pos_id = paste(prnp_gnomad_v2$chromosome, formatC(prnp_gnomad_v2$position, width=9, flag='0'), prnp_gnomad_v2$reference, prnp_gnomad_v2$alternate, sep='_')

# synthetic VCF Konrad gave me:
synth = read.table('prnp_synthetic.table',sep='\t',header=T)
colnames(synth) = tolower(colnames(synth))
synth$pos_id = paste(synth$chrom, formatC(synth$pos, width=9, flag='0'), synth$ref, synth$alt, sep='_')

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
# handle synonymous
synth$aa_change[synth$consequence=='synonymous_variant'] = paste0(synth$amino_acids[synth$consequence=='synonymous_variant'], synth$codon[synth$consequence=='synonymous_variant'], synth$amino_acids[synth$consequence=='synonymous_variant'])



# assign functional classes
synth$funclass = gsub('_variant','',synth$consequence)
synth$funclass[synth$consequence=='stop_retained_variant'] = 'synonymous'
synth$funclass[synth$consequence=='initiator_codon_variant'] = 'missense'
synth$funclass[synth$consequence=='stop_lost'] = 'missense'
synth$funclass[synth$consequence=='stop_gained'] = 'ptv'

# check if present in gnomAD v2
synth$in_gnomad_v2 = synth$pos_id %in% prnp_gnomad_v2$pos_id
synth$alpha[synth$in_gnomad_v2] = 1
synth$alpha[!synth$in_gnomad_v2] = 0.2

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
