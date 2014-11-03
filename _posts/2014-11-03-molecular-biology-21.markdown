---
layout: post
title:  "Molecular Biology 21: 'Transcription elongation'"
date:   2014-11-03 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 21 in Harvard's BCMP 200: Molecular Biology course, delivered by [Stirling Churchman](https://twitter.com/fiddle) on November 3, 2014.*

### Motivation

The invention of microarrays led to a focus on mRNA *abundance*. This is distinct from mRNA *identity*. mRNA identity actually has several dimensions:

1. **Covalent identity**, which arises from:
    + splicing
    + RNA editing
    + Transcription start and stop sites
    + polyadenylation (start site and length of polyA tail)
    + 5' capping
2. **Non-covalent identity**, which arises from:
    + Secondary structure
    + Tertiary structure
    + Bound proteins

Note that naked ssRNA is a highly toxic species due to its ability to form duplexes with DNA. Therefore from the moment it is transcribed it is bound by proteins which protect it.

mRNA identity (on all these dimensions) affects the composition of the resulting protein, the rate at which the message is translated and degraded, and where it is localized subcellularly.

Open questions in the field include:

1. How are co-transcriptional processes coordinated with transcriptional elongation
2. How does RNA pol II break through physical barriers along the DNA?
3. How does RNA pol II handle "genomic traffic"
4. How does transcriptional pausing affect mRNA identity and abundance

Transcription is highly conserved between prokaryotes, eukaryotic nuclei, and mitochondria, and much of our knowledge of the process comes from bacteria.

### Transcriptional pausing

RNA pol II will pause at replication forks, nucleosomes, tightly bound DNA-binding proteins, and even sometimes at naked DNA. Bob Kingston developed a system to study transcriptional pausing a few decades ago [[Kingston & Chamberlin 1981]]. More recently the Block lab has developed a new system called "optical tweezers" [[Herbert 2006]] which they use to study transcription kinetics:

<iframe width="420" height="315" src="//www.youtube.com/embed/y1gIu85kdCs" frameborder="0" allowfullscreen></iframe>

They've used this system to study the effects of NusG, an elongation factor in bacteria [[Herbert 2010]]. Carlos Bustamante's group has found that nucleosomes cause transcription pausing in eukaryotes [[Bintu 2012]]. DST1 (the prokaryotic version of TFIIS) helps RNA pol II to backtrack in order to recover from backtracking.

Why does pausing exist? It is not universal: for instance, T1 phage polymerase rarely pauses, and people have identified point mutations that will make prokaryotic or eukaryotic polymerase pause less often. Therefore, it is thought that polymerase pausing must be an evolved mechanism which was positively selected-for. In some cases it has been shown to:

1. allow RNA pol II to proceed through nucleosomes
2. help to allow RNA secondary or tertiary structure to form
3. allow co-transcriptional processes to occur
4. improve fidelity by allowing for repair of mis-incorporated bases and subsequent backtracking

To study transcriptional pausing *in vivo* we would ideally like to measure RNA pol II density at high resolution, which isn't yet possible. The closest things so far are:

+ RNA pol II ChIP and ChIP-seq
+ Global Run-On Sequencing (GRO-seq)
+ Native elongating transcript sequencing (NET-seq), which will be the subject of Churchman's research seminar

RNA pol II ChIP has, at best, 50 bp resolution.

GRO-seq was developed by the Lis lab [[Core 2008]]. You purify nuclei and break up the nuclear envelope, wash out native NTPs and add in ATP, GTP, CTP and Br-UTP (a labeled uracil). You then let transcription resume very briefly, only for 50-100bp, then use an antibody against Br-UTP to purify out the newly transcribed pieces. Thus you can figure out where RNA pol II was when you added the Br-UTP. GRO-seq has a couple of disadvantages - first, its resolution is still only ~50bp, though they recently developed a new version called PRO-seq which comes close to 1 bp resolution. Second, the incorporation of labeled nucleotides occurs *in vitro*, so it is not guaranteed that the results will 100% represent what goes on *in vivo* - for instance, you might wonder if perhaps some factors associated with RNA pol II might not re-activate *in vitro* and so <100% of transcripts that were being transcribed will continue.

Nonetheless, GRO-seq has helped elucidate a lot of transcription biology, including the phenomenon of promoter-proximal pausing, which occurs at many genes. In promoter-proximal pausing, RNA pol II starts transcriibing and then pauses right away for a long time. It may be poised, waiting for permissive chromatin or for heat shock or developmental signals so that transcription can continue instantly when the signal does arrive. It may also allow integration of multiple signal sources - maybe one signal tells it to initiate and another tells it to elongate, and together the promoter-proximal pausing creates an AND logic gate for these two signals. Finally, it may just serve as a checkpoint early in the elongation process.

The C-terminal domain (CTD) of RNA pol II is important in regulating elongation. Again, this was the subject of [[Kwon 2013]] which we covered in [BBS 230 week 5](/2014/10/02/biolit-05/). It is made up of (in yeast) 26 tandem repeats of YSPTSPS, with only a few of the 26 copies having any divergence from this heptapeptide sequence. In humans, there are 52 repeats. The amino acids in the CTD are heavily post-translationally modified - chiefly phosphorylation of the Y, T and S, and cis-trans isomerization of the P. Glycosylation, ubiquidization, and methylation are sometimes seen as well. ChIP-seq has shown an enrichment of S5 phosphorylation at transcription start sites, whereas S2 phosphorylation is seen later in genes [[Mayer 2010]].

The general model that is emerging is that the RNA pol II CTD goes through different stages of phosphorylation at different stages in elongation. At the beginning it undergoes S5 phosphorylation and binds Cet1 (for 5' capping) and Nrd1. By the middle it undergoes S2 phosphorylation and binds Spt6 and Set2 which are general elongation factors which inhibit transcription termination. By the end it binds Rtt103 and Pcf11 and this enables polyadenylaton and 3' termination.

Say you heard that Y1 could be phosphorylated and you want to know more - a good first step would be to raise an antibody specific to the CTD with Y1p and perform ChIP-seq - indeed, that's how the Cramer lab started to characterize Y1 phosphorylation [[Mayer 2012]]. The most difficult part was raising a specific antibody. They used a panel of synthetic 14-mer peptides to confirm that their antibody, named 3D12, only pulled down peptides with Y1p. The result of the ChIP-seq was that Y1p turns out to peak near the end of transcripts, and to drop off shortly right before the polyadenylation site, and this is true across a bunch of differently sized genes. Because Y1p disappears around the same time as transcription termination factors arrive, they hypothesized that maybe Y1p's function is to prevent a transcript from being terminated until "its time has come." They therefore synthesized 14-mer peptides with or without Y1p and tested whether they would bind the CTD-interacting domains of a bunch of different factors, using **fluorescence anistropy**. In this technique, you fluorescently label the synthetic peptide and you measure the angles at which it emits light. If the peptide is bound to another protein, it will "tumble" more slowly, and so a series of photons will be emitted almost in parallel, whereas when unbound, it will "tumble" rapidly and each photon will be emitted in a wildly different direction.

The role of dynamic CTD phosphorylation in transcription elongation is reviewed in [[Heidemann 2013]].

[Kingston & Chamberlin 1981]: http://www.ncbi.nlm.nih.gov/pubmed/6086107 "Kingston RE, Chamberlin MJ. Pausing and attenuation of in vitro transcription  in the rrnB operon of E. coli. Cell. 1981 Dec;27(3 Pt 2):523-31. PubMed PMID: 6086107."

[Herbert 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16777599 "Herbert KM, La Porta A, Wong BJ, Mooney RA, Neuman KC, Landick R, Block SM. Sequence-resolved detection of pausing by single RNA polymerase molecules. Cell.  2006 Jun 16;125(6):1083-94. PubMed PMID: 16777599; PubMed Central PMCID: PMC1483142."

[Herbert 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20381500 "Herbert KM, Zhou J, Mooney RA, Porta AL, Landick R, Block SM. E. coli NusG inhibits backtracking and accelerates pause-free transcription by promoting forward translocation of RNA polymerase. J Mol Biol. 2010 May 28;399(1):17-30. doi: 10.1016/j.jmb.2010.03.051. Epub 2010 Apr 8. PubMed PMID: 20381500; PubMed Central PMCID: PMC2875378."

[Bintu 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23141536 "Bintu L, Ishibashi T, Dangkulwanich M, Wu YY, Lubkowska L, Kashlev M, Bustamante C. Nucleosomal elements that control the topography of the barrier to  transcription. Cell. 2012 Nov 9;151(4):738-49. doi: 10.1016/j.cell.2012.10.009. PubMed PMID: 23141536; PubMed Central PMCID: PMC3508686."

[Core 2008]: http://www.ncbi.nlm.nih.gov/pubmed/19056941 "Core LJ, Waterfall JJ, Lis JT. Nascent RNA sequencing reveals widespread pausing and divergent initiation at human promoters. Science. 2008 Dec 19;322(5909):1845-8. doi: 10.1126/science.1162228. Epub 2008 Dec 4. PubMed PMID:  19056941; PubMed Central PMCID: PMC2833333."

[Kwon 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24267890 "Kwon I, Kato M, Xiang S, Wu L, Theodoropoulos P, Mirzaei H, Han T, Xie S, Corden JL, McKnight SL. Phosphorylation-regulated binding of RNA polymerase II to fibrous polymers of low-complexity domains. Cell. 2013 Nov 21;155(5):1049-60. doi: 10.1016/j.cell.2013.10.033. Erratum in: Cell. 2014 Jan 16;156(1-2):374. PubMed PMID: 24267890; PubMed Central PMCID: PMC4010232."

[Mayer 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20818391 "Mayer A, Lidschreiber M, Siebert M, Leike K, Söding J, Cramer P. Uniform transitions of the general RNA polymerase II transcription complex. Nat Struct Mol Biol. 2010 Oct;17(10):1272-8. doi: 10.1038/nsmb.1903. Epub 2010 Sep 5. PubMed PMID: 20818391."

[Mayer 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22745433 "Mayer A, Heidemann M, Lidschreiber M, Schreieck A, Sun M, Hintermair C, Kremmer E, Eick D, Cramer P. CTD tyrosine phosphorylation impairs termination factor recruitment to RNA polymerase II. Science. 2012 Jun 29;336(6089):1723-5. doi: 10.1126/science.1219651. PubMed PMID: 22745433."

[Heidemann 2013]: http://www.ncbi.nlm.nih.gov/pubmed/22982363 "Heidemann M, Hintermair C, Voß K, Eick D. Dynamic phosphorylation patterns of  RNA polymerase II CTD during transcription. Biochim Biophys Acta. 2013 Jan;1829(1):55-62. doi: 10.1016/j.bbagrm.2012.08.013. Epub 2012 Sep 7. Review. PubMed PMID: 22982363."