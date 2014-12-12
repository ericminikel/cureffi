---
layout: post
title:  "Neurodegeneration seminar 4: 'TDP-43 and C9orf72'"
date:   2014-11-24 12:05:00
author: ericminikel
tag: neuro-305qc
location: Boston, MA
---

*These are my notes from week 4 of Harvard's Neurobiology 305qc course “Biochemistry and Biology of Neurodegenerative Diseases”, held by Michael Wolfe and Dominic Walsh on November 24, 2014.*

This week, as background we read two reviews - one on ALS [[Robberecht & Philips 2013]] and one on the role of TDP-43 in FTD/ALS [[Lee 2011]]. And we read two original research papers - one introducing a mouse overexpressing wild-type TDP-43 [[Wils 2010]] and one describing a possible pathogenic mechanism in *C9orf72*-linked FTD/ALS [[Mori 2013]]. We also discussed briefly a third paper [[Ash 2013]] which reports results similar to [[Mori 2013]].

### Background on FTD/ALS

Frontotemporal dementia (FTD) is also known as frontotemporal lobar dementia (FTLD). There is a phenotypic spectrum between FTD and amyotrophic lateral sclerosis (ALS). The majority of cases of FTD and/or ALS are sporadic. A minority are genetic, and here's a quick summary of just a small subset of the genetic causes of this class of disorder.

| gene | type of mutations | molecular pathology | name given to this disease |
| ---- | ---- | ---- | ---- |
| *MAPT* (tau) | missense, splice | tau deposits | FTD, Pick disease, dementia pugilistica, corticobasal degeneration, or progressive supranuclear palsy [see [Wolfe 2009]] |
| *GRN* (progranulin) | nonsense | ubiquitylated TDP-43 deposits | FTD |
| *TARDBP* (TDP-43) | missense | ubiquitylated TDP-43 deposits | FTD/ALS |
| *C9orf72* | repeat expansion | dipeptide repeat deposits, RNA foci, sometimes TDP-43 deposits | FTD/ALS |
| *SOD1* | missense, late frameshift or nonsense | ubiquitylated SOD1 aggregates | ALS |

*MAPT* and *GRN* are both located on chromosome 17. The fact that causal *GRN* mutations are usuall heterozygous nonsense mutations suggests haploinsufficiency. There are several other genes in which Mendelian variants causing FTD/ALS have been reported as well, including X-linked dominant mutations in *UBQLN2* [[Deng 2011]].

Many forms of FTD/ALS are associated with neuronal cytoplasmic inclusions (NCIs) and/or neuronal intranuclear inclusions (NIIs) composed of one or another aggregated protein. 

From the reviews and from our discussion it seems to me that the terms "frontotemporal dementia" and "amyotrophic lateral sclerosis" are each a phenomenological diagnosis, based on some collection of symptoms and perhaps crude pathology. Neither term has a specific molecular definition, and there is no single molecule that is known to be involved in all cases of the disease. This is in contrast to the term "Alzheimer's disease", which, the way most people seem to use it, **does* have a molecular definition (it is defined as having A&beta; plaques and hyperphosphorylated tau deposits), or "Huntington's" or "prion disease", each of which refers to disease associated with a single protein (huntingtin and PrP respectively). Therefore, if one wishes to classify diseases at the molecular level, then FTD/ALS is probably several diseases, and it is not clear to me that insights from one of these diseases can necessarily be extrapolated to the others.

There is one approved drug shown to extend survival in ALS patients, riluzole. It was [approved in 1995](http://www.nytimes.com/1995/09/19/science/committee-endorses-new-drug-for-als.html) based on a hazard ratio that amounts to about a 3-month extension of survival in treated patients [[Bensimon 1994]]. It inhibits glutamate release, reducing excitotoxicity. 

### [Wils 2010]: TDP-43 transgenic mice develop spastic paralysis and neuronal inclusions characteristic of ALS and frontotemporal lobar degeneration

This paper introduces two transgenic mouse lines expressing wild-type human TDP-43 under a Thy-1 promoter, which elicits expression in neurons after ~1 week of age. These mice exhibit dose-dependent pathology which recapitulates many different symptomatic and neuropathological features of FTD/ALS. The authors interpret this as evidence that TDP-43 proteinopathies are caused by a gain of function, though as discussed before, this is still debatable.

#### Questions for discussion

Q. Why did the authors choose to generate transgenic mice expressing wild-type human TDP-43? What promoter did they select and why?

A. They used a Thy-1 promoter, which induces expression in all CNS neurons after 1 week of age. Because its expression is postnatal, the Thy-1 promoter saves you from seeing any developmental effects of overexpression.

Q. Describe the expression levels of the transgene in the mouse lines and the phenotypes these mice displayed. Discuss the correlation between transgene expression and phenotype.

A. Because endogenous murine TDP-43 is expressed in glia and neurons, while Thy-1 TDP-43 is expressed only in neurons, quantifying the degree of overexpression was non-trivial. They estimate that a hemizygous TAR4 transgene array leads to ~1.5x human TDP-43 expression on top of 1x mouse TDP-43 expression, and the homozygous TAR4 is about double that. TAR6 is a different transgenic line with lower expression.

Q. Describe the cellular pathologies in the brain and spinal cord that were observed in the transgenic mice. What is the meaning of the TDP-43 nuclear “clearing”?

A. Ubiquitin-positive aggregates are prominent in cortex layer V and (though the authors do not mention this) are present to a lesser degree in layers I, II and III (Fig 2 Panel A1). Soluble TDP-43 is depleted as most of the TDP-43 aggregates into foci.

Q. Discuss the biochemical characterization of the expressed TDP-43 and its processing. What is the evidence that the 25kDa TDP-43 C-terminal fragment “plays a direct role in TDP-43-led neurodegeneration”?

A. They found TDP-43 C-terminal fragments weighing in at ~35kDa and ~25kDa in the transgenic mice. Fig 4B shows a Western blot on one mouse genotype - TAR4/4 - at three timepoints. The density of the 35kDa band decreases at later timepoints, while the density of the 25kDa band increases.In the text, the authors cite Fig 4B to say that the 25kDa band is correlated with disease severity (p < .001). Given there are only three datapoints presented, it is not clear to me what statistical test was done or how they got such significance. Moreover, this is based on only three timepoints in one genotype, and in interpreting causality one must also contemplate the fact that the Western blot is probably showing what's left in *surviving* neurons rather than the ones that died. Therefore, assigning causality to the 25kDa fragment seems a bit ambitious.

Q. Discuss whether loss or gain of function of TDP-43 (or both) might lead to neurodegenerative disease.

A. This paper provides evidence for a gain of function, since overexpression of wild-type protein is pathogenic. However, the "clearing" phenomenon raises the possibility that overexpression induces aggregation, leading to depletion of soluble protein and a subsequent loss of function. So it is not possible to rule out a role for loss of function.

### [Mori 2013]: The C9orf72 GGGGCC repeat is translated into aggregating dipeptide-repeat proteins in FTLD/ALS

This paper discovers that in FTD/ALS associated with *C9orf72*, the GGGGCC repeat expansion undergoes non-ATG-initiated translation, resulting in dipeptide repeat proteins which aggregate in NCIs and/or NIIs. The formation of these protein aggregates could be part or all of what causes the disease. Another independent group reported very similar results almost synchronously [[Ash 2013]].

An interesting historical perspective is that one early theory posited that prions might be simple dipeptide repeats that self-assemble. When Prusiner and Lee Hood first obtained a partial PrP amino acid sequence [[Prusiner 1984]], they ruled this out:

> Another possible model for prions also has been eliminated by the amino acid sequence data reported here. That model suggested that PrP was comprised of a repeating oligopeptide containing only a few amino acids. This was a particularly attractive model, because it could have explained the ability of the infectious particle to replicate without a nucleic acid template, using protein-directed, protein-synthetic mechanisms similar to that for the synthesis of some polypeptide antibiotics (Kleinkauf and von Dohren, 1981). Because we find at least 17 naturally occurring amino acids (Table l), we are forced to conclude that such a mechanism cannot be responsible for replication of PrP 27-30. 

Although Mori's dipeptide repeats are RNA-encoded rather than self-assembling, this paper is still very surprising and paradigm-changing. Though it does not prove that the dipeptide repeats are causal, it allows for the possibility of a protein-mediated gain of function mechanism for the *C9orf72* expansion, whereas most investigators had assumed it must be RNA-mediated.

#### Questions for discussion

Q. Describe the C9orf72 hexanucleotide repeat expansion. Why were these FTD/ALS mutations particularly difficult to identify and why are they still difficult to fully characterize genetically?

A. As discussed in [this post](/2012/12/27/how-to-identify-a-disease-associated-repeat-expansion/), some families with dominantly inherited FTD/ALS had shown linkage to the *C9orf72* locus for years, but no one had been able to find the causal mutation. Finally, in 2011, back-to-back papers from two different groups found that the causal mutation as a GGGGCC repeat expansion in intron 1 [[DeJesus-Hernandez 2011], [Renton 2011]]. The mutation was exceedingly hard to find because repetitive DNA is hard to sequence, GC-rich DNA is hard to sequence, and the repeat is not present in the human reference genome. Even today, an individual's repeat length can only be roughly estimated by Southern blot. One of those two original papers said that a loss of transcript 1 was seen in patients with the mutation, and that this loss of function might be causal [[DeJesus-Hernandez 2011]].

Q. What were the known characteristics of neuronal inclusions associated with C9orf72 repeat expansions prior to this study? What made the authors suspect that the repeat expansion might be translated into dipeptide repeats?

A. The disease exhibits TDP-43-positive inclusions, as well as other inclusions that are negative for TDP-43. It was already known that in ataxia associated with *ATXN8*, caused by a CAG repeat expansion, there is non-ATG-initiated translation in all reading frames leading to polyQ, polyA and polyS proteins. Therefore these authors hypothesized the same thing might be happening here.

Q. What tools were developed to allow testing for the translation of the repeat expansion in cell culture and diseased brains? What is the relationship between repeat length and dipeptide repeat translation? What dipeptides were observed in the insoluble fractions of diseased brains?

A. They raised antibodies against poly-GA and poly-GP, and purchased an antibody against poly-GR. All of these seem pretty specific - they don't react with each other's antigens (Fig 1A), and they also do not react with non-*C9orf72* FTD/ALS patients' brains or Huntington's disease brains (Fig 1C-D, 3A-B).

Q. How did the specific antibodies help characterize the neuronal inclusions from C9orf72 patients? Comment on the specificity for C9orf72 cases versus other FTD/ALS cases. Why was Huntington’s disease examined as another test for specificity?

A. They demonstrated that the TDP-43-negative aggregates in these patients are dipeptide repeat-positive. Note this doesn't prove that there *isn't* anything else in these aggregates. The antibodies reacted with all *C9orf72* brains and did not react with any non-*C9orf72* cases or Huntington's disease cases. It would have been nice if they had done the histopathology on the same brain region in all patients examined (Fig 3). Note that in Fig 1D, the bands shown are from the very top of the gel - despite boiling in up to 8% SDS, these dipeptide repeat aggregates were exceptionally stable and are still present as very large aggregates that migrate very slowly.

Q. Do these results mean that the translated dipeptide repeats cause FTD/ALS? Discuss other proposed pathogenic mechanisms and whether they are still possible.

A. No; their presence does not imply that they are what causes the disease. The disease could still be caused by (for instance) RNA-mediated gain of function, or a loss-of-function of transcript 1. To try to rule out these scenarios you could create various animal models. For instance, an interesting paper earlier this year found that in *Drosophila*, interrupting the GGGGCC tract with periodic stop codons abolished pathology [[Mizielinska 2014]], which is one line of evidence that the dipeptide repeats, and specifically long dipeptide repeats, are important.


[Robberecht & Philips 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23463272 "Robberecht W, Philips T. The changing scene of amyotrophic lateral sclerosis.  Nat Rev Neurosci. 2013 Apr;14(4):248-64. doi: 10.1038/nrn3430. Epub 2013 Mar 6. Review. PubMed PMID: 23463272."

[Lee 2011]: http://www.ncbi.nlm.nih.gov/pubmed/22127299 "Lee EB, Lee VM, Trojanowski JQ. Gains or losses: molecular mechanisms of TDP43-mediated neurodegeneration. Nat Rev Neurosci. 2011 Nov 30;13(1):38-50. doi: 10.1038/nrn3121. Review. PubMed PMID: 22127299; PubMed Central PMCID: PMC3285250."

[Mori 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23393093 "Mori K, Weng SM, Arzberger T, May S, Rentzsch K, Kremmer E, Schmid B, Kretzschmar HA, Cruts M, Van Broeckhoven C, Haass C, Edbauer D. The C9orf72 GGGGCC repeat is translated into aggregating dipeptide-repeat proteins in FTLD/ALS. Science. 2013 Mar 15;339(6125):1335-8. doi: 10.1126/science.1232927. Epub 2013 Feb 7. PubMed PMID: 23393093."

[Wils 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20133711 "Wils H, Kleinberger G, Janssens J, Pereson S, Joris G, Cuijt I, Smits V, Ceuterick-de Groote C, Van Broeckhoven C, Kumar-Singh S. TDP-43 transgenic mice develop spastic paralysis and neuronal inclusions characteristic of ALS and frontotemporal lobar degeneration. Proc Natl Acad Sci U S A. 2010 Feb 23;107(8):3858-63. doi: 10.1073/pnas.0912417107. Epub 2010 Feb 3. PubMed PMID: 20133711; PubMed Central PMCID: PMC2840518."

[Ash 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23415312 "Ash PE, Bieniek KF, Gendron TF, Caulfield T, Lin WL, Dejesus-Hernandez M, van  Blitterswijk MM, Jansen-West K, Paul JW 3rd, Rademakers R, Boylan KB, Dickson DW, Petrucelli L. Unconventional translation of C9ORF72 GGGGCC expansion generates insoluble polypeptides specific to c9FTD/ALS. Neuron. 2013 Feb 20;77(4):639-46. doi: 10.1016/j.neuron.2013.02.004. Epub 2013 Feb 12. PubMed PMID: 23415312; PubMed Central PMCID: PMC3593233."

[Wolfe 2009]: http://www.ncbi.nlm.nih.gov/pubmed/18948254 "Wolfe MS. Tau mutations in neurodegenerative diseases. J Biol Chem. 2009 Mar 6;284(10):6021-5. doi: 10.1074/jbc.R800013200. Epub 2008 Oct 22. Review. PubMed PMID: 18948254."

[Petkau 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24800652 "Petkau TL, Leavitt BR. Progranulin in neurodegenerative disease. Trends Neurosci. 2014 Jul;37(7):388-98. doi: 10.1016/j.tins.2014.04.003. Epub 2014 May 4. Review. PubMed PMID: 24800652."

[Bensimon 1994]: http://www.ncbi.nlm.nih.gov/pubmed/8302340 "Bensimon G, Lacomblez L, Meininger V. A controlled trial of riluzole in amyotrophic lateral sclerosis. ALS/Riluzole Study Group. N Engl J Med. 1994 Mar 3;330(9):585-91. PubMed PMID: 8302340."

[DeJesus-Hernandez 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21944778/ "DeJesus-Hernandez M, Mackenzie IR, Boeve BF, Boxer AL, Baker M, Rutherford NJ, Nicholson AM, Finch NA, Flynn H, Adamson J, Kouri N, Wojtas A, Sengdy P, Hsiung GY, Karydas A, Seeley WW, Josephs KA, Coppola G, Geschwind DH, Wszolek ZK, Feldman H, Knopman DS, Petersen RC, Miller BL, Dickson DW, Boylan KB, Graff-Radford NR, Rademakers R. Expanded GGGGCC hexanucleotide repeat in noncoding region of C9ORF72 causes chromosome 9p-linked FTD and ALS. Neuron. 2011 Oct 20;72(2):245-56. doi: 10.1016/j.neuron.2011.09.011. Epub 2011 Sep 21. PubMed  PMID: 21944778; PubMed Central PMCID: PMC3202986."

[Renton 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21944779/ "Renton AE, Majounie E, Waite A, Simón-Sánchez J, Rollinson S, Gibbs JR, Schymick JC, Laaksovirta H, van Swieten JC, Myllykangas L, Kalimo H, Paetau A, Abramzon Y, Remes AM, Kaganovich A, Scholz SW, Duckworth J, Ding J, Harmer DW, Hernandez DG, Johnson JO, Mok K, Ryten M, Trabzuni D, Guerreiro RJ, Orrell RW, Neal J, Murray A, Pearson J, Jansen IE, Sondervan D, Seelaar H, Blake D, Young K, Halliwell N, Callister JB, Toulson G, Richardson A, Gerhard A, Snowden J, Mann D, Neary D, Nalls MA, Peuralinna T, Jansson L, Isoviita VM, Kaivorinne AL, Hölttä-Vuori M, Ikonen E, Sulkava R, Benatar M, Wuu J, Chiò A, Restagno G, Borghero G, Sabatelli M; ITALSGEN Consortium, Heckerman D, Rogaeva E, Zinman L, Rothstein JD, Sendtner M, Drepper C, Eichler EE, Alkan C, Abdullaev Z, Pack SD, Dutra A, Pak E, Hardy J, Singleton A, Williams NM, Heutink P, Pickering-Brown S,  Morris HR, Tienari PJ, Traynor BJ. A hexanucleotide repeat expansion in C9ORF72 is the cause of chromosome 9p21-linked ALS-FTD. Neuron. 2011 Oct 20;72(2):257-68. doi: 10.1016/j.neuron.2011.09.010. Epub 2011 Sep 21. PubMed PMID: 21944779; PubMed Central PMCID: PMC3200438."

[Mizielinska 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25103406 "Mizielinska S, Grönke S, Niccoli T, Ridler CE, Clayton EL, Devoy A, Moens T, Norona FE, Woollacott IO, Pietrzyk J, Cleverley K, Nicoll AJ, Pickering-Brown S,  Dols J, Cabecinha M, Hendrich O, Fratta P, Fisher EM, Partridge L, Isaacs AM. C9orf72 repeat expansions cause neurodegeneration in Drosophila through arginine-rich proteins. Science. 2014 Sep 5;345(6201):1192-4. doi: 10.1126/science.1256800. Epub 2014 Aug 7. PubMed PMID: 25103406."

[Prusiner 1984]: http://www.ncbi.nlm.nih.gov/pubmed/6432339 "Prusiner SB, Groth DF, Bolton DC, Kent SB, Hood LE. Purification and structural studies of a major scrapie prion protein. Cell. 1984 Aug;38(1):127-34. PubMed PMID: 6432339."

[Deng 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21857683 "Deng HX, Chen W, Hong ST, Boycott KM, Gorrie GH, Siddique N, Yang Y, Fecto F,  Shi Y, Zhai H, Jiang H, Hirano M, Rampersaud E, Jansen GH, Donkervoort S, Bigio EH, Brooks BR, Ajroud K, Sufit RL, Haines JL, Mugnaini E, Pericak-Vance MA, Siddique T. Mutations in UBQLN2 cause dominant X-linked juvenile and adult-onset  ALS and ALS/dementia. Nature. 2011 Aug 21;477(7363):211-5. doi: 10.1038/nature10353. PubMed PMID: 21857683; PubMed Central PMCID: PMC3169705."




