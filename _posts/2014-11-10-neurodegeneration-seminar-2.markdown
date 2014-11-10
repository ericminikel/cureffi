---
layout: post
title:  "Neurodegeneration seminar 2: 'Amyloid beta'"
date:   2014-11-10 12:05:00
author: ericminikel
tag: neuro-305qc
location: Boston, MA
---

*These are my notes from week 2 of Harvard's Neurobiology 305qc course “Biochemistry and Biology of Neurodegenerative Diseases”, held by Michael Wolfe and Dominic Walsh on November 10, 2014.*

This week's class is on the role of amyloid beta in Alzheimer's disease. The readings are one review [[Benilova 2012]] and two original research papers [[Shankar 2008], [Melnikova 2013]].

### Introduction

Early on, it was recognized that Alzheimer's brains contain plaques composed of "amyloid." The constituent protein was eventually identified as amyloid beta (A&beta;) [[Glenner & Wong 2004], [Masters 1985]]. However, "A&beta;" is not a single thing - there are over 30 different peptides called A&beta;, differing by cleavage site (and therefore length), familial mutations and post-translational modifications, though all are cleaved from amyloid precursor protein, encoded by the gene *APP*. It has traditionally been held that A&beta; peptides differ in C terminal cleavage site, but recent evidence suggests there are also different N terminal endpoints [[Welzel 2014]].

All available evidence from human genetics gives amyloid beta a central role in Alzheimer's disease. Mendelian early onset Alzheimer's is associated with mutations in *APP* that either alter A&beta;'s amino acid sequence or increase its production, or mutations in *PSEN1* and *PSEN2* that increase its production. In fact, the presenilin mutations increase the A&beta;42:A&beta;40 ratio. (*APP* mutations account for ~10% of early-onset AD, while *PSEN1* and *PSEN2* account for 90%). Duplication of *APP* causes early-onset Alzheimer's [[Rovelet-Lecrux 2006]], as does trisomy 21 (Down's syndrome). By far the strongest genetic risk factor for sporadic late onset Alzheimer's is the *APOE* &epsilon;4 allele, which reduces clearance of A&beta;. A rare variant that protects against Alzheimer's, *APP* A673T, reduces beta secretase's production of A&beta;.

Alzheimer's disease is also associated with neurofibrillary tangles of Tau protein. There exists an excellent spatial and temporal correlation between Tau tangles and cognitive impairment. However, according to [[Benilova 2012]], however, neuropathologists do not find a clear correlation between A&beta; plaque deposition and cognitive impairment. This has led to a hypothesis that soluble oligomers, rather than insoluble plaques, mediate toxicity. This is supported by a number of observations. If you use formic acid to extract A&beta; peptides from brain tissue, the level correlates with disease severity [[Naslund 2000]]. A&beta; oligomers inhibit long-term potentiation (LTP) in rat hippocampal neurons [[Walsh 2002]]. See further discussion below under "Why oligomers?"

Nonetheless, the study of A&beta; toxicity is incredibly fraught. A&beta; in the human brain is a heterogeneous mix of different peptides and different conformations, and A&beta; and is highly prone to oligomerize or aggregate. It is therefore hard to study this peptide without changing it: the exact conditions in which natural A&beta; is extracted, or in which synthetic A&beta; is prepared, are likely to change its conformation and multimericity in ways that are hard to measure. Perhaps for this reason, many important results have proven hard to reproduce. Adding to the difficulty, Alzheimer's is poorly modeled in mice. Mice with mutant *APP* transgenes experience &beta;-amyloidosis but this does not lead to Tau pathology as it does in humans, though co-expression of mutant *APP* with mutant *MAPT* in mice does accelerate the formation of Tau tangles \[citation needed\].

The order of events in Alzheimer's disease is well agreed-upon. The A&beta; cascade hypothesis [[Hardy & Allsop 1991], [Selkoe 1991]], which is more controversial, places causality between each step.

#### Why oligomers?

The two core arguments for A&beta; oligomers as the driver of Alzheimer's are:

1. The genetic imperative: all of the human genetics points to A&beta;, so if not plaques, then smaller species must be responsible.
2. Spatial distribution: because Alzheimer's pathology spreads, it must be mediated by soluble species (such as oligomers) rather than insoluble plaques

However, many of the specific arguments for oligomers can still be debated:

| point | counterpoint |
| ----- | ------------ |
| oligomer levels correlate with disease severity | CSF levels of A&beta;42 rise long before symptoms occur |
| synthetic A&beta; forms oligomers | so what? the process from a monomer to an aggregate has to involve an oligomer intermediate. | 
| oligomers have been shown to be toxic | the toxicity assays might not be relevant to the disease. assays in which A&beta; acutely kills neurons cannot possibly model Alzheimer's, which takes years to progress |
| *APP* mutations that cause EOAD alter the amount or amyloidogenicity of A&beta; | they also change other properties and other cleavage products of APP. So really the genetic evidence points to APP and not A&beta; per se. |
| *APOE* haplotypes differ in A&beta; clearance | *APOE* is involved in other neurodegenerative diseases too \[citation needed\] so *APOE* involvement does not necessarily pinpoint A&beta;. |
| formic acid-extractable A&beta; correlates with disease severity | this is based on one study and that study looked only at one brain region |
| injection of synthetic A&beta; is toxic | that's not necessarily a model of the real disease |

#### Alternatives to the oligomer hypothesis

Full-length APP or other metabolites of APP could actually be responsible for the disease, and A&beta; could then be merely an imperfect correlate of those. This is the view favored by [[Melnikova 2013]], discussed below.

Some people still think APP might not be important at all, or might be important only in genetic Alzheimer's. But this requires ignoring a lot of the evidence.

#### Aside: native function of APP and presenilins

APP appears to be involved in neuritic outgrowth, neural migration, and so on. It has two paralogs, *APLP1* and *APLP2*. Knockout of any two of the three is viable; knockout of all three is lethal. However it is not clear whether the native function is important to understanding Alzheimer's disease.

The most important role of gamma secretase and presenilins is cleavage of Notch. Knockout of presenilins is lethal for this reason.

### [Shankar 2008]: Amyloid-&beta; protein dimers isolated directly from Alzheimer’s brains impair synaptic plasticity and memory

#### Questions for discussion

Q. Discuss whether the observed A&beta; dimers are actually present in Alzheimer brains or are dissociated forms resulting from the solubilization protocol and gel electrophoresis method.

A. These bands were observed with three different extraction methods (TBS without detergent, TBS with detergent, and 5M GdnHCl). The TBS treatment is extremely moderate and unlikely to create artifacts. However, after extraction, all of these extracts were subjected to LDS-PAGE, which is very likely to create artifacts. The exact procedure used in creating the Western blots in Fig 1A-C is not stated, instead it is cited to [[Walsh 2000]]. The protocol from that paper is as follows:

> we devised an immunoprecipitation/Western blot (ip/wb) protocol that allowed the highly sensitive detection of unlabeled A&beta; species... Samples were immunoprecipitated so as to avoid reconstitution procedures which might alter the assembly form or recovery of A&beta;. Following immunoprecipitation (described above), samples were electrophoresed on 16% Tricine gels and transferred onto 0.2 μM nitrocellulose membranes at 400 mA for 2 h.

After reading this, I wasn't clear whether this procedure actually included the standard step of boiling the extracts in SDS (or LDS). Dr. Walsh clarified that yes, these samples *were* boiled in detergent before running on the gel. For this reason it is difficult to be certain that the monomers, dimers and trimers in Figure 1 were really present in the original brains. All that Figure 1 can confidently tell you is that the presence of this much soluble A&beta;, in whatever multimericity, is specific to AD and Down's syndrome brains - on thes gels, soluble A&beta; is far, far less abundant in brains from other neurodegenerative diseases. A "P-AD" brain with pathology of Alzheimer's but no clinical symptoms had insoluble plaques (Fig 1C) but not soluble A&beta;. An additional limitation is that all of the AD brains examined in this paper were from terminal-stage AD, representing a worst case.

Q. What is long-term potentiation (LTP), and why is it relevant to the study of Alzheimer disease mechanisms?

A. LTP is enhancement of a neuron's response to stimulus as a result of repeated stimuli. LTP is an important process for learning and cognition. A strength of this paper is that they measure changes in LTP, a more moderate phenotype that could plausibly be caused by A&beta; *in vivo*. This is in contrast to studies that measure neuronal death in response to A&beta;, which is a far more rapid and severe phenotype than Alzheimer's disease progression actually reflects. To measure LTP, you stimulate a presynaptic neuron with a stimulating electode, and measure response in its postsynaptic neuron using a recording electrode.

Q. What is the evidence that soluble A&beta; assemblies inhibit LTP?

A. In Figure 2, the TBS extracts of AD brains, but not of non-AD brains, reduce LTP signal. Importantly, the samples were heavily manipulated at many points between the original brain and the data shown in Figs 2 and 3. It is therefore hard to say that dimers *present in AD brains* inhibit LTP. Rather, you could say that dimers present at the end of this procedure (whether or not they were really present in the original brain) do inhibit LTP.

Q. What is long-term depression (LTD), and why is it relevant to the study of Alzheimer disease mechanisms?

A. A neuron's desensitization to stimulus following repeated stimuli. Like LTP this is important for cognition.

Q. What is the evidence that soluble A&beta; assemblies facilitate LTD? What receptors might mediate this effect?

A. Evidence in Fig 2E. MCPG and SIB, both mGluR antagonists, prevented this facilitation, whereas AP-V, an NMDAR antagonist, had no effect (Fig 2F). Thus, mGluR might mediate the effect. 

Q. TBS extract from human AD brains impaired rat memory function (Figure 2G) but extract that had been immunodepleted with anti-A&beta; antibody did not. What other control(s) might be appropriate for this experiment?

A. Mock immunodepletion with a random IgG not against A&beta;. Also, other fractions of the AD brain extract that contain different A&beta; species.

Q. What is the evidence that A&beta; dimers specifically can affect neuronal function? 

A. To confirm that A&beta; dimers are sufficient to affect LTP, they created synthetic A&beta;40 and forced dimerization by introducing a disulfide bond. These dimers were toxic, though [[Benilova 2012]] raises the concern that there is no quantitative comparison of the degree of toxicity or the dose required to achieve this toxicity, of the synthetic vs. natural A&beta; dimers. In any event, the evidence here at most shows that A&beta; dimers are sufficient for toxicity, not that they are necessary, as they haven't ruled out trimers or other species also being toxic.

Q. \[What is the evidence\] that amyloid plaques might contain neurotoxic A&beta; dimers?

A. In Figure 4 they centrifuged the brain extracts, washed the pellet in TBS and repeated several times. Eventually the TBS extract ceased to contain detectable A&beta; monomers or dimers. The insoluble A&beta; plaques did not inhibit LTP, but they could be dissociated into dimers using formic acid, and then those dimers did inhibit LTP.

#### Extra discussion

Benilova's critiques of [[Shankar 2008]] are:

> A&beta; ran as a dimer in SDS-PAGE and interfered with synaptic function in different paradigms. The authors therefore defined A&beta; dimers as the minimal toxic species *in vivo*, but whether the synaptotoxicity observed in their preparations was indeed directly caused by the dimers present in their purified fractions remains unproven. Furthermore, the exact amino acid composition of the putative ‘dimeric’ species has not been definitively clarified. Additional contamination by unknown protein or lipid, covalent modification of Aβ or the rapid aggregation of the putative dimers into larger structures during assays might provide alternative explanations. The authors confirmed that Aβ dimers made by cross-linking synthetic Aβ were synaptotoxic, although no direct quantitative comparison with the brain-derived dimers was made. Moreover, in a later study, the authors found that these synthetic dimers rapidly aggregate in metastable protofibrils, suggesting that a more compli- cated interpretation of the available evidence is needed.

A couple of other issues we discussed:

+ Fig 2F uses AP-V to antagonize NMDAR, wherease Fig 2H uses CPP, a different antagonist. Different small molecules were used because these two experiments were done in two different labs (Selkoe and Sabatini labs respectively).
+ A comparison is made between two antibodies to the N terminus of A&beta; which precipitate soluble A&beta; and prevent LTP disruption, and two antibodies to the C terminus, which do neither. It is not clear if this is an inherent property of N vs. C terminal mAbs or if it's just that they had good N-terminal antibodies and not-as-good C terminal antibodies.

### [Melnikova 2013]: Reversible Pathologic and Cognitive Phenotypes in an Inducible Model of Alzheimer-Amyloidosis

In the prion field, a seminal experiment [[Mallucci 2003]] showed that turning off the PrP gene just after the onset of prion disease symptoms leads to a full recovery. This is an important proof of principle that if you can find a way to lower PrP<sup>C</sup> expression, that would be therapeutically helpful. Similarly, since evidence from human genetics places A&beta; as the key initiator of Alzheimer's pathogenesis, you would think that reducing A&beta; production therapeutically would also be helpful. This might even prove achievable with &beta;-secretase inhibitors [reviewed in [Ghosh 2012]]. Yet it is difficult to do for A&beta; what Mallucci did for PrP. You want to design an experiment to ask, "if we shut off A&beta; production in symptomatic animals, will a recovery ensue, or will the cascade of Tau prions, once initiated, continue unabated?" It is impossible to ask this question because mice with *APP* mutations don't get Tau pathology in the first place. Nevertheless, these mice do experience behavioral deficits presumably associated with A&beta; itself. Therefore, David Borchelt created a mouse model that expresses mutant *APP* conditionally, under a Tet-off promoter, and found that amyloid plaques persist after *APP* expression is turned off [[Jankowsky 2005]]. In the present paper, they asked whether behavioral deficits could be reversed in these mice after *APP* expression ceases [[Melnikova 2013]].

#### Questions for discussion

Q. What was the rationale for generating an APP transgenic mouse model in which APP expression could be turned off?

A. Broadly, there is the rationale I described above - in an ideal world we would like to know whether Alzheimer's impairments would continue if we could shut off the production of APP, or of A&beta;.

Q. Describe the effect of doxycycline on APP expression and why bigenic animals were used.

A. Doxycycline shuts off transgenic APP production; see above. However, note that these mice are not on a *App* knockout background, so endogenous mouse APP is still expressed.

Q. Describe the cognitive phenotype of 10-12 month old APPsi:tTA mice.

A. The phenotype is assessed in a series of water maze experiments (bottom right p. 3766). The Y maze measures the mice's preference for novel spaces. The Morris water maze puts the mice in a chamber with six arms. They first learn that a platform (which they like, because they hate swimming) is in one arm, then they have to unlearn that and figure out that the platform has moved to a new location. APPsi:tTA mice are apparently deficient in both of these tests, though the n is small and the difference is not huge.

Q. Describe how suppression of new APP synthesis altered this phenotype?

A. Behavior improved.

Q. Explain why these authors were careful to examine A&beta; in “water-extractable fractions” and in PBS homogenates. What is the evidence that amyloid plaques are unlikely to contribute to the cognitive impairment seen in APPsi:tTA mice? Describe the techniques used to measure A&beta; oligomers and comment on whether or not these are appropriate for assessment of native protein assemblies.

A. Soluble A&beta;, which has been suggested to be the toxic species, would be expected to be found in these water-extractable fractions. This paper used two different procedures to extract A&beta;. One involved sonication in PBS and centrifugation. In the other procedure, to which "water-soluble fractions" refers, they did not homogenize the brains, just let the brains sit in distilled water for one hour. This is a far milder treatment than used in most studies of A&beta;. On one hand, this makes it less likely to produce artifacts by solubilizing something that isn't highly soluble; on the other hand, it would be interesting to know how much total protein is extracted by this method. The two different extraction procedures were performed on mice of different ages.

They also used two different ELISA procedures to measure A&beta;:

> To determine whether the water-extractable or PBS-soluble fractions contained soluble A&beta;42 peptides, we used an ELISA system that uses a C-terminal capture antibody with mAb 4G8 used as the detection antibody. 
> 
> &mdash; p. 3773

And:

> In an attempt to detect oligomeric A&beta; by ELISA, we used an antibody directed against an N-terminal epitope to both capture and detect an A&beta; in the sample, a design similar to that of Xia et al. (2009).
>
> &mdash; p. 3774

As mentioned in [[Shankar 2008]], antibodies to the N terminus of A&beta; can cause precipitation - it would be interesting to discuss whether this affects interpretation.

Q. Besides regulatable transgenic expression of APP, what other mouse models approaches could be used to further examine the effects of A&beta; on cognition?

A. Conditional knockout of beta secretase.

[Benilova 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22286176 "Benilova I, Karran E, De Strooper B. The toxic Aβ oligomer and Alzheimer's disease: an emperor in need of clothes. Nat Neurosci. 2012 Jan 29;15(3):349-57. doi: 10.1038/nn.3028. Review. PubMed PMID: 22286176."

[Shankar 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18568035 "Shankar GM, Li S, Mehta TH, Garcia-Munoz A, Shepardson NE, Smith I, Brett FM,  Farrell MA, Rowan MJ, Lemere CA, Regan CM, Walsh DM, Sabatini BL, Selkoe DJ. Amyloid-beta protein dimers isolated directly from Alzheimer's brains impair synaptic plasticity and memory. Nat Med. 2008 Aug;14(8):837-42. doi: 10.1038/nm1782. Epub 2008 Jun 22. PubMed PMID: 18568035; PubMed Central PMCID: PMC2772133."

[Melnikova 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23447589 "Melnikova T, Fromholt S, Kim H, Lee D, Xu G, Price A, Moore BD, Golde TE, Felsenstein KM, Savonenko A, Borchelt DR. Reversible pathologic and cognitive phenotypes in an inducible model of Alzheimer-amyloidosis. J Neurosci. 2013 Feb 27;33(9):3765-79. doi: 10.1523/JNEUROSCI.4251-12.2013. PubMed PMID: 23447589; PubMed Central PMCID: PMC3711622."

[Walsh 2002]: http://www.ncbi.nlm.nih.gov/pubmed/11932745 "Walsh DM, Klyubin I, Fadeeva JV, Cullen WK, Anwyl R, Wolfe MS, Rowan MJ, Selkoe DJ. Naturally secreted oligomers of amyloid beta protein potently inhibit  hippocampal long-term potentiation in vivo. Nature. 2002 Apr 4;416(6880):535-9. PubMed PMID: 11932745."

[St. George-Hyslop 1987]: http://www.ncbi.nlm.nih.gov/pubmed/2880399 "St George-Hyslop PH, Tanzi RE, Polinsky RJ, Haines JL, Nee L, Watkins PC, Myers RH, Feldman RG, Pollen D, Drachman D, et al. The genetic defect causing familial Alzheimer's disease maps on chromosome 21. Science. 1987 Feb 20;235(4791):885-90. PubMed PMID: 2880399."

[Rogaev 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7651536 "Rogaev EI, Sherrington R, Rogaeva EA, Levesque G, Ikeda M, Liang Y, Chi H, Lin C, Holman K, Tsuda T, et al. Familial Alzheimer's disease in kindreds with missense mutations in a gene on chromosome 1 related to the Alzheimer's disease type 3 gene. Nature. 1995 Aug 31;376(6543):775-8. PubMed PMID: 7651536."

[Ghosh 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22122681 "Ghosh AK, Brindisi M, Tang J. Developing β-secretase inhibitors for treatment  of Alzheimer's disease. J Neurochem. 2012 Jan;120 Suppl 1:71-83. doi: 10.1111/j.1471-4159.2011.07476.x. Epub 2011 Nov 28. Review. PubMed PMID: 22122681; PubMed Central PMCID: PMC3276244."

[Mallucci 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14593181 "Mallucci G, Dickinson A, Linehan J, Klöhn PC, Brandner S, Collinge J. Depleting neuronal PrP in prion infection prevents disease and reverses spongiosis. Science. 2003 Oct 31;302(5646):871-4. PubMed PMID: 14593181."

[Jankowsky 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16279840/ "Jankowsky JL, Slunt HH, Gonzales V, Savonenko AV, Wen JC, Jenkins NA, Copeland NG, Younkin LH, Lester HA, Younkin SG, Borchelt DR. Persistent amyloidosis following suppression of Abeta production in a transgenic model of Alzheimer disease. PLoS Med. 2005 Dec;2(12):e355. Epub 2005 Nov 15. PubMed PMID: 16279840;  PubMed Central PMCID: PMC1283364."

[Walsh 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10978169 "Walsh DM, Tseng BP, Rydel RE, Podlisny MB, Selkoe DJ. The oligomerization of amyloid beta-protein begins intracellularly in cells derived from human brain. Biochemistry. 2000 Sep 5;39(35):10831-9. PubMed PMID: 10978169."

[Glenner & Wong 1984]: http://www.ncbi.nlm.nih.gov/pubmed/6375662 "Glenner GG, Wong CW. Alzheimer's disease: initial report of the purification and characterization of a novel cerebrovascular amyloid protein. Biochem Biophys  Res Commun. 1984 May 16;120(3):885-90. PubMed PMID: 6375662."

[Masters 1985]: http://www.ncbi.nlm.nih.gov/pubmed/3159021/ "Masters CL, Simms G, Weinman NA, Multhaup G, McDonald BL, Beyreuther K. Amyloid plaque core protein in Alzheimer disease and Down syndrome. Proc Natl Acad Sci U S A. 1985 Jun;82(12):4245-9. PubMed PMID: 3159021; PubMed Central PMCID: PMC397973."

[Welzel 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24840308 "Welzel AT, Maggio JE, Shankar GM, Walker DE, Ostaszewski BL, Li S, Klyubin I,  Rowan MJ, Seubert P, Walsh DM, Selkoe DJ. Secreted amyloid β-proteins in a cell culture model include N-terminally extended peptides that impair synaptic plasticity. Biochemistry. 2014 Jun 24;53(24):3908-21. PubMed PMID: 24840308; PubMed Central PMCID: PMC4070750."

[Rovelet-Lecrux 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16369530 "Rovelet-Lecrux A, Hannequin D, Raux G, Le Meur N, Laquerrière A, Vital A, Dumanchin C, Feuillette S, Brice A, Vercelletto M, Dubas F, Frebourg T, Campion D. APP locus duplication causes autosomal dominant early-onset Alzheimer disease  with cerebral amyloid angiopathy. Nat Genet. 2006 Jan;38(1):24-6. Epub 2005 Dec 20. PubMed PMID: 16369530."

[Naslund 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10735393 "Näslund J, Haroutunian V, Mohs R, Davis KL, Davies P, Greengard P, Buxbaum JD. Correlation between elevated levels of amyloid beta-peptide in the brain and cognitive decline. JAMA. 2000 Mar 22-29;283(12):1571-7. PubMed PMID: 10735393."

[Hardy & Allsop 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1763432 "Hardy J, Allsop D. Amyloid deposition as the central event in the aetiology of Alzheimer's disease. Trends Pharmacol Sci. 1991 Oct;12(10):383-8. Review. PubMed  PMID: 1763432."

[Selkoe 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1673054 "Selkoe DJ. The molecular pathology of Alzheimer's disease. Neuron. 1991 Apr;6(4):487-98. Review. PubMed PMID: 1673054."