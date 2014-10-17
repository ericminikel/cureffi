---
layout: post
title:  "Molecular Biology 16: 'Gene regulation II - chromatin remodeling'"
date:   2014-10-17 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 16 in Harvard's BCMP 200: Molecular Biology course, delivered by Timur Yusufzai on October 17, 2014.*

### What is chromatin remodeling?

Chromatin remodeling includes:

+ Disassembly of nucleosomes
+ Assembly of nucleosomes
+ Repositioning of nucleosomes
+ Exchange of histones into/out of nucleosomes

Note that chromatin remodeling is not just a term for "opening up" chromatin - it also includes modifications that close up the chromatin.

Chromatin remodeling is ATP-dependent, with about 25 ATPases identified as being involved in it to date.

Helicases are numerous and are subdivided into families and subfamilies. There is an SNF2 family whose members are, strictly speaking, not helicases - instead they are involved in chromatin remodeling. Like chromatin remodeling factors, helicases are ATPases, and are translocases or motor proteins, meaning they use the energy of ATP hydrolysis to move along DNA. However, helicases generally move along ssDNA while chromatin remodelers move along dsDNA, and none of the chromatin remodelers unwind DNA.

### More facts about chromatin remodeling

Histones combined with DNA in a high-salt (2M NaCl) solution *in vitro* will spontaneously form chromatin. This also works with RNA or poly-E (poly-glutamate peptides) instead of NaCl. NaCl, RNA and poly-E all have the property that they shield charges to give nucleosomes a chance to form.

Partial digestion of chromatin with endococcal micronuclease (MNase) will give you a ladder of pieces of chromatin whose length has something to do with the concentration of ATP, which dictates the ability to do chromatin remodeling. This is how it was discovered that chromatin remodeling is ATP-dependent [[Glikin 1984]]. 

Histone chaperones all have an acidic patch which occludes the basic sites on histones, preventing them from binding RNA in the cytoplasm. All histone chaperones contain an acidic &beta;-sheet which is sometimes partially unstructured. Different histone chaperones (for instance Asf1 vs. RbAp46) interact with different sites on histones. Histone chaperones are not ATPases. The first chromatin-remodeling ATPase, ACF, was identified by fractioning ~2kg of *Drosophila* embryos to find a fraction which would allow chromatin remodeling to occur [[Ito 1997]]. *In vitro* chromatin assembly can be achieved using only five ingredients: DNA, histones, histone chaperones, remodeling factor (e.g. ACF) and ATP. Besides ACF (aka ISWI), another chromatin assembly factor is CHD1. These factors are active not only during DNA replication but also during transcription, because transcription has to expose naked DNA, and afterwards the lost nucleosomes have to be replaced. CHD1 assembles H3.3 at actively transcribed genes. For unknown reasons, H3.1 (which Dr. Yusufzai refers to simply as "H3") is not expressed outside of S phase, so during interphase if transcription is occurring H3.3 is the only H3 histone variant available for this purpose. H3.3 differs from H3.1 at four amino acids&dagger;.

&dagger;I don't understand what this means, considering that "H3.1" refers not to a single protein but rather to the protein products of any of ten genes in humans, *HIST1H3A* through *HIST1H3J*.

Can histones be exchanged without chromatin assembly? To answer this question people made yeast expressing FLAG-H2AZ to see if they could pull down FLAG and identify factors involved in exchanging H2AZ. Among the co-immunoprecipitated proteins was one ATPase, Swr1, which indeed proved to be an exchange factor [[Mizuguchi 2004]]. Swr1 plus ATP are sufficient to induce incorporation of H2AZ into chromatin. Some chromatin remodelers perform histone exchange, others perform chromatin assembly. INO80 is the opposite of SWR1: it exchanges H2AZ/H2B dimers out of nucleosomes. Mammals do not have SWR1 or INO80. p400 and SRCAP are two candidate H2AZ exchangers in humans, though their function has not yet been definitively shown.

H2AZ is found at sites with transcriptional activity. Its structure has been solved [[Suto 2000]] but interpretations of how its activity differs from other H2A remain subjects of debate.

The RSC complex (pronounced "risk") important in gene expression and essential for mitosis [[Cairns 1996]].

In humans, the SWI/SNF complex (pronounced "switch sniff") is a general transcription activator.

Experiments on this topic sometimes make use of differences between DNAse and MNase. DNAse I nicks dsDNA in the presence of Mg<sup>2+</sup>, while MNase cleaves dsDNA in the presence of Ca<sup>2+</sup>. Nucleosomal DNA is readily cut by DNAse I but not readily by MNase. Both enzymes have some sequence specificity. An alternate approach is to use hydroxyl radical (OH&middot;) footprinting. OH&middot; can cut almost any DNA including nucleosomal DNA with equal probability since it is small and non-sequence-specific.

"Pioneer" transcription factors are the first to bind a specific sequence, and then they recruit further factors.

Many promoter regions lack nucleosomes entirely (based on MNase-seq data). Induction of transcription causes nucleosomes to slide away from a promoter.

Chromatin remodeling factors tend to be very large proteins and exist in large complexes. For these reasons it has been difficult to get crystal structures of them. Low-resolution structural data have been obtained via electron microscopy. For instance it is known roughly how the RSC complex holds DNA inside it. There are various hypothetical models for how nucleosomes slide. According to the "loop-propagation model" a remodeling factor makes a bulge that separates DNA from its histone core, and that bulge then moves around the DNA loop, shifting the DNA relative to the histone core by about 30 bp. An alternate model is the "corkscrew model" where remodeling factors twist DNA to move it along its grooves relative to the histone core. A third model combines these two, hypothesizing that remodelers twist DNA to create a bulge which then propagates around the histone core. To date there is really no evidence for any of these models.

The mouse version of SWI/SNF, the BAF complex, contains a lot of proteins with bromodomains.

[Homologous recombination](/2014/10/06/molecular-biology-13/) involves Rad51-dependent strand invasion and a homology search - but consider that the DNA to be traversed contains nucleosomes. Rad51 works together with Rad54, and these actually work *better* on chromatin than on naked DNA [[Alexiadis & Kadonaga 2002]], apparently because "chromatin is the natural state of your genome", though what exactly this means at a mechanistic level is still not understood.

Current interest in chromatin is driven largely by cancer. Mutations and deletions in chromatin remodeling factors, including SWI/SNF subunits are often found in tumors [reviewed in [Dawson & Kouzarides 2012]]. These are often gain of function mutations, thus there is a search for small molecule inhibitors. c-Myc is often activated or upregulated in tumors, and there has been little success in inhibiting c-Myc, but its mechanism is that it leads to histone acetylation which causes acetylation-specific histone readers to activate gene transcription. Therefore an alternate strategy is to target chromatin remodeling factors downstream of c-Myc. Bromodomains turn out to be readily druggable, and there are a number of drug candidates in clinical trials which bind bromodomains to inhibit histone readers [[Filippakopoulos 2010]].

[Glikin 1984]: http://www.ncbi.nlm.nih.gov/pubmed/6327057 "Glikin GC, Ruberti I, Worcel A. Chromatin assembly in Xenopus oocytes: in vitro studies. Cell. 1984 May;37(1):33-41. PubMed PMID: 6327057."

[Ito 1997]: http://www.ncbi.nlm.nih.gov/pubmed/9230310 "Ito T, Bulger M, Pazin MJ, Kobayashi R, Kadonaga JT. ACF, an ISWI-containing and ATP-utilizing chromatin assembly and remodeling factor. Cell. 1997 Jul 11;90(1):145-55. PubMed PMID: 9230310."

[Mizuguchi 2004]: http://www.ncbi.nlm.nih.gov/pubmed/14645854 "Mizuguchi G, Shen X, Landry J, Wu WH, Sen S, Wu C. ATP-driven exchange of histone H2AZ variant catalyzed by SWR1 chromatin remodeling complex. Science. 2004 Jan 16;303(5656):343-8. Epub 2003 Nov 26. PubMed PMID: 14645854."

[Suto 2000]: http://www.ncbi.nlm.nih.gov/pubmed/11101893 "Suto RK, Clarkson MJ, Tremethick DJ, Luger K. Crystal structure of a nucleosome core particle containing the variant histone H2A.Z. Nat Struct Biol. 2000 Dec;7(12):1121-4. PubMed PMID: 11101893."

[Cairns 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8980231 "Cairns BR, Lorch Y, Li Y, Zhang M, Lacomis L, Erdjument-Bromage H, Tempst P, Du J, Laurent B, Kornberg RD. RSC, an essential, abundant chromatin-remodeling complex. Cell. 1996 Dec 27;87(7):1249-60. PubMed PMID: 8980231."

[Alexiadis & Kadonaga 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12414729/ "Alexiadis V, Kadonaga JT. Strand pairing by Rad54 and Rad51 is enhanced by chromatin. Genes Dev. 2002 Nov 1;16(21):2767-71. PubMed PMID: 12414729; PubMed Central PMCID: PMC187467."

[Dawson & Kouzarides 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22770212 "Dawson MA, Kouzarides T. Cancer epigenetics: from mechanism to therapy. Cell.  2012 Jul 6;150(1):12-27. doi: 10.1016/j.cell.2012.06.013. Review. PubMed PMID: 22770212."

[Filippakopoulos 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20871596 "Filippakopoulos P, Qi J, Picaud S, Shen Y, Smith WB, Fedorov O, Morse EM, Keates T, Hickman TT, Felletar I, Philpott M, Munro S, McKeown MR, Wang Y, Christie AL, West N, Cameron MJ, Schwartz B, Heightman TD, La Thangue N, French CA, Wiest O, Kung AL, Knapp S, Bradner JE. Selective inhibition of BET bromodomains. Nature. 2010 Dec 23;468(7327):1067-73. doi: 10.1038/nature09504. Epub 2010 Sep 24. PubMed PMID: 20871596; PubMed Central PMCID: PMC3010259."