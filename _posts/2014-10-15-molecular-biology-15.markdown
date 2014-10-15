---
layout: post
title:  "Molecular Biology 15: 'Gene regulation I - histones and the histone code'"
date:   2014-10-15 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 15 in Harvard's BCMP 200: Molecular Biology course, delivered by Timur Yusufzai on October 15, 2014.*

### Introduction to histones

DNA in nuclei is organized into chromatin. Chromatin is "the natural state of the genome". Essentially all DNA is covered in or wrapped around proteins - there is no naked DNA to be found. **Euchromatin** is loose chromatin, whereas **heterochromatin** is condensed, closely packed chromatin.

Dividing cells have mostly euchromatin. Non-dividing cells have most genes turned off and therefore can condense their chromatin more into heterochromatin. Even within non-dividing cells, though, there is some euchromatin and it is physically separate from heterochromatin.

Chromatin structure can be influenced by:

+ Histone variants
+ Histone modifications
+ Chromatin remodeling
+ DNA methylation
+ Antisense RNA

A **nucleosome** is 147bp of DNA wrapped around a histone core. Yes, the term "nucleosome" refers to the DNA *and* the protein. DNA is wrapped around nucleosomes in a left-handed fashion (though some people believe that in a tiny minority of centromeric CENP-A histones the wrapping is right-handed).

Most nucleosomes are octamers containing two H2A-H2B dimers and one H3-H4 tetramer [see PDB# [1EQZ](http://www.rcsb.org/pdb/explore.do?structureId=1EQZ)].

The term **histone variants** refers not to genetic variants but rather to different proteins that can be components of nucleosomes, for instance, CENP-A instead of H3. H2AZ is a variant which is suggested to form more stable nucleosomes than H2A [PDB# [1F66](http://www.rcsb.org/pdb/explore.do?structureId=1F66)] though this is controversial.

**Linker histones** come in 7 subtypes in mammals and are involved in condensing chromatin [[Routh 2008]].

**Histone modifications** are post-translational modifications to histone proteins. The existence of histone modifications was discovered by [[Allfrey 1964]] by radiolabeling different chemical groups and mixing them into nuclear extracts and showing that <sup>14</sup>C-acetate and <sup>14</sup>C-methyl were incorporated into histones in the absence of translation, suggesting a post-translational mechanism.

We now know that histone modifications include:

+ Acetylation
+ Methylation
+ Phosphorylation
+ Ubiquitination
+ ADP-ribosylation
+ Sumoylation

The first three make up by far the majority of histone modifications.

H3 is the most oft-modified histone, and most of its modifications occur in its N terminus (for instance H3K4me3, H3K27me3). Lysine is modified by covalent attachment of one acetyl or one, two or three methyl groups to the nitrogen in its R group.

Factors involved in histone modification include "writers" (e.g. histone acetyltransferase, HAT), "erasers" (e.g. histone deacetylase, HDAC) and "readers" (see table below). There are many tens of proteins in each category, and they often function as part of large complexes involved in transcription and/or DNA repair. In fact, most transcription factor and DNA repair complexes include at least one histone-modifying enzyme.

Acetylation of a lysine silences its positive charge. Methylation does not change lysine's charge. The two modifications each block each other.

Histone modification "readers" have a variety of reader domains specialized to different modifications:

| reader domain | modifications recognized
| ---- | ---- |
| Bromodomain | H3 and H4 acetylation |
| PHD fingers | H3K4me2/3 |
| Chromodomain | Unmodified H3 and H3K4/K9/K27/K36 [me2/3] |
| WD40 | H3K4me2 |
| MBT | H4K20me1/2 and H3K4/9me1/2 |
| Tudor | H4K20me1/2/3 |
| 14-3-3 | H3S10p and H2S28p |
| BRCT | H2AX S139p |
| UIM | H2AK119ub and H2BK120ub |

There are crystal structures demonstrating how many of these recognition events occur [e.g. [Zeng 2008]].

It took a long time to discover demethylation. Monomethylated lysine can be demethylated by the enzyme LSD1, which strips out one hydrogen from the nitrogen and one hydrogen from the methyl group, and adds these hydrogens to oxygen to make H<sub>2</sub>O<sub>2</sub>. In the second step it generates formaldehyde - CH<sub>2</sub>O, and is a major contributor to the 0.1 mM levels of formaldehyde found in our blood. 

New histone modifications continue to be identified, usually by mass spec. Once a modification has been identified, the next step is to raise an antibody against it. Once you have an antibody you can perform ChIP, Western blots, and IMF (what is that?). There are whole companies based on selling antibodies specific to various histone modifications. In a recent quality assessment, >200 commercially available antibodies were tested for their specificity to modified histones versus unmodified recombinant histones purified from *E. coli* [[Egelhofer 2011]]. Only about 2/3 possessed the specificity for which they were advertised - the remainder were non-specific or gave no signal at all. You can use peptide pull-down to identify readers of various histone modifications [e.g. [Wysocka 2005]].

Experiments using gamma irradiation to cause double-strand breaks have shown that each DSB causes H2AX to be phosphorylated at residue S139 across ~2 Mb of DNA. Mdc1 reads the H2AX S139 phosphorylation and recruits DSB repair factors [[Stucki 2005], [Lee 2005]]. This whole process happens within seconds, reflecting the urgency of stabilizing DSBs. It is believed that the reason H2AX is phorphorylated across 2 Mb of chromatin is to amplify the signal so that it is recognized more quickly.

### Controversies in this histone world

The definition of "epigenetic" is itself controversial. Conrad "Wad" Waddington originally coined the term "epigenetic" but it acquired more of its current meaning decades later, when Arthur Riggs used it to refer to "heritable changes in gene function that cannot be explained by changes in DNA sequence" (1996). At a CSHL meeting in 2008, "epigenetic" was redefined to specifically refer to "a stably heritable phenotype resulting from changes in a chromosome without alterations in the DNA sequence", but some of the authors of that definition no longer agree with it. In particular, whether a modification must be "heritable" in order to be called "epigenetic" is controversial.

We also do not know how histone modifications are separated between daughter duplexes upon DNA replication. One model holds that H3-H4 tetramers from the parent duplex split into two H3-H4 dimers that go to each daughter duplex. An alternate model holds that H3-H4 tetramers never split, and instead that every other histone core goes to the each daugher duplex. One famous paper showed no histone splitting [[Xu 2010]] but subsequent work (including from that same group) has shown evidence for histone splitting. The issue remains controversial.

The "histone code hypothesis" holds that combinations of histone modifications encode instructions. A single H3 protein within a nucleosome has 10 lysines that can have 4 methylation states (un-, mono-, di-, and tri-), so each H3 alone has 4<sup>10</sup> (= about 1 million) possible states. Then there are two H3 units per histone, and other modifications possible as well, and so on. But in reality, most histone modifications occur in groups. Usually one nucleosome will either contain a bunch of activating mutations or a bunch of silencing mutations. So although some people speak of a "code", only a limited number of really distinct histone states are actually observed.



[Routh 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18583476 "Routh A, Sandin S, Rhodes D. Nucleosome repeat length and linker histone stoichiometry determine chromatin fiber structure. Proc Natl Acad Sci U S A. 2008 Jul 1;105(26):8872-7. doi: 10.1073/pnas.0802336105. Epub 2008 Jun 26. PubMed PMID: 18583476; PubMed Central PMCID: PMC2440727."

[Allfrey 1964]: http://www.ncbi.nlm.nih.gov/pubmed/14172992/ "ALLFREY VG, FAULKNER R, MIRSKY AE. ACETYLATION AND METHYLATION OF HISTONES AND THEIR POSSIBLE ROLE IN THE REGULATION OF RNA SYNTHESIS. Proc Natl Acad Sci U S A. 1964 May;51:786-94. PubMed PMID: 14172992; PubMed Central PMCID: PMC300163."

[Zeng 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18400184 "Zeng L, Zhang Q, Gerona-Navarro G, Moshkina N, Zhou MM. Structural basis of site-specific histone recognition by the bromodomains of human coactivators PCAF  and CBP/p300. Structure. 2008 Apr;16(4):643-52. doi: 10.1016/j.str.2008.01.010. PubMed PMID: 18400184; PubMed Central PMCID: PMC3339198."

[Egelhofer 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21131980 "Egelhofer TA, Minoda A, Klugman S, Lee K, Kolasinska-Zwierz P, Alekseyenko AA, Cheung MS, Day DS, Gadel S, Gorchakov AA, Gu T, Kharchenko PV, Kuan S, Latorre I, Linder-Basso D, Luu Y, Ngo Q, Perry M, Rechtsteiner A, Riddle NC, Schwartz YB, Shanower GA, Vielle A, Ahringer J, Elgin SC, Kuroda MI, Pirrotta V, Ren B, Strome S, Park PJ, Karpen GH, Hawkins RD, Lieb JD. An assessment of histone-modification antibody quality. Nat Struct Mol Biol. 2011 Jan;18(1):91-3. doi: 10.1038/nsmb.1972. Epub 2010 Dec 5. PubMed PMID: 21131980; PubMed Central PMCID:  PMC3017233."

[Wysocka 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15960974 "Wysocka J, Swigut T, Milne TA, Dou Y, Zhang X, Burlingame AL, Roeder RG, Brivanlou AH, Allis CD. WDR5 associates with histone H3 methylated at K4 and is essential for H3 K4 methylation and vertebrate development. Cell. 2005 Jun 17;121(6):859-72. PubMed PMID: 15960974."

[Stucki 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16377563 "Stucki M, Clapperton JA, Mohammad D, Yaffe MB, Smerdon SJ, Jackson SP. MDC1 directly binds phosphorylated histone H2AX to regulate cellular responses to DNA  double-strand breaks. Cell. 2005 Dec 29;123(7):1213-26. Erratum in: Cell. 2008 May 2;133(3):549. PubMed PMID: 16377563."

[Lee 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16049003 "Lee MS, Edwards RA, Thede GL, Glover JN. Structure of the BRCT repeat domain of MDC1 and its specificity for the free COOH-terminal end of the gamma-H2AX histone tail. J Biol Chem. 2005 Sep 16;280(37):32053-6. Epub 2005 Jul 27. PubMed  PMID: 16049003."

[Xu 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20360108 "Xu M, Long C, Chen X, Huang C, Chen S, Zhu B. Partitioning of histone H3-H4 tetramers during DNA replication-dependent chromatin assembly. Science. 2010 Apr  2;328(5974):94-8. doi: 10.1126/science.1178994. PubMed PMID: 20360108."