---
layout: post
title:  "DNA methylation: durability and what's unique about the brain"
date:   2024-09-23
author: ericminikel
location: Cambridge, MA
thumb120: https://www.cureffi.org/2024/06/5mc_thumbnail.png
summary200: "Notes from a second lesson on DNA methylation by Tessa Bertozzi"
---

_Following our [DNA methylation primer](/2024/06/21/dna-methylation-primer/) back in June, Dr. Tessa Bertozzi from the Whitehead Institute returned to our lab to give us a second lecture on DNA methylation, focusing on how the brain is unique compared to other organs. Here are my notes._

DNA methylation has two main roles. One is silencing transposons, which make up half our DNA. The other is regulating genes, though even genes that are "off" in a given cell type or tissue usually have unmethylated promoters; DNA methylation at promoters occurs in cases of imprinted genes, X-inactivation, and germline-specific genes. (DNA methylation can also occur aberrantly, for instance silencing a tumor suppressor in cancer). For a further overview of DNA methylation, see [Tessa's primer](/2024/06/21/dna-methylation-primer/) or read [[Zaidi 2010]].

A caveat to most of what's known and presented here today: because the advent of tools to install DNA methylation is so recent, there aren't yet a lot of experiments report where someone could perturb the system. 

**Writing**. The writers of DNA methylation are DNMT3A/B, which install de novo methylation, and DNMT1, which maintains DNA methylation. It does so by recognizing hemimethylated DNA, which could arise for instance in the case of cell division and DNA replication, in which the parent strand is methylated and the nascent daughter strand is not. DNMT1 makes the hemimethylated DNA fully methylated. The symmetric nature of CpG &mdash; its reverse complement is also CpG, which is not the case for C in any other dinucleotide context &mdash; is important to the mechanism by which it is inherited on cell division.

**Erasing.** DNA methylation can be lost on cell division, simply by dilution, if DNMT1 is not there to maintain and reinforce it. This is what happens in embryonic development, when DNMT1 is sequestered to cytosol and DNA methylation is lost. There are also erasers of DNA methylation via active removal of methyl groups: the TET enzymes (this is a bit of an oversimplification, see below). TET stands for ten-eleven translocation, named after a chromosome 10/11 translocation denoted _t(10;11)(q22;q23)_ that causes acute myeloid leukemia by fusing _TET1_ to _MLL_ [[Lorsbach 2003]]. We have TET1, TET2, and TET3.

**Reading.** Mammals have 5 different DNA methylation readers: MeCP2, and MBD1/2/3/4 [[Van den Veyver & Zoghbi 2000], [Bogdanovic & Veenstra 2009]]. MeCP2 is important in the brain.

Primordial germ cells (PGCs) are very difficult to transduce with AAV, and they undergo almost complete demethylation (after which sperm and egg get differentially remethylated) [[Deniz 2019], [Greenberg & Bourc'his 2019]]. This means that from first principles there's very little risk of germline DNA methylation with CHARM therapeutics.

As a refresher, recall that [CHARM](/2024/06/27/introducing-charm/) uses a DNA-binding domain, D3L, and an unmethylated histone tail H3K4me0 to recruit and activate endogenous DNMT3A [[Neumann & Bertozzi 2024]]. CpGs overlapped by the CRISPR guide or zinc finger can be missed because the DNA-binding domain sterically occludes the methylation from being installed, but you nevertheless get nearly complete silencing. AAV DNA sticks around as an episome in transduced cells, apparently for at least several years, possibly forever, based on human & animal data [[Marco 2021], [Muhuri 2022]]. CHARM can be designed to self-silence, which could theoretically have advantages in terms of reducing off-targets and immunogenicity concerns. If we design CHARM to self-silence, will the DNA methylation it installed in neurons remain durable indefinitely? Or is there a risk that the methylation will be lost and we'd be better off designing our CHARM to constitutively express as long as the AAV is present? 

Data from [Human Protein Atlas](https://www.proteinatlas.org/) show that both writers and erasers of DNA methylation are expressed (at the protein level) in the brain and specifically in neurons:

![](/media/2024/09/hpa-expression.png)

![](/media/2024/09/hpa-singlecell.png)

A caveat is that the y axes are not identical in all the above plots (look carefully and you'll see). But the overall impression the plots give is not wrong: in the brain, DNMT3A is expressed while DNMT3B is minimal; all of the TET enzymes are expressed at some reasonable level.

All of these enzymes are important and cause severe disease if lost. There are human Mendelian diseases caused by loss of DNMT1 [[Klein 2011], [Winkelmann 2012]]. A mouse double conditional knockout of DNMT3A and DNMT1 found resulting cognitive deficits [[Feng 2010]]. Critically, this was associated with a long-term decrease in neuronal DNA methylation. Although back then, the 5mC content could only be assessed by mass spec and by targeted bisulfite sequencing; whole-genome bisulfite sequencing was too new and was not yet used to systematically examine _where_ in the genome the methylation was lost. There are a lot of mouse studies showing that knockout of TET1, 2, or 3 causes defects [reviewed in [Antunes 2019]]. Finally, MeCP2 loss-of-function mutations cause Rett syndrome [[Van den Veyver & Zoghbi 2000]], apparently acting through as many as 4,189 genes that it regulates [[Liu 2024]]. Rett syndrome only affects girls, because MeCP2 loss-of-function is fatal on an XY karyotype background, while in XX it affects just half their cells due to random X-inactivation.

![](/media/2024/09/c-mc-hmc.png)

Besides mC, cytosine can also become 5-hydroxymethylcytosine (5-hmC or simply hmC), pictured above. In addition, while the percentage of CpGs that are methylated, genome-wide, is far higher, C can also be methylated in other dinucleotide contexts. Both of these phenomena occur especially in the brain [[Jang 2017]].

In the [shorthand of DNA](https://www.hgmd.cf.ac.uk/docs/nuc_lett.html), "H" means A, C, or T, so non-CpG methylation is abbreviated mCH. Here are some summary data on how common these modifications are, from [[Clemens & Gabel 2020]]:

| dinucleotide context | non-neuronal | neurons |
| ---- | ---- | ---- |
| CpG | 80% mC, 3% hmC | 40-65% mC, 15-40% hmC |
| CpH | 0.02% mC, 0.02% hMC | 1.5-3% mC, 0.02-1% hmC |

As you can see, neurons are unique in having less mCpG and much more hmCpG, and more modifications to CpH overall. Most of the CpH is CpA. CpH are much more common than CpG, genome-wide, therefore despite the smaller percentages, mCpH is actually just as prevalent in neurons as mCpG.

While mCpG is established very early in development and maintained throughout, mCpH accumulates gradually over development, plateauing by 16 years old in humans or 4-6 weeks in mice [[Lister & Mukamel 2013]]. mCpH acquisition appears to be associated with synaptic density and DNMT3A expression.

Earlier we simplified by saying that TET enzymes actively remove methylation from cytosines. In fact, it's more complicated. TET only catalyzes oxidation reactions from mC to hmC, which can then continue on to 5-formylcystosine (5fC), 5-carboxylcytosine (5caC) and other species that get recognized for base excision repair (BER) and replaced with an unmodified cytosine. Therefore, if TETs are in the act of removing methylation marks, you might expect to see more hmC.

Above we saw that TETs are expressed in the brain and in neurons in particular, and neurons have elevated hmC. At a glance, you might worry this means there is random erosion of 5mC marks in neurons over time. But in fact, it's not random: the genomic positions where hmC and mCpH marks appear in neurons is highly conserved and reproducible across individuals [[Szulwach 2011]]. It is thought that it mostly affects genes involved in learning and memory. So it may be that a particular gene, say _PRNP_, that you target and methylate, would have no reason to be subject to erosion of methylation over time.

So, the million dollar question: will CHARM prove durable over the human lifetime?

The reasons for pessimism:

+ Neurons are post-mitotic, which means there is no cell division to maintain and reinforce DNA methylation.
+ Neurons express TET, so active demethylation _could_ accrue over time, and indeed, high levels of 5-hmC in neurons could reflect the fact that this occurs. Indeed, dynamic changes in DNA methylation in neurons have been reported.

The reasons for optimism:

+ Neurons are post-mitotic, which means there is no risk of methylation loss through either replication errors or dilution, both of which would otherwise be risks [[Dmitirjeva 2018], [Ming & Zhang 2020]]
+ Erosion of mC to hmC is highly _PRNP_ is a specific process. Arguably, _PRNP_ is unlikely to be targeted for demethylation, and is not near any highly transcribed genes.
+ Some demethylation could be tolerated before _PRNP_ reactivation would occur.
+ A properly tuned self-silencing CHARM construct could be designed to reactivate before _PRNP_ reactivates. The promoter driving CHARM would need to be designed to be slightly more prone to reactivation than the _PRNP_ promoter.

Our level of optimism vs. pessimism matters, because it feeds into a decision of whether, and how aggressively, to self-silence CHARM. If you think methylation may not be permanent, you want to constitutively express CHARM. If you are confident it is permanent, then you might self-silence it if you have reason to believe this would help manage off-target or immunogenicity risks.




[Van den Veyver & Zoghbi 2000]: https://pubmed.ncbi.nlm.nih.gov/10826991/ "Van den Veyver IB, Zoghbi HY. Methyl-CpG-binding protein 2 mutations in Rett syndrome. Curr Opin Genet Dev. 2000 Jun;10(3):275-9. doi: 10.1016/s0959-437x(00)00083-6. PMID: 10826991."

[Lorsbach 2003]: https://pubmed.ncbi.nlm.nih.gov/12646957/ "Lorsbach RB, Moore J, Mathew S, Raimondi SC, Mukatira ST, Downing JR. TET1, a member of a novel protein family, is fused to MLL in acute myeloid leukemia containing the t(10;11)(q22;q23). Leukemia. 2003 Mar;17(3):637-41. doi: 10.1038/sj.leu.2402834. PMID: 12646957."

[Bogdanovic & Veenstra 2009]: https://pubmed.ncbi.nlm.nih.gov/19506892/ "Bogdanović O, Veenstra GJ. DNA methylation and methyl-CpG binding proteins: developmental requirements and function. Chromosoma. 2009 Oct;118(5):549-65. doi: 10.1007/s00412-009-0221-9. Epub 2009 Jun 9. PMID: 19506892; PMCID: PMC2729420."

[Feng 2010]: https://pubmed.ncbi.nlm.nih.gov/20228804/ "Feng J, Zhou Y, Campbell SL, Le T, Li E, Sweatt JD, Silva AJ, Fan G. Dnmt1 and Dnmt3a maintain DNA methylation and regulate synaptic function in adult forebrain neurons. Nat Neurosci. 2010 Apr;13(4):423-30. doi: 10.1038/nn.2514. Epub 2010 Mar 14. PMID: 20228804; PMCID: PMC3060772."

[Zaidi 2010]: https://pubmed.ncbi.nlm.nih.gov/20696837/ "Zaidi SK, Young DW, Montecino M, Lian JB, Stein JL, van Wijnen AJ, Stein GS. Architectural epigenetics: mitotic retention of mammalian transcriptional regulatory information. Mol Cell Biol. 2010 Oct;30(20):4758-66. doi: 10.1128/MCB.00646-10. Epub 2010 Aug 9. PMID: 20696837; PMCID: PMC2950539."

[Muhuri 2022]: https://pubmed.ncbi.nlm.nih.gov/35283274/ "Muhuri M, Levy DI, Schulz M, McCarty D, Gao G. Durability of transgene expression after rAAV gene therapy. Mol Ther. 2022 Apr 6;30(4):1364-1380. doi: 10.1016/j.ymthe.2022.03.004. Epub 2022 Mar 10. PMID: 35283274; PMCID: PMC9077371."

[Klein 2011]: https://pubmed.ncbi.nlm.nih.gov/21532572/ "Klein CJ, Botuyan MV, Wu Y, Ward CJ, Nicholson GA, Hammans S, Hojo K, Yamanishi H, Karpf AR, Wallace DC, Simon M, Lander C, Boardman LA, Cunningham JM, Smith GE, Litchy WJ, Boes B, Atkinson EJ, Middha S, B Dyck PJ, Parisi JE, Mer G, Smith DI, Dyck PJ. Mutations in DNMT1 cause hereditary sensory neuropathy with dementia and hearing loss. Nat Genet. 2011 Jun;43(6):595-600. doi: 10.1038/ng.830. Epub 2011 May 1. PMID: 21532572; PMCID: PMC3102765."

[Szulwach 2011]: https://pubmed.ncbi.nlm.nih.gov/22037496/ "Szulwach KE, Li X, Li Y, Song CX, Wu H, Dai Q, Irier H, Upadhyay AK, Gearing M, Levey AI, Vasanthakumar A, Godley LA, Chang Q, Cheng X, He C, Jin P. 5-hmC-mediated epigenetic dynamics during postnatal neurodevelopment and aging. Nat Neurosci. 2011 Oct 30;14(12):1607-16. doi: 10.1038/nn.2959. PMID: 22037496; PMCID: PMC3292193."

[Winkelmann 2012]: https://pubmed.ncbi.nlm.nih.gov/22328086/ "Winkelmann J, Lin L, Schormair B, Kornum BR, Faraco J, Plazzi G, Melberg A, Cornelio F, Urban AE, Pizza F, Poli F, Grubert F, Wieland T, Graf E, Hallmayer J, Strom TM, Mignot E. Mutations in DNMT1 cause autosomal dominant cerebellar ataxia, deafness and narcolepsy. Hum Mol Genet. 2012 May 15;21(10):2205-10. doi: 10.1093/hmg/dds035. Epub 2012 Feb 9. PMID: 22328086; PMCID: PMC3465691."

[Gilbert 2013]: https://pubmed.ncbi.nlm.nih.gov/23849981/ "Gilbert LA, Larson MH, Morsut L, Liu Z, Brar GA, Torres SE, Stern-Ginossar N, Brandman O, Whitehead EH, Doudna JA, Lim WA, Weissman JS, Qi LS. CRISPR-mediated modular RNA-guided regulation of transcription in eukaryotes. Cell. 2013 Jul 18;154(2):442-51. doi: 10.1016/j.cell.2013.06.044. Epub 2013 Jul 11. PMID: 23849981; PMCID: PMC3770145."

[Lister & Mukamel 2013]: https://pubmed.ncbi.nlm.nih.gov/23828890/ "Lister R, Mukamel EA, Nery JR, Urich M, Puddifoot CA, Johnson ND, Lucero J, Huang Y, Dwork AJ, Schultz MD, Yu M, Tonti-Filippini J, Heyn H, Hu S, Wu JC, Rao A, Esteller M, He C, Haghighi FG, Sejnowski TJ, Behrens MM, Ecker JR. Global epigenomic reconfiguration during mammalian brain development. Science. 2013 Aug 9;341(6146):1237905. doi: 10.1126/science.1237905. Epub 2013 Jul 4. PMID: 23828890; PMCID: PMC3785061."

[Amabile 2016]: https://pubmed.ncbi.nlm.nih.gov/27662090/ "Amabile A, Migliara A, Capasso P, Biffi M, Cittaro D, Naldini L, Lombardo A. Inheritable Silencing of Endogenous Genes by Hit-and-Run Targeted Epigenetic Editing. Cell. 2016 Sep 22;167(1):219-232.e14. doi: 10.1016/j.cell.2016.09.006. PMID: 27662090; PMCID: PMC5039111."

[Jang 2017]: https://pubmed.ncbi.nlm.nih.gov/28545252/ "Jang HS, Shin WJ, Lee JE, Do JT. CpG and Non-CpG Methylation in Epigenetic Gene Regulation and Brain Function. Genes (Basel). 2017 May 23;8(6):148. doi: 10.3390/genes8060148. PMID: 28545252; PMCID: PMC5485512."

[Dmitrijeva 2018]: https://pubmed.ncbi.nlm.nih.gov/29893918/ "Dmitrijeva M, Ossowski S, Serrano L, Schaefer MH. Tissue-specific DNA methylation loss during ageing and carcinogenesis is linked to chromosome structure, replication timing and cell division rates. Nucleic Acids Res. 2018 Aug 21;46(14):7022-7039. doi: 10.1093/nar/gky498. PMID: 29893918; PMCID: PMC6101545."

[Deniz 2019]: https://pubmed.ncbi.nlm.nih.gov/30867571/ "Deniz Ö, Frost JM, Branco MR. Regulation of transposable elements by DNA modifications. Nat Rev Genet. 2019 Jul;20(7):417-431. doi: 10.1038/s41576-019-0106-6. Erratum in: Nat Rev Genet. 2019 Jul;20(7):432. doi: 10.1038/s41576-019-0117-3. PMID: 30867571."

[Antunes 2019]: https://pubmed.ncbi.nlm.nih.gov/31078565/ "Antunes C, Sousa N, Pinto L, Marques CJ. TET enzymes in neurophysiology and brain function. Neurosci Biobehav Rev. 2019 Jul;102:337-344. doi: 10.1016/j.neubiorev.2019.05.006. Epub 2019 May 9. PMID: 31078565."

[Greenberg & Bourc'his 2019]: https://pubmed.ncbi.nlm.nih.gov/31399642/ "Greenberg MVC, Bourc'his D. The diverse roles of DNA methylation in mammalian development and disease. Nat Rev Mol Cell Biol. 2019 Oct;20(10):590-607. doi: 10.1038/s41580-019-0159-6. Epub 2019 Aug 9. PMID: 31399642."

[Clemens & Gabel 2020]: https://pubmed.ncbi.nlm.nih.gov/32839016/ "Clemens AW, Gabel HW. Emerging Insights into the Distinctive Neuronal Methylome. Trends Genet. 2020 Nov;36(11):816-832. doi: 10.1016/j.tig.2020.07.009. Epub 2020 Aug 21. PMID: 32839016; PMCID: PMC7572801."

[Ming & Zhang 2020]: https://pubmed.ncbi.nlm.nih.gov/32581343/ "Ming X, Zhang Z, Zou Z, Lv C, Dong Q, He Q, Yi Y, Li Y, Wang H, Zhu B. Kinetics and mechanisms of mitotic inheritance of DNA methylation and their roles in aging-associated methylome deterioration. Cell Res. 2020 Nov;30(11):980-996. doi: 10.1038/s41422-020-0359-9. Epub 2020 Jun 24. Erratum in: Cell Res. 2021 Mar;31(3):373. doi: 10.1038/s41422-021-00469-x. PMID: 32581343; PMCID: PMC7785024."

[Marco 2021]: https://pubmed.ncbi.nlm.nih.gov/34761052/ "Marcó S, Haurigot V, Jaén ML, Ribera A, Sánchez V, Molas M, Garcia M, León X, Roca C, Sánchez X, Bertolin J, Pérez J, Elias G, Navarro M, Carretero A, Pumarola M, Andaluz A, Espada Y, Añor S, Bosch F. Seven-year follow-up of durability and safety of AAV CNS gene therapy for a lysosomal storage disorder in a large animal. Mol Ther Methods Clin Dev. 2021 Oct 5;23:370-389. doi: 10.1016/j.omtm.2021.09.017. PMID: 34761052; PMCID: PMC8550992."

[Nunez 2021]: https://pubmed.ncbi.nlm.nih.gov/33838111/ "Nuñez JK, Chen J, Pommier GC, Cogan JZ, Replogle JM, Adriaens C, Ramadoss GN, Shi Q, Hung KL, Samelson AJ, Pogson AN, Kim JYS, Chung A, Leonetti MD, Chang HY, Kampmann M, Bernstein BE, Hovestadt V, Gilbert LA, Weissman JS. Genome-wide programmable transcriptional memory by CRISPR-based epigenome editing. Cell. 2021 Apr 29;184(9):2503-2519.e17. doi: 10.1016/j.cell.2021.03.025. Epub 2021 Apr 9. PMID: 33838111; PMCID: PMC8376083."

[Liu 2024]: https://pubmed.ncbi.nlm.nih.gov/38697112/ "Liu Y, Flamier A, Bell GW, Diao AJ, Whitfield TW, Wang HC, Wu Y, Schulte F, Friesen M, Guo R, Mitalipova M, Liu XS, Vos SM, Young RA, Jaenisch R. MECP2 directly interacts with RNA polymerase II to modulate transcription in human neurons. Neuron. 2024 Jun 19;112(12):1943-1958.e10. doi: 10.1016/j.neuron.2024.04.007. Epub 2024 May 1. PMID: 38697112."

[Neumann & Bertozzi 2024]: https://pubmed.ncbi.nlm.nih.gov/38935715/ "Neumann EN, Bertozzi TM, Wu E, Serack F, Harvey JW, Brauer PP, Pirtle CP, Coffey A, Howard M, Kamath N, Lenz K, Guzman K, Raymond MH, Khalil AS, Deverman BE, Minikel EV, Vallabh SM, Weissman JS. Brainwide silencing of prion protein by AAV-mediated delivery of an engineered compact epigenetic editor. Science. 2024 Jun 28;384(6703):ado7082. doi: 10.1126/science.ado7082. Epub 2024 Jun 28. PMID: 38935715."