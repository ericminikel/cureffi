---
layout: post
title:  "Chemical biology 06: screening for drug discovery, target identification"
date:   2015-09-22 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 6 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on September 22, 2015.*

Today's readings are on gene expression signatures [[Peck 2006]] and using proteomics for small molecule target identification [[Rix & Superti-Furga 2009]]. Additional readings include perspectives on high-throughput screening [[Mayr & Fuerst 2008], [Kodadek 2010]], repurposing [[Chong & Sullivan 2007]], and a target identification example from Steve Haggarty's group [[Kuai 2011]].

Today's lecture covers two topics: screening to discover small molecules as drugs for human disease, and target ID.

### Screening

Small molecule screens can be broadly grouped into two categories:

1. **Target-based**. Screening with purified proteins to find a molecule that binds a specific desired target.
2. **Phenotypic**. Screening with whole cells or organisms to find a molecule that gives a desired outcome, without knowing in advance what target will give you that outcome.

In an ideal world, experiments of nature, via human genetics, would tell us all the targets we need to hit, and exactly how we need to modulate their function. Then we could just do target-based screens for everything. For instance, it has been reported that *APP* A673V increases Alzheimer disease risk [[Giaccone 2010]] while A673T decreases risk [[Jonsson 2012]]. It is claimed that A673T APP is impaired in &beta;-cleavage [[Jonsson 2012]], though the functional evidence for this is still debated. For the sake of argument, assume that this is correct. Then we just need to find a small molecule that mimics the effect that A673T has on &beta;-cleavage.

In practice, though, we don't know all of the targets, it is amazing how often we are humbled by the unexpected findings that arise from phenotypic screens.

Methods for target-based screens include **label-free** methods:

+ Mass spectrometry-based methods
+ NMR-based methods
+ Thermal shift or calorimetry-based methods
+ Affinity-based methods

Then there are methods that require labeling either the small molecule or the protein:

+ Surface plasmon resonnace
+ Small molecule microarray

Small molecule microarray has many shortcomings, including that the covalent attachemnt of the small molecule to the slide may preclude it binding the protein, thus giving you false negatives. But you just have to hope that you still get some real positives. Small molecule microarray has been used to discover haptamide B [[Koehler 2003]], an inhibitor of a transcription factor, which would classically be considered an undruggable target.

![](/media/2015/09/haptamide_b.png)

*Above: haptamide B, an inhibitor of a transcription factor.*

An NMR-based method involves looking for chemical shifts in NMR when your protein is exposed to a molecule. This requires very high concentrations of compound (like 1mM) and the hits tend to be extremely small structures, so it is often called "fragment-based screening". You can use this method to find a fragment with some affinity, albeit not much, and then work to build it up in 3D space and find more potent analogues containing your original fragment.

Here are some examples of phenotypic screens.

1. The natural product rapamycin (also known as Sirolimus) is approved as an immunosuppressant for individuals with organ transplants. Unfortunately, a subset of patients treated with rapamycin develop type II diabetes as a side effect. Rapamycin results in dephosphorylation of a particular protein, so this was used as the phenotype for a phenotypic screen for compounds that would reverse the "diabetic-like" state of the rapamycin-treated cells. The hits that were discovered turned out to act by modulating autophagy, which was an unexpected outcome.
2. Steve Haggarty wanted to find small molecules that would block the pathway where by neuregulin (Nrg1) binds ErbB4. PC12 cells do not express ErbB4, and nothing happens if you dump neuregulin on them. If you transfect them to express ErbB4, then they start responding to Nrg1, and their response is to grow neurites, which is a phenotype that can be discerned visually. They therefore expressed ErbB4 in these cells, added Nrg1, and then screened for small molecules that would *prevent* the neuritic phenotype from emerging [[Kuai 2011]]. 
3. Prostate cancers can be classified into androgen receptor-dependent and -independent, also known as castration-dependent and castration-independent. AR-dependent prostate cancers have different gene expression profiles when they have AR, versus when they are deprived of AR signaling. You can build a classifier based on just 64 transcripts, which is a number of transcripts whose abundance you can quantify using Luminex bead-based technology in 384-well plates. So Todd Golub and colleagues looked for compounds that would cause AR-dependent cells exposed to androgen to adopt a gene expression signature that looks more like if they were deprived of androgen [[Hieronymus 2006]]. It turns out that their top lead compound, celastrol, induces AR degradation.
4. Ewing sarcoma (EWS), a cancer of children, is caused by a fusion protein created by a translocation. Kim Stegmaier characterized the gene expression profile of Ewing sarcome cells (known as EWS/FLI cells) in the baseline state and in the presence of siRNA against the fusion transcript. She then screened FDA-approved drugs for ones that would cause EWS/FLI cells to adopt a state consistent with fusion transcript knockdown. Incredibly, she found that an FDA-approved drug called Ara-C, also known as cytosine arabinoside, or cytarabine, had just this effect [[Stegmaier 2007]]. This led swiftly to a clinical trial [[NCT00470275](https://clinicaltrials.gov/ct2/show/NCT00470275)]. Unfortunately, the results so far indicate some hematologic toxicity and no evidence for efficacy [[DuBois 2009]].
5. If you have a small enough model organism, such as zebrafish, you can do whole-organism phenotypic screens. Randy Peterson created zebrafish with an embryonic lethal mutation called *gridlock* that causes the aortal valve to never open during cardiogenesis, as a model of the huamn condition called "congenital narrowing of the aorta". Then he did a visual phenotypic screen for compounds that would reverse this phenotype [[Peterson 2004]].
6. Zebrafish also develop an ear-like structure called an otolith. Fish lacking an otolith can't swim straight. A measurement of straight-line swimming was used as a phenotype to look for compounds that would prevent otolith formation [[Peterson 2000]]. This revealed a tool compound that prevents otolith formation only if it was administered from hour 8 to 26 of development. If it was administered from hour 14 to 26 you got partial otolith development. This sort of timing experiment could not be done with genetic methods, so having a probe was essential. The target is still unknown.

![](/media/2015/09/celastrol.png)

*Above: celastrol, a natural product isolated from the Chinese medicinal herb [雷公藤](https://en.wikipedia.org/wiki/Tripterygium_wilfordii) that mimics the gene expression signature of androgen deprivation in prostate cancer cells [[Hieronymus 2006]].*

Developing an assay is really hard. First, you need a positive control, which can sometimes be hard to find. Sometimes it could be a genetic positive control rather than a small molecule. Then you need a crisp separation between the distribution of positive control measurements and negative control measurements, known as a Z prime (Z') or Z factor [[Zhang 1999]]. The Z factor is a measurement of the distance between 3 standard deviations below the positive mean and 3 standard deviations above the negative mean:

$$ Z' = 1 - \frac {3\sigma_{positive} + 3\sigma_{negative}}{|\ \mu_{positive} - \mu_{negative}\ |} $$

The ideal value is 1, indicating perfect separation. In practice that never happens. But if you have a Z' &le;0 you have a very poor assay indeed.

### Target ID

Once you have identified a probe that is active in a phenotypic screen, how do you determine its mechanism of action? Here are some methods that have been used:

+ If the phenotype in question is death of pathogenic microbes or cancer cells, then add your compound in sublethal doses, gradually increasing, and then perform sequencing on the resulting drug-resistant colonies. You may identify a recurrently mutated gene that is likely to be the target.
+ Perform a genetic perturbation screen (siRNA, etc) to find genes whose knockdown modifies the effect of the compound.
+ Mine databases for connectivities. (Presumably this refers to looking for siRNAs, or other probes with known targets, that yield similar profiles as your compound in gene expression space or something. I think this is the topic of the next lecture.).
+ Quantitative proteomics.

There are two main methods in quantitative proteomics &mdash; SiLAC and iTRAC. In SILAC (stable isotope labeling of amio acids in cell culture) you grow cells in regular media or heavy (D<sub>2</sub>O) media. In the light media, you pre-incubate cells with your compound. In heavy media, you do not pre-incubate. Then in either case, you expose cell lysates to beads conjugated to your compound. In light media, the target has already been bound, so should exhibit minimal binding to beads. In the heavy media, the target is unbound and should bind readily to the beads. Then you combine the beads, wash them, boil them in SDS, and then trypsinize the proteins that were bound. Any tryptic peptides from proteins that just non-specifically stick to the bead should be equally abundant in heavy and light space (distinguishable in your proteomics data by the mass shift due to deuterium). But your target should be vastly enriched in heavy space compared to light space. This method has been used to go back and figure out how specific various kinases are. For instance, Ro-31-7549, once believed to be highly selective for protein kinase C (PKC), has now been shown to have strongest affinity for PKC but to also bind many other kinases.

A hot new method is cellular thermal proteome profiling (TPP) [[Savitski 2014]]. This is a method to identify targets in whole cells. It relies on the idea that soluble proteins become insoluble when they are denatured. As you heat cells, proteins bound by compound will be stabilized and will have their melting points increased. So the target of your compound should be a protein whose melting curve is shifted up in the presence of the compound. You measure that melting curve by centrifuging the cell lysates after compond treatment and then measuring the abundance of proteins in the supernatant. This doesn't work for membrane-bound proteins, which will pellet out regardless.


[Peck 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16859521 "Peck D, Crawford ED, Ross KN, Stegmaier K, Golub TR, Lamb J. A method for high-throughput gene expression signature analysis. Genome Biol. 2006;7(7):R61. PubMed PMID: 16859521; PubMed Central PMCID: PMC1779561."

[Rix & Superti-Furga 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19690537 "Rix U, Superti-Furga G. Target profiling of small molecules by chemical proteomics. Nat Chem Biol. 2009 Sep;5(9):616-24. doi: 10.1038/nchembio.216. Review. PubMed PMID: 19690537."

[Mayr & Fuerst 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18660458 "Mayr LM, Fuerst P. The future of high-throughput screening. J Biomol Screen. 2008 Jul;13(6):443-8. doi: 10.1177/1087057108319644. PubMed PMID: 18660458."

[Chong & Sullivan 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17687303 "Chong CR, Sullivan DJ Jr. New uses for old drugs. Nature. 2007 Aug 9;448(7154):645-6. PubMed PMID: 17687303."

[Kodadek 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20154660 "Kodadek T. Rethinking screening. Nat Chem Biol. 2010 Mar;6(3):162-165. PubMed  PMID: 20154660."

[Kuai 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21802010 "Kuai L, Ong SE, Madison JM, Wang X, Duvall JR, Lewis TA, Luce CJ, Conner SD, Pearlman DA, Wood JL, Schreiber SL, Carr SA, Scolnick EM, Haggarty SJ. AAK1 identified as an inhibitor of neuregulin-1/ErbB4-dependent neurotrophic factor signaling using integrative chemical genomics and proteomics. Chem Biol. 2011 Jul 29;18(7):891-906. doi: 10.1016/j.chembiol.2011.03.017. PubMed PMID: 21802010; PubMed Central PMCID: PMC3368601."

[Jonsson 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22801501 "Jonsson T, Atwal JK, Steinberg S, Snaedal J, Jonsson PV, Bjornsson S, Stefansson H, Sulem P, Gudbjartsson D, Maloney J, Hoyte K, Gustafson A, Liu Y, Lu Y, Bhangale T, Graham RR, Huttenlocher J, Bjornsdottir G, Andreassen OA, Jönsson  EG, Palotie A, Behrens TW, Magnusson OT, Kong A, Thorsteinsdottir U, Watts RJ, Stefansson K. A mutation in APP protects against Alzheimer's disease and age-related cognitive decline. Nature. 2012 Aug 2;488(7409):96-9. doi: 10.1038/nature11283. PubMed PMID: 22801501."

[Giaccone 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20842367 "Giaccone G, Morbin M, Moda F, Botta M, Mazzoleni G, Uggetti A, Catania M, Moro ML, Redaelli V, Spagnoli A, Rossi RS, Salmona M, Di Fede G, Tagliavini F. Neuropathology of the recessive A673V APP mutation: Alzheimer disease with distinctive features. Acta Neuropathol. 2010 Dec;120(6):803-12. doi: 10.1007/s00401-010-0747-1. Epub 2010 Sep 15. PubMed PMID: 20842367."

[Koehler 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12848532 "Koehler AN, Shamji AF, Schreiber SL. Discovery of an inhibitor of a transcription factor using small molecule microarrays and diversity-oriented synthesis. J Am Chem Soc. 2003 Jul 16;125(28):8420-1. PubMed PMID: 12848532."

[Hieronymus 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17010675 "Hieronymus H, Lamb J, Ross KN, Peng XP, Clement C, Rodina A, Nieto M, Du J, Stegmaier K, Raj SM, Maloney KN, Clardy J, Hahn WC, Chiosis G, Golub TR. Gene expression signature-based chemical genomic prediction identifies a novel class of HSP90 pathway modulators. Cancer Cell. 2006 Oct;10(4):321-30. Epub 2006 Sep 28. PubMed PMID: 17010675."

[Stegmaier 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17425403 "Stegmaier K, Wong JS, Ross KN, Chow KT, Peck D, Wright RD, Lessnick SL, Kung AL, Golub TR. Signature-based small molecule screening identifies cytosine arabinoside as an EWS/FLI modulator in Ewing sarcoma. PLoS Med. 2007 Apr;4(4):e122. PubMed PMID: 17425403; PubMed Central PMCID: PMC1851624."

[DuBois 2009]: http://www.ncbi.nlm.nih.gov/pubmed/18989890 "DuBois SG, Krailo MD, Lessnick SL, Smith R, Chen Z, Marina N, Grier HE, Stegmaier K; Children's Oncology Group. Phase II study of intermediate-dose cytarabine in patients with relapsed or refractory Ewing sarcoma: a report from the Children's Oncology Group. Pediatr Blood Cancer. 2009 Mar;52(3):324-7. doi: 10.1002/pbc.21822. PubMed PMID: 18989890; PubMed Central PMCID: PMC2791370."

[Peterson 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15097998 "Peterson RT, Shaw SY, Peterson TA, Milan DJ, Zhong TP, Schreiber SL, MacRae CA, Fishman MC. Chemical suppression of a genetic mutation in a zebrafish model of aortic coarctation. Nat Biotechnol. 2004 May;22(5):595-9. Epub 2004 Apr 18. PubMed PMID: 15097998."

[Peterson 2000]: http://www.ncbi.nlm.nih.gov/pubmed/11087852/ "Peterson RT, Link BA, Dowling JE, Schreiber SL. Small molecule developmental screens reveal the logic and timing of vertebrate development. Proc Natl Acad Sci U S A. 2000 Nov 21;97(24):12965-9. PubMed PMID: 11087852; PubMed Central PMCID: PMC27161."

[Zhang 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10838414 "Zhang JH, Chung TD, Oldenburg KR. A Simple Statistical Parameter for Use in Evaluation and Validation of High Throughput Screening Assays. J Biomol Screen. 1999;4(2):67-73. PubMed PMID: 10838414."

[Savitski 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25278616 "Savitski MM, Reinhard FB, Franken H, Werner T, Savitski MF, Eberhard D, Martinez Molina D, Jafari R, Dovega RB, Klaeger S, Kuster B, Nordlund P, Bantscheff M, Drewes G. Tracking cancer drugs in living cells by thermal profiling of the proteome. Science. 2014 Oct 3;346(6205):1255784. doi: 10.1126/science.1255784. Epub 2014 Oct 2. PubMed PMID: 25278616."

