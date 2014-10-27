---
layout: post
title:  "Molecular Biology 19: 'Gene regulation V - nucleosomes and enhancers'"
date:   2014-10-27 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 19 in Harvard's BCMP 200: Molecular Biology course, delivered by Timur Yusufzai on October 27, 2014.*

### Take home messages for today

1. "Transcription occurs in the context of chromatin."
2. The default state of your genome is OFF.&dagger;

&dagger;This is in contrast to bacteria, where the default state is ON. In eukaryotes, turning on a gene requries overcoming the nucleosomal barriers.

### Facts about nucleosomes, enhancers and gene regulation

When there are nucleosomes at a promter, the gene is OFF. A nucleosome-free promoter is ON, and is not necessarily protein-free - other proteins may be bound there. 

How do nucleosomes along the gene affect transcription elongation? Elongation is facilitated by chromatin remodeling factors, and histone modifications.

ChIP-seq on RNA pol II and histones on an inducible galactose-response gene has demonstrated that sometimes nucleosomes go away when a gene becomes actively transcribed [[Schwabish & Struhl 2004]]. (This turns out not to be true of all genes). Another experiment used heat shock to induce Hsp70. RNA pol II takes two minutes after heat shock to reach the end of the gene. Yet with MNase digestion + qPCR you can see nucleosomes late in the gene disappearing even before RNA pol II would reach there, thus, chromatin remodeling runs ahead of RNA pol II [[Petesch & Lis 2008]]. This turns out to involve ADP ribosylation and histone acetylation [[Petesch & Lis 2012]].

H3K27me3 is a repressive mark. H3K27ac, H3K36me3 and H3K4me3 are associated with active genes.

The readers of H3K36me3 appear to be ISWI and CHD1, both of which are histone remodelers.

Many genes have some basal level of constitutive transcription, but need additional factors to become activated and achieve higher transcription.

CREB, Sp1 and C/EBP which bind in the promoter recruit chromatin remodelers to work downstream.

Some transcription factors recruit "co-activators" which are usually histone acetyltransferases (HATs) such as p300 HAT. 

Enhancers are segments of DNA. It was shown that enhancers are usually H3K4me1 but not H3K4me3, in contrast to promoters which are usually H3K4me3 and not H3K4me1 [[Creyghton 2010]]. Though this association is probably true and is still widely accepted, there is also a bit of circular reasoning in there, as H3K4me1 is used to identify enhancers, and then enhancers are shown to be enriched for H3K4me1.

Sometimes there are super enhancers which greatly increase transcription. These super enhancers are just bigger than regular enhancers and have more sites to bind factors that will help activate transcription.

It is not known how signals get from the enhancer to the promoter, though models abound. In yeast, enhancers and promoters are close, so people have proposed that a bunch of proteins just bind until they reach all the way to the promoter. But in mammals, sometimes enhancers can be megabases away, so there has to be some other mechanism. One idea is "tracking" - a protein binds the enhancer and then searches downstream until it finds the promoter. Another proposed mechanism is "looping", where the enhancer and promoter are close together in three-dimensional space even if separated by megabases of sequence. You can test the "looping" model by chromosome conformation capture [[Dekker 2002]] in which you cross-link proximate DNA pieces to each other and then ligate, then perform sequencing to see what was next to what. This method has indeed given evidence for enhancers and promoters being physically together for some genes [[Kagey 2010]].

An enormous (22 subunits, total 1.0 MDa) complex called Mediator mediates all the signals incoming to the promoter from various activators and stuff. All RNA pol II-dependent genes require Mediator for their expression. Surprisingly, although Mediator is essential for life, there are deletions and missense mutations of various subunits which cause human diseases [reviewed in [Yin & Wang 2014]].

### Ways of detecting changes in RNA expression

**Northern blots** are pretty easy to set up and easy to quantify results. They work for long and short RNAs, and can detect splice variants. But it requires radioactivity (at least for best results), is not as sensitive as other methods, and takes a long time.

**Primer extension** reveals the start site of the transcript. But it also requires radioactivity, plus a sequencing gel, and has low sensitivity.

**qPCR** is highly automatable, quick and labor-saving if you are doing a lot of samples. Downsides are you must carefully select primers to be specific for the transcript of interest (or else rule out other PCR products by other means later on), you have to run a standard curve every time in order to quantify results, and you need to buy a qPCR machine.

### More facts about enhancers and gene regulation

The H19 locus is imprinted - only the maternal copy is expressed. Only mammals have imprinting. It is accomplished by DNA methylation. Imprinting is reviewed in [[Reik & Walter 2001]]. The current model is that imprinting arose as a battle for limited resources. In some mammals, one litter will contain half-siblings from multiple fathers. So a theory is that each father wants to help its offspring outcompete other fathers' offspring, while the mother (because all of the offspring are hers) wants to silence the various fathers' genes.

An example is that a male tiger and female lion yield a tigon (smaller than either a lion or tiger) while a male lion and female tiger yield a liger (larger than either a lion or tiger). This is believed to be because lions have strong imprinting signals and tigers have weak imprinting signals. So the thought is that the male tiger's imprinting gets overruled by the female lion in the tigon, whereas the female tiger's imprints get overruled by the male lion in the liger.

In the maternal chromosome, CTCF binds unmethylated promoters of H19, while in the paternal chromosome CTCF cannot bind the methylated promoter. This signals downstream through FoxA and Igf2 to control gene expression.

There are also things called insulators. Sometimes an enhancer sits between two genes that each point away from the center, and if you put an insulator in between the enhancer and one gene, it will turn off that gene. An example of this has been studied with a two-enhancer reporter gene in *Drosophila* embryos [[Cai & Shen 2001]].

Transgenes sometimes get integrated into a random piece of heterochromatin, which gradually spreads its heterochromatin character over the transgene, turning it off. Thus you only get transient expression. To make sure a transgene is expressed you can put insulators before it to prevent the encroachment of heterochromatin marks. This isn't a big deal for transgenetic studies in the lab because you can just use selection (say, with antibiotic resistance genes) to pick clones that have the transgene expressed. But for gene therapy, this idea of using an insulator to ensure gene expression is really important, and there are a bunch of patents on it.

[Schwabish & Struhl 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15542822 "Schwabish MA, Struhl K. Evidence for eviction and rapid deposition of histones upon transcriptional elongation by RNA polymerase II. Mol Cell Biol. 2004 Dec;24(23):10111-7. PubMed PMID: 15542822; PubMed Central PMCID: PMC529037."

[Petesch & Lis 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18614012 "Petesch SJ, Lis JT. Rapid, transcription-independent loss of nucleosomes over  a large chromatin domain at Hsp70 loci. Cell. 2008 Jul 11;134(1):74-84. doi: 10.1016/j.cell.2008.05.029. PubMed PMID: 18614012; PubMed Central PMCID: PMC2527511."

[Petesch & Lis 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22178397 "Petesch SJ, Lis JT. Activator-induced spread of poly(ADP-ribose) polymerase promotes nucleosome loss at Hsp70. Mol Cell. 2012 Jan 13;45(1):64-74. doi: 10.1016/j.molcel.2011.11.015. Epub 2011 Dec 15. PubMed PMID: 22178397; PubMed Central PMCID: PMC3473076."

[Creyghton 2010]: http://www.ncbi.nlm.nih.gov/pubmed/21106759 "Creyghton MP, Cheng AW, Welstead GG, Kooistra T, Carey BW, Steine EJ, Hanna J, Lodato MA, Frampton GM, Sharp PA, Boyer LA, Young RA, Jaenisch R. Histone H3K27ac separates active from poised enhancers and predicts developmental state. Proc Natl Acad Sci U S A. 2010 Dec 14;107(50):21931-6. doi: 10.1073/pnas.1016071107. Epub 2010 Nov 24. PubMed PMID: 21106759; PubMed Central PMCID: PMC3003124."

[Dekker 2002]: http://www.ncbi.nlm.nih.gov/pubmed/11847345 "Dekker J, Rippe K, Dekker M, Kleckner N. Capturing chromosome conformation. Science. 2002 Feb 15;295(5558):1306-11. PubMed PMID: 11847345."

[Kagey 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20720539 "Kagey MH, Newman JJ, Bilodeau S, Zhan Y, Orlando DA, van Berkum NL, Ebmeier CC, Goossens J, Rahl PB, Levine SS, Taatjes DJ, Dekker J, Young RA. Mediator and cohesin connect gene expression and chromatin architecture. Nature. 2010 Sep 23;467(7314):430-5. doi: 10.1038/nature09380. Epub 2010 Aug 18. Erratum in: Nature. 2011 Apr 14;472(7342):247. PubMed PMID: 20720539; PubMed Central PMCID: PMC2953795."

[Yin & Wang 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24550107 "Yin JW, Wang G. The Mediator complex: a master coordinator of transcription and cell lineage development. Development. 2014 Mar;141(5):977-87. doi: 10.1242/dev.098392. Review. PubMed PMID: 24550107."

[Reik & Walter 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11253064 "Reik W, Walter J. Genomic imprinting: parental influence on the genome. Nat Rev Genet. 2001 Jan;2(1):21-32. Review. PubMed PMID: 11253064."

[Cai & Shen 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11161205 "Cai HN, Shen P. Effects of cis arrangement of chromatin insulators on enhancer-blocking activity. Science. 2001 Jan 19;291(5503):493-5. PubMed PMID: 11161205."