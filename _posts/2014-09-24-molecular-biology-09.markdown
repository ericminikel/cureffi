---
layout: post
title:  "Molecular Biology 09: 'Initiation of replication'"
date:   2014-09-24 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 09 in Harvard's BCMP 200: Molecular Biology course, delivered by Johannes Walter on September 24, 2014.*

[Last time](/2014/09/22/molecular-biology-08) we discussed the mechanism of DNA replication. Current open questions in the field include:

+ How many Pol III cores are active at the fork? Recent data suggests there may be three, but it is not yet clear what third one would do, as there are only two strands (leading and lagging). One possibility is that two Okazaki fragments are being synthesized at any one time.
+ How is the replisome (the entire replication complex) architected in eukaryotes? Eukaryotes have no ortholog of the Tau subunit, so no one knows what holds it all together, and there is no direct evidence in eukaryotes for the "trombone model" where lagging strand synthesis is physically complexed to leading strand synthesis.

### Origins of replication

DNA pol II cannot simply sit on DNA and start replicating. This requires a protein called an initiator, which unwinds a short segment of double helix DNA so that a helicase can be recruited to perform further unwinding. A primase recognizes the single stranded DNA in the unwound segment, and leads to replisome assembly. The goal for today is to understand how the initiator does its job.

#### In bacteria

The bacterial chromosome contains a single origin of replication called oriC. At oriC, two replication forks assemble and move away from each other. oriC contains an AT-rich DNA-unwinding element ("DUE") and a DnaA box where DnaA can bind [reviewed in [Bell & Kaguni 2013]]. DnaA is an initiator and is an AAA+ ATPase which requires ATP in order to bind DNA. Once it binds, it can recruit DnaB (a helicase) and DnaC (a helicase loader). DnaB is a ring which must be opened and fit around ssDNA. Crystallization of DnaA revealed that it polymerizes into a helical filament [PDB# [2HCB](http://www.rcsb.org/pdb/explore.do?structureId=2HCB)]. DNA actually wraps around the *outside* of the filament in a right-handed solenoid, which is a *positive* supercoil. (Recall that anytime DNA is wrapped *around* something else rather than just twisted on itself, that is a solenoid). The positive supercoil here is in contrast to the negatively supercoiled baseline state of genomic DNA. The positive supercoiling favors formation of a compensatory right-handed plectoneme (which is a *negative* supercoil) adjacent to the solenoid. The DUE, by virtue of being AT-rich, is the energetically easiest place for the DNA to negatively supercoil. This on its own is *almost* enough to unwind the DUE, but as an added bonus, a series of AAA+ domains of the DnaA polymer also bind one of the nascent ssDNA strands, precluding Watson-Crick pairing with the other strand and thus further lowering the energy barrier to unwinding the DUE. This was discovered through a crystal structure of DnaA bound to ssDNA [PDB# [3R8F](http://www.rcsb.org/pdb/explore.do?structureId=3R8F), [Duderstadt 2011]].

#### Comparison with other species

| Species | Genome size (bp) | Origins of replication | S phase duration | Replicon size (bp) |
| ------- | ---------------- | ---------------------- | ---------------- | ------------- |
| *E. coli* | 4e6 | 1 | 30 min | 4e6 |
| Yeast | 1.2e7 | ~300 | 40 min | ~5e4 |
| Human | 6e9 | ~100,000 | 8 hours | ~1e5 |
| Frog embryo | 6e9 | ~1,000,000 | 10 min | ~5e3 |

Source: [[Blumenthal 1974]]. Eukaryotic DNA replication from many origins of replication raises several biological questions, such as how do they prevent multiple replication events from the same origin, resulting in copy number increase?

In yeast, it is recognized that ARS elements guide replication initiation [[Stinchcomb 1979]]. These elements were shown sufficient to initiate replication in genetic experiments, but to show that replication *in vivo* really begins at these elements proved more difficult. This was finally demonstrated using 2-D gel electrophoresis, relying on the fact that unwound DNA at origins of replication causes an aberrant migration pattern on a gel [[Brewer & Fangman 1987]]. Restriction-digested genomic DNA from actively dividing yeast was run first on a low (0.4%) agarose gel at low (0.5 V/cm) voltage to separate by size, and then the band was cut and a new gel was cast around it with a high (1%) agarose and high voltage (2-3 V/cm) to separate by shape. DNA with unwound "bubbles" in it will migrate slower than otherwise expected. Southern blotting with a radioactive probe complementary to a genomic sequence of interest can identify where a particular sequence is located on the 2-D gel. Similarly, DNA fragments with a "Y" in them (dsDNA at one end, two ssDNA strands at the other end) or double "Y" (ssDNA at both ends) migrate in yet different patterns.

In yeast, addition of &alpha;-factor arrests cells at the late G1 stage, and subsequent washing-out of &alpha;-factor causes them all to advance into S phase. This method is used to synchronize the replication of a large number of cells. This allowed for fine mapping of origin of replication sites [[Szyjka 2005]]. Work has also been done to determine why and how some origins begin replication earlier than others [[Vogelauer 2002]] but it is still not known why there are early origins and late origins. One hypothesis is that having too many origins initiate at once overwhelms the cell's DNA repair mechanisms.

To identify the eukaryotic initiator protein, Bell and Stillman looked for proteins that bind ARS elements using DNAse I footprinting [[Bell 1992], [Bell 1993]]. He radiolabeled one strand of ARS element-containing DNA and mixed it with yeast nuclear extract (presumed to contain the putative binding protein) and then added DNAse I at a concentration low enough to make an average of one cut per DNA fragment, and then ran the DNA on a gel to find the subsegment of DNA that was never cut due to the binding protein occluding DNAse I from cutting. He then fractioned the proteins isolated in this manner, until he found a group of six proteins that could not be further separated because they were complexed. He named them the origin replication complex (ORC). He found that ATP was essential for their DNA-binding activity and that mutations in any one of the six proteins were lethal in yeast.

Bell's *in vitro* experiments were not sufficient to show that ORC binds to ARS *in vivo*. ORC is present in the yeast nucleus at a total concentration about 160 nM, and its K<sub>D</sub> from *in vitro* experiments is 5 nM. But just as with [Cro and repressor in bacteria](/2014/09/12/molecular-biology-05), you have the issue that ORC can also bind non-specific DNA sequences, and while it is far less affine for these sequences there are far *more* of them than there are specific sequences. As a result, the *free* concentration of ORC might therefore be much lower than its *total* concentration. The "final" proof of ORC binding to ARS *in vivo* is to use ChIP to immunoprecipitate ORC and then sequence the DNA bound to it. In practice, there are no good antibodies to ORC components, so this experiment required expression of an Orc2-myc fusion protein and the use of anti-myc mAbs [[Tanaka 1997]].

ChIP can only identify DNA sequences given a known protein. To do the reverse - ask what proteins bind a particular DNA locus - there is a new technique called proteomics of isolated chromatin segments (PICh) developed by Bob Kingston's group [[Dejardin & Kingston 2009]].

In yeast, the ~300 ORC binding sites are spaced at an average of every 45 kb across the yeast genome, with no large gaps, and none fall within transcripts.

In humans, which have ~100,000 origins of replication, the ORC complex has almost no sequence specificity and can bind almost anywhere within a 1-50kb "initiation zone". It is still not known how ORC recognizes these zones; one hypothesis is that it is related to chromatin structure and that the initiation zones have "permissive chromatin".

### Helicase recruitment

Once ORC binds, it still needs to recruit helicases in order to initiate replication. In bacteria, DnaB and DnaC bind the unwound DNA. In eukaryotes, ORC can be considered the equivalent of DnaA, and the MCM2-7 complex is the equivalent of DnaB. MCM2-7 binds a protein called Cdt1 which helps bring MCM2-7 to the DNA. Thus Cdt1 can be considered functionally equivalent to DnaC.

However, unlike DnaA, no one has detected DNA-unwinding activity of ORC. And unlike DnaB, which binds ssDNA, MCM2-7 encircles and binds dsDNA. It is now believed that in the G1 phase, a "licensing" event occurs in which Cdt1 brings MCM2-7 to the DNA to form a "pre-replication complex" (Pre-RC). Then in the S phase, it is hypothesized that MCM2-7 opens to eject one of the two strands from its ring, converting the Pre-RC to an active replication complex (RC). Once ssDNA is thus liberated, helicases can bind, and a replisome can form. Proteins required for the transition from Pre-RC to RC include Mcm10, Dpb11, Sld2, Sld3, DDK and CDK, but not all of their roles are clear. We also know that once the helicase is active, it associates with two helicase co-factors called Cdc45 and GINS.

### Preventing multiple replications from the same origin

Re-initiation from the same origin is prevented by keeping MCM2-7 from accessing the same DNA again. This is acheived by having ORC, Cdt1 and Cdc6 be required only for the recruitment of MCM2-7 and not for its subsequent activation. Once S phase has begun, ORC, Cdt1 and Cdc6 are de-activated (for instance, Cdt1 is degraded) and are no longer able to recruit MCM2-7. Geminin is an inhibitor of the licensing factor Cdt1, and is not expressed until S phase, thus it prevents initiation from beginning until the S phase where Cdt1 is being degraded. Several hours pass between MCM2-7 loading in G1 phase, and the initiation in S phase, particularly for late-firing initiation loci where the initiation happens towards the end of S phase. We think that MCM2-7 holds tight to dsDNA during those several hours, because if the strands were separated into ssDNA they would be vulnerable to nucleases.

[Bell & Kaguni 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23613349 "Bell SP, Kaguni JM. Helicase loading at chromosomal origins of replication. Cold Spring Harb Perspect Biol. 2013 Jun 1;5(6). pii: a010124. doi: 10.1101/cshperspect.a010124. Review. PubMed PMID: 23613349."

[Duderstadt 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21964332 "Duderstadt KE, Chuang K, Berger JM. DNA stretching by bacterial initiators promotes replication origin opening. Nature. 2011 Oct 2;478(7368):209-13. doi: 10.1038/nature10455. PubMed PMID: 21964332; PubMed Central PMCID: PMC3192921."

[Blumenthal 1974]: http://www.ncbi.nlm.nih.gov/pubmed/4208784 "Blumenthal AB, Kriegstein HJ, Hogness DS. The units of DNA replication in Drosophila melanogaster chromosomes. Cold Spring Harb Symp Quant Biol. 1974;38:205-23. PubMed PMID: 4208784."

[Stinchcomb 1979]: http://www.ncbi.nlm.nih.gov/pubmed/388229 "Stinchcomb DT, Struhl K, Davis RW. Isolation and characterisation of a yeast chromosomal replicator. Nature. 1979 Nov 1;282(5734):39-43. PubMed PMID: 388229."

[Brewer & Fangman 1987]: http://www.ncbi.nlm.nih.gov/pubmed/2822257 "Brewer BJ, Fangman WL. The localization of replication origins on ARS plasmids in S. cerevisiae. Cell. 1987 Nov 6;51(3):463-71. PubMed PMID: 2822257."

[Szyjka 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16137624 "Szyjka SJ, Viggiani CJ, Aparicio OM. Mrc1 is required for normal progression of replication forks throughout chromatin in S. cerevisiae. Mol Cell. 2005 Sep 2;19(5):691-7. PubMed PMID: 16137624."

[Vogelauer 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12453428 "Vogelauer M, Rubbi L, Lucas I, Brewer BJ, Grunstein M. Histone acetylation regulates the time of replication origin firing. Mol Cell. 2002 Nov;10(5):1223-33. PubMed PMID: 12453428."

[Bell 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1579162 "Bell SP, Stillman B. ATP-dependent recognition of eukaryotic origins of DNA replication by a multiprotein complex. Nature. 1992 May 14;357(6374):128-34. PubMed PMID: 1579162."

[Bell 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8266072 "Bell SP, Kobayashi R, Stillman B. Yeast origin recognition complex functions in transcription silencing and DNA replication. Science. 1993 Dec 17;262(5141):1844-9. PubMed PMID: 8266072."

[Tanaka 1997]: http://www.ncbi.nlm.nih.gov/pubmed/9288745 "Tanaka T, Knapp D, Nasmyth K. Loading of an Mcm protein onto DNA replication origins is regulated by Cdc6p and CDKs. Cell. 1997 Aug 22;90(4):649-60. PubMed PMID: 9288745."

[Dejardin & Kingston 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19135898 "Déjardin J, Kingston RE. Purification of proteins associated with specific genomic Loci. Cell. 2009 Jan 9;136(1):175-86. doi: 10.1016/j.cell.2008.11.045. PubMed PMID: 19135898; PubMed Central PMCID: PMC3395431."