options(stringsAsFactors=FALSE)
require(stringr)
require(rcdk) # cheminformatics
require(sp) # for point-in-polygon operations

#### set constants

k_ind24 = '#FF2015'
k_cpdb = '#FF9912'
k_anle138b = '#3445CD'
k_lin5044 = '#422323'

leg = data.frame(display=c('IND24','cpd-b','anle138b','LIN5044','in wt mice','in tg mice'),
	color=c('#FF2015','#FF9912','#3445CD','#422323','#000000','#000000'),
	pch=c(20,20,20,20,15,17))

#### comparison of chemical properties vs. drugs and cns drugs

drugs = read.table('http://www.cureffi.org/wp-content/uploads/2013/10/drugs.txt', sep='\t', header=TRUE, quote='', comment.char='')
antiprion = read.table('http://www.cureffi.org/wp-content/uploads/2013/11/antiprion_cpds.txt', sep='\t', header=TRUE, quote='', comment.char='')

# remove Inulin, which is really a biological, and anything w/o SMILES available
drugs = subset(drugs, generic_name != "Inulin" & smiles != '')
drugs$mw = as.numeric(NA)
drugs$xlogp = as.numeric(NA)

# only consider the 4 antiprion compounds of interest here
antiprion = subset(antiprion, common_name %in% c('IND24','cpd-b','anle138b'))

xlogp_descriptor = "org.openscience.cdk.qsar.descriptors.molecular.XLogPDescriptor" 
mw_descriptor = "org.openscience.cdk.qsar.descriptors.molecular.WeightDescriptor" 

for (i in 1:nrow(drugs)) {
    molecule = parse.smiles(drugs$smiles[i])[[1]]
    drugs$mw[i] = eval.desc(molecule, mw_descriptor)
    xlogp_error = tryCatch( 
        { drugs$xlogp[i] = eval.desc(molecule, xlogp_descriptor) },
        error = function(e) e )
  if(inherits(xlogp_error,"error")) next # just skip any molecules that throw null pointed exceptions on xlogp
}

for (i in 1:nrow(antiprion)) {
    molecule = parse.smiles(antiprion$smiles[i])[[1]]
    antiprion$mw[i] = eval.desc(molecule, mw_descriptor)
    xlogp_error = tryCatch( 
        { antiprion$xlogp[i] = eval.desc(molecule, xlogp_descriptor) },
        error = function(e) e )
  if(inherits(xlogp_error,"error")) next # just skip any molecules that throw null pointed exceptions on xlogp
}
antiprion$pos = c(2,4,2)

png('~/d/j/cureffi/media/2015/09/polythiophene-chemical-property-comparison.png',width=800, height=450, pointsize=15)
par(mar=c(5,5,4,4))
plot(NA, NA, xlim=c(0,2000), ylim=c(-20,20), xaxs='i', yaxs='i', xlab='', ylab='', main='', yaxt='n')
axis(side=2, at=(-4:4)*5, lwd=1, lwd.ticks=1, las=2)
mtext(side=1, text='Molecular weight', font=2, line=2.5)
mtext(side=2, text='XLogP', font=2, line=3.5)
mtext(side=2, text='\u2190hydrophobic       hydrophilic\u2192', line=2.5, cex=.9)
points(drugs$mw, drugs$xlogp, pch=19, col='#00FFFF')
points(drugs$mw[drugs$cns_drug], drugs$xlogp[drugs$cns_drug], pch=19, col='#FF9912')
points(antiprion$mw, antiprion$xlogp, pch=20, col='#000000')
text(x=antiprion$mw, y=antiprion$xlogp, pos=antiprion$pos, labels=antiprion$common_name, font=2, cex=.8, col='#000000')
# MW and XLogP from ChemDraw for LIN5044:
points(x=611.92, y=5.78, pch=20, col='#000000')
text(x=611.92, y=5.78, pos=4, labels='LIN5044', font=2, cex=.8, col='#000000')
legend('topright',legend=c('CNS drugs','Non-CNS drugs','antiprion compounds'), col=c('#FF9912','#00FFFF','#000000'), pch=19, cex=.8)
title('Antiprion compounds in the chemical property space of drugs')
dev.off()

### comparison of efficacy data with other antiprion compounds

percent = function(proportion,digits=2) {
  return ( gsub(' ','',paste(formatC(proportion*100, digits=digits, format='fg'),"%",sep="") ) )
}

data = read.table('http://www.cureffi.org/media/2015/09/timepoint-delay-data-with-polythiophenes.tsv',sep='\t',header=TRUE)

data$timepoint = data$treatment_start_dpi / data$control_endpoint_dpi
data$delay = data$treatment_endpoint_dpi / data$control_endpoint_dpi - 1

data$pch = 0
data$pch[data$mouse=='wt'] = 15
data$pch[data$mouse=='tg'] = 17

leg = data.frame(display=c('IND24','cpd-b','anle138b','LIN5044','in wt mice','in tg mice'),
	color=c('#FF2015','#FF9912','#3445CD','#677089','#000000','#000000'),
	pch=c(20,20,20,20,15,17))
data$color = leg$color[match(data$compound, leg$display)]

png('~/d/j/cureffi/media/2015/09/polythiophene-efficacy-comparison.png',width=800, height=450, pointsize=15)
par(mar=c(4,5,4,4))
plot(NA, NA, xlab='', ylab='', xlim=c(-.15,1), ylim=c(0,3.5), yaxs='i', axes=FALSE)
abline(h=0, lwd=2, col='#000000')
abline(h=1:3, lwd=.5, col='#888888')
abline(v=0, lwd=1, col='#000000')
axis(side=1, at=(-1:10)/10, labels=percent((-1:10)/10), lwd=0, lwd.ticks=1, cex.axis=1)
axis(side=2, at=(0:6)/2, labels=paste((0:6)/2+1,'x',sep=''), lwd=0, lwd.ticks=.5, cex.axis=.9, las=2)
points(data$timepoint, data$delay, pch=data$pch, col=data$color, cex=2)
mtext(side=1, text='Timepoint when continuous treatment initiated', font=2, line=2.5, cex=.9)
mtext(side=2, text='Survival time relative to controls', font=2, line=3.5, cex=.9)
legend('topright', leg$display, col=leg$color, pch=leg$pch, bg='#FFFFFF')
title('Polythiophene efficacy by timepoint vs. other antiprion compounds', cex=.9)
dev.off()

