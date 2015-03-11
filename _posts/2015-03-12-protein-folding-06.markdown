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

Fowler goes on to review the many reported functional roles of amyloid. Apparently fish and insect eggs are wrapped in an amyloid made of chorion proteins, and the curli protein amyloids in *E. coli* and other bacteria are thought to help with surface adhesion and perhaps (in the case of pathogenic bacteria) host invasion. These are examples of evolution using amyloid for its structural properties. Then there are examples of epigenetic inheritance, like [<em>\[PSI<sup>+</sup>\]</em>](/2014/09/30/the-conformation-holds-the-information/), *\[URE3\]*, *\[RNQ<sup>+</sup>\]* and HET-s. They go on to talk about fibrin in blood clotting, Pmel17 in apparently sequestering toxic melanin precursors.


[Jarrett 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8490014 "Jarrett JT, Berger EP, Lansbury PT Jr. The carboxy terminus of the beta amyloid protein is critical for the seeding of amyloid formation: implications for the pathogenesis of Alzheimer's disease. Biochemistry. 1993 May 11;32(18):4693-7. PubMed PMID: 8490014."

[Fowler 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17412596 "Fowler DM, Koulov AV, Balch WE, Kelly JW. Functional amyloid--from bacteria to humans. Trends Biochem Sci. 2007 May;32(5):217-24. Epub 2007 Apr 6. Review. PubMed PMID: 17412596."

[Luhrs 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16293696 "Lührs T, Ritter C, Adrian M, Riek-Loher D, Bohrmann B, Döbeli H, Schubert D, Riek R. 3D structure of Alzheimer's amyloid-beta(1-42) fibrils. Proc Natl Acad Sci U S A. 2005 Nov 29;102(48):17342-7. Epub 2005 Nov 17. PubMed PMID: 16293696;  PubMed Central PMCID: PMC1297669."

[Rangel 2013]: http://www.ncbi.nlm.nih.gov/pubmed/22998478/ "Rangel A, Race B, Striebel J, Chesebro B. Non-amyloid and amyloid prion protein deposits in prion-infected mice differ in blockage of interstitial brain  fluid. Neuropathol Appl Neurobiol. 2013 Apr;39(3):217-30. doi: 10.1111/j.1365-2990.2012.01303.x. PubMed PMID: 22998478; PubMed Central PMCID: PMC3567241."
