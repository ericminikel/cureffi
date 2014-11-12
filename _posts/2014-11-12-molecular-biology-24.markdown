---
layout: post
title:  "Molecular Biology 24: 'mRNA transport'"
date:   2014-11-12 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 24 in Harvard's BCMP 200: Molecular Biology course, delivered by [Stirling Churchman](https://twitter.com/fiddle) on November 12, 2014.*

### Introduction

Open questions in the study of mRNA include how mRNA gets selected for export and subcellular localization, how many mRNAs have a specific subcellular destination, and how this varies between cell types.

Why are transcription and translation decoupled in eukaryotic cells? This decoupling allows for extra layers of gene regulation - regulating translation and degradation of mRNA. Also, RNA is very toxic to DNA as it will bind to DNA, disrupting the duplex - this is called an R loop, and can cause DNA damaage during replication. R loops are liable to form in negatively supercoiled DNA.

A number of mechanisms keep R loops from being widespread. 

### Nuclear pore complexes (NPCs)

Nuclear pore complexes coat the nuclear envelope. The complex is huge - about 50 MDa in total. It has 8-fold cylindrical symmetry. It regulates transport of both macromolecules and small metabolites in both directions. The opening in the cylinder is about 90 nm long and 50-120 nm in diameter, large enough for about two mRNAs to pass abreast. The inside of the cylinder is coated with FG dipeptide repeats.

mRNAs have to be exported through these pores. A variety of sets of proteins perform the export and check to make sure the RNA is something that should be exported.

A historically popular experimental system for studying nuclear export of mRNA is the Balbiani Ring (BR) of *Chironomus tentans*, a blood worm [[Mehlin 1992]]. This huge transcript (~40kb) is packaged with tons of RNPs and forms a ring. It has to unfold into a linear RNA to fit through the nuclear pore, and then it forms a ring once it's through. Electron microscopy on this system has shown that this mRNA gets exported 5' end first, and ribosomes immediately assemble on it before it's even all the way through.

More recent approaches have used single molecule imaging [[Grunwald & Singer 2010]]. This revealed that the distribution of mRNP position relative to the NPC is bimodal- they spend a lot of time on either side of the NPC and not much time *in* it. Transport through the NPC appears to take 20ms, while docking at the NPC takes much longer.

### Subcellular localization of mRNAs

There are several interesting examples of specific subcellular localization of mRNAs. For instance, in budding yeast, *ASH1* mRNA specifically localizes to the daughter cell. The Krause lab looked at subcellular localization of every *Drosophila* mRNA genome-wide using FISH, and found that 71% of mRNAs have a specific localization pattern [[Lecuyer 2007]].

Why do mRNAs have subcellular localization? In the case of *ASH1* it is simply to restrict the mRNA to the daughter cell. In other cases, localization of mRNA may contribute to high temporal resolution in cellular responses, making it easy to translate new protein right where it is needed as soon as the need arises. It may also be economical, allowing the cell to transport one mRNA instead of translating the mRNA centrally and then having to export each protein. Finally, it may also contribute to safety, ensuring that proteins which are important for one organelle or subcellular space do not get translated in a different area where they might actually be toxic.

How are mRNAs transported subcellularly? Motor proteins perform active transport along the cytoskeleton and this depends on *cis* elements in the mRNA as well as *trans* factors that bind the RNA. In addition, sometimes subcellular localization is driven by degradation - for instance, *hsp83* mRNA in *Drosophila* is degraded if it appears anywhere other than the desired spot.

In yeast, ASH1p has the function of shutting off mating type switching. Its restriction to the daughter cell ensures that the mother cell can still switch mating types. A genetic screen found three proteins, called She1, She2 and She3, which help link *ASH1* mRNA to myosin 5 for transport [[Bertrand 1998]]. These appear to bind at hairpins, so the secondary structure of *ASH1* mRNA is critical for its proper transport [[Chartrand 1999]]. For this system to work, the mRNA has to also not get translated until it arrives at the daughter cell. This turns out to be accomplished by Puf6 and other proteins which repress translation of the *ASH1* mRNA until it gets there.

A useful review of mRNA localization is [[Martin & Ephrussi 2009]].

An important study of mRNA transport mechanisms in mammalian (HeLa) cells cross-linked RNA to RNA-binding proteins and then captured polyadenylated RNAs [[Castello 2012]] in order to identify new RNA-binding proteins by mass spec. They found 860 proteins that interact directly with mRNA. These proteins turned out to contain a variety of classical and non-classical RNA-binding domains. And a lot of them contained disordered, low-complexity and/or repetitive sequences. Most of these could be grouped into three sequence logos - SR family, RGG/YGG box, and polyK motif.

RNA granules behave as liquids [[Brangwynne 2009]]. The researchers were able to see that the condensation of fluorescently labeled RNA granules - "condensation" meaning two small droplets merging to form a larger droplet - helps to drive subcellular localization. By microscopy they were able to see that these granules actually act like very viscous liquids, sort of like glycerol. These liquids undergo a sort of phase transition, where soluble RNA molecules in cytosol condense into a viscous liquid granule analogous to oil in water.

Steve McKnight's lab was able to form RNA granules in a cell-free assay [[Kato 2012]]. This project began when they found that adding b-isox to cell lysate caused a flocculent white precipitate to form. Mass spec on this precipitate revealed a lot of RNA-binding proteins, and RNA-seq on this precipitate revealed a lot of RNAs known to localize to RNA granules. They then found that most of these RNA-binding proteins had low-complexity (LC) domains. They confirmed that these LC domains were important by showing that plain GFP does not precipitate in this assay, but a GFP-LC fusion protein does precipitate. They then used GFP-FUS as a reporter protein, and after they happened to leave it in the fridge for a few weeks at one point they found that it forms a hydrogel when cooled. These hydrogels contained structures reminiscent of amyloid fibrils.

So it turns out that multivalent interactions between proteins and RNA create this liquid [[Li 2012]]. This mechanism is believed to serve a couple of cellular functions. For one, it makes it possible to concentrate reagents in a very small volume without needing a new bilipid membrane-bound organelle. Second, it allows sorting of different RNAs according to the different proteins bound to them.

### Mitochondrial gene expression

Mitochondria have their own genome and an entirely separate set of transcription and translation machinery that expresses it. Much less is known about this machinery than about the machinery of the nuclear genome. In addition, mitochondria today are very far diverged from their prokaryotic ancestors. Mitochondrial gene expression appears to be a whole third system, distinct from both nuclear and prokaryotic systems.

All genes on the mitochondrial genome encode either components of either respiratory chain complexes or mitochondrial machinery itself (such as tRNAs and rRNAs for mitochrondrial ribosomes). Yet the respiratory chain complexes consist of a mix of mitochondrial-encoded and nuclear-encoded proteins.

The *S. cerevisiae* mitochondrial genome, for instance, is 86kb and encodes just 8 protein-coding mRNAs, 2 rRNAs, 24 tRNAs and one RNAse P RNA. The mRNAs do not have 5' caps, polyA tails, or Shine-Dalgarno sequence, and some even lack 3'UTRs. They're **polycistronic** (each mRNA encodes >1 protein) and use a different genetic code than all other organisms (prokaryotic and eukaryotic) do. Fully 25% of the mitochondrial proteome (which includes nuclear-encoded proteins) on the "meta" work of maintaining and expressing the mitochondrial genome.

In humans, mtDNA is 16kb and contains 13 genes. Some cell types have 1000s of mitochondria per cell. Mitochondrial RNA polymerase consists of only 1 subunit. The mitochondrial ribosome is composed of 2:1 protein:RNA (the opposite ratio as the cytosolic ribosomes). There are only 3 mtDNA gene promoters, as the mRNAs are polycistronic, and there are a very limited set of transcription factors. The mtDNA genome is packaged with an organization factor called TFAM, rather than histones. Mitochondrial genes are very highly expressed. In some tissues (most notably heart), as much as 30% of mRNA is from mtDNA genes [[Mercer 2011]].


[Mehlin 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1586943 "Mehlin H, Daneholt B, Skoglund U. Translocation of a specific premessenger ribonucleoprotein particle through the nuclear pore studied with electron microscope tomography. Cell. 1992 May 15;69(4):605-13. PubMed PMID: 1586943."

[Grunwald & Singer 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20844488 "Grünwald D, Singer RH. In vivo imaging of labelled endogenous β-actin mRNA during nucleocytoplasmic transport. Nature. 2010 Sep 30;467(7315):604-7. doi: 10.1038/nature09438. Epub 2010 Sep 15. PubMed PMID: 20844488; PubMed Central PMCID: PMC3005609."

[Lecuyer 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17923096 "Lécuyer E, Yoshida H, Parthasarathy N, Alm C, Babak T, Cerovina T, Hughes TR,  Tomancak P, Krause HM. Global analysis of mRNA localization reveals a prominent role in organizing cellular architecture and function. Cell. 2007 Oct 5;131(1):174-87. PubMed PMID: 17923096."

[Bertrand 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9809065 "Bertrand E, Chartrand P, Schaefer M, Shenoy SM, Singer RH, Long RM. Localization of ASH1 mRNA particles in living yeast. Mol Cell. 1998 Oct;2(4):437-45. PubMed PMID: 9809065."

[Chartrand 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10209102 "Chartrand P, Meng XH, Singer RH, Long RM. Structural elements required for the localization of ASH1 mRNA and of a green fluorescent protein reporter particle in vivo. Curr Biol. 1999 Mar 25;9(6):333-6. PubMed PMID: 10209102."

[Castello 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22658674 "Castello A, Fischer B, Eichelbaum K, Horos R, Beckmann BM, Strein C, Davey NE, Humphreys DT, Preiss T, Steinmetz LM, Krijgsveld J, Hentze MW. Insights into RNA  biology from an atlas of mammalian mRNA-binding proteins. Cell. 2012 Jun 8;149(6):1393-406. doi: 10.1016/j.cell.2012.04.031. Epub 2012 May 31. PubMed PMID: 22658674."

[Martin & Ephrussi 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19239891 "Martin KC, Ephrussi A. mRNA localization: gene expression in the spatial dimension. Cell. 2009 Feb 20;136(4):719-30. doi: 10.1016/j.cell.2009.01.044. Review. PubMed PMID: 19239891; PubMed Central PMCID: PMC2819924."

[Brangwynne 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19460965 "Brangwynne CP, Eckmann CR, Courson DS, Rybarska A, Hoege C, Gharakhani J, Jülicher F, Hyman AA. Germline P granules are liquid droplets that localize by controlled dissolution/condensation. Science. 2009 Jun 26;324(5935):1729-32. doi: 10.1126/science.1172046. Epub 2009 May 21. PubMed PMID: 19460965."

[Kato 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22579281 "Kato M, Han TW, Xie S, Shi K, Du X, Wu LC, Mirzaei H, Goldsmith EJ, Longgood J, Pei J, Grishin NV, Frantz DE, Schneider JW, Chen S, Li L, Sawaya MR, Eisenberg D, Tycko R, McKnight SL. Cell-free formation of RNA granules: low complexity sequence domains form dynamic fibers within hydrogels. Cell. 2012 May 11;149(4):753-67. doi: 10.1016/j.cell.2012.04.017. PubMed PMID: 22579281."

[Li 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22398450 "Li P, Banjade S, Cheng HC, Kim S, Chen B, Guo L, Llaguno M, Hollingsworth JV,  King DS, Banani SF, Russo PS, Jiang QX, Nixon BT, Rosen MK. Phase transitions in  the assembly of multivalent signalling proteins. Nature. 2012 Mar 7;483(7389):336-40. doi: 10.1038/nature10879. PubMed PMID: 22398450; PubMed Central PMCID: PMC3343696."

[Mercer 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21854988 "Mercer TR, Neph S, Dinger ME, Crawford J, Smith MA, Shearwood AM, Haugen E, Bracken CP, Rackham O, Stamatoyannopoulos JA, Filipovska A, Mattick JS. The human mitochondrial transcriptome. Cell. 2011 Aug 19;146(4):645-58. doi: 10.1016/j.cell.2011.06.051. PubMed PMID: 21854988; PubMed Central PMCID: PMC3160626."