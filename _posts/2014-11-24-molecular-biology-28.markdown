---
layout: post
title:  "Molecular Biology 28: 'Post-transcriptional regulation and RNA interference'"
date:   2014-11-24 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 28 in Harvard's BCMP 200: Molecular Biology course, delivered by Shobha Vasudevan on November 24, 2014.*

### Post-transcriptional regulation

mRNAs can be regulated post-transcriptionally in at least three ways:

1. Decay vs. stabilization
2. Localization
3. Translation regulation

### Mechanisms of mRNA decay

+ **Deadenylation-dependent decay** involves a polyA-specific exonuclease (rate-limiting step) and subsequent de-capping (via m7G cleavage) and then degradation by 5'&rarr;3' and 3'&rarr;5' exonucleases.
+ **Endonucleolytic decay** begins in the middle of the transcript and may involve IRE1, PMR1 or RNase MRP. This category includes siRNA-induced decay.
+ **Nonsense-mediated decay** 
+ **Non-stop decay**
+ **No-go decay**

These last three are in the category of "translation-dependent mechanisms of decay".

Many 3'UTRs of immune-related transcripts contain highly conserved sequences called AU-rich elements (AREs). Under normal, healthy conditions, these cause rapid mRNA degradation and inefficient translation, with the net result that cytokine levels stay low. When an innate immune response is triggered, ARE-binding proteins bind these AREs, inducing mRNA stability and resulting in cytokine secretion.

It is possible to study RNA-binding proteins using cross-linking.

### Regulatory RNAs

Regulatory RNAs include ncRNA, siRNA, microRNA and lincRNA.

The first regulatory RNA to be discovered was the microRNA lin-4 in *C. elegans* [[Lee 1993]], the topic of [BBS 230 week 8](/2014/11/06/biolit-08/).

Different classes of small RNAs are defined by their lengths and the associated RNA-binding protein.

+ piRNAs can be 30nt or a bit longer, and by definition interact with PIWI-like proteins. They are involved in transposon regulation and are found chiefly in germ cells.
+ siRNAs are 19-21nt. They are associated with the AGO (Argonaute) clade of proteins.
+ miRNAs are 19-23nt. Their structure is similar to siRNAs with a 5' phosphate and 3'OH 2nt overhang. They are associated with the AGO (Argonaute) clade of proteins.

The discovery of siRNA [[Fire 1998]] led to a Nobel Prize. They found that antisense RNA reduced gene expression of the complementary targets. siRNAs can arise from exogenous dsRNA (or shRNA), and there are also endo-siRNAs.

In bacteria, CRISPR sgRNA-mediated cleavage of viral DNA is also a mechanism for post-transcriptional regulation.

In humans, some miRNAs are considered tumor suppressors while others ("onco-miRs") promote tumorigenesis.

miRNA processing involves "cropping", and Drosha and the dsRNA-binding protein DGCR8. See also [[Han 2006]].

miRNAs are catalogued in [miRBase](http://www.mirbase.org/) [[Kozomara & Griffiths-Jones 2014]].

Much of this lecture focused on mechanisms of siRNA and miRNA processing. It appears that many of these mechanisms are also covered in [Kittler 2006 Chapter 10](http://www.ncbi.nlm.nih.gov/books/NBK2557/).

[Lee 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8252621 "Lee RC, Feinbaum RL, Ambros V. The C. elegans heterochronic gene lin-4 encodes small RNAs with antisense complementarity to lin-14. Cell. 1993 Dec 3;75(5):843-54. PubMed PMID: 8252621."

[Fire 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9486653 "Fire A, Xu S, Montgomery MK, Kostas SA, Driver SE, Mello CC. Potent and specific genetic interference by double-stranded RNA in Caenorhabditis elegans. Nature. 1998 Feb 19;391(6669):806-11. PubMed PMID: 9486653."

[Han 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16751099 "Han J, Lee Y, Yeom KH, Nam JW, Heo I, Rhee JK, Sohn SY, Cho Y, Zhang BT, Kim VN. Molecular basis for the recognition of primary microRNAs by the Drosha-DGCR8  complex. Cell. 2006 Jun 2;125(5):887-901. PubMed PMID: 16751099."

[Kozomara & Griffiths-Jones 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24275495 "Kozomara A, Griffiths-Jones S. miRBase: annotating high confidence microRNAs using deep sequencing data. Nucleic Acids Res. 2014 Jan;42(Database issue):D68-73. doi: 10.1093/nar/gkt1181. Epub 2013 Nov 25. PubMed PMID: 24275495; PubMed Central PMCID: PMC3965103."
