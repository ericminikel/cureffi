---
layout: post
title:  "Molecular Biology 13: 'Homologous recombination and non-homologous end-joining'"
date:   2014-10-06 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 13 in Harvard's BCMP 200: Molecular Biology course, delivered by Johannes Walter on October 6, 2014.*

In lectures [11](/2014/10/01/molecular-biology-11) and [12](/2014/10/03/molecular-biology-12) we covered DNA damage repair mechanisms which use the complementary strand as the source of information on the correct sequence. In this lecture we'll cover homologous recombination (HR), which uses the sister chromosome as a source of information, and non-homologous end-joining (NHEJ), which has no source of information. These two types of repair address double-strand breaks (DSBs). DSBs are dangerous because repairing via NHEJ can lead to translocations between two chromosomes, or loss of a chromosomal arm, either of which can lead to cancer.

### Double-strand breaks

Sometimes the cell intentionall makes DSBs. During meiosis an enzyme called Spo11 causes DSBs in order to promote recombination and thus create a source of diversity. However, most DSBs are unwanted and result from exogenous sources such as ionizing radiation, oxidative free radicals, mechanical stress, or Topo II failing to rejoin the duplexes it cuts. All of the above are called "two-ended DSBs". In contrast, a "one-ended DSB" results frmo a nick in the leading strand template during replication. This is "one-ended" because there *isn't* a second end, so there is no opportunity for non-homologous end-joining. Such nicks can result from endogenous sources of damage or from excision repair mechanisms as discussed in the last two lectures.

### Non-homologous end-joining (NHEJ)

The NHEJ pathway is reviewed in [[Lieber 2010]]. The first protein to respond to double-strand breaks is Ku70/80, which is present at very high concentrations in cells and thus is recruited very quickly to DSBs. It in turn recruits DNA-PKcs (kinases) and then Artemis (which removes damaged ends) and end-processing enzymes. DNA pol &lambda; and &mu; will then re-extend the ends. DNA pol &lambda; can actually extend DNA *without a template* in order to give you sticky ends you can anneal. Ligase IV is a versatile ligase which can ligate pretty much any DNA sequence, and it will ligate as soon as the strands are annealed. Artemis will then trim any hanging flaps.

This process is extraordinarily error-prone - it may add or delete genetic information and can cause chromosomal translocations. However, it is believed to be preferable to *no* repair in many circumstances.

### Homologous recombination (HR)

We'll introduce HR in the context of its ability to fix two-ended DSBs. At both of the double-stranded ends facing each other, the 5' strand is resected (trimmed back). A recombinase (RecA in bacteria, Rad51 in eukaryotes) will then bind the single strand. This complex is called a **presynaptic filament**. The recombinase will then perform **strand invasion** whereby it base-pairs the single strand with the complementary strand of the homologous duplex. This forms a "D-loop". The single strand is then extended, using the complementary strand as template, until it reaches a region homologous to the 3' end of the opposite side of the break. Then the second end can be recaptured, after which gap filling and ligation occur (not pictured).

![](/media/2014/10/homologous-recombination-steps.png)

The above pathway is called **synthesis-dependent strand annealing**. A more complicated pattern of HR involves [Holliday junctions](http://en.wikipedia.org/wiki/Holliday_junction) but that pathway is preferred only during meiosis and is otherwise rare.

Note that in G1 phase, a double-strand break could only be repaired by HR if it were to utilize the other parent's chromosome as a template. However during G1, sister chromosomes are not physically adjacent, so this is difficult. Instead, NHEJ is preferred during G1. During S phase, by contrast, *identical* sister chromosomes are adjacent to each other, held together by cohesin. 

A biochemical assay for RecA-dependent strand exchange involves introducing a pre-formed pre-synaptic filament along with a linear piece of dsDNA, and monitoring for strand exchange resulting in a nicked circular dsDNA and a linear single strand. These can be distinguished by their electrophoretic mobility. RecA is a AAA+ ATPase which can form a helix around either ssDNA or dsDNA, with each RecA molecule interacting with about 3 nucleotides, and about 6 RecA molecules per DNA helical turn. A seminal experiment involved crystallizing RecA bound to ssDNA [[Chen 2008]]. This required fusing 6 copies of RecA end-to-end, and mutating the binding site at the N-most RecA, so that the protein being crystallized was a single larger protein rather than a heterogeneous filamentous collection of monomers. In spite of all these mechanisms, this 6-mer was still catalytically active.

In this biochemical assay, Rad51 is far less active than RecA.

#### *BRCA2* example

Mutations in *BRCA2* lead to a ~80% lifetime risk of breast cancer. Its mechanism was discovered through the convergence of many different experimental approaches. First, a yeast two-hybrid screen revelead that Brca2 interacted with Rad51 [[Sharan 1997]]. *BRCA2<sup>-/-</sup>* cells are hypersensitive to radiation-induced death [[Abbott 1998]]. Cell biology experiments showed that upon irradiation of wild-type cells, Rad51 forms punctate foci that colocalize with markers of DSBs, while this reaction is completely suppressed in the absence of Brca2 [[Yuan 1999]].

The above assays are not specific to HR and it was difficult to exclude a role in NHEJ. An assay more specific to HR involves a cassette carrying two copies of GFP, both of which are inactviated by different mutations [[Pierce 1999]]. Digestion with the I-SceI restriction enzyme results in a double-strand break which creates an opportunity to create a functional copy of GFP via HR. In this assay, there is far less HR activity in the absence of Brca2 [[Moynahan 2001]].

Brca2 is 3500 amino acids - too large to crystallize - but a few domains have been crystallized. It contains 8 BRC repeats which bind Rad51 [[Pellegrini 2002]] and has both ssDNA- and dsDNA-binding domains [[Yang 2002]]. Full-length Brca2 is highly insoluble but was finally purified in 2010 by fusion with other, better-behaved proteins [[Jensen 2010], [Liu 2010], [Thorslund 2010]]. This purification allowed biochemical reconstitution of Brca2's activity and determination of the stoichiometry between Brca2 and Rad51. RPA, another ssDNA-binding protein,, can out-compete Rad51 *alone* for binding to ssDNA but cannot out-compete Rad51 plus Brca2 [[Jensen 2010]]. This suggests a model in which RPA opportunistically binds to ssDNA following the resection step of HR, and that Brca2 is then required to recruit many copies of Rad51 and allow them to overcome RPA to bind to the ssDNA.

### One-ended DSBs

The beginning of one-ended DSB repair looks just like two-ended DSB repair, with strand invasion, D-loop formation and D-loop extension. However there is no second end to capture, so D-loop extension just proceeds, forever, creating *both* a leading and lagging strand, leaving a Holliday junction behind it. Eventually an enzyme called resolvase will simply cleave the Holliday junction, leaving you with just a single replication fork. This may or may not result in a crossover.

![](/media/2014/10/hr-one-ended-dsb.png)


[Lieber 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20192759/ "Lieber MR. The mechanism of double-strand DNA break repair by the nonhomologous DNA end-joining pathway. Annu Rev Biochem. 2010;79:181-211. doi: 10.1146/annurev.biochem.052308.093131. Review. PubMed PMID: 201927"

[Chen 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18497818 "Chen Z, Yang H, Pavletich NP. Mechanism of homologous recombination from the RecA-ssDNA/dsDNA structures. Nature. 2008 May 22;453(7194):489-4. doi: 10.1038/nature06971. PubMed PMID: 18497818."

[Sharan 1997]: http://www.ncbi.nlm.nih.gov/pubmed/9126738 "Sharan SK, Morimatsu M, Albrecht U, Lim DS, Regel E, Dinh C, Sands A, Eichele  G, Hasty P, Bradley A. Embryonic lethality and radiation hypersensitivity mediated by Rad51 in mice lacking Brca2. Nature. 1997 Apr 24;386(6627):804-10. PubMed PMID: 9126738."

[Abbott 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9665145 "Abbott DW, Freeman ML, Holt JT. Double-strand break repair deficiency and radiation sensitivity in BRCA2 mutant cancer cells. J Natl Cancer Inst. 1998 Jul  1;90(13):978-85. PubMed PMID: 9665145."

[Yuan 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10446958 "Yuan SS, Lee SY, Chen G, Song M, Tomlinson GE, Lee EY. BRCA2 is required for ionizing radiation-induced assembly of Rad51 complex in vivo. Cancer Res. 1999 Aug 1;59(15):3547-51. PubMed PMID: 10446958."

[Pierce 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10541549/ "Pierce AJ, Johnson RD, Thompson LH, Jasin M. XRCC3 promotes homology-directed  repair of DNA damage in mammalian cells. Genes Dev. 1999 Oct 15;13(20):2633-8. PubMed PMID: 10541549; PubMed Central PMCID: PMC317094."

[Moynahan 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11239455 "Moynahan ME, Pierce AJ, Jasin M. BRCA2 is required for homology-directed repair of chromosomal breaks. Mol Cell. 2001 Feb;7(2):263-72. PubMed PMID: 11239455."

[Pellegrini 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12442171 "Pellegrini L, Yu DS, Lo T, Anand S, Lee M, Blundell TL, Venkitaraman AR. Insights into DNA recombination from the structure of a RAD51-BRCA2 complex. Nature. 2002 Nov 21;420(6913):287-93. Epub 2002 Nov 10. PubMed PMID: 12442171."

[Yang 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12228710 "Yang H, Jeffrey PD, Miller J, Kinnucan E, Sun Y, Thoma NH, Zheng N, Chen PL, Lee WH, Pavletich NP. BRCA2 function in DNA binding and recombination from a BRCA2-DSS1-ssDNA structure. Science. 2002 Sep 13;297(5588):1837-48. PubMed PMID:  12228710."

[Jensen 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20729832 "Jensen RB, Carreira A, Kowalczykowski SC. Purified human BRCA2 stimulates RAD51-mediated recombination. Nature. 2010 Oct 7;467(7316):678-83. doi: 10.1038/nature09399. PubMed PMID: 20729832; PubMed Central PMCID: PMC2952063."

[Liu 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20729859/ "Liu J, Doty T, Gibson B, Heyer WD. Human BRCA2 protein promotes RAD51 filament formation on RPA-covered single-stranded DNA. Nat Struct Mol Biol. 2010 Oct;17(10):1260-2. doi: 10.1038/nsmb.1904. Epub 2010 Aug 22. PubMed PMID: 20729859; PubMed Central PMCID: PMC2952495."

[Thorslund 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20729858 "Thorslund T, McIlwraith MJ, Compton SA, Lekomtsev S, Petronczki M, Griffith JD, West SC. The breast cancer tumor suppressor BRCA2 promotes the specific targeting of RAD51 to single-stranded DNA. Nat Struct Mol Biol. 2010 Oct;17(10):1263-5. doi: 10.1038/nsmb.1905. Epub 2010 Aug 22. PubMed PMID: 20729858; PubMed Central PMCID: PMC4041013."