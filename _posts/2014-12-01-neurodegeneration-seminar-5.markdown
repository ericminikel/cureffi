---
layout: post
title:  "Neurodegeneration seminar 5: 'Alpha synuclein'"
date:   2014-12-01 12:05:00
author: ericminikel
tag: neuro-305qc
location: Boston, MA
---

*These are my own notes from preparing for week 5 of Harvard's Neurobiology 305qc course “Biochemistry and Biology of Neurodegenerative Diseases”, which will be held by Michael Wolfe and Dominic Walsh on December 1, 2014.*

This week we read two reviews of Parkinson's disease [[Shulman 2011], [Hirsch 2013]] and three original research papers on Parkinson's disease and alpha synuclein [[Kordower 2008], [Luk 2012b], [Emborg 2013]].

### Background

**Parkinsonism** is the term for a collecton of symptoms including tremor, rigidity and bradykinesia (slowness of movement) which appear in people who have lost dopaminergic neurons. **Parkinson's disease** refers to a specific molecular disease in which pathologically misfolded alpha synuclein (a protein encoded by the human gene *SNCA*) causes progressive neuronal loss concentrated in the dopaminergic neurons of the substantia nigra, leading to symptoms of parkinsonism.

### [Kordower 2008]: Lewy body-like pathology in long-term embryonic nigral transplants in Parkinson's disease

Starting decades ago, the transplantation of fetal brain grafts has been tested as a possible therapeutic approach to replace lost neurons in the substantia nigra in Parkinson's disease patients. Early case reports indicated a improvements in symptoms and provided some indirect evidence that the grafted neurons had survived [e.g. [Sawle 1992], [Piccini 1999]]. But a randomized trial in 34 patients at Mt. Sinai failed to see any significant benefit over 2 years of followup [[Olanow 2003]].

This study compares neuropathology in two individuals who died 4 years after receiving transplants, and one individual who died 14 years after receiving a transplant. The 14 year post-transplant individual had robust graft survival (somehow, they could tell which cells were from the graft) and the grafted cells stained positive for some markers of dopaminergic neurons, including tyrosine hyrdoxylase (TH) but not dopamine active transporater (DAT, involved in re-uptake). Although the grafted cells had survived and did not appear to be degenerating, they contained alpha synuclein aggregates. In contrast, the 4 year post-transplant individuals had cytosolic alpha synuclein but it was not aggregated. The authors concluded that "there must be either a pathogenic factor in the brain milieu that affects dopaminergic neurons or a pathological process that can spread from one cellular system to another". That "pathogenic factor" was surely the aggregated alpha synuclein itself, as Virginia Lee and others later showed that alpha synuclein pathology is transmissible.

This paper is often cited as support for the prion hypothesis of Parkinson's disease, and indeed, it certainly shows that aggregates can move from cell to cell. Strictly speaking, the data only indicate cell-to-cell movement of aggregates, not recruitment of new substrate protein in grafted neurons, as they did not demonstrate that the synuclein aggregates in the graft cells were formed from graft-expressed alpha synuclein.

#### Questions for discussion

Q. Based on this case report would you say that fetal cell transplantation worked to some degree? Explain your answer and suggest improvements that could ensure greater success. In their conclusion the authors say: “This study indicates that the mechanisms responsible for initiating the degenerative process are still present at this late stage of the disease and are capable of affecting grafted neurons.” Describe two equally likely explanations for how the transplanted tissue could prematurely develop Lewy bodies.

A. Yes, at least the grafted cells survived and appeared to be dopaminergic. The patient was reported to have improved phenotypically for a few years after the transplant before declining again. To ensure greater success, it would be great to CRISPR edit the graft cells to knock out alpha synuclein, but of course at that point you'd be talking about transplanting iPS, which was less successful in [[Emborg 2013]] below, rather than primary fetal tissue. I do think the authors' conclusion is the parsimonious one, in light of all the other evidence for alpha synuclein behaving like a prion. But two other explanations for their data would be (1) that the aggregates in grafted cells are composed entirely of host-expressed synuclein, and/or that (2) some amorphous "toxic environment" of the diseased brain triggered the aggregates as a secondary effect and they are not actually central to the disease pathogenesis.

### [Emborg 2013]: Induced pluripotent stem cell-derived neural cells survive and mature in the nonhuman primate brain

This study describes the results of autologous stem cell transplantation into three nonhuman primates to replace neurons lost as a result of MPTP lesioning. An oft-cited previous study [[Zhao 2011]] had found that iPS-derived teratomas induced immune response in mice, whereas ESC-derived teratomas did not, suggesting some particular immunogencity of iPS. In the present study, Emborg et al created fibroblast-derived iPS, reprogrammed with lentivirus and labeled with GFP, and differentiated them into neurons, astrocytes and neural progenitor cells. They then created dissociated cell suspensions and grafted them into monkeys that had previously been subjected to MPTP injection to lesion dopaminergic neurons. In contrast to the teratomas of Zhao et al, Emborg found that six months after transplantation, the cells engrafted successfully and elicited minimal gliosis and no macrophage infiltration, indicating they were not being rejected. The cells contained a mix of astrocytes and neurons and the neurons had long projections. However most of the neurons were GABAergic, and only a minority were positive for TH (tyrosine hydroxylase, an enzyme required for dopamine synthesis in dopaminergic neurons), indicating they had not achieved replacement of the dopaminergic neurons lost due to MPTP lesioning.

#### Questions for discussion

Q. Explain how MPTP causes a Parkinsonian-like disease. What are the pros and cons of using the MPTP model?

A. MPTP is a neurotoxic small molecule that specificlaly kills dopaminergic neurons:

![](/media/2014/12/mptp.png)

It is sometimes produced as an accidental byproduct in the synthesis of MPPP or desmethylprodine, which is this:

![](/media/2014/12/mppp.png)

MPPP is a synthetic opioid and a recreational drug of yesteryear. People who used MPPP contaminated with MPTP developed parkinsonism (tremor, stiffness and bradykinesia). After that, some researchers started injecting MPTP into the brains of animals in order to model parkinsonism. Such "chemical lesion models" have been used in other diseases as well - for instance, kainic acid-lesioned rats have been used as a model for Huntington's disease [reviewed in [Kim 2011]]. Because these chemical lesion models do not recapitulate the molecular cause of neurodegeneration in humans, they are pretty useless for most purposes - unless you are *trying* to model MPTP-induced parkinsonism, that is. But one area in which you could argue they are useful is in modeling autologous iPS transplantation to replace lost neurons. If you just want to see whether the transplanted neurons will be accepted by the host and will differentiate properly, it doesn't matter as much how the original neurons will lost. Such was surely the logic of [[Emborg 2013]]. However, even here, the model lacks a critical piece of Parkinson's disease pathology - the cell-to-cell transmissibility of alpha synuclein aggregates - which as we saw in [[Kordower 2008]] is a major potential obstacle to cell replacement strategies. Therefore, I take this study for what it is - it can address questions like "will the transplanted neurons be rejected in a non-human primate?" and "will the neurons differentiate properly?" but it cannot address the question "will the neurons alleviate symptoms of Parkinson's disease?".

Q. Describe the major differences between the transplanted cells used in this study versus those used by Kordower et al. Explain why the authors generated iPSC lines that express GFP? Explain why the authors observed good graft incorporation, but no functional improvement?

A. These were autologous; Kordower used heterologous grafts. These were iPS, Kordower used fetal tissue. GFP was used to mark the transplanted cells. The lack of funcitonal improvement could be due to the low number of cells (on the order of tens of thousands, though I'm not sure what scale one would hope for) and/or the fact that most of the grafted neurons became GABAergic instead of dopaminergic.

### [Luk 2012b]: Pathological &alpha;-synuclein transmission initiates Parkinson-like neurodegeneration in nontransgenic mice

This paper demonstrates that &alpha-synuclein fibrils formed *in vitro* transmit a synucleinopathy to wild-type mice. While the transmitted disease is not fatal, it results in formation of alpha synuclein aggregates, and ~35% loss of substantia nigra dopaminergic neurons by 180 days post-inoculation. Importantly, this paper shows several things which would be expected, based on the PrP literature, if alpha synuclein is indeed a prion: pathology was progressive (comparing 30, 90 and 180 dpi), appeared to spread outward according to neural connectivity, was less severe in *Snca* hemizygotes and absent in *Snca* knockout mice, and was specific to fibrils of alpha synuclein and not alpha synuclein monomers.

Although Virginia Lee had previously shown similar results in transgenic mice overexpressing mutant human alpha synuclein [[Luk 2012a]], people had the standard objections to that work: "but the Tg mice get sick anyway, so you're just accelerating and not *causing* a disease process" and "maybe it's an artifact of overexpression". These sorts of objections have been raised against experiments demonstrating prion transmission in Tg animals for 20 years - at least since [[Hsiao 1994]].

#### Questions for discussion

Q. Where and to what degree is &alpha;-synuclein expressed endogenously? What is its normal function? What happened in a previous study in which synthetic preformed fibrils (PFF) of &alpha;-synuclein was injected into mice transgenic for PD-mutant human &alpha;-synuclein? What were the limitations of this study? Why did the authors think that these experiments were worth trying in nontransgenic mice?

A. In humans, *SNCA* mRNA is expressed throughout the brain, fairly highly in the substantia nigra though it is actually highest in the cortex [[GTEx Portal](http://www.gtexportal.org/home/gene/SNCA)]. Its normal function is unknown. The Tg mice from [[Luk 2012a]] actually express "mutant" human alpha synuclein under the PrP promoter. I say "mutant" in quotes because although the A53T mutation is pathogenic in humans, it is actually the reference sequence in endogenous mouse *Snca*. In my summary above I mentioned some of the standard objections that prionologists raise to Tg mouse experiments. Of course Virginia Lee wanted to go for the gold: prion-like transmission in wild-type animals is always going to convince more people than experiments in transgenic animals.

Q. Describe anatomical distribution of hyperphosphorylated synuclein deposits after the injection of PFFs into the dorsal striatum. What is the evidence that these deposits are like Lewy bodies of PD? That the distribution is connectivity dependent?

A. The evidence for connectivity is:

> Additional populations, such as the contralateral neocortex, also developed LBs/LNs indicative of progressive spread to CNS regions... Mapping of pSyn pathology in mice at 30, 90, and 180 dpi (Fig. 1G) revealed a time-dependent dissemination of LBs/LNs between 30 and 180 dpi, with sequential involvement of populations initially unaffected at 30 dpi, including ventral striatum, thalamus, and occipital cortex, along with commissural and brainstem fibers.

The evidence for the deposits being "like Lewy bodies" is (I think) simply that they were positive for alpha synuclein.

Q. What is the significance of the development of synuclein pathology in the substantia nigra pars compacta? What is the evidence that synuclein deposition is linked to loss of dopaminergic neurons? In what ways do the motor and behavioral characteristics of the mice resemble that seen in PD? In what ways do they not?

A. Overall, the deficits in the mice were less severe than in Parkinon's patients - only 35% dopaminergic neuron loss, and although they had poorer rotarod performance they had unchanged open field performance. But this is 6 months after inoculation, and in humans the disease develops after decades of life. I'd say the evidence that the synuclein deposition is linked to neuronal loss is that synuclein deposition was seen in the mice inoculated with fibrils but not with monomers or saline, and that neuronal loss was also seen only in the mice inoclulated with fibrils. Also the fact that hemizygotes were less affected and *Snca* knockouts were unaffected.

Q. What other experiments might further address the question of whether misfolded/aggregated synuclein is in fact transmitted from neuron to neuron?

A. This study was seminal, and convinced many doubters that alpha synuclein really is a prion. To me, this study has already conclusively demonstrated that the misfolded synuclein is transmitted neuron-to-neuron. They inoculated just 5 &mu;g of fibrils in 10 &mu;L of liquid, and induced a progressive spread of pathology over six months. This can't just be due to progressive internalization of the inoculated fibrils, because pathology was absent in *Snca* knockout mice. And it can't be due to some vague "neurotoxic insult" of the inoculation because alpha synuclein monomers did not induce pathology. I assert that nothing other than cell-to-cell transmission of misfolded protein can explain the data in this paper.

[Shulman 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21034221 "Shulman JM, De Jager PL, Feany MB. Parkinson's disease: genetics and pathogenesis. Annu Rev Pathol. 2011;6:193-222. doi: 10.1146/annurev-pathol-011110-130242. Review. PubMed PMID: 21034221."

[Hirsch 2013]: http://www.ncbi.nlm.nih.gov/pubmed/22927094 "Hirsch EC, Jenner P, Przedborski S. Pathogenesis of Parkinson's disease. Mov Disord. 2013 Jan;28(1):24-30. doi: 10.1002/mds.25032. Epub 2012 Aug 23. Review. PubMed PMID: 22927094."

[Kordower 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18391962 "Kordower JH, Chu Y, Hauser RA, Freeman TB, Olanow CW. Lewy body-like pathology in long-term embryonic nigral transplants in Parkinson's disease. Nat Med. 2008 May;14(5):504-6. doi: 10.1038/nm1747. Epub 2008 Apr 6. PubMed PMID: 18391962."

[Luk 2012b]: http://www.ncbi.nlm.nih.gov/pubmed/23161999 "Luk KC, Kehm V, Carroll J, Zhang B, O'Brien P, Trojanowski JQ, Lee VM. Pathological α-synuclein transmission initiates Parkinson-like neurodegeneration in nontransgenic mice. Science. 2012 Nov 16;338(6109):949-53. doi: 10.1126/science.1227157. PubMed PMID: 23161999; PubMed Central PMCID: PMC3552321."

[Emborg 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23499447 "Emborg ME, Liu Y, Xi J, Zhang X, Yin Y, Lu J, Joers V, Swanson C, Holden JE, Zhang SC. Induced pluripotent stem cell-derived neural cells survive and mature in the nonhuman primate brain. Cell Rep. 2013 Mar 28;3(3):646-50. doi: 10.1016/j.celrep.2013.02.016. Epub 2013 Mar 14. PubMed PMID: 23499447; PubMed Central PMCID: PMC3633566."

[Kim 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21907096 "Kim J, Bordiuk OL, Ferrante RJ. Experimental models of HD and reflection on therapeutic strategies. Int Rev Neurobiol. 2011;98:419-81. doi: 10.1016/B978-0-12-381328-2.00016-X. Review. PubMed PMID: 21907096."

[Zhao 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21572395 "Zhao T, Zhang ZN, Rong Z, Xu Y. Immunogenicity of induced pluripotent stem cells. Nature. 2011 May 13;474(7350):212-5. doi: 10.1038/nature10135. PubMed PMID: 21572395."

[Olanow 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12953276 "Olanow CW, Goetz CG, Kordower JH, Stoessl AJ, Sossi V, Brin MF, Shannon KM, Nauert GM, Perl DP, Godbold J, Freeman TB. A double-blind controlled trial of bilateral fetal nigral transplantation in Parkinson's disease. Ann Neurol. 2003 Sep;54(3):403-14. PubMed PMID: 12953276."

[Sawle 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1575455 "Sawle GV, Bloomfield PM, Björklund A, Brooks DJ, Brundin P, Leenders KL, Lindvall O, Marsden CD, Rehncrona S, Widner H, et al. Transplantation of fetal dopamine neurons in Parkinson's disease: PET [18F]6-L-fluorodopa studies in two patients with putaminal implants. Ann Neurol. 1992 Feb;31(2):166-73. PubMed PMID: 1575455."

[Piccini 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10570493 "Piccini P, Brooks DJ, Björklund A, Gunn RN, Grasby PM, Rimoldi O, Brundin P, Hagell P, Rehncrona S, Widner H, Lindvall O. Dopamine release from nigral transplants visualized in vivo in a Parkinson's patient. Nat Neurosci. 1999 Dec;2(12):1137-40. PubMed PMID: 10570493."

[Luk 2012a]: http://www.ncbi.nlm.nih.gov/pubmed/22508839 "Luk KC, Kehm VM, Zhang B, O'Brien P, Trojanowski JQ, Lee VM. Intracerebral inoculation of pathological α-synuclein initiates a rapidly progressive neurodegenerative α-synucleinopathy in mice. J Exp Med. 2012 May 7;209(5):975-86. doi: 10.1084/jem.20112457. Epub 2012 Apr 16. PubMed PMID: 22508839; PubMed Central PMCID: PMC3348112."

[Hsiao 1994]: http://www.ncbi.nlm.nih.gov/pubmed/7916462/ "Hsiao KK, Groth D, Scott M, Yang SL, Serban H, Rapp D, Foster D, Torchia M, Dearmond SJ, Prusiner SB. Serial transmission in rodents of neurodegeneration from transgenic mice expressing mutant prion protein. Proc Natl Acad Sci U S A. 1994 Sep 13;91(19):9126-30. PubMed PMID: 7916462; PubMed Central PMCID: PMC44760."

