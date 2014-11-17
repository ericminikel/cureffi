---
layout: post
title:  "Neurodegeneration seminar 3: 'tau'"
date:   2014-11-17 12:05:00
author: ericminikel
tag: neuro-305qc
location: Boston, MA
---

*These are my notes for week 3 of Harvard's Neurobiology 305qc course “Biochemistry and Biology of Neurodegenerative Diseases”, held by Michael Wolfe and Dominic Walsh on November 17, 2014. I missed this class meeting while attending the Partnering for Cures conference in New York, so these notes reflect my own reading and analysis and not what was discussed in class.*

The readings for this week are two recent reviews [[Spillantini & Goedert 2013], [Spires-Jones & Hyman 2014]] and two original research papers [[Choi & Kim 2014], [Holmes 2013]] centering on the nature of pathological tau aggregates and the role of tau in Alzheimer's disease.

### [Choi & Kim 2014]: A three-dimensional human neural cell culture model of Alzheimer’s disease

#### Summary and reaction

Human genetics has long suggested that A&beta; accumulation, or at a minimum, changes in APP metabolism, must cause Alzheimer's disease. Yet Alzheimer's disease is also associated with neurofibrillary tangles (NFTs) composed of hyperphosphorylated tau, which correlate better with disease severity than A&beta; deposits do. Therefore it has been hypothesized that A&beta; must trigger tau pathology. Such a causal link has not been reproduced in any mouse models, though it appears to be recapitulated to some degree in a recently reported rat model [[Cohen 2013]]. This paper announces the exciting development of a human cell culture model which appears to recapitulate this causal link. In this model, cells are stably transfected with an integrating lentiviral transgene construct containing *APP* and *PSEN1* with mutations that alter A&beta; metabolism and cause early-onset Alzheimer's. These cells not only exhibit A&beta; plaque deposition but also hyperphosphorylation of tau, and aggregation of tau into filaments. The key innovation is that the cells are grown in a 3D matrix rather than in a 2D monolayer, thus greatly increasing the local concentration of pathological A&beta;. This model is likely to prove valuable for dissecting the pathways involved in Alzheimer's disease, and for testing therapeutic compounds. The authors perform some pilot tests of such compounds.

#### Questions for discussion

Q. What prompted this group to explore a 3D cell culture AD model system? What are the limitations of current mouse AD models?

A. Mouse models with *APP* or presenilin mutations that cause early-onset Alzheimer's disease exhibit A&beta; plaque accumulation and behavioral impairment but no neurofibrillary tangles (NFTs) of hyperphosphorylated tau protein.

Q. Describe the choice of cell type and protocol, particularly the use of BD Matrigel. What is this 3D matrix?

A. They used human neural progenitor cells, which was surely because NPCs have enough neural character to be potentially relevant to modeling neurological disease, yet they still divide, and are also easy to transfect. They grew them in [BD Matrigel &trade;](http://www.stemcell.so/images/upload/pdf/5153a954d388a.pdf), which is a thick gel of extracellular matrix proteins collected from mouse sarcoma cells, useful for growing 3D cultures.

Q. Describe the constructs employed, including the FAD mutations in APP and PS1. What happens to A&beta;40 levels upon transfection? To A&beta;42? To the A&beta;42-to-&beta;β40 ratio?

A. The researchers overexpressed various constructs containing one or both of two mutant genes. One transgene consisted of *APP* with both the "Swedish" mutation (K670N/M671L) which increases A&beta; production and the "London" mutation V717I which affects &gamma;-secretase cleavage, increasing the ratio of A&beta;42 to A&beta;40 [[De Jonghe 2001]]. The other transgene was *PSEN1* &Delta;E9, which increases &gamma;-secretase cleavage of *APP* \[citation needed\]. Together these mutations were expected to drive a pathological excess of A&beta;, particularly A&beta;42. They wanted to express both of these genes in a single **bicistronic** transcript (one mRNA encoding two proteins), so they separated the two genes plus GFP or mCherry with an [IRES](http://www.clontech.com/US/Products/Fluorescent_Proteins_and_Reporters/Coexpression/IRES_Bicistronic) construct commonly used in bicistronic transgene constructs. They drove the entire construct with the CMV promoter. The fluorescence from GFP or mCherry made it easy to enrich for cells with high transgene expression.

The authors state that A&beta;40 was increased 9-fold in transfected cells, and A&beta;42 was increased 17-fold, and that the A&beta;42:A&beta;40 ratio was increased 5-fold. These numbers are inconsistent, as 9- and 17-fold increases should give only a 2-fold increase in the ratio - the authors are clearly referring to ballpark figures generalized across the various different constructs. As for any particular construct, the data are given in Fig 1B though it is hard to visually discern exactly what the increase in A&beta;42:A&beta;40 ratio is.

Q. What was the reason for using thin- and thick-layer 3D culture models (Figs 2a, 3a)?

A. In conventional 2D cell cultures, cells grow in a monolayer, allowing secreted proteins to diffuse into a large volume of media. The authors hypothesized that a 3D matrix would allow A&beta; to accumulate to higher local concentrations capable of triggering tau pathology. The reasons for choosing both a thin (<300 &mu;m) and a thick (4mm) 3D model are not stated - presumably they just wanted to try a few different conditions and see what worked. In much of the text of this paper it is not clear exactly which transgene construct and which matrix thickness are being referred to in various experimental results.

Q. What is the interpretation of the ability of each compound in Fig. 2d to prevent amyloid deposition?

A. DMSO is a control; Fig 2d upper left panel shows the level of A&beta; deposition in this control. They then tested &beta;-secretase inhibitor IV, and two &gamma;-secretase inhibitors named [DAPT](http://www.tocris.com/dispprod.php?ItemId=5199#.VGj5SPTF95I) and SGSM41 (the latter's structure is shown in Extended Data Table 1). All of these would be expected to decrease A&beta; production, and indeed, they resulted in such a reduction, at least according to the images in Fig 2D. The data for &beta;-secretase inhibitor IV are quantified in Fig 1C but the data for the &gamma;-secretase inhibitors do not appear to be quantified anywhere.

Q. What do antibodies AT-8 and PHF-1 detect? What is the interpretation of each compound’s ability to block PHF-1 immunostaining (Fig. 4b)? To block AT-8 immunoreactivity (Extended Data Fig. 5)? Did these compounds prevent tau aggregation/filament formation? What about the GSK3&beta; inhibitor?

A. AT8 is an antibody specific to tau phosphorylated at S199, S202 and T205. PHF1 is specific to tau phosphoryalted at S396 and S404. All of these are sites that are phosphorylated in pathological NFTs found in Alzheimer's disease. As a control, they also used [Dako's total tau antibody](http://www.dako.com/us/ar38/p106070/prod_products.htm). Based on the Western blots in Fig 3-4 and the IHC in Fig 4 they conclude that phosphorylated tau is increased in the cells expressing the transgene constructs, while "total tau levels were unchanged". It is difficult to visually confirm this interpretation by looking at the data presented. In Fig 3, total tau seems to be increased rather considerably in the cells expressing the mutant construct, but then again, the tubulin loading control is also darker in those cells.

In cells overexpressing the mutant transgene constructs, the level of phosphorylated tau as detected by AT8 and PHF1 is reported to be suppressed by a GSK3&beta; inhibitor (1-azakenpaullone; Extended Data Fig 9) and by &beta;-secretase inhibitor IV and another &beta;-secretase inhibitor called ["Compound E"](http://www.emdmillipore.com/INTL/en/product/%CE%B3-Secretase-Inhibitor-XXI,-Compound-E---CAS-209986-17-4---Calbiochem,EMD_BIO-565790) (Extended Data Fig 5). This is potentially encouraging about the therapeutic potential of this small molecule, if the hypotehsis is correct that tau phosphorylation lies causally upstream of tau aggregation and neurotoxicity. However, the data were not collected in a very systematic manner - two compounds' effects are evaluated by immunohistochemistry and counting of neurons with high phorphorylated tau levels (Extended Data Fig 5) while another is evaluated by Western blot (Extended Data Fig 9). Moreover, although the authors show that tau filaments form in cells expressing their mutant construct (Fig 4 and Extended Data Fig 5), they never quantify these filaments or whether these compounds reduce the number of such filaments.

Q. When and for how long were these compounds added? How might this have an impact on the ability to prevent tau aggregation/filament formation? What might be the implications for AD therapy for drug candidates that \[affect\] A&beta; or A&beta; production or a tau-phosphorylating kinase?

A. Cultures were differentiated for 6 weeks and then treated with the compounds for 3 weeks (Extended Data Fig 4). While this is still by necessity a much shorter timeline than the time period over which Alzheimer's develops, or over which patients would likely be treated, it is an impressively long treatment time for a cell culture experiment.

The fact that the &beta;- and &gamma;-secretase inhibitors not only decreased A&beta; (as expected) but also decreased phosphorylated tau is encouraging - it supports the notion that A&beta; accumulation can trigger tau pathology and that intervening in A&beta; metabolism may be able to delay or prevent the onset of a tau-dependent disease process *if* (big caveat) the treatments can be administered early enough. Similarly, treatment with a GSK3&beta; inhibitor (1-azakenpaullone) reduced phosphorylated tau but did not affect A&beta;, consistent with what we think we know from genetics, that A&beta; pathology lies upstream of tau pathology, and also supporting the notion that drugging kinases can reduce phosphorylated tau. If the hypothesis that late-stage Alzheimer's is a tau-dependent disease process is correct, and the notion that phosphorylation is upstream of tau pathology is also correct, then the data in this paper support the therapeutic potential of GSK3&beta; inhibitors.

As stated earlier, the data in this paper on these candidate therapeutic compounds is not entirely systematic, so I take all of this as suggestive at present. To my mind the greater contribution of this paper is simply the development of a cell culture model which will enable further study of such compounds.

### [Holmes 2013]: Heparan sulfate proteoglycans mediate internalization and propagation of specific proteopathic seeds

#### Summary

This study looks at the uptake of fibrils composed of the tau repeat domain (RD) into cultured cells as well as into cortical neurons in live mice. It provides evidence that these uptake processes are dependent on heparan sulfated proteoglycans (HSPGs) and macropinocytosis (see definition below).

#### Questions for discussion

Q. Summarize key evidence prior to this study suggesting that aggregated tau can spread from cell to cell. What is the in vivo evidence?

Intercellular spread of tau has been a major research interest of Marc Diamond's. They had previously published a cell culture model using HEK293 cells transfected to express various forms of the repeat domain (RD) of tau - that's the amyloidogenic portion of the protein, not the full-length protein. They used FRET to show that these cells produced tau fibrils, and then through co-culture experiments they were able to show cross-seeding of these aggregates from one population of cells to another [[Kfoury 2012]].

In the year-plus since the presently-discussed paper was published, Diamond has refined the assay for detecting tau seeds [[Holmes 2014]] and has shown that different strains of tau generated in cell culture or in mice breed true upon cell-to-cell transmission [[Sanders 2014]].

I am not aware of any truly *in vivo* evidence for cell-to-cell transmission of tau, though Diamond's finding that tau seeds from mouse brains can seed these tau prions in cell culture comes close.

Q. What led the authors to consider HSPGs as a mediator of tau fibril cellular uptake?

Part of the inspiration came from studies of prion protein. Albert Taraboulos has produced a body of literature arguing that PrP<sup>Sc</sup> binds heparan sulfate proteoglycans (HSPGs) in order to undergo endocytosis and infect a cell [[Schonberger 2003], [Horonchik 2005]]. Yet surprisingly, in various cell-free systems, HS turns out to promote conversion of PrP to a PrP<sup>Sc</sup>-like state [[Wong 2001], [Deleault 2005]]. One interpretation is that HS is a co-factor for prion conversion, but that in cell culture systems, exogenous HS outcompetes cell surface HS for binding to PrP<sup>Sc</sup>, thus sparing the cells of infection.

A more direct consideration was that tau contains a putative heparin-binding domain. The HIV TAT protein also contains a heparin binding domain, and this study found that TAT and tau showed similar localization in cells.

Q. What is macropinocytosis and how does it differ from other mechanisms of cellular uptake?

Some cell types such as macrophages exhibit "ruffling", in which actin cytoskeletal protrusions create lamellipodia at the cell surface, which then collapse back on each other, trapping membrane-bound bubbles of extracellular material inside the cell. This is called **macropinocytosis** [[Swanson & Watts 1995]]. Note that although extracellular material ends up becoming "intracellular", it is still not cytosolic, as it is trapped inside a membrane-bound vesicle. Macropinocytosis can be considered a form of endocytosis, but the process differs from more conventional clathrin-mediated endocytosis, which some people call "micropinocytosis".

For PrP, the notion that macropinocytosed extracellular material ends up in endocytic vesicles is consistent with PrP's localization as a GPI-anchored protein found on the cell surface and in endosomes. However, tau is a cytosolic protein. I was therefore confused as to how macropinocytosis would allow exogenous tau to seed endogenous cytosolic tau. The authors cited a review which discusses how certain viruses undergo (nay, induce) macropinocytosis and then inject their DNA into the cytosol much as a virus would do from outside the cell [[Mercer & Helenius 2009]]. However, this still does not explain how the escape from the vesicle would work for tau fibrils. Moreover, the appearance of extracellular tau aggregates in the first place would also imply that tau aggregates, once formed, have some means of piercing the cell membrane and escaping into the extracellular matrix (or perhaps the aggregates are only released upon cell death??). While the mechanisms for these things may be unknown, I would have appreciated at least some discussion of these issues in the paper.

Q. What is tau RD? Why is it employed extensively in these studies? What is the evidence that fibrillar tau RD can be taken up by macropinocytosis?

Tau RD is a repeat domain which is more prone to form fibrils than the full-length protein. It is far more facile than full-length tau for studies of the prion-like nature of tau, and we *hope* that it still recapitulates the properties of full-length tau *in vivo*.

Fig 1B shows EM images of tau RD fibrils caught up in lamellipodia-like protrusions. The fibrils also got surrounded by actin filaments in at least a couple of cells (Fig 1A) and their internalization was inhibited by small molecule probes that inhibit actin polymerization.

Q. What is the evidence that HSPGs are critical to uptake of tau fibrils? To aggregate propagation? To transcellular propagation? Comment on the specificity of the agents/methods used in the experiments supporting this idea and whether appropriate controls were included.

They performed experiments at 4&deg;C which is a restrictive temperature at which tau fibrils will bind to the cell surface but not be internalized. They found that two compounds - sodium chlorate and heparin - prevented binding of tau fibrils to the cell surface. Sodium chlorate prevents HSPGs from being sulfated, and the sulfation is presumed to be key for the binding of protein aggregates. Heparin is presumed to outcompete HSPGs for binding to tau fibrils, by analogy to the situation with PrP<sup>Sc</sup> as described above. They quantified the effects of these two compounds by using high-content microscopy to count the number of fibril-positive cells (Fig 3C-D). They also degraded cell surface HPSGs using two enzymes - heparinase III and chondroitinase AC - and showed that these treatments reduced tau internalization. Further experiments also used F6, a synthetic HS mimetic, in lieu of heparin. Various subsets of these treatmetns were shown to inhibit uptake of tau fibrils by cultured cells or by neurons in the mouse brain.

One potential issue with these experiments is that heparin or F6 binding to tau fibrils could change their conformation in a way that makes them less prone to bind or be taken up by cells, even if HSPGs are not the uptake mechanism.

Q. What is the in vivo evidence for a role of HSPGs in tau fibril uptake and propagation? What further in vivo experiments might be worthwhile?

They inject tau fibrils with or without an HS mimetic into mouse brains and quantify the uptake of the fibrils by mouse cortical neurons. Yet this only addresses uptake, not propagation, of tau aggregates. Indeed, I am not clear on whether there even exists an *in vivo* model suitable for studying the propagation of tau aggregates. For A&beta; and &alpha;-synuclein it has been shown in animals with a sensitized genetic background (e.g. overproduction of substrate protein), and sometimes even in wild-type mice, that injection of aggregates can lead to spread of aggregates across the brain, which is clear evidence of propagation [[Meyer-Luehmann 2006], [Watts 2011], [Luk 2012], [Watts 2013]]. If someone has done a comparable experiment for tau I am unaware of it.

Q. What are the implications that &alpha;-synclein, but not Q50-huntingtin, apparently also requires HSPGs for uptake and seeding?

A subset of the experiments performed for tau - colocalization with TAT, and binding to cells after treatment with sodium chlorate or heparin - were repeated for &alpha;-synuclein and Htt(Q50). &alpha;-synuclein colocalized with TAT and its binding was inhibited by the two compounds; these things were not true of Htt(Q50).

[Spillantini & Goedert 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23684085 "Spillantini MG, Goedert M. tau pathology and neurodegeneration. Lancet Neurol. 2013 Jun;12(6):609-22. doi: 10.1016/S1474-4422(13)70090-5. Review. PubMed PMID: 23684085."

[Spires-Jones & Hyman 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24853936 "Spires-Jones TL, Hyman BT. The intersection of amyloid beta and tau at synapses in Alzheimer's disease. Neuron. 2014 May 21;82(4):756-71. doi: 10.1016/j.neuron.2014.05.004. Review. PubMed PMID: 24853936; PubMed Central PMCID: PMC4135182."

[Holmes 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23898162/ "Holmes BB, DeVos SL, Kfoury N, Li M, Jacks R, Yanamandra K, Ouidja MO, Brodsky FM, Marasa J, Bagchi DP, Kotzbauer PT, Miller TM, Papy-Garcia D, Diamond MI. Heparan sulfate proteoglycans mediate internalization and propagation of specific proteopathic seeds. Proc Natl Acad Sci U S A. 2013 Aug 13;110(33):E3138-47. doi:  10.1073/pnas.1301440110. Epub 2013 Jul 29. PubMed PMID: 23898162; PubMed Central  PMCID: PMC3746848."

[Schonberger 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14637161 "Schonberger O, Horonchik L, Gabizon R, Papy-Garcia D, Barritault D, Taraboulos A. Novel heparan mimetics potently inhibit the scrapie prion protein and its endocytosis. Biochem Biophys Res Commun. 2003 Dec 12;312(2):473-9. PubMed PMID: 14637161."

[Horonchik 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15668247 "Horonchik L, Tzaban S, Ben-Zaken O, Yedidia Y, Rouvinski A, Papy-Garcia D, Barritault D, Vlodavsky I, Taraboulos A. Heparan sulfate is a cellular receptor for purified infectious prions. J Biol Chem. 2005 Apr 29;280(17):17062-7. Epub 2005 Jan 24. PubMed PMID: 15668247."

[De Jonghe 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11487570 "De Jonghe C, Esselens C, Kumar-Singh S, Craessaerts K, Serneels S, Checler F,  Annaert W, Van Broeckhoven C, De Strooper B. Pathogenic APP mutations near the gamma-secretase cleavage site differentially affect Abeta secretion and APP C-terminal fragment stability. Hum Mol Genet. 2001 Aug 1;10(16):1665-71. PubMed PMID: 11487570."

[Cohen 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23575824 "Cohen RM, Rezai-Zadeh K, Weitz TM, Rentsendorj A, Gate D, Spivak I, Bholat Y,  Vasilevko V, Glabe CG, Breunig JJ, Rakic P, Davtyan H, Agadjanyan MG, Kepe V, Barrio JR, Bannykh S, Szekely CA, Pechnick RN, Town T. A transgenic Alzheimer rat with plaques, tau pathology, behavioral impairment, oligomeric aβ, and frank neuronal loss. J Neurosci. 2013 Apr 10;33(15):6245-56. doi: 10.1523/JNEUROSCI.3672-12.2013. PubMed PMID: 23575824; PubMed Central PMCID: PMC3720142."

[Choi & Kim 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25307057 "Choi SH, Kim YH, Hebisch M, Sliwinski C, Lee S, D'Avanzo C, Chen H, Hooli B, Asselin C, Muffat J, Klee JB, Zhang C, Wainger BJ, Peitz M, Kovacs DM, Woolf CJ,  Wagner SL, Tanzi RE, Kim DY. A three-dimensional human neural cell culture model  of Alzheimer's disease. Nature. 2014 Nov 13;515(7526):274-8. doi: 10.1038/nature13800. Epub 2014 Oct 12. PubMed PMID: 25307057."

[Kfoury 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22461630 "Kfoury N, Holmes BB, Jiang H, Holtzman DM, Diamond MI. Trans-cellular propagation of tau aggregation by fibrillar species. J Biol Chem. 2012 Jun 1;287(23):19440-51. doi: 10.1074/jbc.M112.346072. Epub 2012 Mar 29. PubMed PMID:  22461630; PubMed Central PMCID: PMC3365982."

[Holmes 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25261551 "Holmes BB, Furman JL, Mahan TE, Yamasaki TR, Mirbaha H, Eades WC, Belaygorod L, Cairns NJ, Holtzman DM, Diamond MI. Proteopathic tau seeding predicts tauopathy in vivo. Proc Natl Acad Sci U S A. 2014 Oct 14;111(41):E4376-85. doi: 10.1073/pnas.1411649111. Epub 2014 Sep 26. PubMed PMID: 25261551; PubMed Central  PMCID: PMC4205609."

[Sanders 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24857020 "Sanders DW, Kaufman SK, DeVos SL, Sharma AM, Mirbaha H, Li A, Barker SJ, Foley AC, Thorpe JR, Serpell LC, Miller TM, Grinberg LT, Seeley WW, Diamond MI. Distinct tau prion strains propagate in cells and mice and define different tauopathies. Neuron. 2014 Jun 18;82(6):1271-88. doi: 10.1016/j.neuron.2014.04.047. Epub 2014 May 22. PubMed PMID: 24857020; PubMed Central PMCID: PMC4171396."

[Wong 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11157745 "Wong C, Xiong LW, Horiuchi M, Raymond L, Wehrly K, Chesebro B, Caughey B. Sulfated glycans and elevated temperature stimulate PrP(Sc)-dependent cell-free formation of protease-resistant prion protein. EMBO J. 2001 Feb 1;20(3):377-86. PubMed PMID: 11157745; PubMed Central PMCID: PMC133469."

[Deleault 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15917229 "Deleault NR, Geoghegan JC, Nishina K, Kascsak R, Williamson RA, Supattapone S. Protease-resistant prion protein amplification reconstituted with partially purified substrates and synthetic polyanions. J Biol Chem. 2005 Jul 22;280(29):26873-9. Epub 2005 May 24. PubMed PMID: 15917229."

[Swanson & Watts 1995]: http://www.ncbi.nlm.nih.gov/pubmed/14732047 "Swanson JA, Watts C. Macropinocytosis. Trends Cell Biol. 1995 Nov;5(11):424-8. PubMed PMID: 14732047."

[Mercer & Helenius 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19404330 "Mercer J, Helenius A. Virus entry by macropinocytosis. Nat Cell Biol. 2009 May;11(5):510-20. doi: 10.1038/ncb0509-510. Review. PubMed PMID: 19404330."

[Meyer-Luehmann 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16990547 "Meyer-Luehmann M, Coomaraswamy J, Bolmont T, Kaeser S, Schaefer C, Kilger E, Neuenschwander A, Abramowski D, Frey P, Jaton AL, Vigouret JM, Paganetti P, Walsh DM, Mathews PM, Ghiso J, Staufenbiel M, Walker LC, Jucker M. Exogenous induction  of cerebral beta-amyloidogenesis is governed by agent and host. Science. 2006 Sep 22;313(5794):1781-4. PubMed PMID: 16990547."

[Watts 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21262831/ "Watts JC, Giles K, Grillo SK, Lemus A, DeArmond SJ, Prusiner SB. Bioluminescence imaging of Abeta deposition in bigenic mouse models of Alzheimer's disease. Proc Natl Acad Sci U S A. 2011 Feb 8;108(6):2528-33. doi: 10.1073/pnas.1019034108. Epub 2011 Jan 24. Erratum in: Proc Natl Acad Sci U S A.  2014 Mar 11;111(10):3895. PubMed PMID: 21262831; PubMed Central PMCID: PMC3038719."

[Luk 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23161999 "Luk KC, Kehm V, Carroll J, Zhang B, O'Brien P, Trojanowski JQ, Lee VM. Pathological α-synuclein transmission initiates Parkinson-like neurodegeneration  in nontransgenic mice. Science. 2012 Nov 16;338(6109):949-53. doi: 10.1126/science.1227157. PubMed PMID: 23161999; PubMed Central PMCID: PMC3552321."

[Watts 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24218576 "Watts JC, Giles K, Oehler A, Middleton L, Dexter DT, Gentleman SM, DeArmond SJ, Prusiner SB. Transmission of multiple system atrophy prions to transgenic mice. Proc Natl Acad Sci U S A. 2013 Nov 26;110(48):19555-60. doi: 10.1073/pnas.1318268110. Epub 2013 Nov 11. PubMed PMID: 24218576; PubMed Central  PMCID: PMC3845125."
