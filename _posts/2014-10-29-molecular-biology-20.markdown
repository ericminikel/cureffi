---
layout: post
title:  "Molecular Biology 20: 'Research seminar - CHD5 and cancer'"
date:   2014-10-29 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 20 in Harvard's BCMP 200: Molecular Biology course, delivered by Timur Yusufzai on October 29, 2014.*

### Motivation

An interesting question is why, in spite of all the satuating mutagenesis screens that have been done, there are still about 15% of yeast genes that we have no idea what they do [[Pena-Castillo & Hughes 2007]].

### Context

When Timur Yusufzai started studying CHD5, almost nothing was known about it except that deletion of it accelerates neuroblastoma. About 25% of primary neuroblastomas have a deletion at 1p36.3 and it was found that CHD5 was inactivated in this deletion; alternately it can be silenced by promoter methylation. CHD5 is a 1954 amino acid protein that has a putative core helicase domain, PHD fingers, and chromodomains.

This lecture covers Dr. Yusufzai and his postdoc [Jinhua Quan](https://www.linkedin.com/pub/jinhua-quan/46/7b2/966)'s work on characterizing CHD5.

### Figuring out how CHD5 works

Dr. Yusufzai set out to identify interacting partners of CHD5 via tandem affinity purification. It turns out there are two nearly identical complexes called NuRD, which contain either CHD4 or CHD5 but not both. NuRD is a known transcription repressor complex, so Yusufzai hypothesized that CHD5 is a transcriptional repressor. Testing this hypothesis was easy because they already had neuroblastoma cells deficient in CHD5, so they could just re-introduce a CHD5 cDNA and see what happens. They found that once you introduce CHD5 the cells stop growing, so it was impossible to obtain stably transfected lines. Instead they used transient transfection and showed that this slows cell proliferation. Expression profiling on the transiently CHD5-transfected cells revealed that most of the transcripts whose abundance was significantly altered were down-regulated. The majority were non-coding RNAs, but another subset of them encoded proteins involved in cell growth. 

Between G2 and M phase there is the WEE1 checkpoint (see [Cell Biology 08](/2013/04/06/cell-biology-08-cell-cycle-regulation-and-checkpoints/)). WEE1 was one of the top genes regulated by CHD5 [[Quan 2014]]. They confirmed that transient transfection with wild-type, but not mutant, CHD5, reduces transcription of WEE1, but only by about 40%. Why such a limited effect? One possibility was that WEE1 is an indirect target of CHD5. To test this, they raised an antibody against CHD5 and performed ChIP. This confirmed that CHD5 *does* indeed bind directly to the CpG island in *WEE1*'s promoter. It turns out that the 40% reduction in WEE1 that they observed in neuroblastoma cells was simply because the neuroblastoma cells are hard to transfect. In HEK293 cells, which are easier to transfect, they were able to achieve a 95% reduction in WEE1 by transfecting with CHD5.

There is now a planned clinical trial at Dana Farber using a WEE1 inhibitor (possibly referring to [NCT01849146](http://clinicaltrials.gov/show/NCT01849146)?).

Yusufzai next used a baculovirus system to purify CHD5 protein. He cloned CHD5 into a pFastBac donor plasmid, transfected *E. coli* to obtain recombinant bacmids, then purified recombinant bacmid DNA and transfected insect cells (presumably Sf9?) to create virus. Once you have the virus you can infect cells, grow them, lyse them, and purify the protein.

Next he wanted to use a chromatin remodeling assay to see if his purified recombinant protein acted as a chromatin remodeler. He chose an assay where you start with a plasmid containing a nucleosome array that blocks the majority of the plasmid's 15 *HaeIII* restriction sites, plus ATP and your candidate protein. Without modeling, you get only partial digestion by *HaeIII*, whereas with remodeling you shuffle the nucleosomes around, exposing all the *HaeIII* sites and resulting in total digestion. In this assay, the wild-type protein causes remodeling but the mutant does not. The mutant is a necessary control to ensure that the protein you think you've purified is indeed the remodeling factor. Without this control it is possible that the remodeling factor is actually attributable to a co-purifying contaminant.

They additionally performed an MNase digestion. To Dr. Yusufzai's surprise, their gel revelaed that they sometimes got fragments of DNA corresponding to a length that would span more than one nucleosome [[Quan & Yusufzai 2014]]. This implied that either (1) the linker DNA between two nucleosomes had not been digested by MNase (as if CHD5 were protecting it), *or* (2) the portion of DNA wrapped around a nucleosome *had* been cut (as if CHD5 were exposing it). They found that CHD5 without ATP did not give these long fragments, which favored interpretation (2) - CHD5 has to burn ATP to perform helicase activity to unwind nucleosomal DNA, exposing it to MNase. (If CHD5 had been binding the linker DNA, that shouldn't have required ATP). 

[Pena-Castillo & Hughes 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17435240/ "Peña-Castillo L, Hughes TR. Why are there still over 1000 uncharacterized yeast genes? Genetics. 2007 May;176(1):7-14. Epub 2007 Apr 15. Review. PubMed PMID: 17435240; PubMed Central PMCID: PMC1893027."

[Quan 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25247294 "Quan J, Adelmant G, Marto JA, Look AT, Yusufzai T. The Chromatin Remodeling Factor CHD5 Is a Transcriptional Repressor of WEE1. PLoS One. 2014 Sep 23;9(9):e108066. doi: 10.1371/journal.pone.0108066. eCollection 2014. PubMed PMID: 25247294; PubMed Central PMCID: PMC4172601."

[Quan & Yusufzai 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24923445 "Quan J, Yusufzai T. The Tumor Suppressor Chromodomain Helicase DNA-binding Protein 5 (CHD5) Remodels Nucleosomes by Unwrapping. J Biol Chem. 2014 Jul 25;289(30):20717-20726. Epub 2014 Jun 12. PubMed PMID: 24923445; PubMed Central PMCID: PMC4110282."