---
layout: post
title:  "Neurodegeneration seminar 6: 'polyQ proteins'"
date:   2014-12-08 12:05:00
author: ericminikel
tag: neuro-305qc
location: Boston, MA
summary200: "This week's class on polyglutamine disorders discusses the role of acetylation in clearance of mutant huntingtin, and a genetic modifier in a fly model of spinocerebellar ataxia 3."
---

*These are my notes from week 6 of Harvard's Neurobiology 305qc course “Biochemistry and Biology of Neurodegenerative Diseases”, held by Michael Wolfe and Dominic Walsh on December 8, 2014.*

This week we discussed polyglutamine diseases, focusing mostly on Huntington's disease (HD) and also touching on a model of spinocerebellar ataxia type 3. We read a review of Huntington's disease by Elena Cattaneo and others [[Zuccato 2010]], and two original research papers: one arguing that RNA toxicity is a component of the pathology in a fly model of SCA3 [[Li 2008]], and one arguing that acetylation of mutant huntingtin is important for its degradation in lysosomes [[Jeong & Then 2009]].

### Background and review

With regards to [this class](/tag/neuro-305qc), HD is unique in that 100% of cases are genetic. 

I originally read the Cattaneo review [[Zuccato 2010]] two years ago, after I started working in a Huntington's disease lab. I compiled an [HD reading list](/2012/12/10/huntingtons-disease-reading-list/) based on suggestions from colleagues, in an effort to familiarize myself with the field.The main thing I learned from doing all that reading was that there are approximately as many theories as to why mutant huntingtin is toxic as there are labs that study Huntington's disease. 

Indeed, some people still debate whether HD is caused by a gain or loss of function. Huntingtin knockout is lethal [[Duyao 1995]], but can be rescued by a single mutant (expanded CAG) allele [[White 1997]], suggesting that the mutant allele retains native function and that the disease must therefore be caused by gain of function. However, conditional knockout of huntingtin results in neurodegeneration [[Dragatsis 2000]]. Some people still argue that the mutant alleles might retain native function initially, but lose that function (and, by a dominant negative mechanism, obstruct the native function of the wild-type allele) when they misfold later in life. To my mind, the best evidence that HD is caused by a gain of function is that reducing Htt expression with antisense oligonucleotides alleviates symptoms in multiple animal models [[Kordasiewicz 2012]]. 

### [Li 2008]: RNA toxicity is a component of ataxin-3 degeneration in Drosophila

#### Questions for discussion

Q. Discuss known examples of RNA-mediated toxicity in other repeat diseases, including interaction with and involvement of the protein muscleblind.

A. According to [[Orr & Zoghbi 2007]], trinucleotide repeat expansions can be toxic by a variety of mechanisms. The clearest example of RNA-mediated gain-of-function is type 1 myotonic dystrophy (DM1). The poly-CUG RNA in this disease sequesters the muscleblind protein (encoded by the *MBNL1* gene), causing a loss of the latter's function [[Miller 2000]]. A muscleblind knockout mouse recapitulates the phenotype of DM1 [[Kanadia 2003]]. A possible additional example is Fragile X ataxia. For clarity, Fragile X syndrome (>200 repeats) is caused by a loss-of-function of *FMR1*. But the late-onset ataxia found in adult men with "premutation" repeat numbers (~70 repeats) - usually fathers or grandfathers of Fragile X children - has been proposed to be caused by an RNA gain of function. Note that the noncoding repeats that cause DM1 number in the hundreds or even thousands. In contrast, the threshold required for protein-coding trinucleotide repeats to cause disease is usually fewer than 100 repeats [[Orr & Zoghbi 2007], [La Spada & Taylor 2010]].

Q. What is an EP-element, and how was this used to screen for modulators of ataxin-3 neurotoxicity? Describe the GAL4-UAS Drosophila expression system. Discuss the advantages and disadvantages of using Drosophila eye degeneration phenotype for genetic screening. Seven mutations were found to be modulators: why was one selected for detailed mechanistic analysis?

A. EP elements are sort of like transposons containing enhancers and promoters - they integrate randomly into the *Drosophila* genome and cause overexpression of one or more downstream genes. They are a way of doing gain-of-function mutagenesis screens in *Drosophila*. The eye degeneration phenotype is useful because it is a "borderline" or "sensitized" phenotype, which makes it possible to discover enhancers - see [Genetics lecture 18](/2014/10/31/genetics-18/). In this case, they found seven hits, of which one (only one? they never say), an insertion upregulating *mbl*, was only an enhancer of the ataxin-3 toxicity, meaning it had no phenotype on its own. This was interesting because muscleblind was already implicated in myotonic dystrophy (see above). 

Q. How was mbl validated as an enhancer of ataxin-3 toxicity? How does this effect differ for the role of this gene in CUG repeat RNA toxicity?

A. In the presence of mutant ataxin-3, mbl overexpression further shortens the fly lifespan, while heterozygous knockout of mbl extends the lifespan (Fig 1I). This is exactly the opposite of the effect we believe occurs in myotonic dystrophy with the CUG repeat RNA. In DM1 we think that a *loss* of muscleblind function is toxic, yet in this fly model, reducing muscleblind expression is helpful, while overexpressing it is harmful.

Q. Describe the experiments and results that support a role for the mRNA in neurotoxicity. Does this exclude a role for the expanded polyglutamine protein in SCA3? Have the authors demonstrated a role for the mRNA in SCA3?

A. They compare flies with a pure CAG repeat expansion to flies with a CAA/CAG repeat, which still encodes polyQ but has a different RNA sequence and might be expected to have a different RNA secondary structure. The CAA/CAG flies express a similar (actually slightly higher) level of polyQ protein than the pure CAG flies, despite lower RNA levels (Fig S7). A caveat here is that CAA/CAG would also be expected to undergo less somatic and germline expansion at the DNA level than pure CAG, however, they did Northern blots on a subset of flies to confirm the repeat length (Fig S11). They also expressed the repeat tract in a 3'UTR instead of a coding sequence, and obtained similar results.

### [Jeong & Then 2009]: Acetylation targets mutant huntingtin to autophagosomes for degradation

#### Questions for discussion

Q. Describe the experiments that show that mutant huntingtin is acetylated at Lys444. How convincing are these results?

A. Using mass spectrometry, the authors detected a fragment with this residue acetylated (Fig 1A). However, they only saw this when they transfected a truncated, CAG-expanded Htt construct, and treated the cells with histone deacetylase inhibitors. The fact that they never saw this residue acetylated in wild-type, untreated cells or tissues makes me skeptical. They subsequently raised polyclonal antisera by injecting a synthetic peptide containing acetylated K444 into rabbits. The antisera reacted with an acK444-containing synthetic peptide but not a non-acetylated K444-containing peptide (Fig S1B), which they offer as evidence for specificity. The antisera also react with lysate from cells expressing an Htt fragment but not with cells expressing a K444R Htt fragment (Fig 1B) - but this still does not prove specificity for acetylation, as the K&rarr;R missense mutation might well disrupt the epitope even if the K was never acetylated. A nice additional experiment to confirm specificity would be if the lysates had been treated with deacetylases *in vitro*. But finally, in Fig 1D they show that overexpressing CBP histone acetyltransferase (HAT) increases the intensity of the acK444 antibody band, while mutating that HAT abolishes the band. That is perhaps the most convincing evidence for specificity. An additional note is that the acK444 antibody reacts with Hdh knock-in mouse brains but not wild-type brains, and in a band migrating consistent with mutant Htt length. Therefore, the acetylation appears to be much more prominent for mutant huntingtin than wild-type. 

Q. What is the evidence that acetylation of Lys444 is neuroprotective? Discuss how appropriate the KR mutant is as a control.

A. The evidence is largely indirect, relying on observations that the K444R mutant appears to be "worse" than wild-type Htt fragment on a variety of measures. Rat cortical neurons expressing either fragment in a lentiviral construct accumulate more K444R than wild-type huntingtin (Fig 2A), but this is confounded by these being different transformations with different constructs, as well as by the underlying missense mutation. Injecting these lentiviral constructs into the mouse brain also results in supposedly more neuronal accumulation of huntingtin for K444R than the wild-type fragment, but this is not quantified (Fig 2B). Mean neuronal volume is apparently lower in five mice injected with K444R lentivirus compared to wild-type (Fig 2C). Caspase activation is higher in K444R lentivirus-transformed cortical cultures compared to wild-type fragment-transformed cultures (Fig 3A). Co-expressing an acetyltransferase seems to rescue cell death in these cultured rat neurons, but not for the K444R construct (Fig 3B) - this is a slightly more direct piece of evidence for acetylation being neuroprotective. The same is true in a *C. elegans* model (Fig 3C-D). Next they treat N2a cells with cycloheximide to arrest translation elongation, and measure the rate of degradation of Htt. Expanded CAG Htt fragments have a longer half-life than non-expanded fragments (Fig 4A). Adding a histone acetyltransferase increases the degradation rate of expanded CAG Htt (Fig 4B), and in the presence of this HAT, the expanded CAG Htt without CAG is degraded more quickly than K444R. They never look at the half-life of K444R without HAT. They also never go back and sequence or size the constructs to confirm that the K444R and non-K444R constructs are really both still 97Q (to rule out that one has expanded further while being maintained in culture).

Oftentimes, to abolish a post-translational modification requires also introducing a missense mutation - for instance, studies of [prion protein glycosylation](/2013/05/05/prion-protein-n-linked-glycosylation-review-and-assessment-of-therapeutic-potential/) have often mutated the asparagines to abolish the glycan chains. While this is a troublesome confounder, the K444R mutant is probably the best these authors could do. 

Q. What is the evidence that acetylation promotes clearance? Specifically by autophagy?

A. They use LC3 as a marker of autophagy - [as many people do](/2013/07/11/prion-protein-degradation-in-lysosomes-and-the-effect-of-autophagy-activating-drugs/). Cells form more LC3 puncta when transfected with HAT and Htt68Q than when transfected with HAT and Htt68Q-K448R (Fig 5D). These experiments were not repeated without transfecting CBP-HAT.

Q. What are the potential implications of these findings for developing new therapeutic approaches to prevent or treat HD?

A. It might suggest that HDAC inhibitors could increase clearance of mutant huntingtin.

[Zuccato 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20664076 "Zuccato C, Valenza M, Cattaneo E. Molecular mechanisms and potential therapeutical targets in Huntington's disease. Physiol Rev. 2010 Jul;90(3):905-81. doi: 10.1152/physrev.00041.2009. Review. PubMed PMID: 20664076."

[Li 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18449188 "Li LB, Yu Z, Teng X, Bonini NM. RNA toxicity is a component of ataxin-3 degeneration in Drosophila. Nature. 2008 Jun 19;453(7198):1107-11. doi: 10.1038/nature06909. Epub 2008 Apr 30. PubMed PMID: 18449188; PubMed Central PMCID: PMC2574630."

[Jeong & Then 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19345187 "Jeong H, Then F, Melia TJ Jr, Mazzulli JR, Cui L, Savas JN, Voisine C, Paganetti P, Tanese N, Hart AC, Yamamoto A, Krainc D. Acetylation targets mutant huntingtin to autophagosomes for degradation. Cell. 2009 Apr 3;137(1):60-72. doi: 10.1016/j.cell.2009.03.018. PubMed PMID: 19345187; PubMed Central PMCID: PMC2940108."

[Orr & Zoghbi 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17417937 "Orr HT, Zoghbi HY. Trinucleotide repeat disorders. Annu Rev Neurosci. 2007;30:575-621. Review. PubMed PMID: 17417937."

[La Spada & Taylor 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20177426 "La Spada AR, Taylor JP. Repeat expansion disease: progress and puzzles in disease pathogenesis. Nat Rev Genet. 2010 Apr;11(4):247-58. doi: 10.1038/nrg2748. Review. PubMed PMID: 20177426."

[Duyao 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7618107 "Duyao MP, Auerbach AB, Ryan A, Persichetti F, Barnes GT, McNeil SM, Ge P, Vonsattel JP, Gusella JF, Joyner AL, et al. Inactivation of the mouse Huntington's disease gene homolog Hdh. Science. 1995 Jul 21;269(5222):407-10. PubMed PMID: 7618107."

[White 1997]: http://www.ncbi.nlm.nih.gov/pubmed/9398841 "White JK, Auerbach W, Duyao MP, Vonsattel JP, Gusella JF, Joyner AL, MacDonald ME. Huntingtin is required for neurogenesis and is not impaired by the Huntington's disease CAG expansion. Nat Genet. 1997 Dec;17(4):404-10. PubMed PMID: 9398841."

[Dragatsis 2000]: http://www.ncbi.nlm.nih.gov/pubmed/11062468 "Dragatsis I, Levine MS, Zeitlin S. Inactivation of Hdh in the brain and testis results in progressive neurodegeneration and sterility in mice. Nat Genet. 2000 Nov;26(3):300-6. PubMed PMID: 11062468."

[Kordasiewicz 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22726834 "Kordasiewicz HB, Stanek LM, Wancewicz EV, Mazur C, McAlonis MM, Pytel KA, Artates JW, Weiss A, Cheng SH, Shihabuddin LS, Hung G, Bennett CF, Cleveland DW.  Sustained therapeutic reversal of Huntington's disease by transient repression of huntingtin synthesis. Neuron. 2012 Jun 21;74(6):1031-44. doi: 10.1016/j.neuron.2012.05.009. PubMed PMID: 22726834; PubMed Central PMCID: PMC3383626."

[Pinto 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24204323 "Pinto RM, Dragileva E, Kirby A, Lloret A, Lopez E, St Claire J, Panigrahi GB,  Hou C, Holloway K, Gillis T, Guide JR, Cohen PE, Li GM, Pearson CE, Daly MJ, Wheeler VC. Mismatch repair genes Mlh1 and Mlh3 modify CAG instability in Huntington's disease mice: genome-wide and candidate approaches. PLoS Genet. 2013 Oct;9(10):e1003930. doi: 10.1371/journal.pgen.1003930. Epub 2013 Oct 31. PubMed PMID: 24204323; PubMed Central PMCID: PMC3814320."

[Miller 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10970838 "Miller JW, Urbinati CR, Teng-Umnuay P, Stenberg MG, Byrne BJ, Thornton CA, Swanson MS. Recruitment of human muscleblind proteins to (CUG)(n) expansions associated with myotonic dystrophy. EMBO J. 2000 Sep 1;19(17):4439-48. PubMed PMID: 10970838; PubMed Central PMCID: PMC302046."

[Kanadia 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14671308 "Kanadia RN, Johnstone KA, Mankodi A, Lungu C, Thornton CA, Esson D, Timmers AM, Hauswirth WW, Swanson MS. A muscleblind knockout model for myotonic dystrophy. Science. 2003 Dec 12;302(5652):1978-80. PubMed PMID: 14671308."

