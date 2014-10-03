---
layout: post
title:  "Molecular Biology 12: 'Base excision repair (BER) and nucleotide excision repair (NER)'"
date:   2014-10-03 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 12 in Harvard's BCMP 200: Molecular Biology course, delivered by Johannes Walter on October 3, 2014.*

Whereas RER and MMR from [last time](/2014/10/01/molecular-biology-11) repair replication errors, base excision repair (BER) and nucleotide excision repair (NER) repair chemical damage. Here is a comparison of BER and NER.

|  | BER | NER |
| ----- | -------------------- | -------------------------- |
| size of chemical group added in the damage event it repairs | small adducts | large adducts |
| does the damage it repairs distort the DNA helix? | non-distorting | distorting |
| repairs damage caused by | endogenous mutagens | exogenous mutagens |
| recognizes | specific chemical changes | general damage |

### Base excision repair (BER)

**Hydrolysis** is the most common form of DNA damage. Often it causes spontaneous de-purination or de-pyrimidation - i.e. removal of the entire aromatic base, resulting in an "abasic site," often abbreviated an "AP site". Each day in one cell 18,000 depurination and 600 depyrimidation events occur. Another form of hydrolysis is the deamination of cytosine, converting it to uracil. This creates a G:U base pair, which on replication will become one G:C copy and one A:U copy. When the A:U copy further replicates, it will create a fixed A:T mutation. The net result is a C&rarr;T transition. Uracil-DNA glycosylase (UNG; *UNG* gene in humans) is responsible for repairing the uracil mutation before it leads to a transition.

**Oxidation** is another common form of DNA damage. Most often, it converts guanine to 8-OxoG. If 8-OxoG then rotates, it is able to base pair with A instead of C. The replicaton of the 8-oxo-G:A pair will lead to one 8-OxoG:A daughter duplex, and one T:A daughter duplex. The net result is a G&rarr;T transversion.

In addition to uracil, 8-oxo-G and abasic sites as explained above, other bases resulting from chemical damage include hypoxanthine, thymine glycol, 3me-A, and &epsilon;A. BER is responsible for repairing all of these.

"Short patch" BER involves a DNA glycosylase, AP endonuclease (*APEX1* gene in humans; serves to remove AP sites), AP lyase, pol &beta; and DNA ligase XRCC1. An alternate pathway is called "long patch" BER.

The enzyme 8-OxoG deglycosylate (OGG1, *OGG1* gene in humans) rotates the 8-OxoG so it is pointing outward from the DNA strand, and stacks it with the ring of residue F319 in the enzyme. A hydrogen bond with residue G142 is only possible for 8-OxoG and not regular G, conferring specificity. And a K residue attacks the 8-OxoG to cleave it [[Bruner 2000]]. The mechanism by which OGG1 locates 8-OxoG in the first place is an area of continuing investigation. Another enzyme, MYH (*MYH* gene in humans) removes the A paired with 8-OxoG, or the 2-OH-A paired with G.

*Apex1* knockout is embryonic lethal in mice, presumably because Ape1 is involved in *all* BER processes, whereas the *Ogg1* and *Ung* knockouts have comparatively mild phenotypes.

### Nucleotide excision repair (NER)

NER removes diverse, bulky lesions.

UV light can damage DNA by causing neighboring pyrimidines to covalently bond into either a "cyclobutane pyrimidine dimer" (~90% of the time) or a "6-4 photoproduct" (~10% of the time). Early studies showed that UV irradiation induced a small amount of DNA replication in bacteria, so it was inferred that an enzyme removes chunks of DNA that contain damage, and mutants were identified that lacked this activity [[Setlow & Carrier 1964], [Pettijohn & Hanawalt 1964], [Howard-Flanders & Theriot 1966]]. In humans, loss-of-function of any of eight different genes involved in UV damage repair causes a recessive disease in humans called xeroderma pigmentosum (XP) [form A is OMIM# [278700](http://www.omim.org/entry/278700)] characterized by extreme sensitivity to UV radiation, causing skin damage and early onset skin cancer. Cultured cells from XP patients can be killed (about 99% of cells dead) by ~1 J/m<sup>2</sup> of UV light, whereas comparable cell death is not seen in control cells until about 10 J/m<sup>2</sup> of UV. Using this cellular assay, researchers performed complementation experiments by fusing different patients' cells to form heterokaryons and then testing the heterokaryon's phenotype. These experiments revealed eight complementation groups, with the diseases dubbed XPA through XPG, plus XPV.

The next round of experiments tested whether these eight genes operated in the same or different pathways. The reasoning was that if, say, *XPA* and *XPF* they function in a single pathway, and loss of either gene completely disables the pathway, then the double knockout *XPA<sup>-/-</sup>*, *XPF<sup>-/-</sup>* should have a phenotype no more severe than either of the single knockouts (this situation is called **epistasis** in this context). Whereas if they operate in different pathways, then the double knockout should be more severe than either mutation alone (this situation is called **additive** in this context). (As long as we are defining terms, note that a third possibility, which had already been ruled out in the case of XP, was **redundancy**, in which two pathways can substitute for one another, so that either single knockout is well-tolerated but the double knockout has a phenotype). In the case of XP, it was revelaed that seven types were epistatic to each other (same pathway), while one was in a different pathway.

| name of condition | gene |
| ----------------- | ---- |
| XPA | *XPA* |
| XPB | *ERCC3* |
| XPC | *XPC* |
| XPD | *ERCC2* |
| XPE | *DDB2* |
| XPF | *ERCC4* |
| XPG | *ERCC5* |
| XPV ("variant XP") | *POLH* |

The mechanism for the UV damage repair pathway was finally worked out in [[Sugasawa 2001]]. XPC binds DNA even in the absence of damage. At sites with damage, the duplex is distorted, exposing a small strand of ssDNA, and XPC preferentially binds these ssDNA segments, thus indirectly recognizing sites of distortion, without any specificity for the specific chemical modification causing the distortion. This means that XPC will also bind ssDNA exposed at moments of transcription or replication. XPB protein is a helicase which unwinds the DNA at a site where XPC has bound, allowing XPD protein - also a helicase - to bind and start unwinding. (Note that XPB and XPD act as part of a larger complex called TFIIH). XPD stalls if it hits a bulky adduct indicating DNA damage. Therefore, XPB and XPD function to confirm the presence of DNA damage, whereas XPC by itself can only hypothesize that there might be damage at a particular site. XPG will then bind and recruit XPF; only when both are present, they will start destroying the damaged strand. 

There is also transcription-coupled NER, in which RNA pol II stalls at a damaged base, recruiting proteins CSA and CSB (*ERCC6* and *ERCC8*). Mutations in these two genes to a different recessive disease called Cockayne syndrome [OMIM # [216400](http://omim.org/entry/216400) and [133540](http://www.omim.org/entry/133540)].

If replication begins before a thymine dimer has been repaired, the replication fork will stall at the dimer, and its presence there will occlude NER from occurring. If uncorrected, this problem would lead to incomplete replication by the time of mitosis. To solve this problem, DNA pol &eta; (eta; *POLH* gene in humans) has evolved, which can supplant DNA pol &delta; and can replicate right over a thymine dimer, inserting two As in the correct location across from the dimer so that replication can complete [[Johnson 1999]]. DNA pol &eta; is able to achieve this by lacking geometric selection in its nucleotide binding site, so that although it plays a crucial role of copying over thymine dimers, it has a *far* higher error rate than DNA pol &delta; overall, so it cannot be suffered to engage in general DNA replication. Instead, its recruitment to DNA is tightly regulated [reviewed in [Waters 2009]]. Loss-of-function of *POLH* causes variant XP (XPV) and is additive (not epistatic) with the other causal XP mutations.


[Bruner 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10706276 "Bruner SD, Norman DP, Verdine GL. Structural basis for recognition and repair  of the endogenous mutagen 8-oxoguanine in DNA. Nature. 2000 Feb 24;403(6772):859-66. PubMed PMID: 10706276."

[Setlow & Carrier 1964]: http://www.ncbi.nlm.nih.gov/pubmed/14124320/ "SETLOW RB, CARRIER WL. THE DISAPPEARANCE OF THYMINE DIMERS FROM DNA: AN ERROR-CORRECTING MECHANISM. Proc Natl Acad Sci U S A. 1964 Feb;51:226-31. PubMed  PMID: 14124320; PubMed Central PMCID: PMC300053."

[Pettijohn & Hanawalt 1964]: http://www.ncbi.nlm.nih.gov/pubmed/14202275 "PETTIJOHN D, HANAWALT P. EVIDENCE FOR REPAIR-REPLICATION OF ULTRAVIOLET DAMAGED DNA IN BACTERIA. J Mol Biol. 1964 Aug;9:395-410. PubMed PMID: 14202275."

[Howard-Flanders & Theriot 1966]: http://www.ncbi.nlm.nih.gov/pubmed/5335129/ "Howard-Flanders P, Theriot L. Mutants of Escherichia coli K-12 defective in DNA repair and in genetic recombination. Genetics. 1966 Jun;53(6):1137-50. PubMed PMID: 5335129; PubMed Central PMCID: PMC1211086."

[Sugasawa 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11238373/ "Sugasawa K, Okamoto T, Shimizu Y, Masutani C, Iwai S, Hanaoka F. A multistep damage recognition mechanism for global genomic nucleotide excision repair. Genes Dev. 2001 Mar 1;15(5):507-21. PubMed PMID: 11238373; PubMed Central PMCID: PMC312644."

[Johnson 1999]: http://www.ncbi.nlm.nih.gov/pubmed/9974380 "Johnson RE, Prakash S, Prakash L. Efficient bypass of a thymine-thymine dimer  by yeast DNA polymerase, Poleta. Science. 1999 Feb 12;283(5404):1001-4. PubMed PMID: 9974380."

[Waters 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19258535 "Waters LS, Minesinger BK, Wiltrout ME, D'Souza S, Woodruff RV, Walker GC. Eukaryotic translesion polymerases and their roles and regulation in DNA damage tolerance. Microbiol Mol Biol Rev. 2009 Mar;73(1):134-54. doi: 10.1128/MMBR.00034-08. Review. PubMed PMID: 19258535; PubMed Central PMCID: PMC2650891."