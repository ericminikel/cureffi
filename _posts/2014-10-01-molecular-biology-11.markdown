---
layout: post
title:  "Molecular Biology 11: 'Ribonucleotide excision repair (RER) and mismatch repair (MMR)'"
date:   2014-10-01 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 11 in Harvard's BCMP 200: Molecular Biology course, delivered by Johannes Walter on October 1, 2014.*

### Motivation: cells need to repair DNA damage

DNA damage comes from exogenous sources such as:

+ UV light
+ Cosmic rays
+ Industrial waste
+ Cigarette smoke

As well as endogenous sources such as:

+ Hydrolysis
+ Oxidation
+ Reactive metabolites
+ Replication errors

Too high a mutation rate would generate no diversity for evolution to act on, but too much mutation leads to cancer. DNA repair pathways exist to bring the mutation rate down from the "cancer" level to the optimal level.

Where does information about the *correct* sequence come from when DNA is damaged?

| source of information | mechanism of repair |
| ---- | ---- |
| complementary strand | mismatch repair (MMR), ribonucleotide excision repair (RER), nucleotide excision repair (NER) and base excision repair (BER) |
| homologous chromosome | homologous recombination (HR) |
| none | non-homologous end-joining (NHEJ) |

Today we will discuss two pathways that clean up damage left behind by polymerases: RER and MMR

### Ribonucleotide excision repair (RER)

Polymerases are supposed to incorporate dNTPs into nascent DNA strands, but occasionally accidentally incorporate rNTPs (ribonucleotide) instead. Their inherent selectivity would allow them to incorporate rNTPs only 1e-5 of the time if [rNTP] == [dNTP], but in practice, rNTPs are 100x more abundant in the nucleus than dNTPs are, so they get incorporated into DNA on the order of 1e-3 of the time [[Nick McElhinny 2010]]. This is a problem because phosphate bonds involving rNTPs in your DNA strand can readily be hydrolysed, creating nicks which will cause replication forks to stall. And even if the replication fork does not stall due to nicks, it may stall when it attempts to use the rNTP as a template strand.

To solve this problem, cells have evolved the RER pathway. The RNAseH2 enzyme recognizes rNMPs within DNA strands and cuts their 3'OH group, creating a flap which DNA pol &delta; or &epsilon; (depending on leading vs. lagging strand) can then overwrite, and FEN1 can later cut off the flap. This ia analogous to what occurs during Okazaki fragment maturation, when DNA pol &delta; peels away the 5' end of a series of rNMPs and overwrites them, creating a flap.

RNAseH2 knockout is embryonic lethal, and if the -/- mouse embryos are harvested and examined, they contain tons of ribonucleotides in their DNA [[Reijns 2012]].

### Mismatch repair (MMR)

Recall from [lecture 08](/2014/09/22/molecular-biology-08/) that the intrinsic error rate of DNA replication is 1e-5, and that proofreading brings that to 1e-7. MMR brings that figure down to 1e-10.

Note that in MMR, there is no chemical damage to the DNA to be recognized. Instead, MMR enzymes are believed to recognize the bulge in the DNA duplex created by mismatching base pairs. When you have a mismatch, the correct base is almost certainly the one in the template strand and the erroneous base is the one in the newly synthesized strands. Therefore, cells need a mechanism for figuring out which strand is the nascent one. Once they do this, they degrade only the nascent strand in the neighborhood of the lesion, thus giving polymerases a second chance to get it right.

In bacteria:

+ **MutS** is an ATPase which roves along DNA looking for mismatches. It recognizes the nascent strand by differential methylation. The bacterial enzyme Dam methlyates the A on both strands of the palindromic <code>GATC</code> sequence, but it is slow to get around to nascent strands, and so when you see a <code>GATC</code> sequence where only one strand is unmethylated, that strand is the nascent strand. MutL activates MutH at a hemi-methylated <code>GATC</code> sequence.
+ **MutL** is an intermediary which complexes with MutS and recruits MutH.
+ **MutH** cleaves only the unmethylated strand.
+ Exonucleases digest the cleaved strand past the mismatch
+ DNA pol III re-writes the digested region
+ DNA ligase seals the nick

Overexpression of Dam reduces the time window within which the nascent strand is less methylated than the parent strand, thus making MMR more difficult.

The corresponding pathway in eukaryotes was largely worked out by [Paul Modrich](http://www.hhmi.org/scientists/paul-l-modrich).

In eukaryotic cells, the strand discrimination signal is not methylation, and there exists no MutH ortholog. MMR is somewhat more active on the lagging strand than on the leading strand. Strand discrimination signal is believed to be simply based on the fact that the nascent strands have *ends*, whereas the parent strands are (in relative terms) infinitely long.  The experiment that demonstrated this was as follows. Modrich designed a plasmid with a G:T mismatch located in a sequence such that the G strand encodes a XhoI restriction site, while the T strand encodes a HindIII restriction site - thus neither restriction enzyme was able to cut [[Holmes 1990]]. He also added a discontinuity (single strand break?) nearby this site, on the G strand only. He incubated the plasmid with HeLa nuclear extracts presumed to contain mismatch repair enzymes. He reasoned that if strand terminus recognition is the mechanism for strand discrimination, then the G strand will be recognized as being "nascent" and the MMR enzymes will repair the site, creating a HindIII restriction site. Sure enough, he found that under these conditions, HindIII was often able to cut, but XhoI was never able to cut, suggesting that the duplex was often repaired with the un-nicked strand being considered correct, but was never repaired to match the nicked strand. This experiment gives the same results regardless of whether the nick is to the 3' or 5' of the mismatched G, and in both cases the nicked strand is degraded towards the mismatch.

They next showed that, in this same cell-free system, mismatch repair does not occur at all when the nuclear extracts are made from hereditary nonpolyposis colorectal cancer cells (from patients with Lynch syndrome) [[Parsons 1993]]. Complementation with wild-type nuclear extracts restored MMR, indicating that the colorectal cancer cells had a loss of function in the MMR pathway rather than gain of function inhibiting MMR. They then performed biochemical complementation, by fractioning their wild-type nuclear extracts over an anion exchange column, eluting with increasing concentrations of KCl, and testing each fraction for its ability to complement the missing MMR activity in the colorectal cancer cell nuclear extracts. Fractions identified as active were then re-fractioned at a finer and finer gradient until they found an active fraction which contained only one elution peak (corresponding to one complex). This complex proved to contain two proteins, hPMS2 and hMLH1, both of which proved to be MutL orthologs. They named the complex MutL&alpha;, and found that the colorectal cancer cells had mutations in the genes encoding these proteins.

A key requirement for this sort of fractionation experiment is that you need to be complementing an extract which has *all but one* component of the pathway. For instance, if they had tried to fraction out the essential elements from wild-type nuclear extracts without complementing deficient extracts, they could never have succeeded, as there are multiple necessary components for MMR to occur, and these would elute in different fractions. Similarly, if the colorectal cancer cells had harbored mutations in proteins belonging to more than one complex, this wouldn't have worked either.

Modrich's group later used similar approaches to identify orthologs of MutS [[Drummond 1995]]. After many years, when they had identified many such proteins, they were able to identify a minimal set of such proteins that was sufficient to reconstitute MMR from purified components with no nuclear extracts [[Genschel & Modrich 2003]]. In that work they identified a system for 5' directed repair, where a nascent strand is degraded starting from a nick to the 5' of the mismatch. This only works for lagging strands. If there are mismatches on a lagging strand, that entire Okazaki fragment will get degraded up to the mismatch, and that region of the parent strand will then be re-synthesized later.

For repair on the leading strand, you need to start from recognition of a nick to the 3' of the mismatch on the nascent strand. To perform such 3'-directed mismatch repair you need all of the proteins needed for 5'-directed mismatch repair, plus three others: MutL&alpha;, RFC and PCNA [[Dzantiev 2004]]. MutL&alpha;, it transpires, has a cryptic endonuclease activity. MutL&alpha; first recognizes the mismatch, translocates to the 3' until it hits a roadblock created by RFC and PCNA, which activates MutL&alpha;. MutL&alpha; can discrimiante the nascent strand as it is the one pointed 3'-ward into the back face of PCNA. MutL&alpha; then translocates back to the 5', nicking the nascent strand all the way until it realizes it has passed the mismatch, at which point it will stop nicking. Now you have a nick to the 5' of the mismatch, and the same elements involved in lagging strand MMR take over [[Kadyrov 2006]]. Note that the use of strand ends to identify the nascent strand means that you need to identify mismatches on the leading strand quickly, before they are too far from the replication fork for the nascent strand to be recognized.

An ongoing question for MMR in both prokaryotic and eukaryotic systems is how MutS, having recognized a mismatch, communicates with the strand discrimination signal. Alternative models include diffusion (MutS simply diffuses along the DNA duplex until it finds the signal), polymerization (recruitment of additional MutS until the polymer reaches the discrimination signal) or looping (MutS stays put at the mismatch, but the DNA loops around until the discrimination signal comes into proximity with MutS in three-dimensional space). Recent findings from single-molecule imaging experiments favor the diffusion model [[Gorman 2012]].

[Nick McElhinny 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20194773/ "Nick McElhinny SA, Watts BE, Kumar D, Watt DL, Lundström EB, Burgers PM, Johansson E, Chabes A, Kunkel TA. Abundant ribonucleotide incorporation into DNA  by yeast replicative polymerases. Proc Natl Acad Sci U S A. 2010 Mar 16;107(11):4949-54. doi: 10.1073/pnas.0914857107. Epub 2010 Mar 1. PubMed PMID: 20194773; PubMed Central PMCID: PMC2841928."

[Reijns 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22579044 "Reijns MA, Rabe B, Rigby RE, Mill P, Astell KR, Lettice LA, Boyle S, Leitch A, Keighren M, Kilanowski F, Devenney PS, Sexton D, Grimes G, Holt IJ, Hill RE, Taylor MS, Lawson KA, Dorin JR, Jackson AP. Enzymatic removal of ribonucleotides  from DNA is essential for mammalian genome integrity and development. Cell. 2012  May 25;149(5):1008-22. doi: 10.1016/j.cell.2012.04.011. Epub 2012 May 10. PubMed  PMID: 22579044; PubMed Central PMCID: PMC3383994."

[Holmes 1990]: http://www.ncbi.nlm.nih.gov/pubmed/2116007 "Holmes J Jr, Clark S, Modrich P. Strand-specific mismatch correction in nuclear extracts of human and Drosophila melanogaster cell lines. Proc Natl Acad  Sci U S A. 1990 Aug;87(15):5837-41. PubMed PMID: 2116007; PubMed Central PMCID: PMC54423."

[Parsons 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8261516 "Parsons R, Li GM, Longley MJ, Fang WH, Papadopoulos N, Jen J, de la Chapelle A, Kinzler KW, Vogelstein B, Modrich P. Hypermutability and mismatch repair deficiency in RER+ tumor cells. Cell. 1993 Dec 17;75(6):1227-36. PubMed PMID: 8261516."

[Drummond 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7604264 "Drummond JT, Li GM, Longley MJ, Modrich P. Isolation of an hMSH2-p160 heterodimer that restores DNA mismatch repair to tumor cells. Science. 1995 Jun 30;268(5219):1909-12. PubMed PMID: 7604264."

[Genschel & Modrich 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14636568 "Genschel J, Modrich P. Mechanism of 5'-directed excision in human mismatch repair. Mol Cell. 2003 Nov;12(5):1077-86. PubMed PMID: 14636568."

[Dzantiev 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15225546 "Dzantiev L, Constantin N, Genschel J, Iyer RR, Burgers PM, Modrich P. A defined human system that supports bidirectional mismatch-provoked excision. Mol  Cell. 2004 Jul 2;15(1):31-41. PubMed PMID: 15225546."

[Kadyrov 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16873062 "Kadyrov FA, Dzantiev L, Constantin N, Modrich P. Endonucleolytic function of MutLalpha in human mismatch repair. Cell. 2006 Jul 28;126(2):297-308. PubMed PMID: 16873062."

[Gorman 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23012240 "Gorman J, Wang F, Redding S, Plys AJ, Fazio T, Wind S, Alani EE, Greene EC. Single-molecule imaging reveals target-search mechanisms during DNA mismatch repair. Proc Natl Acad Sci U S A. 2012 Nov 6;109(45):E3074-83. doi: 10.1073/pnas.1211364109. Epub 2012 Sep 24. PubMed PMID: 23012240; PubMed Central  PMCID: PMC3494904."