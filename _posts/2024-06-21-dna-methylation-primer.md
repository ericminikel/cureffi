---
layout: post
title:  "DNA methylation primer"
date:   2024-06-21
author: ericminikel
location: Cambridge, MA
thumb120: https://www.cureffi.org/2024/06/5mc_thumbnail.png
summary200: "Notes from a primer on DNA methylation by Tessa Bertozzi"
---

_Dr. Tessa Bertozzi from the Whitehead Institute visited our lab to give us a primer on DNA methylation and epigenetic regulation of gene expression. Here are my notes from the primer._

Epigenetics can be defined as functionally relevant changes to the genome that do not involve changes in DNA sequence. Even though your genome is (to a very close approximation) the same in every cell in your body, the epigenome is very different in different tissues and different cell types. The epigenome is what controls which genes are "on" and "off" in different cells, what makes a neuron different from a skin cell.

DNA is not just a loose double helix floating around in the nucleus of your cells. The double helix is wrapped around nucleosomes, which are balls of histone proteins. This complex, called chromatin, is then folded in on itself in a higher-order structure.

There are at least 3 main uses of epigenetic regulation in our cells:

1. Suppression of transposable elements [[Deniz 2019]]
2. Genome architecture &mdash; 3D organization of chromatin [[Dogan & Liu 2018]]
3. Dynamic regulation and heritable maintenance of transcriptional programs across cellular generations [[Waddington 1957]]

Two main modes of epigenetic regulation are DNA methylation &mdash; the topic of today's primer &mdash; and histone modification, which we do also need to touch on briefly later on.

The main topic of today's primer is DNA methylation. Unlike histone modifications, which are modifications to proteins that the DNA is wrapped around, DNA methylation means the DNA itself is modified. Specifically, it refers to the addition of a methyl group at the 5' position of cytosine (C) to yield 5-methylcytosine (5mC), as shown in the diagram below.

![](/media/2024/06/5-methylcytosine.png)

In mammals, methylation of cytosine occurs almost exclusively in the context of a CpG dinucleotide, meaning, a C followed by a G. This is because mammals have 5mC writers that recognize CpG dinucleotides. (There is actually a bit of CpA methylation, especially in the brain, but we won't focus on this for today). In plants, 5mC writers will write 5mC in all different context. 

5mC needs enzymes install it, remove it, and read it [[Vukic & Daxinger 2019]]. The main writers are DMNT3A and DNMT3B. They need a co-factor DNMT3L, which is catalytically inactive but associates with 3A and 3B to boost their activity. 3A and 3B are expressed most highly during development to lay down initial marks during cell differentiation. But methylation has to be mitotically heritable &mdash; every time cells divide, the new strands start unmethylated and need to get methylated. DNMT1 is the enzyme responsible for methylating the daugher (nascent) DNA strand. There is also a "hush" complex that recognizes self vs. non-self DNA, by determining if the DNA has introns. Viruses almost entirely lack introns, because they are under selection pressure to minimize genome size. The hush complex recognizes this lack of introns and silences the DNA by methylation. If DNMT1 is removed, then after a few cell divisions, all methylation is effectively erased by dilution through cell division. There are also enzymes TET1, 2, 3 that actively remove DNA methylation.

Methylation does not change the sequence of the DNA, in the sense that 5mC still pairs with G. Yet it has a profound functional impact by repressing gene expression. The mechanism by which 5mC represses gene expression is still controversial. Some evidence shows that 5mC directly repels transcription factors. Other evidence points to methylation-binding domains (MBDs) in proteins, which only bind methylated DNA, and these proteins in turn repel the transcription factors. Both are true to some degree in some context; the question is the degree to which they are important genome-wide and life-long in vivo [[Zhu 2016]]. A recent paper provides pretty good evidence that most of the effect is probably mediated by direct inhibition of transcription factor binding, rather than by MBDs [[Kaluscha 2022]].

CpG dinucleotide is highly mutable, with the C very likely to mutate to a T if the C is methylated and then deaminated, so over millions of years, our genomes have become depleted for CpG dinucleotides. Most CpGs that do exist throughout the human (indeed, mammalian) genome are methylated. Intergenic CpGs are methylated, apparently preventing transcription of transposable elements. CpGs in the middle of genes are methylated, perhaps preventing transcription starting from the wrong place in the middle of the gene. The only place where CpGs are often unmethylated is at the promoters of genes, where there is usually an especially high density of CpGs, known as a CpG island. Indeed, the reason there are more CpGs at promoters is probably precisely because they are unmethylated and therefore less likely to mutate to a T.

![](/media/2024/06/mariuswalter_cpg_island.png)

_Diagram of CpG distribution in the mammalian genome, by Marius Walter [from Wikimedia Commons](https://commons.wikimedia.org/wiki/File:DNAme_landscape.png)._

Only a small subset of CpG island promoters are normally methylated in healthy somatic cells:

+ Imprinted genes (where either only the maternal or only the paternal allele is expressed)
+ Genes on the inactive copy of the X chromosome
+ Germline-specific genes, expressed only in testis or ovary, etc. These are often genes whose continued expression would be detrimental to somatic cells.

In all 3 of the above cases, these are genes we _never_ want to turn back on. Cells generally do not methylate genes that they might want to later reactivate in some developmental context. These genes all get methylated within 4-5 days of development in humans. For genes not falling into the above 3 categories, even if the gene is off in a given cell type or tissue, its CpG island at its promoter is generally unmethylated. Methylation is less easy to turn off and on than histone marks, which polycomb repressive complex (PRC) works on. So histone marks are more often used to turn genes on and off in cell differentiation.

Sometimes, CpG island methylation can also occur as part of a pathological process, for example, silencing of tumor suppressor genes in cancer cells. 

CpG methylation changes massively at two points in development. Germ cells initially get almost completely demethylated, then as they differentiate, get highly methylated again, reaching 80% of CpGs in sperm and some lower number in oocytes. Then after fertilization, the pluripotent cells of the embryo again drop to 20% methylation at the blastocyst stage. Then as the embryo differentiates, it acquires a lot of methylation again [[Deniz 2019]]. The demethylation process in de-differentiated cells is driven mostly by sequestering DMNT1 into the cytosol so that it can't act on the DNA which is in the nucleus.

We now have a lot of different tools for measuring DNA methylation:

+ Methylation specific restriction enzyme-based assays (e.g. HpaII digests). This is very old school and not often used now.
+ Affinity enrichment-based approaches (e.g. MeDIP), using antibodies specific to methylated CpGs to pull down DNA and then sequence those pieces.
+ Bisulfite sequencing &mdash; use of bisulfite to convert C&rarr;T at all _non_-methylated Cs, followed by short-read sequencing. The chemistry of the bisulfite reaction is actually the opposite of the natural mutagenic process in our cells &mdash; methylation actually protects C from converting to T by bisulfite, whereas in natural mutagenesis, C is much more likely to convert to T if it is methylated.
    + Clonal bisulphite sequencing 
    + Pyrosequencing 
    + Whole genome bisulfite sequencing
    + RRBS
+ Single-molecule nanopore sequencing [[Xu & Seki 2020]]. Because this allows for long individual reads, you can see how far methylation is spread in _cis_ along a single allele.

While not the main topic of today's primer, it's worth briefly touching on histone modifications as another source of epigenetic information. The tails of histones, which protrude from the nucleosome, can undergo several chemical modifications, chiefly acetylation and methylation at different specific amino acids. Some modifications are repressive &mdash; they cause the chromatin to become more compacted and less accessible to be transcribed into RNA, while others are activating &mdash; they make the chromatin looser and more likely to be transcribed, increasing gene expression. The correspondence of these chemical marks to effects on gene expression has been called the "histone code" and is one major mechanism of gene regulation across different cell types in our body. For example, H3K4me3 (trimethylation of histone 3 residue lysine 4) is an important activating mark at active gene promoters, especially at CpG islands (introduced below). H3K27ac (acetylation of histone 3 residue lysine 27) is another activating mark. H3K9me2/3 and H3K27me3 are important repressive marks.

![](/media/2024/06/kim-2014-figure-4.png)

_Diagram of histone modifications. Figure 4 from [[Kim 2014]]_.

How do histone modifications work? Many of them are marks that need to be read by "readers", which are other proteins which mediate the functional effects. But histone acetylation, especially H3K27ac, directly physically loosens up chromatin, making the DNA less tightly bound around the nucleosomes, this promoting transcription, apparently without the need for readers to mediate this effect. The reason is that negatively charged DNA binds tightly to positively charged lysines in histones, but acetylation of lysine removes this positive charge, reducing the strength of ionic interaction between DNA and histones.

The main tool for studying histone modifications is still ChIP-seq, chromatin immunoprecipitation with sequencing. You use antibodies to pull down DNA bound to histones with certain modifications of interest, then you sequence it.

The de novo methyltransferases 3A and 3B exist in an autoinhibited state at baseline. They need to encounter an unmethylated H3K4 tail (H3K4me0) to become activated. Thus, any active promoter, which usually has H3K4me3, is incapable of activating DMNT3A/B. This mechanism helps protect genes that might need to stay on or re-turn on at some point, from getting DNA methylated. Also, 3A and 3B are only highly expressed in development; in adult somatic cells, they are minimally expressed, though there is often plenty of 3L to maintain methylation. The brain is unusual though, having substantial 3A and 3B expression in adulthood, whereas 3L is not actually expressed.

Our genome is full of endogenous KRAB zinc finger (ZF) proteins [[Wolf 2015], [Imbeault 2017], [Deniz 2019]] &mdash; there are over 400 in the human genome. There is a lot of variability between species. Guinea pigs have >1000 of them; birds almost completely lack them. The number of ZFPs that an animal has is directly related to its number of transposable elements. They are the result of an evolutionary arms race to silence the transposons. The zinc fingers sequence-specifically bind double-stranded DNA. Transposons evolve to evade the ZF repression, and the ZFs evolve to chase them. In fact, they evolve so rapidly that even two different mouse strains (B6 and CAST) can have profound differences in ZF silencing of transposons [[Bertozzi 2020]]. The evolutionary pressure comes both from not wanting the transposons to express, but also not wanting them to cause translocations between our chromosomes. ZFs are very repetitive and have only recently been discriminated from each other in the reference gneome. KRAB is a repressive protein domain that prevents transcription. It interacts with a protein known as KAP1 (_TRIM28_), which is a scaffold protein that recruits myriad other repressors. Among other things, KAP1 recruits HDAC to remove histone acetylation marks, thus compacting chromatin. It also recruits HMTs and HP1 to cause histone methylation. Over time, eventually the regions targeted by ZF-KRABs tend to get DNA methylated, but functionally why/how this occurs is still unknown. Our genome also has zinc finger proteins fused to other functional domains, such as domains that activate transcription rather than suppressing it. There are even versions of KRAB domains that are activating rather than repressing. And there are other repressive domains such as SCAN.

The epigenome has been targeted in many therapeutics. There are small molecule inhibitors of DNA methyltransferases and of histone methyltransferases, demethylases, acetyltransferases, and deacetylases, used mostly in cancer. But these are not at all specific to any one gene and generally have poor side effect profiles. There are emerging therapies in preclinical development that target the epigenome in a directed way by using a DNA-binding domain such as a catalytically dead (i.e. unable to make double-strand DNA breaks) Cas9 enzyme from a CRISPR system (dCas9). As of 2023, only one such therapy has gotten to the clinic: the CRISPRa drug CRD-TMH-001 for Duchenne muscular dystrophy [[NCT05514249](https://clinicaltrials.gov/study/NCT05514249)]. That drug used a CRISPR activator (CRISPRa) system consisting of dCas9 fused to VP64, intended to upregulate expression of a full-length isoform of dystrophin. Very sadly, the one patient treated in that trial passed away. It appeared to be due to an immune response to the high dose AAV9 therapy and thus probably does not say much about the viabilty of the CRISPRa approach more generally.

There are additional therapies in this vein &mdash; call them epigenetic editors &mdash; that are at the technology development or preclinical proof-of-concept stage. In each version, you have some DNA-binding domain engineered to target the promoter of a gene of interest, fused to an effector domain. Most often, the effector domain is KRAB; the DNA-binding domain could be CRISPR guide RNA with a dCas9 ("CRISPRi", with the "i" standing for interference) [[Gilbert 2013]], or an engineered ZF, [[Zeitler 2019], [Wegmann 2021]], or a TALE [[Mlambo 2018]]. It is debatable how permanent any of these might be. Endogenous KRAB-ZFs do cause histone mark changes, but it's not clear if these are permanent absent continued expression of the KRAB-ZF; the transposons eventually get DNA methylated and are shut off permanently, and expression of the endogenous ZF-KRAB later turns off. But we don't know how that DNA methylation occurs. DNA methylation has not been shown to occur when KRAB alone is used as a functional domain with an engineered ZF. The engineered ZF-KRAB and CRISPR-KRABs do cause histone mark changes, which don't persist well in dividing cells; how permanent they might be in post-mitotic cells is not really known. This is due to two technical limitations. First, a lack of ways to only transiently express these tools in neurons &mdash; all we have is AAV, which is effectively permanent relative to the lifetime of a mouse. Second, even if we could transiently express these engineered proteins in neurons, a mouse's lifetime is not long enough to ask whether repressive histone marks installed by KRAB might be lost after 3 or 5 or 10 years absent continued expression of the KRAB. A relatively recent innovation is CRISPRoff [[Nunez 2021]], which includes domains from the DNMT3A and DNMT3L proteins (without the autoinhibiting parts) to cause DNA methylation, which appears to be more permanent.




[Waddington 1957]: https://doi.org/10.4324/9781315765471 "Waddington, C.H. (1957). The Strategy of the Genes (1st ed.). Routledge."

[Zaidi 2010]: https://pubmed.ncbi.nlm.nih.gov/20696837/ "Zaidi SK, Young DW, Montecino M, Lian JB, Stein JL, van Wijnen AJ, Stein GS. Architectural epigenetics: mitotic retention of mammalian transcriptional regulatory information. Mol Cell Biol. 2010 Oct;30(20):4758-66. doi: 10.1128/MCB.00646-10. Epub 2010 Aug 9. PMID: 20696837; PMCID: PMC2950539."

[Gilbert 2013]: https://pubmed.ncbi.nlm.nih.gov/23849981/ "Gilbert LA, Larson MH, Morsut L, Liu Z, Brar GA, Torres SE, Stern-Ginossar N, Brandman O, Whitehead EH, Doudna JA, Lim WA, Weissman JS, Qi LS. CRISPR-mediated modular RNA-guided regulation of transcription in eukaryotes. Cell. 2013 Jul 18;154(2):442-51. doi: 10.1016/j.cell.2013.06.044. Epub 2013 Jul 11. PMID: 23849981; PMCID: PMC3770145."

[Kim 2014]: https://pubmed.ncbi.nlm.nih.gov/24926467/ "Kim YZ. Altered histone modifications in gliomas. Brain Tumor Res Treat. 2014 Apr;2(1):7-21. doi: 10.14791/btrt.2014.2.1.7. Epub 2014 Apr 29. PMID: 24926467; PMCID: PMC4049557."

[Wolf 2015]: https://pubmed.ncbi.nlm.nih.gov/25737282/ "Wolf G, Yang P, Füchtbauer AC, Füchtbauer EM, Silva AM, Park C, Wu W, Nielsen AL, Pedersen FS, Macfarlan TS. The KRAB zinc finger protein ZFP809 is required to initiate epigenetic silencing of endogenous retroviruses. Genes Dev. 2015 Mar 1;29(5):538-54. doi: 10.1101/gad.252767.114. PMID: 25737282; PMCID: PMC4358406."

[Zhu 2016]: https://pubmed.ncbi.nlm.nih.gov/27479905/ "Zhu H, Wang G, Qian J. Transcription factors as readers and effectors of DNA methylation. Nat Rev Genet. 2016 Aug 1;17(9):551-65. doi: 10.1038/nrg.2016.83. PMID: 27479905; PMCID: PMC5559737."

[Imbeault 2017]: https://pubmed.ncbi.nlm.nih.gov/28273063/ "Imbeault M, Helleboid PY, Trono D. KRAB zinc-finger proteins contribute to the evolution of gene regulatory networks. Nature. 2017 Mar 23;543(7646):550-554. doi: 10.1038/nature21683. Epub 2017 Mar 8. PMID: 28273063."

[Dogan & Liu 2018]: https://pubmed.ncbi.nlm.nih.gov/30061747/ "Doğan ES, Liu C. Three-dimensional chromatin packing and positioning of plant genomes. Nat Plants. 2018 Aug;4(8):521-529. doi: 10.1038/s41477-018-0199-5. Epub 2018 Jul 30. PMID: 30061747."

[Mlambo 2018]: https://pubmed.ncbi.nlm.nih.gov/29538770/ "Mlambo T, Nitsch S, Hildenbeutel M, Romito M, Müller M, Bossen C, Diederichs S, Cornu TI, Cathomen T, Mussolino C. Designer epigenome modifiers enable robust and sustained gene silencing in clinically relevant human cells. Nucleic Acids Res. 2018 May 18;46(9):4456-4468. doi: 10.1093/nar/gky171. PMID: 29538770; PMCID: PMC5961145."

[Deniz 2019]: https://pubmed.ncbi.nlm.nih.gov/30867571/ "Deniz Ö, Frost JM, Branco MR. Regulation of transposable elements by DNA modifications. Nat Rev Genet. 2019 Jul;20(7):417-431. doi: 10.1038/s41576-019-0106-6. Erratum in: Nat Rev Genet. 2019 Jul;20(7):432. doi: 10.1038/s41576-019-0117-3. PMID: 30867571."

[Vukic & Daxinger 2019]: https://pubmed.ncbi.nlm.nih.gov/31724723/ "Vukic M, Daxinger L. DNA methylation in disease: Immunodeficiency, Centromeric instability, Facial anomalies syndrome. Essays Biochem. 2019 Dec 20;63(6):773-783. doi: 10.1042/EBC20190035. PMID: 31724723; PMCID: PMC6923317."

[Heberle & Bardet 2019]: https://pubmed.ncbi.nlm.nih.gov/31755929/ "Héberlé É, Bardet AF. Sensitivity of transcription factors to DNA methylation. Essays Biochem. 2019 Dec 20;63(6):727-741. doi: 10.1042/EBC20190033. PMID: 31755929; PMCID: PMC6923324."

[Zeitler 2019]: https://pubmed.ncbi.nlm.nih.gov/31263285/ "Zeitler B, Froelich S, Marlen K, Shivak DA, Yu Q, Li D, Pearl JR, Miller JC, Zhang L, Paschon DE, Hinkley SJ, Ankoudinova I, Lam S, Guschin D, Kopan L, Cherone JM, Nguyen HB, Qiao G, Ataei Y, Mendel MC, Amora R, Surosky R, Laganiere J, Vu BJ, Narayanan A, Sedaghat Y, Tillack K, Thiede C, Gärtner A, Kwak S, Bard J, Mrzljak L, Park L, Heikkinen T, Lehtimäki KK, Svedberg MM, Häggkvist J, Tari L, Tóth M, Varrone A, Halldin C, Kudwa AE, Ramboz S, Day M, Kondapalli J, Surmeier DJ, Urnov FD, Gregory PD, Rebar EJ, Muñoz-Sanjuán I, Zhang HS. Allele-selective transcriptional repression of mutant HTT for the treatment of Huntington's disease. Nat Med. 2019 Jul;25(7):1131-1142. doi: 10.1038/s41591-019-0478-3. Epub 2019 Jul 1. PMID: 31263285."

[Bertozzi 2020]: https://pubmed.ncbi.nlm.nih.gov/33239447/ "Bertozzi TM, Elmer JL, Macfarlan TS, Ferguson-Smith AC. KRAB zinc finger protein diversification drives mammalian interindividual methylation variability. Proc Natl Acad Sci U S A. 2020 Dec 8;117(49):31290-31300. doi: 10.1073/pnas.2017053117. Epub 2020 Nov 25. PMID: 33239447; PMCID: PMC7733849."

[Xu & Seki 2020]: https://pubmed.ncbi.nlm.nih.gov/31602005/ "Xu L, Seki M. Recent advances in the detection of base modifications using the Nanopore sequencer. J Hum Genet. 2020 Jan;65(1):25-33. doi: 10.1038/s10038-019-0679-0. Epub 2019 Oct 11. PMID: 31602005; PMCID: PMC7087776."

[Wegmann 2021]: https://pubmed.ncbi.nlm.nih.gov/33741591/ "Wegmann S, DeVos SL, Zeitler B, Marlen K, Bennett RE, Perez-Rando M, MacKenzie D, Yu Q, Commins C, Bannon RN, Corjuc BT, Chase A, Diez L, Nguyen HB, Hinkley S, Zhang L, Goodwin A, Ledeboer A, Lam S, Ankoudinova I, Tran H, Scarlott N, Amora R, Surosky R, Miller JC, Robbins AB, Rebar EJ, Urnov FD, Holmes MC, Pooler AM, Riley B, Zhang HS, Hyman BT. Persistent repression of tau in the brain using engineered zinc finger protein transcription factors. Sci Adv. 2021 Mar 19;7(12):eabe1611. doi: 10.1126/sciadv.abe1611. PMID: 33741591; PMCID: PMC7978433."

[Bertozzi 2021a]: https://pubmed.ncbi.nlm.nih.gov/33755012/ "Bertozzi TM, Takahashi N, Hanin G, Kazachenka A, Ferguson-Smith AC. A spontaneous genetically induced epiallele at a retrotransposon shapes host genome function. Elife. 2021 Mar 23;10:e65233. doi: 10.7554/eLife.65233. PMID: 33755012; PMCID: PMC8084528."

[Bertozzi 2021b]: https://pubmed.ncbi.nlm.nih.gov/34326545/ "Bertozzi TM, Becker JL, Blake GET, Bansal A, Nguyen DK, Fernandez-Twinn DS, Ozanne SE, Bartolomei MS, Simmons RA, Watson ED, Ferguson-Smith AC. Variably methylated retrotransposons are refractory to a range of environmental perturbations. Nat Genet. 2021 Aug;53(8):1233-1242. doi: 10.1038/s41588-021-00898-9. Epub 2021 Jul 29. PMID: 34326545; PMCID: PMC7611517."

[Nunez 2021]: https://pubmed.ncbi.nlm.nih.gov/33838111/ "Nuñez JK, Chen J, Pommier GC, Cogan JZ, Replogle JM, Adriaens C, Ramadoss GN, Shi Q, Hung KL, Samelson AJ, Pogson AN, Kim JYS, Chung A, Leonetti MD, Chang HY, Kampmann M, Bernstein BE, Hovestadt V, Gilbert LA, Weissman JS. Genome-wide programmable transcriptional memory by CRISPR-based epigenome editing. Cell. 2021 Apr 29;184(9):2503-2519.e17. doi: 10.1016/j.cell.2021.03.025. Epub 2021 Apr 9. PMID: 33838111; PMCID: PMC8376083."

[Kaluscha 2022]: https://pubmed.ncbi.nlm.nih.gov/36471082/ "Kaluscha S, Domcke S, Wirbelauer C, Stadler MB, Durdu S, Burger L, Schübeler D. Evidence that direct inhibition of transcription factor binding is the prevailing mode of gene and repeat repression by DNA methylation. Nat Genet. 2022 Dec;54(12):1895-1906. doi: 10.1038/s41588-022-01241-6. Epub 2022 Dec 5. PMID: 36471082; PMCID: PMC9729108."

[Lek 2023]: https://pubmed.ncbi.nlm.nih.gov/37754285/ "Lek A, Wong B, Keeler A, Blackwood M, Ma K, Huang S, Sylvia K, Batista AR, Artinian R, Kokoski D, Parajuli S, Putra J, Carreon CK, Lidov H, Woodman K, Pajusalu S, Spinazzola JM, Gallagher T, LaRovere J, Balderson D, Black L, Sutton K, Horgan R, Lek M, Flotte T. Death after High-Dose rAAV9 Gene Therapy in a Patient with Duchenne's Muscular Dystrophy. N Engl J Med. 2023 Sep 28;389(13):1203-1210. doi: 10.1056/NEJMoa2307798. PMID: 37754285."


