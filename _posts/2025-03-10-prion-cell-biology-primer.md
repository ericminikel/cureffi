---
layout: post
title:  "Prion cell biology primer"
date:   2025-03-10
author: ericminikel
location: Cambridge, MA
thumb120: https://www.cureffi.org/2025/03/
summary200: "Notes from a primer on prion cell biology by Prof. David Harris."
---

_Prof. David A. Harris of Boston University School of Medicine visited the Broad to give a primer on prion cell biology. Here are my notes. He generously allowed me to include some of his slides as visuals._


PrP is an extracellular protein GPI-anchored to the outer leaflet of the plasma membrane. The GPI anchor of PrP has the following structure:

![](/media/2025/03/prp-gpi-diagram.png)

PIPLC, used in the laboratory, cleaves between the diacylglycerol and the phosphoinositol. Endogenous shedding cleaves a peptide bond, removing all of the GPI anchor.

The maturation of PrP occurs across the ER and Golgi:

![](/media/2025/03/prp-maturation-diagram.png)

The N-linked glycans initially attached in the ER are high-mannose, these are trimmed down in the Golgi to yield a mature glycan chain. Sialic acid can be added to both the glycan chains and the GPI in the ER.

If you extract cells with cold Triton, there are proteins that remain insoluble in this detergent. These were thought to represent distinct membrane domains rich in cholesterol, termed lipid rafts. With high-resolution microscopic techniques you can now visualize these microdomains. They showed that PrP first transits to the surface lipid rafts via the ER and Golgi, then gets endocytosed through clathrin-coated pits into endosomes, where it cycles repeatedly [[Shyng 1993]]. Usually proteins endocytosed through this pathway are transmembrane and have C-terminal domains that associate with clathrin adapter proteins. Since PrP does not have a C-terminal domain the thought is that this must involve some intermediate protein whose N-terminal domain PrP interacts with, and whose C-terminal domain can interact with the clathrin adapters. Various proteins including LRP and Glypican have been proposed to have this role; there may be others we haven't discovered yet as well. Some of these turn up in proteomic interactome studies of PrP.

![](/media/2025/03/prp-cycling.png)

PrP undergoes [several](/2013/06/26/proteolysis-of-prion-protein-in-the-central-region-alpha-and-beta-cleavage/) [different](/2013/06/29/proteolytic-shedding-of-prion-protein/) endoproteolytic events [[Harris 1993]], reviewed in [[Linsenmeier 2017], [Castle & Westaway 2025]].

![](/media/2025/03/prp-cleavage-diagram.png)

_Above: PrP cleavage diagram comprised of Figure 1A of [Linsenmeier 2017] and graphical abstract of [Castle & Westaway 2025]_

In almost any cell where you express PrP &mdash; N2a is just one example &mdash; or in vivo, you always see a C1 fragment, corresponding to the product of alpha cleavage. Its role / native function is not yet clear. Various ADAMs have been shown to do alpha cleavage, including 8, 10, and 17. Plasmin has also been proposed.

Beta cleavage is less observed for PrP<sup>C</sup> but occurs for PrP<sup>Sc</sup>, producing the C2 fragment. C2 has multiple exact cleavage sites but roughly corresponds to the same domains which get removed by proteinase K in the laboratory when you treat PrP<sup>Sc</sup>.

Shedding occurs all the way near the C terminus and releases the protein into extracellular space.

Alison Kraus's PrP<sup>Sc</sup> structure is a single, twisted protofibril, where each monomer has 11 beta strands, all aligned with each other as a parallel in-register intermolecular beta sheet (PIRIBS) [[Kraus 2021]]. An implication is that the fibrils are sided &mdash; the top and bottom ends look non-identical. This implies they may grow non-symmetrically. Jan Bieschke has done single-fibril imaging to try to gain insight into how they grow [[Sun 2023]]. PrP<sup>Sc</sup> retains the GPI anchor, thus, the twisting of the protofibril inherently has to deform the membrane, as shown in this Alison Kraus illustration [[Kraus 2021]]:

![](/media/2025/03/kraus-2021-figure-4d.png)

_Above: Illustration of PrP<sup>Sc</sup> deforming the membrane via its GPI anchors, from [Kraus 2021] Figure 4D._

Folks at UCL led by Sarah Tabrizi devised a clever way to figure out how initial infection of cells proceeds. They wanted to image the nascent PrP<sup>Sc</sup> just formed in the cells, without being obscured by the far larger amount of inoculum you used to cause the infection. They achieved this by expressing a myc-tagged, but convertible, PrP in cells. Within 1 minute of applying inoculum to cells, they could already see host cell-expressed PrP forming aggregates [[Goold 2011]]. An additional challenge is that misfolding buries many of PrP<sup>C</sup>'s epitopes, thus you need guanidine or proteinase K treatment of fixed cells to expose the epitopes of the misfolded protein (antigen retrieval). You can also use PIPLC treatment, which releases PrP<sup>C</sup>, whereas on PrP<sup>Sc</sup> the GPI anchor is relatively less accessible and it does not get released. They found that the PrP<sup>Sc</sup> forms first on the plasma membrane within 1 minute, and then a few minutes later some perinuclear compartment lights up [[Goold 2011]]. It's not totally clear what that perinuclear compartment is; it might be endosomes or it might be Golgi. Some of the molecules undergo beta cleavage in that compartment. Some uncleaved molecules get recycled back to the membrane, perhaps not unlike how PrP<sup>C</sup> does. When back at the surface, the PrP<sup>Sc</sup> forms strings along the plasma membrane that Albert Taraboulos's lab was able to visualize moving on an unfixed live cell [[Rouvinski 2014]]. Peter Klohn at UCL has also recently used orthogonal methods and reached similar conclusions with really striking images [[Ribes 2023]]. Antibody 5B2 to the extreme N-terminus recognizes cell surface PrP but does not pick up anything in the perinuclear compartment. In the perinuclear compartment you can only see the PrP<sup>Sc</sup> with 6D11 (not 5B2), and then only with guanidine denaturation. Below are some striking images of these key findings:

![](/media/2025/03/prpsc-trafficking.png)

_Above: Images and diagrams of initial PrP<sup>Sc</sup> formation: [Goold 2011] Figure 4A, [Rouvinski 2014] Figure 1C, [Kraus 2021] Figure 4A, [Ribes 2023] Figure 1F & 2G._

Any protein can be degraded, but PrP<sup>Sc</sup> is degraded incredibly slowly. Even in cultured cells, its half life is days, compared to hours for PrP<sup>Sc</sup>. Inhibitors of lysosomal proteases, such as leupeptin, E64, and bafilomycin, block this degradation, confirming that the lysosome is the site of PrP<sup>Sc</sup> degradation [[Goold 2013]]. The current best thinking is that once PrP<sup>Sc</sup> is internalized into endosomes, a subset of it goes to endosomal recycling compartments (ERC) and returns to cell surface, whereas other molecules of PrP<sup>Sc</sup> undergo retrograde transport to the trans-Golgi network and eventually Golgi, while still others stay in endosomes that mature into lysosomes. The perinuclear compartment observed in the above cell culture studies could correspond to one or more of these.

![](/media/2025/03/prpsc-degradation.png)

_Above: Pathways of prion degradation. [Goold 2015] Figure 1 and [Goold 2013] Figure 6B._

For decades, the holy grail of the prion field was to figure out the structure of PrP<sup>Sc</sup> which was finally accomplished in the past few years [[Kraus 2021]] and has since been achieved for a few additional prion strains. Prion strains differ in their clinical phenotype [[Bessen & Marsh 1992]], neuropathological patterns, degree of accumulation on neurons versus astrocytes [[Carroll 2016]], glycoform preference, and the amount of guanidine required to denature them. All this suggested that they must be different molecular structures, which has finally been confirmed by cryo-EM in the past few years.

They found years ago that various PrP mutants, if trasnfected into cells and overexpressed, acquired limited protease resistance (they are less resistant than PrP<sup>Sc</sup>, being degradable by a lower amount of PK) [[Lehmann & Harris 1996]]. They are PIPLC non-releasable and retained in the ER [[Ivanova 2001]]. This is reflected in for instance the PG14 mice, where the mutant PrP acquires many of the properties of PrP<sup>Sc</sup> without actually being infectious [[Chiesa 2003]]. In neurons induced from iPSC from E200K carriers, however, they did not find detergent resistance, PK resistance, or RT-QuIC seeding activity [[Gojanovich 2024]].




[Bessen & Marsh 1992]: https://pubmed.ncbi.nlm.nih.gov/1347795/ "Bessen RA, Marsh RF. Biochemical and physical properties of the prion protein from two strains of the transmissible mink encephalopathy agent. J Virol. 1992 Apr;66(4):2096-101. doi: 10.1128/JVI.66.4.2096-2101.1992. PMID: 1347795; PMCID: PMC289000."

[Harris 1993]: https://pubmed.ncbi.nlm.nih.gov/8093841/ "Harris DA, Huber MT, van Dijken P, Shyng SL, Chait BT, Wang R. Processing of a cellular prion protein: identification of N- and C-terminal cleavage sites. Biochemistry. 1993 Feb 2;32(4):1009-16. doi: 10.1021/bi00055a003. PMID: 8093841."

[Shyng 1993]: https://pubmed.ncbi.nlm.nih.gov/8101844/ "Shyng SL, Huber MT, Harris DA. A prion protein cycles between the cell surface and an endocytic compartment in cultured neuroblastoma cells. J Biol Chem. 1993 Jul 25;268(21):15922-8. PMID: 8101844."

[Lehmann & Harris 1996]: https://pubmed.ncbi.nlm.nih.gov/8643624/ "Lehmann S, Harris DA. Two mutant prion proteins expressed in cultured cells acquire biochemical properties reminiscent of the scrapie isoform. Proc Natl Acad Sci U S A. 1996 May 28;93(11):5610-4. doi: 10.1073/pnas.93.11.5610. PMID: 8643624; PMCID: PMC39295."

[Ivanova 2001]: https://pubmed.ncbi.nlm.nih.gov/11527974/ "Ivanova L, Barmada S, Kummer T, Harris DA. Mutant prion proteins are partially retained in the endoplasmic reticulum. J Biol Chem. 2001 Nov 9;276(45):42409-21. doi: 10.1074/jbc.M106928200. Epub 2001 Aug 29. PMID: 11527974."

[Chiesa 2003]: https://pubmed.ncbi.nlm.nih.gov/12805461/ "Chiesa R, Piccardo P, Quaglio E, Drisaldi B, Si-Hoe SL, Takao M, Ghetti B, Harris DA. Molecular distinction between pathogenic and infectious properties of the prion protein. J Virol. 2003 Jul;77(13):7611-22. doi: 10.1128/jvi.77.13.7611-7622.2003. PMID: 12805461; PMCID: PMC164780."

[Goold 2011]: https://pubmed.ncbi.nlm.nih.gov/21505437/ "Goold R, Rabbanian S, Sutton L, Andre R, Arora P, Moonga J, Clarke AR, Schiavo G, Jat P, Collinge J, Tabrizi SJ. Rapid cell-surface prion protein conversion revealed using a novel cell system. Nat Commun. 2011;2:281. doi: 10.1038/ncomms1282. PMID: 21505437; PMCID: PMC3104518."

[Goold 2013]: https://pubmed.ncbi.nlm.nih.gov/23813960/ "Goold R, McKinnon C, Rabbanian S, Collinge J, Schiavo G, Tabrizi SJ. Alternative fates of newly formed PrPSc upon prion conversion on the plasma membrane. J Cell Sci. 2013 Aug 15;126(Pt 16):3552-62. doi: 10.1242/jcs.120477. Epub 2013 Jun 26. PMID: 23813960; PMCID: PMC3744024."

[Goold 2015]: https://pubmed.ncbi.nlm.nih.gov/25584786/ "Goold R, McKinnon C, Tabrizi SJ. Prion degradation pathways: Potential for therapeutic intervention. Mol Cell Neurosci. 2015 May;66(Pt A):12-20. doi: 10.1016/j.mcn.2014.12.009. Epub 2015 Jan 10. PMID: 25584786; PMCID: PMC4503822."

[Rouvinski 2014]: https://pubmed.ncbi.nlm.nih.gov/24493590/ "Rouvinski A, Karniely S, Kounin M, Moussa S, Goldberg MD, Warburg G, Lyakhovetsky R, Papy-Garcia D, Kutzsche J, Korth C, Carlson GA, Godsave SF, Peters PJ, Luhr K, Kristensson K, Taraboulos A. Live imaging of prions reveals nascent PrPSc in cell-surface, raft-associated amyloid strings and webs. J Cell Biol. 2014 Feb 3;204(3):423-41. doi: 10.1083/jcb.201308028. PMID: 24493590; PMCID: PMC3912534."

[Carroll 2016]: https://pubmed.ncbi.nlm.nih.gov/27046083/ "Carroll JA, Striebel JF, Rangel A, Woods T, Phillips K, Peterson KE, Race B, Chesebro B. Prion Strain Differences in Accumulation of PrPSc on Neurons and Glia Are Associated with Similar Expression Profiles of Neuroinflammatory Genes: Comparison of Three Prion Strains. PLoS Pathog. 2016 Apr 5;12(4):e1005551. doi: 10.1371/journal.ppat.1005551. PMID: 27046083; PMCID: PMC4821575."

[Linsenmeier 2017]: https://pubmed.ncbi.nlm.nih.gov/28693923/ "Linsenmeier L, Altmeppen HC, Wetzel S, Mohammadi B, Saftig P, Glatzel M. Diverse functions of the prion protein - Does proteolytic processing hold the key? Biochim Biophys Acta Mol Cell Res. 2017 Nov;1864(11 Pt B):2128-2137. doi: 10.1016/j.bbamcr.2017.06.022. Epub 2017 Jul 8. PMID: 28693923."

[Kraus 2021]: https://pubmed.ncbi.nlm.nih.gov/34433091/ "Kraus A, Hoyt F, Schwartz CL, Hansen B, Artikis E, Hughson AG, Raymond GJ, Race B, Baron GS, Caughey B. High-resolution structure and strain comparison of infectious mammalian prions. Mol Cell. 2021 Nov 4;81(21):4540-4551.e6. doi: 10.1016/j.molcel.2021.08.011. Epub 2021 Aug 25. PMID: 34433091."

[Ribes 2023]: https://pubmed.ncbi.nlm.nih.gov/38102121/ "Ribes JM, Patel MP, Halim HA, Berretta A, Tooze SA, Klöhn PC. Prion protein conversion at two distinct cellular sites precedes fibrillisation. Nat Commun. 2023 Dec 15;14(1):8354. doi: 10.1038/s41467-023-43961-1. PMID: 38102121; PMCID: PMC10724300."

[Sun 2023]: https://pubmed.ncbi.nlm.nih.gov/36802500/ "Sun Y, Jack K, Ercolani T, Sangar D, Hosszu L, Collinge J, Bieschke J. Direct Observation of Competing Prion Protein Fibril Populations with Distinct Structures and Kinetics. ACS Nano. 2023 Apr 11;17(7):6575-6588. doi: 10.1021/acsnano.2c12009. Epub 2023 Feb 20. PMID: 36802500; PMCID: PMC10100569."

[Gojanovich 2024]: https://pubmed.ncbi.nlm.nih.gov/39332406/ "Gojanovich AD, Le NTT, Mercer RCC, Park S, Wu B, Anane A, Vultaggio JS, Mostoslavsky G, Harris DA. Abnormal synaptic architecture in iPSC-derived neurons from a multi-generational family with genetic Creutzfeldt-Jakob disease. Stem Cell Reports. 2024 Oct 8;19(10):1474-1488. doi: 10.1016/j.stemcr.2024.08.010. Epub 2024 Sep 26. PMID: 39332406; PMCID: PMC11561462."

[Castle & Westaway 2025]: https://pubmed.ncbi.nlm.nih.gov/39874431/ "Castle AR, Westaway D. Prion Protein Endoproteolysis: Cleavage Sites, Mechanisms and Connections to Prion Disease. J Neurochem. 2025 Jan;169(1):e16310. doi: 10.1111/jnc.16310. PMID: 39874431; PMCID: PMC11774512."
