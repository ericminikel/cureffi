---
layout: post
title:  "Protein folding 06: Amyloid"
date:   2015-03-12 12:00:00
author: ericminikel
tag: mit-7.88j
location: Cambridge, MA
summary200: "Amyloid beta, functional amyloid, and a guest lecture by Peter Lansbury on alpha synuclein as a drug target."
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

```
fetch 2beg
hide everything
show cartoon
bg_color white
spectrum count, yellow_red
```

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

### Guest lecture by Peter T. Lansbury





[Jarrett 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8490014 "Jarrett JT, Berger EP, Lansbury PT Jr. The carboxy terminus of the beta amyloid protein is critical for the seeding of amyloid formation: implications for the pathogenesis of Alzheimer's disease. Biochemistry. 1993 May 11;32(18):4693-7. PubMed PMID: 8490014."

[Fowler 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17412596 "Fowler DM, Koulov AV, Balch WE, Kelly JW. Functional amyloid--from bacteria to humans. Trends Biochem Sci. 2007 May;32(5):217-24. Epub 2007 Apr 6. Review. PubMed PMID: 17412596."

[Luhrs 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16293696 "Lührs T, Ritter C, Adrian M, Riek-Loher D, Bohrmann B, Döbeli H, Schubert D, Riek R. 3D structure of Alzheimer's amyloid-beta(1-42) fibrils. Proc Natl Acad Sci U S A. 2005 Nov 29;102(48):17342-7. Epub 2005 Nov 17. PubMed PMID: 16293696;  PubMed Central PMCID: PMC1297669."

[Rangel 2013]: http://www.ncbi.nlm.nih.gov/pubmed/22998478/ "Rangel A, Race B, Striebel J, Chesebro B. Non-amyloid and amyloid prion protein deposits in prion-infected mice differ in blockage of interstitial brain  fluid. Neuropathol Appl Neurobiol. 2013 Apr;39(3):217-30. doi: 10.1111/j.1365-2990.2012.01303.x. PubMed PMID: 22998478; PubMed Central PMCID: PMC3567241."

[Glenner & Wong 1984a]: http://www.ncbi.nlm.nih.gov/pubmed/6375662 "Glenner GG, Wong CW. Alzheimer's disease: initial report of the purification and characterization of a novel cerebrovascular amyloid protein. Biochem Biophys  Res Commun. 1984 May 16;120(3):885-90. PubMed PMID: 6375662."

[Glenner & Wong 1984b]: http://www.ncbi.nlm.nih.gov/pubmed/6236805 "Glenner GG, Wong CW. Alzheimer's disease and Down's syndrome: sharing of a unique cerebrovascular amyloid fibril protein. Biochem Biophys Res Commun. 1984 Aug 16;122(3):1131-5. PubMed PMID: 6236805."

[Kirschner 1986]: http://www.ncbi.nlm.nih.gov/pubmed/3455785 "Kirschner DA, Abraham C, Selkoe DJ. X-ray diffraction from intraneuronal paired helical filaments and extraneuronal amyloid fibers in Alzheimer disease indicates cross-beta conformation. Proc Natl Acad Sci U S A. 1986 Jan;83(2):503-7. Erratum in: Proc Natl Acad Sci U S A 1986 Apr;83(8):2776. PubMed PMID: 3455785; PubMed Central PMCID: PMC322888."

[Petkova 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15653506 "Petkova AT, Leapman RD, Guo Z, Yau WM, Mattson MP, Tycko R. Self-propagating,  molecular-level polymorphism in Alzheimer's beta-amyloid fibrils. Science. 2005 Jan 14;307(5707):262-5. PubMed PMID: 15653506."



