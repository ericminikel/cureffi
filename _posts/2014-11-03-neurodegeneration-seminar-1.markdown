---
layout: post
title:  "Neurodegeneration seminar 1: 'Prions'"
date:   2014-11-03 12:00:00
author: ericminikel
tag: neuro-305qc
location: Boston, MA
---

*These are my notes from week 1 of Harvard's Neurobiology 305qc course “Biochemistry and Biology of Neurodegenerative Diseases”, held by Michael Wolfe and Dominic Walsh on November 3, 2014.*

### Introduction

Today's class is on PrP. Looking forward, the other six class meetings will cover, respectively, A&beta;, Tau, FTD/ALS, Parkinson's, polyQ, and a summary session. This is the first year in which this class will begin, rather than end, with prion disease. That's in part because it now appears we understand prion diseases better than any of these others, and are closer to therapeutics.

This week's assigned readings were [[Colby & Prusiner 2011]] as a backgrounder on prions, and two MRC Prion Unit papers on the kinetics of prion infection [[Sandberg 2011], [Sandberg 2014]].

#### Dominic Walsh's introduction to prions

Prion diseases are characterized by four neuropathological changes: neuronal loss, spongiform change, astrocytosis, and PrP deposits. (Some of these features are non-obligatory and/or vary by strain).

### A review - [Colby & Prusiner 2011]

Even though this entire blog is about prions, I had never read this particular review, and I learned a few new things from it.

First, it had never occurred to me that when Carleton Gajdusek's group first established the transmissibility of familial CJD - long before Prusiner had advanced the prion hypothesis - people assumed that the cause must be a virus transmitted in the germline, rather than a Mendelian disease mutation. Colby and Prusiner cite [[Roos 1973]], who states:

> The transmissibility of the disease from R. C. ... indicates that even the familial type of C-J disease may be caused by a virus. It may well be transmitted vertically from the parents to their children. If genetic factors do play a role, they may do so by influencing susceptibility to infection or by permitting an otherwise innocuous latent agent to produce a slowly pathogenic brain infection.

They state that this hypothesis was not falsified until Prusiner's group showed that GSS was linked to the P102L mutation [[Hsiao 1989]], which strikes me as strange: even without finding the causal mutation it should have been possible to see that the disease exhibited 50/50 transmission to children of affected parents, consistent with a dominant Mendelian variant and inconsistent with viral transmission.

The authors draw a distinction between "seeded polymerization" and "template-assisted replication":

> Although some investigators argue that mammalian prions multiply by a seeded polymerization process during which PrPC is transformed into PrPSc, there is little evidence for such a process. More likely it is a template-assisted replication mechanism whereby the conformation of PrPSc is copied with a high degree of fidelity. 

I don't really understand what the distinction is here. Is "template-assisted replication" meant to imply that this is an active process managed by some chaperone such as "Protein X"? In class, Dominic Walsh also pointed out the distinction between the heterodimer model and a cooperative model, where [[Eigen 1996]] was the first to argue that the kinetics only work out mathematically in a cooperative model.

Finally, there were an assortment of facts I had heard at some point or another but never knew the citation for:

+ Even deer in the asymptomatic stage of CWD excrete considerable amounts of prion infectivity in their feces [[Tamguney 2009]]
+ Reported differences in long-term potentiation in PrP knockout mice reported by [[Collinge 1994]] were refuted by Prusiner and others in [[Lledo 1996]]
+ The concept of "PrP\*" as an intermediate state preceding PrP<sup>Sc</sup> conversion was first introduced in [[Cohen 1994]]
+ Lack of any post-translational modifications distinguishing PrP<sup>Sc</sup> from PrP<sup>C</sup> [[Stahl 1993]]

Finally, I was reminded of the debate over whether a prion strain's conformational stability is inversely correlated with its incubation time. In [Figure 6](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3003464/figure/A006833F6/) they show data from [[Legname 2006]], but I remembered Joel Watts saying at Prion2013 that he wasn't sure his data supported this. His paper which was subsequently published [[Watts 2014]] says that "we did not observe a definitive relationship" between conformational stability and incubation time in Tg(BvPrP-M109) mice. When I emailed Joel, he said that the trend was, however, in the same direction as Legname's trend, with R<sup>2</sup> = .31, p = .2 (unpublished data reported here with his permission). In contrast, one study from another group found an opposite correlation.

### Background for [Sandberg 2011] and [Sandberg 2014]

#### Plateauing infectivity

Long before PrP was isolated, several studies had used classical virology techniques to examine the kinetics of infection with the "scrapie agent." The earliest work in this area appears to be [[Dickinson 1969]]. Dickinson tested the infectivity of brains from mice infected with ME7 prions at various points in the incubation period by injecting them into other mice and measuring incubation time. Dickinson foreshadowed Prusiner's later development of the incubation time bioassay [[Prusiner 1982b]]; although Dickinson did not go so far as to create standard curves and formally measure titer, his work showed that brains collected later in disease course caused more rapid disease in recipient mice, as you'd expect if infectivity were rising. (As an aside, that was also the paper that first identified two mouse alleles of the "scrapie incubation time" or *sinc* gene, which later turned out to be the PrP<sup>A</sup> and PrP<sup>B</sup> [[Carlson 1986], [Westaway 1987]]).

After that initial work, several other investigators set out to characterize the time course of infectivity accumulation in prion-infected rodents. Because all of these studies were done by bioassays, they were expensive and time-consuming, and the number of data points collected were accordingly sparse. I couldn't find the full text for two early studies, [[Dickinson 1975]and [Kimberlin & Walker 1979]], but below I've plotted the data from Sc237 in hamsters [[Baringer 1983]], 263K in hamsters [[Kimberlin & Walker 1986]], and RML in mice [Bueler 1993]]:

![](/media/2014/11/infectivity-vs-time.png)

To compare the studies to one another, I normalized according to the number of days post-infection that clinical onset occurred; see [my code](https://github.com/ericminikel/prp-misc/blob/master/infectivity-vs-time.r) for details. The Baringer data - from Prusiner's group - is the average of several different brain regions which were measured. There certainly doesn't seem to be *much* of an increase in the late stages, but nominally, it's not perfectly flat. Kimberlin and Walker's data support a continuous increase in titer, even past onset. Bueler's data provide the best support for the idea that infectivity plateaus after onset. 

As a comparison, I have also plotted, as a dotted gray line, a summary of this phenomenon given in the text of [[Prusiner 1982a]]:

> After intracerebral inoculation of hamsters with 10<sup>7</sup> ID<sub>50</sub> (median infectious dose) units, about 10<sup>2</sup> ID<sub>50</sub> units can be recovered in the brain 24 hours later. During the next 50 days the amount of agent in the brain increases to 10<sup>9</sup> ID<sub>50</sub> units. At this time the agent is widely distributed throughout the brain and no regional differences are apparent. The  neuropathology is minimal and the animals exhibit no neurological dysfunction... By 60 to 70 days, vacuolation of neurons and astrogliosis are found throughout the brain, even though the titer of the agent remained constant.
>
> &mdash; [[Prusiner 1982a]]

Prusiner's citation for this was a conference abstract, [[Baringer 1981](http://journals.lww.com/jneuropath/Citation/1981/05000/90_REGIONAL_NEUROPATHOLOGY_AND_TITERS_IN_HAMSTER.97.aspx)], which appears to present the data later published in [[Baringer 1983]]. He also cites several older works, though it is not clear if any one of them contains an exhaustive treatment of the subject. In any event, although Prusiner was certainly correct - the true picture turns out to look very much like that hypothetical gray dotted line - some investigators felt that no one study had really thoroughly canvassed the issue with a large number of timepoints and conclusively shown the existence of a "plateau". This was therefore one achievement of the Sandberg papers from this week (see below).

The fact that infectivity hits a plateau before the terminal stage is apparently peculiar. It certainly seems non-intuitive; I don't know enough of the literature to know if this is a unique feature of prions as opposed to viruses, but a quick Google search turned up a study showing that viral titer increases continuously throughout disease in HIV patients [[Piatak 1993]], which is more what I'd have expected for any infectious agent.

#### Dependence on PrP<sup>C</sup> levels

Another peculiarity of prion infection is that higher levels of PrP<sup>C</sup> expression not only lead to shorter incubation times, but also result in the symptomatic stage of disease being smaller as a proportion of the overall disease course. I've posted [some R code](https://github.com/ericminikel/prp-misc/blob/master/expression-level-incubation-time.r) which plots the data from [[Fischer 1996]] showing how time to symptoms, and time to death, vary as a function of PrP<sup>C</sup> expression level:

![](/media/2014/11/prpc-expression-vs-disease-course.png)

If you plot the length of the symptomatic phase as a proportion of the overall disease course, you get this:

![](/media/2014/11/prpc-expression-vs-percent-symptomatic.png)

#### The PrP<sup>L</sup> hypothesis

Together, these pecularities led John Collinge to propose the theory of ["PrP<sup>L</sup>"](/2013/08/10/do-we-need-prpl-to-explain-the-neurotoxicity-of-prions/): a special subspecies of PrP which is uniquely <u>l</u>ethal:

> A possible explanation is that PrPSc is itself relatively inert, but toxicity resides in a smaller, labile, oligomeric PrP species (named PrPL for lethal), generated as an intermediate or side product during prion propagation
>
> &mdash; [[Collinge & Clarke 2007]]

This theory was meant to explain why a plateau of infectivity would be temporally coincident with symptoms: because a new species, PrP<sup>L</sup>, began to be produced. In addition, Collinge supposed that the rate of PrP<sup>L</sup> production was dependent on the PrP<sup>C</sup> concentration, thus explaining the shorter symptomatic phase in PrP overexpressers [[Fischer 1996]], as well as the cell-autonomous nature of prion toxicity [[Brandner 1996]].

Adriano Aguzzi and John Collinge don't agree on much, and PrP<sup>L</sup> is no exception. Aguzzi has proposed that all of these phenomena can instead be explained by supposing that PrP<sup>C</sup> is a receptor that mediates PrP<sup>Sc</sup> toxicity [[Aguzzi & Falsig 2012]].

#### Tools and techniques

The Sandberg papers discussed here use the scrapie cell panel assay [[Klohn 2003]] in which prion-susceptible cells are exposed to brain homogenate, then cultured for a few days, then digested with proteinase K and immunoblotted in place. Cells that became infected will form a PK-resistant speck on the blot, while uninfected cells won't. Thus, you can measure the titer of infectivity in the original sample according to what proportion of cells leave a speck.

They also use standard PK digestion to assess the levels of PK-resistant PrP<sup>Sc</sup>.

Finally, the [[Sandberg 2014]] paper makes the assumption that PrP<sup>C</sup> levels do not rise during prion infection. This dates back to Hans Kretzschmar's early work showing that PrP mRNA levels are unaltered during prion infection [[Kretzschmar 1986]]. Charlie Mays has more recently shown that PrP<sup>C</sup> is actually downregulated during infection [[Mays 2014]]. Sandberg and Collinge argue this is not a problem, since it means at worst that they will <em>under</em>estimate the concentration of new PrP species during the late stages of infection.

### Discussion of [Sandberg 2011] and [Sandberg 2014]

These papers really go together - [[Sandberg 2011]] was an effort to exhasutively blanket the time course of prion disease with measures of infectivity, but its data points ended up being fairly sparse in the exponential phase (see Fig 1B). Therefore [[Sandberg 2014]] came back and did all the extra experiments that many of the authors' peers had wanted them to do in the first place. Collectively, the two papers collect data indicating that:

1. Infectivity in the brain rises exponentially after infection.
2. The exponential rise happens more quickly in mice with higher PrP<sup>C</sup> expression levels.
3. Infectivity plateaus around 10<sup>8</sup> ID<sub>50</sub> units regardless of PrP<sup>C</sup> expression level.
4. Onset of clinical symptoms occurs after the plateau in infectivity.
5. The symptomatic phase of disease is shorter at higher PrP<sup>C</sup> expression levels.

None of these issues was completely unexplored prior to 2011, but this is certainly the most thorough treatment of them. 

However, I am not entirely convinced by the further interpretation of these data. 

First, a key take-home message is that prion disease has two separate phases:

1. A phase where infectivity increases but there is no neurotoxicity
2. A phase where neurotoxicity occurs but infectivity stops increasing

Yet [[Sandberg 2014]] Figure 5 clearly shows *some* (albeit limited) neuropathological changes before the time of frank clinical onset. Are these really two entirely separate phases, or two just overlapping phases?

Second, the authors make a big deal out of the notion that infectivity increase is "not rate-limited by prion protein concentration". To me, this is semantics. It's true that infectivity is not limited by a simple lack of any more PrP<sup>C</sup> to convert. There is always extra PrP<sup>C</sup> around, even at low expression levels. Nonetheless, the rate of exponential increase in infectivity is certainly *correlated* with PrP<sup>C</sup> expression level, a fact which the authors don't discuss much.

Third, the second paper makes the following argument. Because PK-resistant PrP<sup>Sc</sup> is only ever found at low absolute levels, yet total PrP increases throughout disease course, and we know PrP<sup>C</sup> levels don't increase during disease, therefore by subtraction, PK-sensitive PrP<sup>Sc</sup> (though they avoid this term) must be on the rise in the late stages of disease. By temporal association, then, these PK-sensitive conformers are implicated to be PrP<sup>L</sup>. This doesn't acknowledge the fact that PK-resistant PrP<sup>Sc</sup>, too, continues to rise into the late disease course, even if it is still but a small fraction of total PrP.

Overall, the notion that PK-sensitive isoforms of PrP<sup>Sc</sup> are associated with toxicity to neurons is perfectly plausible, but these papers do not definitively prove such a link, nor provide any inroads to clarifying the molecular basis of such toxicity.


[Colby & Prusiner 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21421910 "Colby DW, Prusiner SB. Prions. Cold Spring Harb Perspect Biol. 2011 Jan 1;3(1):a006833. doi: 10.1101/cshperspect.a006833. Review. PubMed PMID: 21421910;  PubMed Central PMCID: PMC3003464."

[Sandberg 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21350487 "Sandberg MK, Al-Doujaily H, Sharps B, Clarke AR, Collinge J. Prion propagation and toxicity in vivo occur in two distinct mechanistic phases. Nature. 2011 Feb 24;470(7335):540-2. doi: 10.1038/nature09768. PubMed PMID: 21350487."

[Sandberg 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25005024 "Sandberg MK, Al-Doujaily H, Sharps B, De Oliveira MW, Schmidt C, Richard-Londt A, Lyall S, Linehan JM, Brandner S, Wadsworth JD, Clarke AR, Collinge J. Prion neuropathology follows the accumulation of alternate prion protein isoforms after infective titre has peaked. Nat Commun. 2014 Jul 9;5:4347. doi: 10.1038/ncomms5347. PubMed PMID: 25005024; PubMed Central PMCID: PMC4104459."

[Roos 1973]: http://www.ncbi.nlm.nih.gov/pubmed/4633062/ "Roos R, Gajdusek DC, Gibbs CJ Jr. The clinical characteristics of transmissible Creutzfeldt-Jakob disease. Brain. 1973;96(1):1-20. PubMed PMID: 4633062."

[Hsiao 1989]: http://www.ncbi.nlm.nih.gov/pubmed/2564168/ "Hsiao K, Baker HF, Crow TJ, Poulter M, Owen F, Terwilliger JD, Westaway D, Ott J, Prusiner SB. Linkage of a prion protein missense variant to Gerstmann-Sträussler syndrome. Nature. 1989 Mar 23;338(6213):342-5. PubMed PMID:  2564168."

[Tamguney 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19741608/ "Tamgüney G, Miller MW, Wolfe LL, Sirochman TM, Glidden DV, Palmer C, Lemus A,  DeArmond SJ, Prusiner SB. Asymptomatic deer excrete infectious prions in faeces.  Nature. 2009 Sep 24;461(7263):529-32. doi: 10.1038/nature08289. Epub 2009 Sep 9.  Erratum in: Nature. 2010 Jul 29;466(7306):652. Dosage error in article text. PubMed PMID: 19741608; PubMed Central PMCID: PMC3186440."

[Collinge 1994]: http://www.ncbi.nlm.nih.gov/pubmed/8035877 "Collinge J, Whittington MA, Sidle KC, Smith CJ, Palmer MS, Clarke AR, Jefferys JG. Prion protein is necessary for normal synaptic function. Nature. 1994 Jul 28;370(6487):295-7. PubMed PMID: 8035877."

[Lledo 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8637886/ "Lledo PM, Tremblay P, DeArmond SJ, Prusiner SB, Nicoll RA. Mice deficient for  prion protein exhibit normal neuronal excitability and synaptic transmission in the hippocampus. Proc Natl Acad Sci U S A. 1996 Mar 19;93(6):2403-7. PubMed PMID: 8637886; PubMed Central PMCID: PMC39809."

[Cohen 1994]: http://www.ncbi.nlm.nih.gov/pubmed/7909169/ "Cohen FE, Pan KM, Huang Z, Baldwin M, Fletterick RJ, Prusiner SB. Structural clues to prion replication. Science. 1994 Apr 22;264(5158):530-1. PubMed PMID: 7909169."

[Stahl 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8448158 "Stahl N, Baldwin MA, Teplow DB, Hood L, Gibson BW, Burlingame AL, Prusiner SB. Structural studies of the scrapie prion protein using mass spectrometry and amino acid sequencing. Biochemistry. 1993 Mar 2;32(8):1991-2002. PubMed PMID: 8448158."

[Dickinson 1969]: http://www.ncbi.nlm.nih.gov/pubmed/4975615 "Dickinson AG, Meikle VM, Fraser H. Genetical control of the concentration of ME7 scrapie agent in the brain of mice. J Comp Pathol. 1969 Jan;79(1):15-22. PubMed PMID: 4975615."

[Prusiner 1982b]: http://www.ncbi.nlm.nih.gov/pubmed/6808890 "Prusiner SB, Cochran SP, Groth DF, Downey DE, Bowman KA, Martinez HM. Measurement of the scrapie agent using an incubation time interval assay. Ann Neurol. 1982 Apr;11(4):353-8. PubMed PMID: 6808890."

[Carlson 1986]: http://www.ncbi.nlm.nih.gov/pubmed/3015416 "Carlson GA, Kingsbury DT, Goodman PA, Coleman S, Marshall ST, DeArmond S, Westaway D, Prusiner SB. Linkage of prion protein and scrapie incubation time genes. Cell. 1986 Aug 15;46(4):503-11. PubMed PMID: 3015416."

[Westaway 1987]: http://www.ncbi.nlm.nih.gov/pubmed/2890436 "Westaway D, Goodman PA, Mirenda CA, McKinley MP, Carlson GA, Prusiner SB. Distinct prion proteins in short and long scrapie incubation period mice. Cell. 1987 Nov 20;51(4):651-62. PubMed PMID: 2890436."

[Dickinson 1975]: http://www.ncbi.nlm.nih.gov/pubmed/807505 "Dickinson AG. Host-pathogen interactions in scrapie. Genetics. 1975 Jun;79 Suppl:387-95. PubMed PMID: 807505."

[Kimberlin & Walker 1979]: http://www.ncbi.nlm.nih.gov/pubmed/120379 "Kimberlin RH, Walker CA. Pathogenesis of mouse scrapie: dynamics of agent replication in spleen, spinal cord and brain after infection by different routes. J Comp Pathol. 1979 Oct;89(4):551-62. PubMed PMID: 120379."

[Kimberlin & Walker 1986]: http://www.ncbi.nlm.nih.gov/pubmed/3080549 "Kimberlin RH, Walker CA. Pathogenesis of scrapie (strain 263K) in hamsters infected intracerebrally, intraperitoneally or intraocularly. J Gen Virol. 1986 Feb;67 ( Pt 2):255-63. PubMed PMID: 3080549."

[Baringer 1983]: http://www.ncbi.nlm.nih.gov/pubmed/6411868 "Baringer JR, Bowman KA, Prusiner SB. Replication of the scrapie agent in hamster brain precedes neuronal vacuolation. J Neuropathol Exp Neurol. 1983 Sep;42(5):539-47. PubMed PMID: 6411868."

[Piatak 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8096089 "Piatak M Jr, Saag MS, Yang LC, Clark SJ, Kappes JC, Luk KC, Hahn BH, Shaw GM,  Lifson JD. High levels of HIV-1 in plasma during all stages of infection determined by competitive PCR. Science. 1993 Mar 19;259(5102):1749-54. PubMed PMID: 8096089."

[Collinge & Clarke 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17991853 "Collinge J, Clarke AR. A general model of prion strains and their pathogenicity. Science. 2007 Nov 9;318(5852):930-6. Review. PubMed PMID: 17991853."

[Fischer 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8635458/ "Fischer M, Rülicke T, Raeber A, Sailer A, Moser M, Oesch B, Brandner S, Aguzzi A, Weissmann C. Prion protein (PrP) with amino-proximal deletions restoring susceptibility of PrP knockout mice to scrapie. EMBO J. 1996 Mar 15;15(6):1255-64. PubMed PMID: 8635458; PubMed Central PMCID: PMC450028."

[Brandner 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8552188 "Brandner S, Isenmann S, Raeber A, Fischer M, Sailer A, Kobayashi Y, Marino S,  Weissmann C, Aguzzi A. Normal host prion protein necessary for scrapie-induced neurotoxicity. Nature. 1996 Jan 25;379(6563):339-43. PubMed PMID: 8552188."

[Aguzzi & Falsig 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22735515 "Aguzzi A, Falsig J. Prion propagation, toxicity and degradation. Nat Neurosci. 2012 Jun 26;15(7):936-9. doi: 10.1038/nn.3120. Review. PubMed PMID: 22735515."

[Klohn 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14504404 "Klöhn PC, Stoltze L, Flechsig E, Enari M, Weissmann C. A quantitative, highly  sensitive cell-based infectivity assay for mouse scrapie prions. Proc Natl Acad Sci U S A. 2003 Sep 30;100(20):11666-71. Epub 2003 Sep 22. PubMed PMID: 14504404; PubMed Central PMCID: PMC208815."

[Kretzschmar 1986]: http://www.ncbi.nlm.nih.gov/pubmed/3079955/ "Kretzschmar HA, Prusiner SB, Stowring LE, DeArmond SJ. Scrapie prion proteins  are synthesized in neurons. Am J Pathol. 1986 Jan;122(1):1-5. PubMed PMID: 3079955; PubMed Central PMCID: PMC1888142."

[Mays 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24430187 "Mays CE, Kim C, Haldiman T, van der Merwe J, Lau A, Yang J, Grams J, Di Bari MA, Nonno R, Telling GC, Kong Q, Langeveld J, McKenzie D, Westaway D, Safar JG. Prion disease tempo determined by host-dependent substrate reduction. J Clin Invest. 2014 Feb 3;124(2):847-58. doi: 10.1172/JCI72241. Epub 2014 Jan 16. PubMed PMID: 24430187; PubMed Central PMCID: PMC3904628."

[Prusiner 1982a]: http://www.ncbi.nlm.nih.gov/pubmed/6801762 "Prusiner SB. Novel proteinaceous infectious particles cause scrapie. Science.  1982 Apr 9;216(4542):136-44. PubMed PMID: 6801762."

[Eigen 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8981746 "Eigen M. Prionics or the kinetic basis of prion diseases. Biophys Chem. 1996 Dec 10;63(1):A1-18. Review. PubMed PMID: 8981746."

[Bueler 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8100741 "Büeler H, Aguzzi A, Sailer A, Greiner RA, Autenried P, Aguet M, Weissmann C. Mice devoid of PrP are resistant to scrapie. Cell. 1993 Jul 2;73(7):1339-47. PubMed PMID: 8100741."

[Legname 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17142317 "Legname G, Nguyen HO, Peretz D, Cohen FE, DeArmond SJ, Prusiner SB. Continuum  of prion protein structures enciphers a multitude of prion isolate-specified phenotypes. Proc Natl Acad Sci U S A. 2006 Dec 12;103(50):19105-10. Epub 2006 Dec 1. PubMed PMID: 17142317; PubMed Central PMCID: PMC1748184."

[Watts 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24699458 "Watts JC, Giles K, Patel S, Oehler A, DeArmond SJ, Prusiner SB. Evidence that  bank vole PrP is a universal acceptor for prions. PLoS Pathog. 2014 Apr 3;10(4):e1003990. doi: 10.1371/journal.ppat.1003990. eCollection 2014 Apr. PubMed PMID: 24699458; PubMed Central PMCID: PMC3974871."

[Ayers 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21437239 "Ayers JI, Schutt CR, Shikiya RA, Aguzzi A, Kincaid AE, Bartz JC. The strain-encoded relationship between PrP replication, stability and processing in  neurons is predictive of the incubation period of disease. PLoS Pathog. 2011 Mar;7(3):e1001317. doi: 10.1371/journal.ppat.1001317. Epub 2011 Mar 17. PubMed PMID: 21437239; PubMed Central PMCID: PMC3060105."