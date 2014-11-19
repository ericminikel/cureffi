---
layout: post
title:  "Molecular Biology 26: 'Prokaryotic translation'"
date:   2014-11-19 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 26 in Harvard's BCMP 200: Molecular Biology course, delivered by Melissa Leger-Abraham on November 19, 2014.*

### Basics of translation

Translation decodes the genetic information contained in mRNA. The major players in this are the mRNA, the tRNA (which has a 3nt anticodon loop and an amino acid acceptor end) and the ribosome. The prokaryotic ribosome consists of two subunits called the large and small subunit.

Translation takes place in four steps:

1. **Initiation**. The two components of the ribosome have to come together at the translation start site to form a functioning ribosome.
2. **Elongation**. tRNA must enter the ribosome and the anticodon must hybridize to the codon in the mRNA. Now the new amino acid can be ligated onto the nascent protein. Then the tRNA must move out of the way to make room for the next one.
3. **Termination/recycling**. When the ribosome reaches a stop codon, this will be recognized by a termination factor, allowing hydrolysis of the polypeptide chain.

tRNAs typically have a clover leaf structure consisting of a CCA terminus (where the amino acid gets attached), aminoacyl stem, T-arm, variable region, anticodon loop, anticodon arm, and D-arm. tRNA synthetases must recognize the tRNA in order to place the correct amino acid corresponding to the anticodon. Some of this is covered in [Berg 2002 Section 29.2](http://www.ncbi.nlm.nih.gov/books/NBK22356/).

Ribosomes preferentially match codons with their "cognate tRNA" which has an exact Watson-Crick match in the anticodon. They sometimes tolerate "near-cognate tRNAs" which have one base pair mismatch. Usually this is a U:G pairing or an A:I, C:I, or U:I pairing in the "wobble base". So-called "non-cognate tRNAs" - those with more than one mismatch - are almost never accepted.

Translation requires a ton of energy and a lot of co-factors.

### Components and structures of the prokaryotic ribosome

Ribosomes are composed in part of RNA. The small subunit contains the 16S rRNA subunit, which is 1542 nt. The large subunit contains the 23S (2900 nt) and 5S (120 nt) rRNAs. All of these rRNAs have well-defined secondary structures.

#### Enzymatic determination of RNA secondary structure

rRNA secondary structures were determined empirically using the following method. Linearize a plasmid DNA template using a restriction enzyme. Transcribe the DNA template *in vitro* using T7, T3 or SP6 RNA polymerase plus NTPs. Label the 5' end with <sup>32</sup>P. Digest with a conformation-dependent RNAse such as RNaseV1. As a control, also fragment a separate batch of the RNA using alkaline hydrolysis, which is not conformation-dependent. Now run the RNAse- and hydrolysis-digested RNA samples on an acrylamide-urea gel and compare the banding patterns. By using the radioactive <sup>32</sup>P label, you know that you are only looking at fragments that include the 5' end, so when you see a given length, you know *exactly* where the 3' cut site was. Therefore any length bands that are enriched in the RNase-digested sample represent nucleotides that are partially protected from RNase digestion by secondary structure. Different RNases have different preferences for secondary structure.

#### Chemical probing of RNA secondary structure

A different method uses dimethyl sulfate (DMS), which methylates at position N7 of guanine and N3 of cytosine, only if the base is *not* base-paired. After reduction with alinine or hydrazine/alanine, DMS-modified sites are preferentially cleaved. By running products on a gel you can see which nucleotides were base-paired [[Peattie & Herr 1981]].

#### Sequence covariation analysis

tRNA secondary structure is highly conserved across organisms, yet the specific tRNA sequence is not. This implies that every substitution in a tRNA is accompanied by a corresponding substitution in the opposing nucleotide that it base pairs with. Therefore by aligning the tRNA sequences across a large number of organisms you can identify positions that covary. This bioinformatic analysis successfully predicted ~97% of tRNA secondary structure.

#### Ribosomal proteins

Proteins found in the small subunit are prefixed S; those in the large subunit are prefixed L. Ribosomal proteins have various roles, such as stabilizing rRNA, accelerating peptide bond formation (L27 and L16), and participating in extra-ribosomal functions (for example, S6 undergoes phosphorylation which helps to determine cell size and glucose homeostasis). However, no proteins are proximate to the amino acid transferase center of the ribosome - the catalytic function of ribosomes is actually carried out by the RNAs, dubbed ribozymes.

#### Structure of the prokaryotic ribosome

The [2009 Nobel Prize in Chemistry](http://www.nobelprize.org/nobel_prizes/chemistry/laureates/2009/) went to three individuals who contributed to the crystal structure of the prokaryotic ribosome. This work was done in the early 1980s and one of the early obstacles was the lack of software capable of analyzing the X-ray diffraction data. However, none of those three individuals actually solved the full crystal structure of the ribosome. That task was finally accomplished in 2001 by Harry H. Noller - his 5.5&Aring; structure even included the tRNAs [[Yusupov 2001]]. Further studies by Joachim Frank using cryo-EM have helped to clarify the dynamic nature of the ribosome structure.

Many of these studies used bacteria that thrive in high-salt or high-temperature environments, rather than just *E. coli*, on the theory that these bacteria from extreme environments would have ribosomes that were more structurally stable and would better withstand crystallization.

Noller's structure [[Yusupov 2001]] shows that the large (50S) subunit [PDB# [1G1Y](http://pdb.org/pdb/explore/explore.do?structureId=1GIY)] contains the 23S and 5S rRNAs and 34 proteins dubbed L1 through L34. The small (30S) subunit [PDB# [1G1X](http://pdb.org/pdb/explore/explore.do?structureId=1GIX)] contains the 16S rRNA and 21 proteins dubbed S1 through S21. The small subunit is said to contain a head, beak, neck, shoulder and spur. The large subunit is said to contain an L1 stalk, L7/L12 stalk and central protuberance. In the small subunit, one can observe three sites where a tRNA can exist, labeled the aminoacyl (A) site, the peptidyl (P) site and the exit (E) site. The large subunit also contains the entry (T) site.

When the large (50S) and small (30S) subunits come together, the whole thing is called the 70S ribosome. The structure of the *E. coli* 70S ribosome has been solved to 3.5&Aring; resolution, even including a piece of mRNA [[Schuwirth 2005]].

The large and small subunits' functions are now understood as follows:

Small (30S):

+ binds initiation factors
+ binds initiator tRNA
+ tRNA decoding/fidelty

Large (50S):

+ binds elongation factors
+ binds the aminoacyl-tRNA extremity
+ peptide bond formation

### Mechanism

#### Initiation

Many prokaryotic transcripts are polycistronic, and prokaryotic transcription and translation are coupled, allowing fast turnover. This raises the question of how the translation of different genes within a single mRNA is regulated. The answer is that before the AUG start site of each ORF there is a [Shine-Dalgarno sequence](http://en.wikipedia.org/wiki/Shine-Dalgarno_sequence) which must be exposed to allow translation. This sequence is `AGGAGGU` from positions approximately -13 to -7 before the AUG. In other words, AGGAGGU(N){6&plusmn;2}AUG is the sequence around a start site.

The large and small subunits begin unassociated. At initiation, initiation factor 1 (IF1) binds the small subunit over the A site, blocking it. Then an mRNA binds the small subunit, and IF2 binds a GTP molecule, recruiting a methionine tRNA. If and only if the tRNA matches the codon perfectly, the GTP will undergo hydrolysis, triggering a conformational change that ejects IF1 and IF3 as well as the GDP, and allowing the small and large subunits to come together.

#### Elongation

EF-Tu interacts with the L7/L12 stalk of the 50S ribosome. The method by which ribosomes perform "decoding" is reviewed in [[Schmeing & Ramakrishnan 2009]]. tRNA/EF-Tu binding to the ribosome causes a conformational change in the tRNA which tilts the anticodon loop. Activation of EF-Tu involves the "sarcine-ricine loop" which is cleaved by [ricin](http://en.wikipedia.org/wiki/Ricin).

The mechanism of peptide bond formation has been the subject of wild speculation for many years. It is now thought that catalysis is accomplished by positioning and water exclusion. The bond formation involves a nucleophilic attack by the &alpha;-amino group of the aminoacyl-tRNA on the ester carbonyl of the peptidyl-tRNA.

The mechanism of translocation of tRNAs betwen positions A, P and E is reviewed in [[Wilson 2014]]. Wilson's Figure 1 depicts three tRNAs simultaneously occupying the A, P and E sites, but such structures have only been observed upon trapping with antibiotics. Most people in the field believe that in the uninhibited state, the ribosome never harbors three tRNAs at once, as entry of a tRNA to the A site triggers simultaneous ejection of a tRNA from the E site.

#### Termination/recycling

Release factor 1 (RF1) recognizes UAA and UAG stop codons, while RF2 recognizes UAA and UGA stop codons. Release factors trigger release of the nascent polypeptide chain from the ribosome, and are themselves released once the polypeptide chain is released.

RF1 contains a conserved PVT motif adjacent to the anticodon loop.

### Antibiotics and methods

#### Antibiotics

Most antibiotics are inhibitors of prokaryotic ribosomes, in fact, almost all of them target the elongation cycle [[Wilson 2014]].

Mechanisms of antibiotic resistance are categorized into these groups, as in [[Wilson 2014]] Table 1. For most drugs, at least one of the resistance mechanisms is mutations in the targeted RNA/protein.

#### Methods

Sucrose gradient sedimentation is a useful method for studying ribosomes. This can give you ribosome profiles - see e.g. [[Hu 2010]].

In order to study mutations in rRNA, you need to add a recognition signal in your plasmid-encoded rRNA to allow you to distinguish it from endogenous rRNA. This can be achieved with an MS2 recognition signal. Another strategy is to introduce a mutation in the recognition sequence in the plasmid rRNA and a corresponding mutation in a plasmid-encoded copy of luciferase, such that only ribosomes containing the mutant rRNA can translate the luciferase. This gives you a reporter gene for activity of ribosomes including your plasmid-encoded rRNA, and therefore you can perform fidelity assays and so on.




[Peattie & Herr 1981]: http://www.ncbi.nlm.nih.gov/pubmed/6166006 "Peattie DA, Herr W. Chemical probing of the tRNA--ribosome complex. Proc Natl  Acad Sci U S A. 1981 Apr;78(4):2273-7. PubMed PMID: 6166006; PubMed Central PMCID: PMC319327."

[Yusupov 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11283358 "Yusupov MM, Yusupova GZ, Baucom A, Lieberman K, Earnest TN, Cate JH, Noller HF. Crystal structure of the ribosome at 5.5 A resolution. Science. 2001 May 4;292(5518):883-96. Epub 2001 Mar 29. PubMed PMID: 11283358."

[Schuwirth 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16272117 "Schuwirth BS, Borovinskaya MA, Hau CW, Zhang W, Vila-Sanjurjo A, Holton JM, Cate JH. Structures of the bacterial ribosome at 3.5 A resolution. Science. 2005  Nov 4;310(5749):827-34. PubMed PMID: 16272117."

[Schmeing & Ramakrishnan 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19838167 "Schmeing TM, Ramakrishnan V. What recent ribosome structures have revealed about the mechanism of translation. Nature. 2009 Oct 29;461(7268):1234-42. doi: 10.1038/nature08403. Epub 2009 Oct 18. Review. PubMed PMID: 19838167."

[Wilson 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24336183 "Wilson DN. Ribosome-targeting antibiotics and mechanisms of bacterial resistance. Nat Rev Microbiol. 2014 Jan;12(1):35-48. doi: 10.1038/nrmicro3155. Review. PubMed PMID: 24336183."

[Hu 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20118937 "Hu W, Petzold C, Coller J, Baker KE. Nonsense-mediated mRNA decapping occurs on polyribosomes in Saccharomyces cerevisiae. Nat Struct Mol Biol. 2010 Feb;17(2):244-7. doi: 10.1038/nsmb.1734. Epub 2010 Jan 31. PubMed PMID: 20118937; PubMed Central PMCID: PMC2840703."


