---
layout: post
title:  "Chemical biology 11: Target-oriented next-generation synthesis"
date:   2015-10-13 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 11 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on October 13, 2015.*

Today's lecture is five vignettes of target-oriented synthesis. Main take-homes are:

1. Next-gen synthesis has its roots in the goal of **total synthesis** of a natural product, which was undertaken both as a source of natural products and as a way to push the boundaries of synthesis. Over time, goals have shifted towards synthesizing molecules that are close but not identical to the natural product of interest, and for which shorter and more modular syntheses can be designed. This frees us from the constraints of natural selection and makes it easier to look for variants of these compounds that have better pharmacokinetics or other desirable properties.
2. Think not only about what has been accomplished, but also what has not been accomplished, and look to the vignettes for project ideas.

### Mycolactones [[Kishi 2011]]

*Mycobacterium ulcerans*, a pathogenic bacterium endemic in tropical countries and carried by mosquitoes and other insects, causes necrotic lesions in humans, known as Buruli ulcers, by secreting a small molecule. Conveniently, the NMR spectrum of this small molecule was the sum of its three parts, so it was possible to consider each part separately in trying to figure out the exact structure. The top part has three stereocenters, so eight possible stereoisomers. The enantiomers would have the same NMR spectra as each other, so it was only necessary to synthesize four diastereomers to see which one had the same NMR spectrum as the corresponding part of the whole natural product. Next you needed to know which enantiomer of that one was correct, and to do this, they took NMR spectra in a chiral solvent. They repeated the process for the other two fragments of the molecule, put them together, and proposed a whole structure for the molecule, called a mycolactone. To confirm this, they then designed a total synthesis of the proposed structure, and confirmed that the NMR spectrum and bioactivity of the synthesized molecule and natural product were identical.

### Trioxacarcin A [[Svenda 2011]]

Natural products that contain an anthracine or phenanthroline (three-ring) structure usually intercalate into DNA. Trioxacarcin A, from *Streptomyces*, is one such molecule. Synthesis of close analogs yielded one molecule with ~5 &mu;M EC<sub>50</sub> for killing HeLa and another cancer cell line (while its diastereomer was inactive) and another one with ~0.1 &mu;M EC<sub>50</sub>. The cytotoxic molecules intercalated into DNA and showed fluorescence on a gel, while the inactive one did not. However, this does not necessarily prove that the intercalation is sufficient to explain the cytotoxic activity. It would be interesting to characterize how toxic these compounds are in different types of cancers and whether there are other requirements for cytotoxicity besides just interaction with DNA.

### Biyouyanagins [[Nicolau 2011]]

The traditional medicinal herb *Hypericum chinense*, closely related to St. John's wort (*Hypericum perforatum*, 贯叶连翘), creates compounds called biyouyanagin A and B, which inhibit HIV replication in certain cell lines. They can be synthesized by using light &mdash; photocycloaddition of *ent*-zingiberene and hyperlactone C to one another. This yields a mix of biyouyanagin A, B, and C. They synthesized a whole library of close derivatives and tested them in an assay where a virus expresses GFP to see which ones inhibit viral replication.

### Bryostatin [[Wender 2011]]

*Bugula neritina*, a colonial invertebrate marine animal of the *Bryozoa* phylum, creates a compound called bryostatin 1. It is quite scarce and Wender cites a figure that 18g of the compound were isolated from 14 tons of the animal. But it's incredibly potent, with a K<sub>i</sub> of ~1 nM for binding and activating members of the protein kinase C (PKC) family. This is one of many diverse natural products that activate members of the protein kinase C (PKC) family that function at the cytoplasmic leaflet of the plasma membrane. The natural products achieve this by having one domain that binds the C1 domain of these kinases, and then having an "HP tail" that binds to the lipid membrane itself, thus changing the localization of the kinase. Thus, these small molecules are gain-of-function dimerizers. Their kinase targets naturally bind the signaling molecule diacylglycerol, of which these natural products are mimetics.

As Wender reviews in the introduction, bryostatin has been investigated for a huge number of purported biological activities, and has been through 35 phase I and II trials. This sheer number is suggestive of an unguided approach, and before doing a 36th clinical trial, it would be advisable to do the chemical biology work to really understand the cellular activity of bryostatin and come in with a better hypothesis. Wender designed a modular strategy for synthesizing a series of analogs and used microscopy on GFP-tagged PKC to investigate their ability to cause translocation to the membrane.

### *Stemona* alkaloids [[Frankowski 2011]]

*Stemona* are a group of plants. A series of alkaloid natural products isolated from *Stemona* share a three-ring system containing a 6, 5, and 7-membered ring. These natural products were reported to have antitussive (cough suppressant) properties, apparently by binding some GPCR. Therefore Frankowski designed a strategy to synthesize a library of 104 analogs, and then test them against a battery of 41 GPCRs to see whether they could achieve any interesting new biological activities. They found a lot of hits for two GPCRs called sigma 1 and sigma 2 receptors.


[Kishi 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21383136 "Kishi Y. Chemistry of mycolactones, the causative toxins of Buruli ulcer. Proc Natl Acad Sci U S A. 2011 Apr 26;108(17):6703-8. doi: 10.1073/pnas.1015252108. Epub 2011 Mar 7. PubMed PMID: 21383136; PubMed Central PMCID: PMC3084064."

[Svenda 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21245350 "Švenda J, Hill N, Myers AG. A multiply convergent platform for the synthesis of trioxacarcins. Proc Natl Acad Sci U S A. 2011 Apr 26;108(17):6709-14. doi: 10.1073/pnas.1015257108. Epub 2011 Jan 18. PubMed PMID: 21245350; PubMed Central PMCID: PMC3084144."

[Nicolaou 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21245351 "Nicolaou KC, Sanchini S, Sarlah D, Lu G, Wu TR, Nomura DK, Cravatt BF, Cubitt B, de la Torre JC, Hessell AJ, Burton DR. Design, synthesis, and biological evaluation of a biyouyanagin compound library. Proc Natl Acad Sci U S A. 2011 Apr 26;108(17):6715-20. doi: 10.1073/pnas.1015258108. Epub 2011 Jan 18. PubMed PMID:  21245351; PubMed Central PMCID: PMC3084107."

[Wender 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21415363 "Wender PA, Baryza JL, Brenner SE, DeChristopher BA, Loy BA, Schrier AJ, Verma VA. Design, synthesis, and evaluation of potent bryostatin analogs that modulate PKC translocation selectivity. Proc Natl Acad Sci U S A. 2011 Apr 26;108(17):6721-6. doi: 10.1073/pnas.1015270108. Epub 2011 Mar 17. PubMed PMID: 21415363; PubMed Central PMCID: PMC3084132."

[Frankowski 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21368188 "Frankowski KJ, Setola V, Evans JM, Neuenswander B, Roth BL, Aubé J. Synthesis  and receptor profiling of Stemona alkaloid analogues reveal a potent class of sigma ligands. Proc Natl Acad Sci U S A. 2011 Apr 26;108(17):6727-32. doi: 10.1073/pnas.1016558108. Epub 2011 Feb 28. Erratum in: Proc Natl Acad Sci U S A.  2012 Sep 18;109(38):15526. PubMed PMID: 21368188; PubMed Central PMCID: PMC3084131."


