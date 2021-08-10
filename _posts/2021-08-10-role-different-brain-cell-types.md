---
layout: post
title:  "The role of different brain cell types in prion disease"
date:   2021-08-10 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2021/08/lakkaraju-sorce-2021-thumbnail.png
summary200: "Which cell types express PrP RNA, which express the protein, which contribute to prion replication, and which contribute to prion neurotoxicity?"
---

As we think about developing a PrP-lowering drug, we think of prion disease as a whole-brain disease, not confined to any one brain region. But what cell types does a drug need to reach in order to A) be effective, and B) move a CSF PrP biomarker? I'll start by unpacking where PrP is expressed at the RNA and then the protein level, and then dive into the role of different cell types in disease.

### where is PrP expressed?

#### PrP RNA expression

In the early days of the prion hypothesis, it was considered a matter of fundamental science to determine when and where PrP RNA was being synthesized &mdash; was it in only infected animals or healthy ones too, did its transcription increase as prion disease progressed, and in what cell types was it produced? The answers to the first two questions were easy: yes, both infected and uninfected animals expressed PrP RNA at the same level, and its level did not change as a function of disease progression [[Chesebro 1985]], [Kretzschmar 1986]]. Expression by cell type proved tricker to reach a consensus on, even though the method &mdash; in situ hybridization (ISH), in which a radiolabeled antisense probe is used to locate an RNA molecule within tissues &mdash; has been around for ages. Two ISH studies found that in hamster [[Kretzschmar 1986]] and in chicken [[Harris 1993]], virtually all PrP RNA was in neurons, with negligible concentrations in glia or other cell types of the CNS. But other studies in mouse embryo [[Manson 1992]] and sheep [[Hunter 1994]], and both young and adult hamsters and rats [[Moser 1995]] found PrP RNA in astrocytes, oligodendrocytes, and epithelial cells. That answer seemed to align better with the evidence that PrP<sup>Sc</sup> in terminally sick prion animals can be seen astrocytes [[Diedrich 1991]] as well as in white matter (where glia are present along with neuronal axons but not neuronal soma) [Taraboulos 1992]].

More sophisticated modern methods have found PrP RNA expression across all different cell types in the brain. Just before single cell sequencing took off, Ben Barres's lab isolated and cultured different cell types from fresh mouse [[Zhang 2014]] and human [[Zhang 2016]] brain tissue by immunopanning &mdash; creating cell suspensions and then pulling down types of interest with ligands or antibodies. The transcriptomes of different cell types from these experiments can be browsed at [brainrnaseq.org](http://brainrnaseq.org/) &mdash; here is the plot for _PRNP_:

![](/media/2021/03/brainrnaseq_prnp.png)

The lowest bar in either of the above plots, 6.5 FPKM, is still well above the noise: EBI [uses](https://www.ebi.ac.uk/gxa/FAQ.html) 0.5 FPKM as a default minimum for an interpretable expression level. Thus, _PRNP_ seems to be expressed ubiquitously across brain cell types, just as it is expressed ubiquitously [across tissues](https://gtexportal.org/home/gene/PRNP). But, if you want to get more quantitative and ask which cell types express relatively more or less _PRNP_ RNA, there is unfortunately not great agreement between the mouse and human experiments above. For instance, in mouse, endothelial is highest at 297 FPKM, while in human, it is near the bottom at 7 FPKM.

This theme &mdash; we agree that _PRNP_ is expressed everywhere even if the relative differences between cell types are not consistent &mdash; is mirrored in more recent single cell datasets as well. Drop-seq [[Macosko 2015], [Saunders & Macosko 2018]] single whole cell data hosted at [dropviz.org](http://dropviz.org/) show almost identical expression levels between all cell types in mouse cortex. Astrocytes narrowly eke out first place, while microglia and mural cells (smooth muscle and pericytes in the microvasculature) are last:

![](/media/2021/04/dropviz-cortex-table.png)

I also parsed out the [data](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE104525) from DroNc-seq [[Habib 2017]], which is nuclei rather than whole cells, and a different method and approach. Again, all the cell types they clustered their data into fell within a pretty narrow range of _Prnp_ expression levels:

 ![](/media/2021/04/habib-2017-dronc-seq-prnp.png)

Allen Brain Atlas has a large number of single cell datasets hosted in their browser, for example the [human M1 10X browser](https://celltypes.brain-map.org/rnaseq/human_m1_10x) shows the following. Cells are hierarchically clustered by type, so most of the plot's width is taken up by different populations of neurons, while all the non-neuronal cell types are clustered at far right.

![](/media/2021/03/allen_human_m1_10x_prnp.png)

Here, the non-neuronal cell types (dark blue bars at far right) have trimmed mean expression ranging from 0-3, while the neuronal cell types are mostly in the 6-8 range (beige and light blue across most of the plot). The picture from Allen's [human cortex Smart-seq](https://celltypes.brain-map.org/rnaseq/human_ctx_smart-seq) is nearly identical &mdash; again, see that dark blue cluster of non-neurons at far right:

![](/media/2021/04/allen-human-cortex-smart-seq.png)

And Allen's [mouse cortex & hippocampus Smart-seq](https://celltypes.brain-map.org/rnaseq/mouse_ctx-hip_smart-seq) is similar as well:

![](/media/2021/04/allen-mouse-cortex-hip-smart-seq.png)

Some datasets but not others, then, suggest that _Prnp_ RNA expression is higher in neurons than in non-neuronal cell types, while other datasets show fairly similar expression across cell types. That's a bit frustrating, but I am comforted by thinking of gene expression on a log scale. In any given tissue, some genes are expressed at 1 TPM and others at 1,000 TPM, and for many genes, one tissue may have 1 TPM while another has 1,000 TPM. So for datasets to agree that _Prnp_ is expressed at roughly the same order of magnitude between different cell types, even if they disagree about which is slightly higher and which is slightly lower, is perhaps not so bad. 

#### PrP protein expression

While it seems there's little consensus on relative expression of PrP RNA across cell types, it may not matter so much, since what we care about is the protein. Across tissues in the body, which tissues express a gene's RNA most highly is not a great predictor of which express the protein most highly. One study found that an RNA being low or absent was a good predictor of the protein being low or absent, but that above 32 TPM of RNA expression, there was no correlation between RNA and protein levels [[Jiang 2020]]. One might hypothesize that the same might be true when comparing across cell types rather than across tissues. Unfortunately, available proteomics methods are simply not as high throughput as RNA expression measurement, and for many analyses, the right types of datasets are only beginning to emerge [[Suhre 2021]]. The human protein atlas [[Thul & Lindskog 2018]] evaluated [PrP expression](https://www.proteinatlas.org/ENSG00000171867-PRNP/celltype) across several cell types, but not in CNS tissue &mdash; the only neurons examined were in the eye. 

A few studies looked at the distribution of PrP<sup>C</sup> in uninfected brain tissue, but the focus was usually on regional distribution [[Taraboulos 1992]] or on subcellular distribution &mdash; it was found that PrP<sup>C</sup> in developing brain can be found on neuronal fiber tracts, but in adult brain it is mostly in synapses; in neither cases is it seen on neuronal cell bodies [[Sales 1998], [Moya 2000]]. Those studies did not examine in detail the expression on non-neuronal cell types, however. Immunohistochemistry studies of PrP<sup>Sc</sup> in diseased brain found that PrP<sup>Sc</sup> could indeed be found on astrocytes and microglia [[Kovacs 2005]], though one couldn't be certain whether this meant this PrP originated from those cell types, or whether they had simply engulfed plaques or deposits from neurons.

Qualitatively, one can say based on colocalization of PrP with various cell type-specific markers in immunohistochemistry that endogenous PrP in wild-type mice is present on neurons, astrocytes, and oligodendrocytes [[Lakkaraju & Sorce 2021]] (Figure 2, cropped, wild-type mice, neurons, glia, and oligodendrocytes top to bottom):

![](/media/2021/08/lakkaraju-sorce-2021-figure-2.png)

But it's difficult by that method to get to any kind of quantitative estimate of what percent of total brain PrP is contributed by each cell type.

Perhaps the most compelling piece of evidence comes from conditional knockouts. The seminal experiment showing that knockout of PrP after prion infection saves the mice relied on a mouse model with a floxed PrP gene combined with a neuron-specific Cre recombinase expressed under the NFH promoter [[Mallucci 2003]]. Buried in the supplement is a Western blot showing how much total PrP expression went down after PrP was knocked out at 8 weeks &mdash; by eyeballing Figure S3, it dropped by about 80 or 90% [[Mallucci 2003]]:

![](/media/2021/08/mallucci-2003-figure-s3.png)

That would suggest that PrP in the brain comes overwhelmingly from neurons, although there are two caveats here. First, I don't know if there are enough data to be certain that NFH-Cre doesn't have leaky expression that would have floxed PrP in any other cell types. Second, these mice originally expressed PrP from a transgene based on the [cos.Tet vector](/2014/11/10/prp-transgene-constructs/), not the endogenous locus. That vector has about 24 kb of sequence upstream of the _Prnp_ transcription start site, which obviously is enough to drive robust PrP expression in neurons, but we can't quite take it for granted that its expression pattern perfectly mimics that of endogenous PrP.

### role in disease

We can think of prion disease as involving two processes: prion replication and neurotoxicity. Early evidence suggested that replication stalls out &mdash; prion titer plateaus &mdash; around the time neurotoxicity begins [[Prusiner 1982]]. It was therefore suggested that these are two distinct, non-overlapping phases of disease [[Sandberg 2011], [Sandberg 2014]]. As explained [here](/2014/11/03/neurodegeneration-seminar-1/) and [here](/2020/04/30/natural-history-prion-disease-mice/), however, the "plateau" may not be perfectly flat, and new evidence shows neuron-specific gene expression changes and rise in plasma neurofilament, suggesting neuronal damage, earlier than previously appreciated [[Sorce & Nuvolone 2020], [Minikel 2020]]. Even if the replication and neurotoxicity phases overlap, though, it's still useful to think through these two processes separately as we consider each cell type in turn.

#### neurons

Neurons are what matter in prion disease. They are the only cell type known to suffer any ill effects of prion infection: other cell types, both in the brain (see below) and elsewhere, can replicate prions, but prions don't kill them, they only kill neurons. Moreover, prion neurotoxicity is cell autonomous. This was shown early on by grafting PrP-expressing brain tissue into PrP knockout mice: the knockout neurons were invincible, even when surrounded by PrP<sup>Sc</sup> [[Brandner 1996]]. This has replicated more recently in experiments where PrP was re-expressed in specific cell populations of knockout mice using a CAG-CAT system [[Lakkaraju & Sorce 2021]]. In other words, what matters is the PrP<sup>Sc</sup> produced by neurons, perhaps GPI-anchored to neurons, not PrP<sup>Sc</sup> in the milleu around neurons.

Imagine if a drug could lower PrP expression in neurons to zero, without hitting any other cell types at all. As far as we know today, such a drug would be sufficient to halt prion disease in its tracks. On the other hand, if a drug could only lower neuronal PrP by, say, half, would it still be helpful to also have activity in other cell types? Possibly &mdash; read on.

#### astrocytes

Astrocytes do not suffer from prion toxicity but do replicate prions. There was early confusion on this subject because mice with PrP expressed under the GFAP promoter were reported to develop and die of prion disease after inoculation with prions [[Raeber 1997], [Jeffrey 2004]]. It turns out, though, that GFAP is not perfectly specific to astrocytes, and the transgene construct used in that mouse has some activity in neurons [[Marino 2000]]. More recent work with the CAG-CAT system produced mice with PrP expression apparently more tightly restricted to astrocytes [[Lakkaraju & Sorce 2021]]. These mice replicated prions &mdash; by 2 years of age they had PrP<sup>Sc</sup> levels similar to terminal-stage wild-type mice. This is in line with the finding that astrocytes can replicate prions in cell culture [[Krejciova & Alibhai 2017]]. But the astrocyte-specific PrP mice, despite all that PrP<sup>Sc</sup> accumulation, did not develop symptoms nor any neuronal degeneration nor glial activation. In contrast, when PrP was expressed only in neurons, neuronal degeneration and glial activation did occur. Thus, while neurotoxicity is cell autonomous (it requires neuronal PrP<sup>Sc</sup>), glial activation in prion disease is strictly _non_-autonomous (it, too, requires neuronal, not glial, PrP<sup>Sc</sup>).

These data suggest that if a drug could lower PrP in neurons to zero, you might not need to care about astrocytes at all. But if you can only lower neuronal PrP by half, then it might be nice if the drug also lowered astrocyte PrP, since astrocytes can also replicate prions.

#### oligodendrocytes

One paper expressing PrP under the myelin basic protein (MBP) promoter found that oligodendrocytes were incapable of replicating prions [[Prinz & Montrasio 2004]]. Inoculum injected into their brains was cleared just like in PrP knockout mice. (Expression of PrP on oligodendrocytes was reported to actually be _helpful_ against a proteinopathy caused by interstitially deleted PrP [[Radovanovic 2005]], but we still don't know whether that proteinopathy in any way models the neurotoxicity of genuine prion disease). I couldn't find any more recent studies examining the role of oligodendrocytes in prion infection in vivo. In the recent CAG-CAT paper, the researchers also produced mice with PrP expression restricted to oligodendrocytes using the _Plp_ promoter [[Lakkaraju & Sorce 2021]], but, as far as I can tell they never inoculated them with prions to see what would happen.

#### microglia

Prion disease has a marked neuroinflammatory response, with high levels of microglial activation. There has therefore been intense interest in determining whether this microglial response to prion infection is harmful or protective. Multiple studies have examined this issue across different experimental paradigms and the conclusion is overwhelmingly that microglia are protective in prion disease. Killing off microglia (with a gancyclovir-CD11b-HSVTK system) accelerated neurotoxicity in prion disease, both in cultured slices and in vivo (50 vs. 57 days median survival time) [[Zhu & Herrmann 2016]]. _IL34_ knockout mice, which have fewer microglia, also succumb to prion disease about 10% sooner (162 vs. 176 days for females, 170 vs. 191 days for males) [[Zhu & Herrmann 2016]]. Treatment with PLX5622, pharmacological inhibitor of microglial receptor CSF-1R, which killed 78-90% of microglia, likewise made mice die of prion disease sooner (~130 vs. 160 days) [[Carroll 2018]]. A study with mice where an enhancer is deleted to halt microglial development (_Csf1r<sup>&Delta;FIRE</sup>_) showed the most dramatic differece of all: about 120 days for microglia-deficient mice vs. 170 for normal mice [[Bradford 2021]]. Meanwhile, it doesn't seem to matter much whether the microglia express PrP, as they don't seem capable of replicating prions. This was studied by irradiating mice and then engrafting bone marrow to introduce exogenous precursor cells to populate the brain with microglia [[Priller 2006]]. Putting PrP knockout microglia into the wild-type brain didn't change anything, and putting wild-type microglia into the PrP knockout brain wasn't sufficient to sustain prion infection [[Priller 2006]].

### conclusions

PrP RNA is expressed to some degree across different brain cell types, though there is little agreement on its relative abundance by cell type. Limited available data suggest that the protein itself comes predominantly from neurons. Neurons both replicate prions and suffer neurotoxicity, and are the one cell type a PrP-lowering drug will really have to reach in order to be effective against prion disease. Astrocytes can replicate prions but their prions don't seem to contribute to neurotoxicity, so as a second priority it might be beneficial to also knock down PrP on astrocytes. Oligodendrocytes don't seem to replicate prions and don't play any obvious role in prion disease. Microglia don't replicate prions, but their presence (regardless of PrP expression) does play a protective role in prion disease.

What about biomarkers? We will want to measure PrP in cerebrospinal fluid (CSF) to measure the degree to which we've lowered it in brain. This will be critical for dose-finding in the clinic and maybe even for [a path to provisional approval](/2020/03/19/our-preventive-clinical-strategy/) [[Vallabh 2020]]. But what we care about most is how much we've lowered PrP in _neurons_ specifically, and maybe we also care a little bit about whether we've lowered it in astrocytes. Luckily, even if neurons are just half of cells in the brain [[von Bartheld 2016]], they may contribute disproportionately to PrP protein expression [[Mallucci 2003]]. If true, then neuronal target engagement will tend to dominate the biomarker readout. Meanwhile, you only really worry about disconnect between the biomarker and the cell type of interest if a drug exhibits cell type-specific activity; a drug active across cell types will tend to have bulk tissue target engagement proportional with neuronal target engagement. For antisense oligonucleotides, at least, available data suggest target engagement across multiple cell types [[Jafar-Nejad & Powers 2021]], but we need to look at this question in greater detail and the question will arise for future PrP-lowering modalities as well.


[Prusiner 1982]: https://www.ncbi.nlm.nih.gov/pubmed/6801762 "Prusiner SB. Novel proteinaceous infectious particles cause scrapie. Science. 1982 Apr 9;216(4542):136-44. PubMed PMID: 6801762."

[Chesebro 1985]: http://www.ncbi.nlm.nih.gov/pubmed/3923361 "Chesebro B, Race R, Wehrly K, Nishio J, Bloom M, Lechner D, Bergstrom S, Robbins K, Mayer L, Keith JM, et al. Identification of scrapie prion protein-specific mRNA in scrapie-infected and uninfected brain. Nature. 1985 May  23-29;315(6017):331-3. PubMed PMID: 3923361."

[Kretzschmar 1986]: https://pubmed.ncbi.nlm.nih.gov/3079955/ "Kretzschmar HA, Prusiner SB, Stowring LE, DeArmond SJ. Scrapie prion proteins are synthesized in neurons. Am J Pathol. 1986 Jan;122(1):1-5. PMID: 3079955; PMCID: PMC1888142."

[Diedrich 1991]: https://pubmed.ncbi.nlm.nih.gov/1671170/ "Diedrich JF, Bendheim PE, Kim YS, Carp RI, Haase AT. Scrapie-associated prion protein accumulates in astrocytes during scrapie infection. Proc Natl Acad Sci U S A. 1991 Jan 15;88(2):375-9. doi: 10.1073/pnas.88.2.375. PMID: 1671170; PMCID: PMC50813."

[Taraboulos 1992]: https://pubmed.ncbi.nlm.nih.gov/1354357/ "Taraboulos A, Jendroska K, Serban D, Yang SL, DeArmond SJ, Prusiner SB. Regional mapping of prion proteins in brain. Proc Natl Acad Sci U S A. 1992 Aug 15;89(16):7620-4. doi: 10.1073/pnas.89.16.7620. PMID: 1354357; PMCID: PMC49762."

[Manson 1992]: https://pubmed.ncbi.nlm.nih.gov/1353438/ "Manson J, West JD, Thomson V, McBride P, Kaufman MH, Hope J. The prion protein gene: a role in mouse embryogenesis? Development. 1992 May;115(1):117-22. PMID: 1353438."

[Harris 1993]: https://pubmed.ncbi.nlm.nih.gov/8483948/ "Harris DA, Lele P, Snider WD. Localization of the mRNA for a chicken prion protein by in situ hybridization. Proc Natl Acad Sci U S A. 1993 May 1;90(9):4309-13. doi: 10.1073/pnas.90.9.4309. PMID: 8483948; PMCID: PMC46496."

[Hunter 1994]: https://pubmed.ncbi.nlm.nih.gov/8030958/ "Hunter N, Manson JC, Charleson FC, Hope J. Comparison of expression patterns of PrP mRNA in the developing sheep and mouse. Ann N Y Acad Sci. 1994 Jun 6;724:353-4. doi: 10.1111/j.1749-6632.1994.tb38929.x. PMID: 8030958."

[Moser 1995]: https://pubmed.ncbi.nlm.nih.gov/7695897/ "Moser M, Colello RJ, Pott U, Oesch B. Developmental expression of the prion protein gene in glial cells. Neuron. 1995 Mar;14(3):509-17. doi: 10.1016/0896-6273(95)90307-0. PMID: 7695897."

[Brandner 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8552188 "Brandner S, Isenmann S, Raeber A, Fischer M, Sailer A, Kobayashi Y, Marino S,  Weissmann C, Aguzzi A. Normal host prion protein necessary for scrapie-induced neurotoxicity. Nature. 1996 Jan 25;379(6563):339-43. PubMed PMID: 8552188."

[Raeber 1997]: https://pubmed.ncbi.nlm.nih.gov/9321385/ "Raeber AJ, Race RE, Brandner S, Priola SA, Sailer A, Bessen RA, Mucke L, Manson J, Aguzzi A, Oldstone MB, Weissmann C, Chesebro B. Astrocyte-specific expression of hamster prion protein (PrP) renders PrP knockout mice susceptible to hamster scrapie. EMBO J. 1997 Oct 15;16(20):6057-65. doi: 10.1093/emboj/16.20.6057. PMID: 9321385; PMCID: PMC1326289."

[Sales 1998]: https://pubmed.ncbi.nlm.nih.gov/9749773/ "Salès N, Rodolfo K, Hässig R, Faucheux B, Di Giamberardino L, Moya KL. Cellular prion protein localization in rodent and primate brain. Eur J Neurosci. 1998 Jul;10(7):2464-71. doi: 10.1046/j.1460-9568.1998.00258.x. PMID: 9749773."

[Moya 2000]: https://pubmed.ncbi.nlm.nih.gov/10871549/ "Moya KL, Salès N, Hässig R, Créminon C, Grassi J, Di Giamberardino L. Immunolocalization of the cellular prion protein in normal brain. Microsc Res Tech. 2000 Jul 1;50(1):58-65. doi: 10.1002/1097-0029(20000701)50:1<58::AID-JEMT9>3.0.CO;2-5. PMID: 10871549."

[Marino 2000]: https://pubmed.ncbi.nlm.nih.gov/10783170/ "Marino S, Vooijs M, van Der Gulden H, Jonkers J, Berns A. Induction of medulloblastomas in p53-null mutant mice by somatic inactivation of Rb in the external granular layer cells of the cerebellum. Genes Dev. 2000 Apr 15;14(8):994-1004. PMID: 10783170; PMCID: PMC316543."

[Mallucci 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14593181 "Mallucci G, Dickinson A, Linehan J, Klöhn PC, Brandner S, Collinge J. Depleting neuronal PrP in prion infection prevents disease and reverses spongiosis. Science. 2003 Oct 31;302(5646):871-4. PubMed PMID: 14593181."

[Jeffrey 2004]: https://pubmed.ncbi.nlm.nih.gov/15174012/ "Jeffrey M, Goodsir CM, Race RE, Chesebro B. Scrapie-specific neuronal lesions are independent of neuronal PrP expression. Ann Neurol. 2004 Jun;55(6):781-92. doi: 10.1002/ana.20093. PMID: 15174012."

[Prinz & Montrasio 2004]: https://pubmed.ncbi.nlm.nih.gov/15229245/ "Prinz M, Montrasio F, Furukawa H, van der Haar ME, Schwarz P, Rülicke T, Giger OT, Häusler KG, Perez D, Glatzel M, Aguzzi A. Intrinsic resistance of oligodendrocytes to prion infection. J Neurosci. 2004 Jun 30;24(26):5974-81. doi: 10.1523/JNEUROSCI.0122-04.2004. PMID: 15229245; PMCID: PMC6729242."

[Radovanovic 2005]: https://pubmed.ncbi.nlm.nih.gov/15888663/ "Radovanovic I, Braun N, Giger OT, Mertz K, Miele G, Prinz M, Navarro B, Aguzzi A. Truncated prion protein and Doppel are myelinotoxic in the absence of oligodendrocytic PrPC. J Neurosci. 2005 May 11;25(19):4879-88. doi: 10.1523/JNEUROSCI.0328-05.2005. PMID: 15888663; PMCID: PMC6724775."

[Kovacs 2005]: https://pubmed.ncbi.nlm.nih.gov/15632020/ "Kovács GG, Preusser M, Strohschneider M, Budka H. Subcellular localization of disease-associated prion protein in the human brain. Am J Pathol. 2005 Jan;166(1):287-94. doi: 10.1016/S0002-9440(10)62252-3. PMID: 15632020; PMCID: PMC1602295."

[Priller 2006]: https://pubmed.ncbi.nlm.nih.gov/17093096/ "Priller J, Prinz M, Heikenwalder M, Zeller N, Schwarz P, Heppner FL, Aguzzi A. Early and rapid engraftment of bone marrow-derived microglia in scrapie. J Neurosci. 2006 Nov 8;26(45):11753-62. doi: 10.1523/JNEUROSCI.2275-06.2006. PMID: 17093096; PMCID: PMC6674798."

[Sandberg 2011]: https://www.ncbi.nlm.nih.gov/pubmed/21350487 "Sandberg MK, Al-Doujaily H, Sharps B, Clarke AR, Collinge J. Prion propagation and toxicity in vivo occur in two distinct mechanistic phases. Nature. 2011 Feb 24;470(7335):540-2. doi: 10.1038/nature09768. PubMed PMID: 21350487."

[Sandberg 2014]: https://www.ncbi.nlm.nih.gov/pubmed/25005024 "Sandberg MK, Al-Doujaily H, Sharps B, De Oliveira MW, Schmidt C, Richard-Londt A, Lyall S, Linehan JM, Brandner S, Wadsworth JD, Clarke AR, Collinge J. Prion neuropathology follows the accumulation of alternate prion protein isoforms after infective titre has peaked. Nat Commun. 2014 Jul 9;5:4347. doi: 10.1038/ncomms5347. PubMed PMID: 25005024; PubMed Central PMCID: PMC4104459."

[Zhang 2014]: https://pubmed.ncbi.nlm.nih.gov/25186741/ "Zhang Y, Chen K, Sloan SA, Bennett ML, Scholze AR, O'Keeffe S, Phatnani HP, Guarnieri P, Caneda C, Ruderisch N, Deng S, Liddelow SA, Zhang C, Daneman R, Maniatis T, Barres BA, Wu JQ. An RNA-sequencing transcriptome and splicing database of glia, neurons, and vascular cells of the cerebral cortex. J Neurosci. 2014 Sep 3;34(36):11929-47. doi: 10.1523/JNEUROSCI.1860-14.2014. Erratum in: J Neurosci. 2015 Jan 14;35(2):846-6. PMID: 25186741; PMCID: PMC4152602."

[Macosko 2015]: https://pubmed.ncbi.nlm.nih.gov/26000488/ "Macosko EZ, Basu A, Satija R, Nemesh J, Shekhar K, Goldman M, Tirosh I, Bialas AR, Kamitaki N, Martersteck EM, Trombetta JJ, Weitz DA, Sanes JR, Shalek AK, Regev A, McCarroll SA. Highly Parallel Genome-wide Expression Profiling of Individual Cells Using Nanoliter Droplets. Cell. 2015 May 21;161(5):1202-1214. doi: 10.1016/j.cell.2015.05.002. PMID: 26000488; PMCID: PMC4481139."

[Zhang 2016]: https://pubmed.ncbi.nlm.nih.gov/26687838/ "Zhang Y, Sloan SA, Clarke LE, Caneda C, Plaza CA, Blumenthal PD, Vogel H, Steinberg GK, Edwards MS, Li G, Duncan JA 3rd, Cheshier SH, Shuer LM, Chang EF, Grant GA, Gephart MG, Barres BA. Purification and Characterization of Progenitor and Mature Human Astrocytes Reveals Transcriptional and Functional Differences with Mouse. Neuron. 2016 Jan 6;89(1):37-53. doi: 10.1016/j.neuron.2015.11.013. Epub 2015 Dec 10. PMID: 26687838; PMCID: PMC4707064."

[Zhu & Herrmann 2016]: https://pubmed.ncbi.nlm.nih.gov/27185853/ "Zhu C, Herrmann US, Falsig J, Abakumova I, Nuvolone M, Schwarz P, Frauenknecht K, Rushing EJ, Aguzzi A. A neuroprotective role for microglia in prion diseases. J Exp Med. 2016 May 30;213(6):1047-59. doi: 10.1084/jem.20151000. Epub 2016 May 16. PMID: 27185853; PMCID: PMC4886355."

[von Bartheld 2016]: https://pubmed.ncbi.nlm.nih.gov/27187682/ "von Bartheld CS, Bahney J, Herculano-Houzel S. The search for true numbers of neurons and glial cells in the human brain: A review of 150 years of cell counting. J Comp Neurol. 2016 Dec 15;524(18):3865-3895. doi: 10.1002/cne.24040. Epub 2016 Jun 16. PMID: 27187682; PMCID: PMC5063692."

[Habib 2017]: https://pubmed.ncbi.nlm.nih.gov/28846088/ "Habib N, Avraham-Davidi I, Basu A, Burks T, Shekhar K, Hofree M, Choudhury SR, Aguet F, Gelfand E, Ardlie K, Weitz DA, Rozenblatt-Rosen O, Zhang F, Regev A. Massively parallel single-nucleus RNA-seq with DroNc-seq. Nat Methods. 2017 Oct;14(10):955-958. doi: 10.1038/nmeth.4407. Epub 2017 Aug 28. PMID: 28846088; PMCID: PMC5623139."

[Krejciova & Alibhai 2017]: https://www.ncbi.nlm.nih.gov/pubmed/29141869/ "Krejciova Z, Alibhai J, Zhao C, Krencik R, Rzechorzek NM, Ullian EM, Manson J, Ironside JW, Head MW, Chandran S. Human stem cell-derived astrocytes replicate human prions in a PRNP genotype-dependent manner. J Exp Med. 2017 Dec 4;214(12):3481-3495. doi: 10.1084/jem.20161547. Epub 2017 Nov 15. PubMed PMID: 29141869."

[Carroll 2018]: https://pubmed.ncbi.nlm.nih.gov/29769333/ "Carroll JA, Race B, Williams K, Striebel J, Chesebro B. Microglia Are Critical in Host Defense against Prion Disease. J Virol. 2018 Jul 17;92(15):e00549-18. doi: 10.1128/JVI.00549-18. PMID: 29769333; PMCID: PMC6052316."

[Saunders & Macosko 2018]: https://pubmed.ncbi.nlm.nih.gov/30096299/ "Saunders A, Macosko EZ, Wysoker A, Goldman M, Krienen FM, de Rivera H, Bien E, Baum M, Bortolin L, Wang S, Goeva A, Nemesh J, Kamitaki N, Brumbaugh S, Kulp D, McCarroll SA. Molecular Diversity and Specializations among the Cells of the Adult Mouse Brain. Cell. 2018 Aug 9;174(4):1015-1030.e16. doi: 10.1016/j.cell.2018.07.028. PMID: 30096299; PMCID: PMC6447408."

[Thul & Lindskog 2018]: https://pubmed.ncbi.nlm.nih.gov/28940711/ "Thul PJ, Lindskog C. The human protein atlas: A spatial map of the human proteome. Protein Sci. 2018 Jan;27(1):233-244. doi: 10.1002/pro.3307. Epub 2017 Oct 10. PMID: 28940711; PMCID: PMC5734309."

[Jiang 2020]: https://pubmed.ncbi.nlm.nih.gov/32916130/ "Jiang L, Wang M, Lin S, Jian R, Li X, Chan J, Dong G, Fang H, Robinson AE; GTEx Consortium, Snyder MP. A Quantitative Proteome Map of the Human Body. Cell. 2020 Oct 1;183(1):269-283.e19. doi: 10.1016/j.cell.2020.08.036. Epub 2020 Sep 10. PMID: 32916130; PMCID: PMC7575058."

[Sorce & Nuvolone 2020]: https://pubmed.ncbi.nlm.nih.gov/32598380/ "Sorce S, Nuvolone M, Russo G, Chincisan A, Heinzer D, Avar M, Pfammatter M, Schwarz P, Delic M, Müller M, Hornemann S, Sanoudou D, Scheckel C, Aguzzi A. Genome-wide transcriptomics identifies an early preclinical signature of prion infection. PLoS Pathog. 2020 Jun 29;16(6):e1008653. doi: 10.1371/journal.ppat.1008653. PMID: 32598380; PMCID: PMC7360066."

[Minikel 2020]: https://pubmed.ncbi.nlm.nih.gov/32776089/ "Minikel EV, Zhao HT, Le J, O'Moore J, Pitstick R, Graffam S, Carlson GA, Kavanaugh MP, Kriz J, Kim JB, Ma J, Wille H, Aiken J, McKenzie D, Doh-Ura K, Beck M, O'Keefe R, Stathopoulos J, Caron T, Schreiber SL, Carroll JB, Kordasiewicz HB, Cabin DE, Vallabh SM. Prion protein lowering is a disease-modifying therapy across prion disease stages, strains and endpoints. Nucleic Acids Res. 2020 Nov 4;48(19):10615-10631. doi: 10.1093/nar/gkaa616. PMID: 32776089; PMCID: PMC7641729."

[Vallabh 2020]: https://pubmed.ncbi.nlm.nih.gov/32199098/ "Vallabh SM, Minikel EV, Schreiber SL, Lander ES. Towards a treatment for genetic prion disease: trials and biomarkers. Lancet Neurol. 2020 Apr;19(4):361-368. doi: 10.1016/S1474-4422(19)30403-X. Epub 2020 Mar 18. PMID: 32199098."

[Suhre 2021]: https://pubmed.ncbi.nlm.nih.gov/32860016/ "Suhre K, McCarthy MI, Schwenk JM. Genetics meets proteomics: perspectives for large population-based studies. Nat Rev Genet. 2021 Jan;22(1):19-37. doi: 10.1038/s41576-020-0268-2. Epub 2020 Aug 28. PMID: 32860016."

[Bradford 2021]: https://doi.org/10.1101/2021.01.05.425436 "Complete microglia deficiency accelerates prion disease without enhancing CNS prion accumulation Barry M. Bradford, Lynne I. McGuire, David A. Hume, Clare Pridans, Neil A. Mabbott. bioRxiv Posted January 06, 2021. doi: https://doi.org/10.1101/2021.01.05.425436"

[Jafar-Nejad & Powers 2021]: https://pubmed.ncbi.nlm.nih.gov/33367834/ "Jafar-Nejad P, Powers B, Soriano A, Zhao H, Norris DA, Matson J, DeBrosse-Serra B, Watson J, Narayanan P, Chun SJ, Mazur C, Kordasiewicz H, Swayze EE, Rigo F. The atlas of RNase H antisense oligonucleotide distribution and activity in the CNS of rodents and non-human primates following central administration. Nucleic Acids Res. 2021 Jan 25;49(2):657-673. doi: 10.1093/nar/gkaa1235. PMID: 33367834; PMCID: PMC7826274."

[Lakkaraju & Sorce 2021]: ttps://doi.org/10.1101/2021.01.03.425136 "Glial activation in prion diseases is strictly nonautonomous and requires neuronal PrPSc. Asvin KK Lakkaraju, Silvia Sorce, Assunta Senatore, Mario Nuvolone, Jingjing Guo, Petra Schwarz, Rita Moos, Pawel Pelczar, Adriano Aguzzi. bioRxiv Posted January 08, 2021."

