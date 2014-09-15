---
layout: post
title:  "Molecular Biology 06: 'Chromosome structure'"
date:   2014-09-15 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 06 of Harvard's BCMP 200: Molecular Biology course, delivered by Joe Loparo on September 15, 2014.*

### Packaging of DNA around nucleosomes

DNA pretty much fills the bacterial cell. When a cell is lysed, the DNA bursts forth and spews everywhere. Consider two ropes twisted around each other, 1cm in diameter and 6.3km long twisting around each other 400,000 times. Suppose you had to replicate the ropes by unwinding them and re-winding a new rope around each one, all inside a volume of about 1 cubic meter. You have a scissors and glue (topoisomerases) to aid you.

You are up against the "DNA packaging problem". The linear dimensions of DNA exceed the linear dimensions of the cell by many orders of magnitude. The DNA has to be wrapped up so as to fit in the cell, while still remaining accessible.

DNA is packaged into multiple levels of structure at multiple levels of zoom-out. In eukaryotes, the double helix is wrapped around groups of eight histones known as nucleosomes., which are braided into a chromatin fiber, which forms loops, which form coiled loops, which wrap up into metaphase chromosome upon cell division.

The histone core is composed of 2 copies each of the H2A, H2B, H3 and H4 histones. Mnase (micrococcal nuclease) cuts DNA depending on the DNA's accessibility. At high concentrations or long incubations it will degrade DNA until only the nucleosome-bound DNA is intact. Nucleosomes were controversial when first crystallized [[Woodcock 1976]].

Both the length (11-16 kDa) and sequnce (basic, >20% K and R) of histones are conserved. The lysines are located primarily in an unstructured N-terminal domain. The octamer is built from a "handshake motif" at a hydrophobic interface between &alpha;-helices of H3 and H4 and a &beta;-bridge between the &beta;-strands of these two. Two H3-H4 pairs then form a tetramer with hydrophobic side chains of four &alpha;-helices coming together. There are then two H2A-H2B dimers, one dimer on either side of the H3-H4 tetramer. The two H2A-H2B dimers do not touch each other. *In vitro*, high salt concentrations (2M) alone are sufficient to get nucleosomes to spontaneously assemble without additional cofactors.

Recall from [lecture 04](/2014/09/10/molecular-biology-04) that dsDNA is rigid. The [persistence length](http://en.wikipedia.org/wiki/Persistence_length) of naked dsDNA is 50 nm. Nucleosomes are only 11 nm in diameter, so wrapping DNA around them involves bending DNA *much* more sharply than it would like to on its own. The &Delta;G for wrapping DNA around nucleosomes is negative; the positive K and R residues in histones alleviate the unfavorable repulsion between negatively charged phosphate groups on the DNA backbone. (Evidently these salt bridges are more favorable than just H-bonds, which would be the alternative fate of the phosphate groups in water). 

Each nucleosome has 14 sites where one arginine (R) residue is inserted deeply into a DNA minor groove, and for each such site there are also >2 sites of interaction between the nucleosome and the DNA "main chain" (?). DNA is wrapped around nucleosomes in left-handed solenoid, which is equivalent to negative supercoiling, which favors the unwinding of DNA. Remember that by convention, right-handed plectonemes and left-handed solenoids are negative supercoils.

The N terminal tails of the histones are unstructured and are easily post-translationally modified or cleaved by proteases. DNA stays bound to nucleosomes if you cleave off the tails with protease. However post-translational modifications may be involved in recruiting chromatin-remodeling enzymes or in changing the higher-order structure of the chromatin.

One can imagine a couple of ways that the cell could control the position of nucleosomes with respect to a particular DNA sequence. For instance, "barriers" bound to DNA at say 150 bp apart are too close to allow a nucleosome in between, thus keeping that piece of DNA accessible. "Facilitators" may recruit nucleosomes to bind at a particular spot. We still don't know what all determines nucleosome positioning, but there is at least some sequence dependence - for instance there is a preference for A:T base pairs on the minor groove on the inside of the loop around the nucleosome, and G:C base pairs on the exposed minor groove facing outward.

Experiments to determine nucleosome position usually involve treating with Mnase to digest DNA that is unbound to nucleosomes, then sequencing the DNA that is left. You can do this either with DNA extracted from cells, or you can mix purified DNA and purified histones and let them spontaneously assemble in a cell-free environment. Early experiments with nucleosome mapping in yeast showed that individual nucleosomes were "well-positioned" - i.e. their position is consistent enough across cells that you can actually identify a position by sequencing - and certain sequences such as polyA are consistently free of nucleosomes [[Yuan 2005]]. It may be that polyA tracts create a narrower minor groove that is harder to wrap around nucleosomes.

In 2009, two papers did essentially the same experiment but came to opposite conclusions. They compared maps of nucleosome positions obtained from DNA extracted from yeast cells versus purified DNA + purified histones. [Kaplan 2009] argued that DNA sequence *is* a major determinant of nucleosome position, and [Zhang 2009] argued that DNA sequence is relatively unimportant. Kaplan's conclusions were based largely on the consistency of nucleosome positional mapping between the two paradigms. Zhang also observed that histones bind with higher affinity to yeast DNA than *E. coli* DNA (which wouldn't be expected to have nucleosome-friendly sequences), supporting the notion that sequence is important, but reported that mapping was much less consistent in the *in vitro* paradigm, indicating that something other than sequence must control positioning *in vivo*. This debate is ongoing today.

### Packaging of nucleosomes into chromatin fiber

Nucleosomes form "beads on a string" with an 11 nm diameter. These are in turn packaged into a chromatin fiber of 30 nm diameter. This accomplished by **linker histones** (H1, H5) which differ from **core histones** (discussed above). Linker histones have both their N and C termini unstructured, and rich in R (40%) and K (10%) used for stabilizing the higher-order structure. H1 has a "winged helix" motif, which is a member of the helix-turn-helix family of motifs.

One current experimental technique involve mixing purified DNA with purified histones *in vitro* and performing single molecule nanomanipulations, measuring the force (in picoNewtons) required to stretch a chromatin fiber. When this is done with vs. without H1 linker histones, the length of the chromatin fiber is unchanged but the force required to extend beyond a certain threshold is greater [[Kruithof 2009]]. Therefore H1 seems to stabilize (rather than compact) the higher order structure of the chromatin fiber. Kruithof's data fit best to a model of solenoid rather than zigzag packing. The solenoid vs. zigzag debate has continued to rage, and some studies even argue that neither model is correct [[Nishino 2012]]. The most recent high-profile report, using [cryo-EM](http://en.wikipedia.org/wiki/Cryo-electron_microscopy), supports a left-handed helical zigzag 27 nm in diameter [[Song 2014]].

Nucleosomes will actually compact into a fiber in the absence of linker histones if placed under the right buffer conditions, but the structure they form is less ordered than it is with linker histones.

### Packaging of chromatin fiber into a chromosome scaffold

The chromatin fiber loops in on itself into a huge superstructural scaffold. Topoisomerase II is found colocalizing with this scaffold, and is essential for formation of the chromosomes, but appears to play no structural role *per se*. It is necessary for spontaneous condensation of chromatin into a chromosome but can be extracted later without destroying the chromosome [[Hirano & Mitchison 1993]].

Structural Maintenance of Chromosomes (SMCs) is a term referring to complexes that maintain higher-order chromosome structure. Cohesin and condensin are two nearly identical proteins that each homodimerize to form SMCs. For instance, cohesin has to recognize different strands (sister chromatids) and link them together, and condensin has to recognize the *same* strand and loop it back on itself. We don't know how these two proteins do their jobs. This is one area that [Joe Loparo's lab](https://loparo.hms.harvard.edu/research) works on - see e.g. [[Kim & Loparo 2013](http://dx.doi.org/10.1016/j.bpj.2012.11.254)].

[Woodcock 1976]: http://www.ncbi.nlm.nih.gov/pubmed/812708 "Woodcock CL, Safer JP, Stanchfield JE. Structural repeating units in chromatin. I. Evidence for their general occurrence. Exp Cell Res. 1976 Jan;97:101-10. PubMed PMID: 812708."

[Yuan 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15961632 "Yuan GC, Liu YJ, Dion MF, Slack MD, Wu LF, Altschuler SJ, Rando OJ. Genome-scale identification of nucleosome positions in S. cerevisiae. Science. 2005 Jul 22;309(5734):626-30. Epub 2005 Jun 16. PubMed PMID: 15961632."

[Kaplan 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19092803 "Kaplan N, Moore IK, Fondufe-Mittendorf Y, Gossett AJ, Tillo D, Field Y, LeProust EM, Hughes TR, Lieb JD, Widom J, Segal E. The DNA-encoded nucleosome organization of a eukaryotic genome. Nature. 2009 Mar 19;458(7236):362-6. doi: 10.1038/nature07667. Epub 2008 Dec 17. PubMed PMID: 19092803; PubMed Central PMCID: PMC2658732."

[Zhang 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19620965 "Zhang Y, Moqtaderi Z, Rattner BP, Euskirchen G, Snyder M, Kadonaga JT, Liu XS, Struhl K. Intrinsic histone-DNA interactions are not the major determinant of nucleosome positions in vivo. Nat Struct Mol Biol. 2009 Aug;16(8):847-52. doi: 10.1038/nsmb.1636. Epub 2009 Jul 20. PubMed PMID: 19620965; PubMed Central PMCID: PMC2823114."

[Kruithof 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19377481 "Kruithof M, Chien FT, Routh A, Logie C, Rhodes D, van Noort J. Single-molecule force spectroscopy reveals a highly compliant helical folding for the 30-nm chromatin fiber. Nat Struct Mol Biol. 2009 May;16(5):534-40. doi: 10.1038/nsmb.1590. Epub 2009 Apr 19. PubMed PMID: 19377481."

[Nishino 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22343941 "Nishino Y, Eltsov M, Joti Y, Ito K, Takata H, Takahashi Y, Hihara S, Frangakis AS, Imamoto N, Ishikawa T, Maeshima K. Human mitotic chromosomes consist predominantly of irregularly folded nucleosome fibres without a 30-nm chromatin structure. EMBO J. 2012 Apr 4;31(7):1644-53. doi: 10.1038/emboj.2012.35. Epub 2012 Feb 17. PubMed PMID: 22343941; PubMed Central PMCID: PMC3321210."

[Song 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24763583 "Song F, Chen P, Sun D, Wang M, Dong L, Liang D, Xu RM, Zhu P, Li G. Cryo-EM study of the chromatin fiber reveals a double helix twisted by tetranucleosomal units. Science. 2014 Apr 25;344(6182):376-80. doi: 10.1126/science.1251413. PubMed PMID: 24763583."

[Hirano & Mitchison 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8381118 "Hirano T, Mitchison TJ. Topoisomerase II does not play a scaffolding role in the organization of mitotic chromosomes assembled in Xenopus egg extracts. J Cell Biol. 1993 Feb;120(3):601-12. PubMed PMID: 8381118; PubMed Central PMCID: PMC2119547."
