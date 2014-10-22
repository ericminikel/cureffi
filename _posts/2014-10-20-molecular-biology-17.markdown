---
layout: post
title:  "Molecular Biology 17: 'Gene regulation III - transcription'"
date:   2014-10-20 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*This is my understanding based on notes by Thao Truong from lecture 17 of Harvard's BCMP 200: Molecular Biology course, delivered by Timur Yusufzai on October 20, 2014.*

### Motivating introduction and historical background

Changes in gene expression are the basis for biological diversity, cell fate, almost all physiological processes, and the life and death of a cell. "Transcription" has been trending on PubMed since 1970 and 1.5% of all publications now include this keyword.

In the 1940s-1950s, before the central dogma was all worked out, there were two prevailing models for gene regulation. The "transpeptidation" model held that proteins assembled other proteins using parts from yet other proteins, such as single amino acids or smaller peptides. The "granule" model held that granules (now called ribosomes) transported genetic material to the cytoplasm for protein synthesis, with a 1:1 stoichiometry of ribosomes to proteins.

Griffth had identified DNA as the "transforming principle" in 1928, and DNA was definitively shown to be the genetic material in 1944 (Avery, McLeod and McCarty) and 1952 (Hershey and Chase). In 1952-3 Dounce proposed DNA might be a template for RNA, and that RNA might be a template for protein synthesis, and based on a back-of-the-envelope calculation he figured out that it probably took 3 nucleotides to encode one amino acid [[Dounce 1953]]. Over 1956-1961 it was discovered that there were things called mRNAs which carried a copy of the information from DNA into the cytoplasm.

### Identifying DNA-dependent RNA polymerases

Dounce's hypothesis meant there must be proteins which synthesize RNA using DNA as a template. To try to find these proteins, Roeder & Rutter over 1969-1970 fractioned cell lysates and looked for fractions that would induce RNA synthesis on a phage ssDNA substrate *in vitro*. They found three peaks (fractions containing the RNA polymerizing activity) and named the putative contents of the fractions RNA pol I, II and III. &alpha;-amanitin, an *Amanitas* toxin, inhibits the activity of RNA pol II with an EC<sub>50</sub> of about 10 nM. It also inhibits RNA pol III, but with a way higher EC<sub>50</sub>, about 10 &mu;M, and it has no effect at all on RNA pol I (this appears to refer to findings from [[Lindell 1970]]).

RNA pol I, II and III were eventually shown to be "holoenzymes" each consisting of >10 proteins including one catalytic subunit and several accessory proteins. It also turned out that RNA pol II was key to the central dogma and RNA pol I and III did some other thing not worthy of covering in detail in this lecture.

### Facts about RNA pol II

RNA synthesis has three stages: initiation, elongation and termination.

In yeast, RNA pol II consists of 12 proteins, 10 of which are essential. The 10 were crystallized in complex with DNA and a nascent RNA strand [[Cramer 2001]]. Dr. Yusufzai handed out models of this crystal structure printed on a 3-D printer.

RNA pol II is very similar between yeast and human but this eukaryotic version has only a tiny bit of sequence identity with *E. coli* RNA pol II. In spite of this the overall structure (just not sequence) has been broadly conserved between prokaryotes and eukaryotes. Both prokaryotic and eukaryotic RNA pol II contain a "wall" which DNA cannot pass through, so it bends the template DNA at a 90&deg; angle. This bend helps expose the DNA bases at the active site of transcription. At any given time only about 8 base pairs are single stranded. The catalytic site allows DNA and NTPs to enter (the latter through a pore), and DNA and RNA to exit.

Unlike DNA polymerase, RNA pol II has no processivity factor analogous to PCNA, and it does proofreading in a different way.

In eukaryotic RNA pol II, there is a "trigger loop" and then two helices that make up a "bridge". The bridge changes conformation upon ribonucleotide addition in order to push the nascent strand forward by one base. Near the active site are a histidine which is essential for contact with the NTP, and a leucine which plays a supporting role that makes the process much more efficient [[Wang 2006]].

As with DNA, RNA elongation occurs by the 3'OH group of the nascent strand performing a nucleophilic attack on the new NTP to be incorporated. This requires Mg<sup>2+</sup>. RNA is less stable than DNA in part because it contains a 2'OH group which is vulnerable to hydrolysis. (2' is the group that is "deoxyed" in DNA).

The structure raises the question of how RNA pol II achieves specificity for (1) NTPs and not dNTPs, and (2) the correct base. Arthur Kornberg performed experiemnts saturating crystals of DNA, RNA and RNA pol II with different NTPs to try to force the wrong base to get in there. This is called crystal soaking. He found that the correct base "stays in the A site" while the wrong base "stays out in the E site". However 25% of the time the wrong base will actually get into the A site - however it does not induce the conformational change ("swinging up") in the trigger loop that is required to cause catalysis, so the wrong NTP just stays there until the correct NTP replaces it. &alpha;-amanitine turns out to bind the conserved histidine in the trigger loop and prevent it from swinging up.

Arthur Kornberg also produced a mutants of RNA pol II and chemically altered dNTPs in an attempt to figure out which residues were required for RNA pol II's specificity for NTPs over dNTPs. He found that dNTPs are incorporated at only about 1% the efficiency of NTPs. This refers to 2' dNTPs (the ones found *in vivo*) - if you make a nucleotide deoxy'ed at 3', then RNA pol II is not specific against 3' dNTPs but luckily, those don't exist *in vivo*. In any case, this 1:100 isn't enough specificity (RNA contains much less than 1% DNA content). It turns out a lot of the additional unexplained specificity is not a property of RNA pol II, it's just a consequence of the nucleus having a 100x concentration of NTPs as it does of dNTPs. This concentration difference in turn means that the incorporation of NTPs into DNA is higher than desired - this is handled by ribonucleotide excision repair (RER) as covered in [lecture 11](/2014/10/01/molecular-biology-11/). 

RNA pol II incorporates 20-60 bases per second. It does have proofreading, but with a different mechanism than DNA polymerase - when it detects a wrong base it backs up by two bases and and then starts again. If it cannot fix the mistake for some reason it will just keep drifting backwards and can stall out.

TFIIS helps with processivity and fidelity and keeps RNA pol II from stalling out. TFIIS turns out to have a finger it sticks all the way into the RNA pol II catalytic site to cleave the transcript [[Cheung & Cramer 2011]].

### Summary

1. RNA pol II has an architecture very distinct from DNA polymerase even though they do similar jobs.
2. RNA pol II achieves fidelity by selection in the active site, and only performing catalysis on the correct nucleotides.
3. RNA pol II has proofreading activity dependent on intrinsic RNA hydrolysis and on accessory factors such as TFIIS.

The Cramer group has posted a video of RNA pol II in action which shows many of the above features:

<iframe width="560" height="315" src="//www.youtube.com/embed/WlMV_l88Lus" frameborder="0" allowfullscreen></iframe>

[Dounce 1953]: http://www.ncbi.nlm.nih.gov/pubmed/13099258 "DOUNCE AL. Nucleic acid template hypotheses. Nature. 1953 Sep 19;172(4377):541. PubMed PMID: 13099258."

[Lindell 1970]: http://www.ncbi.nlm.nih.gov/pubmed/4918258 "Lindell TJ, Weinberg F, Morris PW, Roeder RG, Rutter WJ. Specific inhibition of nuclear RNA polymerase II by alpha-amanitin. Science. 1970 Oct 23;170(3956):447-9. PubMed PMID: 4918258."

[Cramer 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11313498 "Cramer P, Bushnell DA, Kornberg RD. Structural basis of transcription: RNA polymerase II at 2.8 angstrom resolution. Science. 2001 Jun 8;292(5523):1863-76.  Epub 2001 Apr 19. PubMed PMID: 11313498."

[Wang 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17129781 "Wang D, Bushnell DA, Westover KD, Kaplan CD, Kornberg RD. Structural basis of  transcription: role of the trigger loop in substrate specificity and catalysis. Cell. 2006 Dec 1;127(5):941-54. PubMed PMID: 17129781; PubMed Central PMCID: PMC1876690."

[Cheung & Cramer 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21346759 "Cheung AC, Cramer P. Structural basis of RNA polymerase II backtracking, arrest and reactivation. Nature. 2011 Mar 10;471(7337):249-53. doi: 10.1038/nature09785. Epub 2011 Feb 23. PubMed PMID: 21346759."