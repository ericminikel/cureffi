---
layout: post
title:  "Molecular Biology 23: 'mRNA processing'"
date:   2014-11-07 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 23 in Harvard's BCMP 200: Molecular Biology course, delivered by [Stirling Churchman](https://twitter.com/fiddle) on November 7, 2014.*

### Promoter-proximal pausing, continued

Promoter-proximal pausing was first discovered on heat shock genes in flies, and later in many human promoters [[Core 2008]]. What we now know is reviewed in [[Adelman & Lis 2012]]. p-TEFb is a heterodimer of Cdk9 and a cyclin component which is required to license the RNA pol II complex to elongate after it has initiated transcription. Cdk9 phosphorylates S2 (serine at position 2) of the RNA pol II CTD as well as DSIF and NELF, and Cdk9 can be inhibited by flavopiridol which makes it easy to study. In addition, c-Myc binds to p-TEFb and stimulates transcription of many oncogenes. c-Myc is inhibited by 100058-F4.

One important study used these small molecules plus phospho-specific antibodies to study the dynamics of promter-proximal pausing in mouse embryonic stem cells [[Rahl 2010]]. Inhibition of p-TEFb very potently prevents elongation from proceeding past promoters. Inhibition of c-Myc has similar effects but only against a subset of genes - not all genes are regulated by c-Myc.

### Capping

[5' capping](http://en.wikipedia.org/wiki/Five_prime_cap) is the earliest mark of RNA pol II-transcribed transcripts, placed after only 25-30nt have been transcribed, just after the transcription complex has moved on from the promoter and begun elongating. It has no sequence specificity. It is accomplished by a GTase which binds the RNA pol II CTD. A crystal structure of one such GTase, Mce1, with the RNA pol II CTD, has been solved [[PDB# 3RTX](http://pdb.org/pdb/explore/explore.do?structureId=3RTX), [Ghosh 2011]].

Capping serves many purposes:

+ Stablizes mRNA and protects them from the 5'&rarr;3' exonuclease Xrn1
+ Promotes translation by allowing eIF4F to bind and facilitating circularization of the mRNA
+ Somehow important for mRNA splicing
+ Somehow important for mRNA export from the nucleus

### Splicing

Humans have an average of almost 8 introns per gene, higher than any other organism we know of [reviewed in [Roy & Gilbert 2006]] - mice are a close second.

The splicing process has been understood at a chemical level for decades; it involves cleaveage and then a 3' attack on a 5' phosphate [see [Berg 2002](http://www.ncbi.nlm.nih.gov/books/NBK21154/) [Chapter 28](http://www.ncbi.nlm.nih.gov/books/NBK22563/), particularly [Figure 28.29](http://www.ncbi.nlm.nih.gov/books/NBK22563/figure/A4006/?report=objectonly)].

In yeast, which have few introns and even less flexible splicing, there is a single consensus sequence for splice sites. In animals, many transcripts have alternate splice products, so obviously, the sequence signals that cause splicing cannot be as perfectly characteristic. Many studies of splicing are done in yeast because it is more tractable; it remains to be seen to what extent the findings from yeast will map onto animals.

Splicing is performed by the spliceosome, which has to identify splice sites in a sea of mRNA and bring them together within atomic distance in 3D space despite being separated by up to 10kb in linear space. The complex has to be dynamically assembled and disassembled and flexible enough to accommodate alternative splicing. Many steps in splicing are still unknown. We do know it is mediated by many U-rich small nuclear ribonucleoproteins (snRNPs) [reviewed in [Wahl 2009]]. A new single-molecule approach has been helpful in studying the spliceosome [[Hoskins 2011]].

One motivation for studying splicing is the growing number of human diseases attributed to splice disruption. Splicing factors are often mutated in tumors, and there are currently clinical trials of drugs targeting SF3B1, a splice factor.

About 93% of human genes have alternatively spliced transcripts [[Wang 2008]]. Differences include whether a given exon is included at all, alternate 5' splice sites of an exon, alternate 3' splice sites of an exon, and variable retention of introns.

Changes in transcription affect splicing. There are two main models (not mutually exclusive) to explain how these processes are coupled. According to the "recruitment model", factors bound to the RNA pol II can hop off of CTD and onto the mRNA, later influencing the splicing outcome. According to the "kinetic model", the speed of RNA pol II progression through a region affects splicing: slower progression leaves more time for splicing, thus making it more likely that even weak splice sites will be used.

The *PTPRC* gene encodes a single-pass transmembrane protein called CD45, where the extracellular part contains different subunits depending on alternative splicing of its transcript. It is used as a model system to study alternative splicing. One important study looked at this gene in different Burkitt's lymphoma cell lines [[Shukla 2011]]. In a cell line with more inclusion of exon 5, RNA pol II was more often paused on exon 5. They then looked at ENCODE data and found that a protein called CTCF was often bound to exon 5. ChIP on CTCF confirmed correlation (but still not causation) between CTCF binding and RNA pol II pausing. Knockdown of CTCF with shRNA reduced the rate of exon 5 inclusion. They then confirmed in an *in vitro* transcription assay that adding CTCF to a reaction with an RNA containing a canonical CTCF binding site was sufficient to cause RNA pol II to pause. How, then, is CTCF's DNA binding regulated in order to regulate splicing? It turns out that CTCF is inversely correlated with the presence of 5-methylcytosine in the DNA (5mC).

[Core 2008]: http://www.ncbi.nlm.nih.gov/pubmed/19056941 "Core LJ, Waterfall JJ, Lis JT. Nascent RNA sequencing reveals widespread pausing and divergent initiation at human promoters. Science. 2008 Dec 19;322(5909):1845-8. doi: 10.1126/science.1162228. Epub 2008 Dec 4. PubMed PMID:  19056941; PubMed Central PMCID: PMC2833333."

[Adelman & Lis 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22986266 "Adelman K, Lis JT. Promoter-proximal pausing of RNA polymerase II: emerging roles in metazoans. Nat Rev Genet. 2012 Oct;13(10):720-31. doi: 10.1038/nrg3293.  Review. PubMed PMID: 22986266; PubMed Central PMCID: PMC3552498."

[Rahl 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20434984/ "Rahl PB, Lin CY, Seila AC, Flynn RA, McCuine S, Burge CB, Sharp PA, Young RA.  c-Myc regulates transcriptional pause release. Cell. 2010 Apr 30;141(3):432-45. doi: 10.1016/j.cell.2010.03.030. PubMed PMID: 20434984; PubMed Central PMCID: PMC2864022."

[Ghosh 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21683636 "Ghosh A, Shuman S, Lima CD. Structural insights to how mammalian capping enzyme reads the CTD code. Mol Cell. 2011 Jul 22;43(2):299-310. doi: 10.1016/j.molcel.2011.06.001. Epub 2011 Jun 16. PubMed PMID: 21683636; PubMed Central PMCID: PMC3142331."

[Roy & Gilbert 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16485020 "Roy SW, Gilbert W. The evolution of spliceosomal introns: patterns, puzzles and progress. Nat Rev Genet. 2006 Mar;7(3):211-21. Review. PubMed PMID: 16485020."

[Wahl 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19239890 "Wahl MC, Will CL, Lührmann R. The spliceosome: design principles of a dynamic RNP machine. Cell. 2009 Feb 20;136(4):701-18. doi: 10.1016/j.cell.2009.02.009. Review. PubMed PMID: 19239890."

[Hoskins 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21393538/ "Hoskins AA, Friedman LJ, Gallagher SS, Crawford DJ, Anderson EG, Wombacher R,  Ramirez N, Cornish VW, Gelles J, Moore MJ. Ordered and dynamic assembly of single spliceosomes. Science. 2011 Mar 11;331(6022):1289-95. doi: 10.1126/science.1198830. PubMed PMID: 21393538; PubMed Central PMCID: PMC3086749."

[Wang 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18978772 "Wang ET, Sandberg R, Luo S, Khrebtukova I, Zhang L, Mayr C, Kingsmore SF, Schroth GP, Burge CB. Alternative isoform regulation in human tissue transcriptomes. Nature. 2008 Nov 27;456(7221):470-6. doi: 10.1038/nature07509. PubMed PMID: 18978772; PubMed Central PMCID: PMC2593745."

[Shukla 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21964334 "Shukla S, Kavak E, Gregory M, Imashimizu M, Shutinoski B, Kashlev M, Oberdoerffer P, Sandberg R, Oberdoerffer S. CTCF-promoted RNA polymerase II pausing links DNA methylation to splicing. Nature. 2011 Nov 3;479(7371):74-9. doi: 10.1038/nature10442. PubMed PMID: 21964334."