---
layout: post
title:  "Protein folding 06: Amyloid"
date:   2015-03-12 12:00:00
author: ericminikel
tag: mit-7.88j
location: Cambridge, MA
summary200: "The history of amyloid beta in Alzheimer disease, and a guest lecture by Peter Lansbury on alpha synuclein as a drug target."
---

*These are my notes from week 6 of MIT course 7.88j: Protein Folding and Human Disease, held by Dr. Jonathan King on March 12, 2015.*

### Assignment 5

The readings for this week are:

+ Peter Lansbury's classic paper on the kinetics of amyloid formation for A&beta;39 vs. 40 vs. 42 vs. 43 [[Jarrett 1993]].
+ A review by Jeff Kelly and others about the concept of "functional amyloid"  [[Fowler 2007]]

The A&beta; paper [[Jarrett 1993]] studies the solubility of, and kinetics of aggregation of, a variety of synthetic A&beta; peptides. Some of the most salient data are:

| peptide | concentration tested | how long it takes to form amyloid |
| ---- | ---- | ---- |
| A&beta;1-42 | 20 &mu;M | hours |
| A&beta;1-39 | 20 &mu;M | days |
| A&beta;26-42 | 200 &mu;M | seconds |
| A&beta;26-43 | 200 &mu;M | seconds |
| A&beta;26-40 | 200 &mu;M | hours |
| A&beta;26-39 | 200 &mu;M | days |

In other words, including residues 40-42 or 40-43 makes it form amyloid *much* faster, suggesting that the C-terminus of A&beta; helps nucleate amyloid formation, and that this nucleation is the rate-limiting step. What's more, adding even a little bit of one of the "fast" peptides to one of the "slow" peptides makes the latter form amyloid very quickly &mdash; again, consistent with the idea that nucleation is what's rate-limiting.

The review article [[Fowler 2007]] begins by defining amyloid. Amyloid is often defined operationally, with criteria that Fowler mentions:

+ Binds Congo red
+ Binds thioflavin T
+ Exhibits green-red birefringence
+ Has a cross-&beta; X-ray fiber diffraction pattern

But Fowler et al opt for a slightly more specific molecular definition of "a fibrous quaternary structure formed by the assembly of protein or peptide monomers into intermolecularly hydrogen bonded &beta;-sheets". This still doesn't help me totally understand what people in the prion field mean when they refer to amyloid vs. non-amyloid PrP<sup>Sc</sup>, [e.g. [Rangel 2013]]. As an example of amyloid, Fowler offers the NMR structure of A&beta;1-42 reported by Roland Riek's group, with a 4.7&Aring; rung height consistent with measurements from X-ray fiber diffraction [[PDB# 2BEG](http://www.rcsb.org/pdb/explore.do?structureId=2BEG), [Luhrs 2005]]:

~~~ 
fetch 2beg
hide everything
show cartoon
bg_color white
spectrum count, yellow_red
~~~ 

![](/media/2015/03/ab1-42-fibril.png)

I was under the impression that high-resolution structures had not been solved for any prion or amyloid other than HET-s. I would be interested if someone could tell me in more detail whether structures such as the one above are considered to represent the "real" *in vivo* conformation, and if not, why not.

Fowler goes on to review the many reported functional roles of amyloid. Apparently fish and insect eggs are wrapped in an amyloid made of chorion proteins, and the curli protein amyloids in *E. coli* and other bacteria are thought to help with surface adhesion and perhaps (in the case of pathogenic bacteria) host invasion. These are examples of evolution using amyloid for its structural properties. Then there are examples of epigenetic inheritance, like [<em>\[PSI<sup>+</sup>\]</em>](/2014/09/30/the-conformation-holds-the-information/), *\[URE3\]*, *\[RNQ<sup>+</sup>\]* and HET-s. They go on to talk about fibrin in blood clotting, Pmel17 in apparently sequestering toxic melanin precursors.

### Lecture: A&beta; and Alzheimer disease

Today's lecture is organized around five stages of our scientific understanding of Alzheimer disease. At present there are estimated to be 4-5 million Americans with Alzheimer disease.

![](/media/2015/03/abeta-in-context.png)

#### 1. Presentation

For a long time, what we now call Alzheimer disease was simply known as "senile dementia". Diagnosis was behavioral, based on loss of memory and loss of face recognition in the absence of any loss of motor function. 

#### 2. Brain morphology and pathology

Dr. Alois Alzheimer is recognized as having first described a particular neuropathological signature associated with the "senile dementia" package of phenotypes. In the autopsies of the early 1900s, people were cutting relatively thin sections of brains and looking at them with light microscopes. In Alzheimer disease brains there were "plaques" that stained with iodine. Iodine stains starch, so these plaques were referred to as being "starch-like", which translates into Greek as *amyloid*. It was later discovered that these plaques also stained with Congo red (which stains starch, too), and that they exhibited *birefringence* - bending polarized light - which meant they must be made of a fibrous material. The material that was binding the dye was highly insoluble and protease-resistant (proteases were used back then to get rid of proteins so you could study chromatin, or whatever other non-protein molecule you were interested in). When electron microscopy was invented, it was recognized that when these plaques were present, there was also neuronal death.

#### 3. Molecular composition

Up until now, the whole literature of Alzheimer disease was written by physicians and pathologists, correlating neuropathological features with behavioral signs. There were almost no biochemists or cell biologists involved in the field. That all changed with the landmark paper sequencing A&beta; [[Glenner & Wong 1984a]]. Glenner and Wong knew from electron microscopy that there were neurofibrillary tangles (NFTs) distinct from the extracellular plaques seen in Alzheimer disease. They used GdnHCl to purify the extracellular plaques, and found that the plaques were composed of a 4.2 kDa peptide they dubbed "beta protein" or amyloid beta or A&beta;. They injected the purified protein into rabbits and were able to raise antibodies, which proved to be reactive not only against A&beta; but also against a ~700-residue protein they called the "amyloid precursor protein" (APP). Their work led to eventual cloning of the *APP* gene, and the realization that it was on human chromosome 21, and thus duplicated in [Down syndrome](/2015/02/20/genetics-in-medicine-04/), which is associated with early onset Alzheimer disease. They soon found that Down syndrome brains also contained plaques made of A&beta; [[Glenner & Wong 1984b]]. 

#### 4. Amyloid fibril organization

Subsequent structural studies using X-ray diffraction revealed that A&beta; plaques were made of straight, linear fibrils <100nm in length. Dennis Selkoe and colleagues found that the fibrils must have a **cross beta** structure, meaning that they were composed of beta strands pointed perpendicular to the long axis of the fibril [[Kirschner 1986]]. They also found that the spacing between these beta strand rungs was 4.7&Aring;.

#### 5. Fibril formation *in vitro*

Peter Lansbury had studied in one of the first laboratories that worked on solid state synthesis of peptides. He was the first person to figure out how to produce >40-residue peptides at >95% sequence purity. This gave him the ability to study A&beta; fibril formation *in vitro* in a way that no one else could do before, because it was too difficult to obtain sufficiently pure protein from brains, and recombinant protein purification from bacteria had not yet been perfected. Lansbury put synthetic A&beta;1-40 into solution, and monitored turbidity as a marker of polymerization. If you were patient enough, you could observe turbidity after several days, and analysis of the resulting material revealed that it was fibrous in nature. He then discovered that if you used A&beta;1-42 instead, the turbidity would arise an order of magnitude more quickly. Experiments cross-seeding between the two peptides (and other peptides, as summarized at top) showed that the kinetics of fibril formation involved *nucleation* and *growth* &mdash; two distinct events, with nucleation as the rate-limiting one. The intellectual and experimental framework for these experiments came from earlier studies of the polymerization of flagella proteins in bacteria.

One example model for how nucleation and growth could differ is as follows. Perhaps monomers very rarely and only transiently misfold. Even more rarely, they laterally associate to form an oligomeric ring with radial symmetry - this is nucleation. Once that ring is formed, it templates additional monomers to add onto its top and/or bottom - this is fibril growth, with the original ring becoming a cross-section of the fibril or perhaps not being preserved in the final structure at all.

The Tycko group did important work identifying different fibril conformations and the possible ways in which different oligomers or "protofibrils" give rise to them [[Petkova 2005]].

### Guest lecture by Peter T. Lansbury, Jr.

Dr. Lansbury's lecture is entitled *Synuclein as a therapeutic target for Parkinson's disease: 20 years and counting*.

Alpha synuclein was first discovered by [[Maroteaux 1988]]. It turned out to be one of the ten most abundant proteins in the brain, but no one knew what it did or why it was important. At the time, Lansbury was interested in the question of whether one protein could seed or nucleate a *different* protein to aggregate. Therefore it caught his notice when Tsunao Saitoh reported that a protein he called "NAC" (what we now call synuclein) was involved in Alzheimer disease (as far as I know, this was actually incorrect) [[Ueda 1993]]. Saitoh was later murdered, so Lansbury felt it was on him to take up the torch of studying this protein [[Weinreb 1996]]. Soon thereafter, the causal mutation in the Contursi pedigree - a large family with inherited Parkinson disease - was shown to map to the locus of the *SNCA* gene [[Polymeropoulos 1996]], and alpha synuclein was shown to be the major component of Lewy bodies, the chief pathological feature of PD [[Spillantini 1997]]. Lansbury soon discovered by biochemical methods that the A53T substitution of the Contursi pedigree accelerated fibril formation *in vitro* [[Conway 1998]].

Lansbury became optimistic that, because PD is quite slowly progressive, drugs that inhibit alpha synuclein aggregation could make a difference in patients' quality of life even if not administered until symptom onset. The disadvantage, of course, is that it takes a very long time to see whether an already-slow progression has been made even slower by a drug. The prototype model for clinical trials in PD is an 18-month clinical trial of 500 patients, at a price tag of about $200 million, with no success stories in this or any other neurodegenerative disease to inspire investor confidence. This combination of challenges has proven to be a hard sell for some pharma companies.

Lansbury partnered with a fly lab to express alpha synuclein in *Drosophila* and screen FDA-approved drugs to find compounds that reduced synuclein toxicity measured by an eye phenotype. They found that tocainide was highly effective, but it is a fairly toxic sodium channel blocker. They next asked whether they could find a small molecule that would stabilize a non-aggregating conformer of alpha synuclein. They began with an *in vitro* screen of FDA-approved drugs, and identified three hits: fluoxetine (Prozac), nortriptyline (Pamelor) and indatraline (all antidepressants). In a secondary screen they found that indatraline and nortriptyline also alleviated the eye phenotypes in the transgenic flies. They then tested some analogues of these in an alpha synuclein mouse model [the mouse model is reported in [Masilah 2000]] and in rat neuronal cell cultures, and got positive results.

Nortriptyline has a terrible side effect though: postural instability. This side effect would be considered unacceptable in Parkinson disease patients. Lansbury and colleagues therefore put this effort on hold for a while. Interestingly, though, a couple of years ago a retrospective study reported that PD patients who happened to take antidepressants had a slower disease progression [[Paumier 2012]]. 

Lansbury's next move was to try to increase autophagy, with the goal of increasing turnover of all soluble proteins including alpha synuclein, theoretically giving it less time to aggregate.

A series of candidate genes studies proposed the *UCHL1* S18Y variant as a modifier of Parkinson disease [meta-analysis in [Maraganore 2004]]. The proposed mechanism was that the protective genotype reduced farnesylation. Lansbury therefore acquired a patent on a farnesyltransferase inhibitor, called CP-609,754 from an oncology company, which had developed this compound for bladder cancer. It had an excellent safety profile but had failed on efficacy in cancer. Lansbury moved a compound, LNK-754, into clinical trials for Alzheimer disease. There were several major problems with the trial. First, the compound causes hypospermia, so they had to recruit only women for the clinical trial. Second, mild-to-moderate Alzheimer disease was the indication, but cerebrospinal fluid biomarkers indicated that many of the recruited patients had been misdiagnosed and did not actually have Alzheimer disease. Third, one woman died of a cerebral hemhorrage - a common complication in Alzheimer disease and probably unrelated to the compound - on day 3 of the phase 1b. Finally, Lansbury gave up and sold the assets to AstraZeneca, which tried to position it for Huntington disease. Sadly, by this time, much of the drug's patent period had already passed, and the commercial incentive to get it to market was on the decline.

Lansbury next turned his attention back to lysosomes. He became glucocerebrosidase, encoded by the *GBA* gene. Mutations in *GBA* cause autosomal recessive Gaucher disease, which can be treated with intravenous recombinant glucocerebrosidase, which Genzyme makes. Gaucher disease is highly comorbid with Parkinson disease - about 10-20% of Gaucher patients eventually get diagnosed with PD (over an 0.5% baseline risk, so an odds ratio of 20-40). Heterozygous carrier parents have increased risk of Parkinson disease, too, with an odds ratio of about 8. (Also, *GBA* is a significant locus in Parkinson GWAS -EVM). Finally, the causal allele for Gaucher has an allele frequency of about 6% in Ashkenazi Jews, which Lansbury realized makes it possible to gather enough people for a clinical trial by recruiting mutation carriers in just three cities: Tel Aviv, New York, and Boca Raton, FL.

There is cell culture evidence that the relationship between synuclein pathology and reduced glucocerebrosidase activity has bidirectional causality [[Mazzulli 2011]]. Genzyme therefore took a mouse model of Gaucher and a mouse model of Parkinson disease, and showed that expression of *GBA* via a viral vector injected into the mouse brain could alleviate synucleinopathy [[Sardi 2011], [Sardi 2013]]. Lansbury and his company, [Lysosomal Therapeutics Inc.](http://www.lysosomaltx.com/), screened for compounds that could increase glucocerebrosidase activity. They worked from a lead compound, NIH-758, which at 10&mu;M substantially increases glucocerebrosidase activity and decreases total alpha synuclein in iPS-derived neurons from Parkinson disease patients. They were able to obtain analogues that are more potent, have better pharmacokinetics, and are sufficiently chemically distant from the initial lead so as to be patentable. The mechanism of action is still unknown.

Lansbury lists his lessons learned as follows:

1. Don't bother trying to repurpose already FDA-approved drugs, for three reasons. First, they're unlikely to be highly effective for your indication. Second, paradoxically, many of them actually have terrible safety profiles and would not be approved by FDA today, especially for a chronic, slowly progressive disorder, where you would need to take the drug for years. Third, there's no way to make money off of them, so it will be hard to raise money for a clincial trial.
2. You need the right target.
3. You need a wide enough therapeutic window.
4. You need a fresh patent with 20 years of life on it in order to maximize commercial potential.
5. Glucocerebrosidase activity is appealing as a target because it offers a route to initial approval for Gaucher disease, and then later going after the Parkinson disease market.

#### Q&A

Q. How does membrane association affect synuclein aggregation?

A. Chris Dobson just published a paper arguing that membrane association nucleates synuclein aggregation [[Galvagnion 2015]]. However, this is inconsistent with the A30P mutation, which is known to cause Parkinson disease.

Q. How could NIH-758 or its analogues be effective in Gaucher disease if their mechanism of action is to increase glucocerebrosidase activity and those patients lack glucocerebrosidase?

A. Most patients have one of two missense mutations: N370S or L444P. Total loss-of-function mutations are far rarer. In N370S, the protein is translated and localizes correctly, and has some residual enzymatic activity and we would seek to increase that activity. In L444P there appears to be no residual enzymatic activity, so it is less clear whether the compounds would work for individuals with that variant.

Q. Would NIH-758 or analogues work for Parkinson disease patients without *GBA* mutations?

A. There was a study that found decreased glucocerebrosidase activity in brains of Parkinson disease patients who lacked *GBA* mutations, so there is some evidence that decreased glucocerebrosidase activity is a more general problem in PD, and therefore these compounds could be broadly effective.







[Jarrett 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8490014 "Jarrett JT, Berger EP, Lansbury PT Jr. The carboxy terminus of the beta amyloid protein is critical for the seeding of amyloid formation: implications for the pathogenesis of Alzheimer's disease. Biochemistry. 1993 May 11;32(18):4693-7. PubMed PMID: 8490014."

[Fowler 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17412596 "Fowler DM, Koulov AV, Balch WE, Kelly JW. Functional amyloid--from bacteria to humans. Trends Biochem Sci. 2007 May;32(5):217-24. Epub 2007 Apr 6. Review. PubMed PMID: 17412596."

[Luhrs 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16293696 "Lührs T, Ritter C, Adrian M, Riek-Loher D, Bohrmann B, Döbeli H, Schubert D, Riek R. 3D structure of Alzheimer's amyloid-beta(1-42) fibrils. Proc Natl Acad Sci U S A. 2005 Nov 29;102(48):17342-7. Epub 2005 Nov 17. PubMed PMID: 16293696;  PubMed Central PMCID: PMC1297669."

[Rangel 2013]: http://www.ncbi.nlm.nih.gov/pubmed/22998478/ "Rangel A, Race B, Striebel J, Chesebro B. Non-amyloid and amyloid prion protein deposits in prion-infected mice differ in blockage of interstitial brain  fluid. Neuropathol Appl Neurobiol. 2013 Apr;39(3):217-30. doi: 10.1111/j.1365-2990.2012.01303.x. PubMed PMID: 22998478; PubMed Central PMCID: PMC3567241."

[Glenner & Wong 1984a]: http://www.ncbi.nlm.nih.gov/pubmed/6375662 "Glenner GG, Wong CW. Alzheimer's disease: initial report of the purification and characterization of a novel cerebrovascular amyloid protein. Biochem Biophys  Res Commun. 1984 May 16;120(3):885-90. PubMed PMID: 6375662."

[Glenner & Wong 1984b]: http://www.ncbi.nlm.nih.gov/pubmed/6236805 "Glenner GG, Wong CW. Alzheimer's disease and Down's syndrome: sharing of a unique cerebrovascular amyloid fibril protein. Biochem Biophys Res Commun. 1984 Aug 16;122(3):1131-5. PubMed PMID: 6236805."

[Kirschner 1986]: http://www.ncbi.nlm.nih.gov/pubmed/3455785 "Kirschner DA, Abraham C, Selkoe DJ. X-ray diffraction from intraneuronal paired helical filaments and extraneuronal amyloid fibers in Alzheimer disease indicates cross-beta conformation. Proc Natl Acad Sci U S A. 1986 Jan;83(2):503-7. Erratum in: Proc Natl Acad Sci U S A 1986 Apr;83(8):2776. PubMed PMID: 3455785; PubMed Central PMCID: PMC322888."

[Petkova 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15653506 "Petkova AT, Leapman RD, Guo Z, Yau WM, Mattson MP, Tycko R. Self-propagating,  molecular-level polymorphism in Alzheimer's beta-amyloid fibrils. Science. 2005 Jan 14;307(5707):262-5. PubMed PMID: 15653506."

[Maroteaux 1988]: http://www.ncbi.nlm.nih.gov/pubmed/3411354 "Maroteaux L, Campanelli JT, Scheller RH. Synuclein: a neuron-specific protein  localized to the nucleus and presynaptic nerve terminal. J Neurosci. 1988 Aug;8(8):2804-15. PubMed PMID: 3411354."

[Ueda 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8248242 "Uéda K, Fukushima H, Masliah E, Xia Y, Iwai A, Yoshimoto M, Otero DA, Kondo J, Ihara Y, Saitoh T. Molecular cloning of cDNA encoding an unrecognized component of amyloid in Alzheimer disease. Proc Natl Acad Sci U S A. 1993 Dec 1;90(23):11282-6. PubMed PMID: 8248242; PubMed Central PMCID: PMC47966."

[Weinreb 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8901511 "Weinreb PH, Zhen W, Poon AW, Conway KA, Lansbury PT Jr. NACP, a protein implicated in Alzheimer's disease and learning, is natively unfolded. Biochemistry. 1996 Oct 29;35(43):13709-15. PubMed PMID: 8901511."

[Polymeropoulos 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8895469 "Polymeropoulos MH, Higgins JJ, Golbe LI, Johnson WG, Ide SE, Di Iorio G, Sanges G, Stenroos ES, Pho LT, Schaffer AA, Lazzarini AM, Nussbaum RL, Duvoisin RC. Mapping of a gene for Parkinson's disease to chromosome 4q21-q23. Science. 1996 Nov 15;274(5290):1197-9. PubMed PMID: 8895469."

[Spillantini 1997]: http://www.ncbi.nlm.nih.gov/pubmed/9278044 "Spillantini MG, Schmidt ML, Lee VM, Trojanowski JQ, Jakes R, Goedert M. Alpha-synuclein in Lewy bodies. Nature. 1997 Aug 28;388(6645):839-40. PubMed PMID: 9278044."

[Conway 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9809558 "Conway KA, Harper JD, Lansbury PT. Accelerated in vitro fibril formation by a  mutant alpha-synuclein linked to early-onset Parkinson disease. Nat Med. 1998 Nov;4(11):1318-20. PubMed PMID: 9809558."

[Masliah 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10678833 "Masliah E, Rockenstein E, Veinbergs I, Mallory M, Hashimoto M, Takeda A, Sagara Y, Sisk A, Mucke L. Dopaminergic loss and inclusion body formation in alpha-synuclein mice: implications for neurodegenerative disorders. Science. 2000 Feb 18;287(5456):1265-9. PubMed PMID: 10678833."

[Paumier 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22555881 "Paumier KL, Siderowf AD, Auinger P, Oakes D, Madhavan L, Espay AJ, Revilla FJ, Collier TJ; Parkinson Study Group Genetics Epidemiology Working Group. Tricyclic  antidepressants delay the need for dopaminergic therapy in early Parkinson's disease. Mov Disord. 2012 Jun;27(7):880-7. doi: 10.1002/mds.24978. Epub 2012 May  3. PubMed PMID: 22555881."

[Maraganore 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15048890 "Maraganore DM, Lesnick TG, Elbaz A, Chartier-Harlin MC, Gasser T, Krüger R, Hattori N, Mellick GD, Quattrone A, Satoh J, Toda T, Wang J, Ioannidis JP, de Andrade M, Rocca WA; UCHL1 Global Genetics Consortium. UCHL1 is a Parkinson's disease susceptibility gene. Ann Neurol. 2004 Apr;55(4):512-21. Erratum in: Ann Neurol. 2004 Jun;55(6):899. Toda, Taksushi [corrected to Toda, Tatsushi]. PubMed  PMID: 15048890."

[Mazzulli 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21700325 "Mazzulli JR, Xu YH, Sun Y, Knight AL, McLean PJ, Caldwell GA, Sidransky E, Grabowski GA, Krainc D. Gaucher disease glucocerebrosidase and α-synuclein form a bidirectional pathogenic loop in synucleinopathies. Cell. 2011 Jul 8;146(1):37-52. doi: 10.1016/j.cell.2011.06.001. Epub 2011 Jun 23. PubMed PMID: 21700325; PubMed Central PMCID: PMC3132082."

[Sardi 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21730160 "Sardi SP, Clarke J, Kinnecom C, Tamsett TJ, Li L, Stanek LM, Passini MA, Grabowski GA, Schlossmacher MG, Sidman RL, Cheng SH, Shihabuddin LS. CNS expression of glucocerebrosidase corrects alpha-synuclein pathology and memory in a mouse model of Gaucher-related synucleinopathy. Proc Natl Acad Sci U S A. 2011  Jul 19;108(29):12101-6. doi: 10.1073/pnas.1108197108. Epub 2011 Jul 5. PubMed PMID: 21730160; PubMed Central PMCID: PMC3141921."

[Sardi 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23297226 "Sardi SP, Clarke J, Viel C, Chan M, Tamsett TJ, Treleaven CM, Bu J, Sweet L, Passini MA, Dodge JC, Yu WH, Sidman RL, Cheng SH, Shihabuddin LS. Augmenting CNS  glucocerebrosidase activity as a therapeutic strategy for parkinsonism and other  Gaucher-related synucleinopathies. Proc Natl Acad Sci U S A. 2013 Feb 26;110(9):3537-42. doi: 10.1073/pnas.1220464110. Epub 2013 Jan 7. PubMed PMID: 23297226; PubMed Central PMCID: PMC3587272."

[Galvagnion 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25643172 "Galvagnion C, Buell AK, Meisl G, Michaels TC, Vendruscolo M, Knowles TP, Dobson CM. Lipid vesicles trigger α-synuclein aggregation by stimulating primary  nucleation. Nat Chem Biol. 2015 Mar;11(3):229-34. doi: 10.1038/nchembio.1750. Epub 2015 Feb 2. PubMed PMID: 25643172."


