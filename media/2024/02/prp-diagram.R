

# evaluate an expression stored as a string
# this just shortens the syntax which is otherwise eval(parse(text="mystring"))
# see http://stackoverflow.com/questions/1743698/r-eval-expression
evals = function(mystring) {
  return (eval(parse(text=mystring)))
}

# PRNP GenBank entry http://www.ncbi.nlm.nih.gov/nuccore/NG_009087.1
huprp = 'MANLGCWMLVLFVATWSDLGLCKKRPKPGGWNTGGSRYPGQGSPGGNRYPPQGGGGWGQPHGGGWGQPHGGGWGQPHGGGWGQPHGGGWGQGGGTHSQWNKPSKPKTNMKHMAGAAAAGAVVGGLGGYMLGSAMSRPIIHFGSDYEDRYYRENMHRYPNQVYYRPMDEYSNQNNFVHDCVNITIKQHTVTTTTKGENFTETDVKMMERVVEQMCITQYERESQAYYQRGSSMVLFSSPPVILLISFLIFLIVG'

# post-translational modifications
sp = 1:22
final = 23:230
gpi = 231:253

# Riek 1996 http://www.ncbi.nlm.nih.gov/pubmed/8700211
# Regions of secondary structure - translated from mouse numbering
b1 = 129:132
h1 = 145:155
b2 = 162:165
h2 = 180:194
h3 = 201:218

# Octapeptide repeats
opr = 60:91

# colors for secondary structure
bcolor = '#FF6103' # cadmium orange
hcolor = '#236B8E' # steelblue
ocolor = '#B87333' # copper
cleaved = '#C0C0C0' # silver
rest = '#EEC900' # gold2
dscolor = '#5E2605' #van dyke brown - for disulfide bonds
delcolor = '#000000' # black for deleted elements

# other colors
vcolor = '#C0C0C0' # color for vertical lines

k = rep(rest,253)
k[sp] = cleaved
k[gpi] = cleaved
k[opr] = ocolor
k[b1] = bcolor
k[b2] = bcolor
k[h1] = hcolor
k[h2] = hcolor
k[h3] = hcolor

aapch = '|' # square for present amino acids
delpch = 20

pch = rep(15,253)
pch[]

strsplit(huprp,split='')


prps = data.frame(name=character(), # name of mutant
                  height=integer(), # height at which to plot
                  deleted=character(), # positions deleted
                  produces=character(), # produces transmissible prions spontaneously?
                  accepts=character(), # accepts inoculated prions in vivo?
                  otherphen=character(), # any other spontaneous phenotype?
                  cite=character()) # citation
prps["wt",] = c("'Wild-type'",0,"254","no","yes","no","") # 254 is an ugly hack to get wild-type to plot properly


prps$height = seq(20/dim(prps)[1],20,20/dim(prps)[1])
increment = 20/dim(prps)[1]

png('~/j/cureffi/media/2024/02/prp-diagram.png',width=800,height=100)
par(mar=c(3,1,3,1))
plot(NA,NA,xaxt='n',yaxt='n',xlim=c(0,254),ylim=c(0,1),xlab='',ylab='',axes=F,ann=F)
axis(side=1,at=c(1,23,50,100,150,200,230,253),
     labels=c(1,23,50,100,150,200,230,253),cex=.5,las=2)
mtext(side=3,line=0.25,at=c(mean(sp),mean(opr),mean(b1),mean(h1),mean(b2),
       mean(h2),mean(h3),mean(gpi)),
     col=c(cleaved,ocolor,bcolor,hcolor,bcolor,
           hcolor,hcolor,cleaved),
     text=c("SP","OR",expression(paste(beta,1)),
              expression(paste(alpha,1)),
              expression(paste(beta,2)),
              expression(paste(alpha,2)),
              expression(paste(alpha,3)),
              "GPI"))

row = 1
deleted = evals(prps$deleted[row])
present = (1:253)[-deleted]
ht = 1
mid = 0.5
wid = 0.5
text(-100,ht,labels=evals(prps$name[row]),pos=4) # name

if (length(deleted) > 1) {
  segments(x0=deleted-wid, x1=deleted+wid,y0=mid-ht/2,y1=mid+ht/2,col=delcolor)
}

rect(xleft=present-wid, xright=present+wid, ybottom=mid-ht/2, ytop=mid+ht/2, col=k[present], border=NA)
dev.off()