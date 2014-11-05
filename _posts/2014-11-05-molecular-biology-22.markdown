---
layout: post
title:  "Molecular Biology 22: 'Transcription termination'"
date:   2014-11-05 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 22 in Harvard's BCMP 200: Molecular Biology course, delivered by [Stirling Churchman](https://twitter.com/fiddle) on November 5, 2014.*

### Riboswitches

**Riboswitches** are regions of mRNA secondary structure that can regulate transcription by reacting to amino acids and metabolic intermediates [reviewed in [Serganov & Nudler 2013]]. One example is btuB in *E. coli*. The *btuB* gene encodes an outer membrane receptor that transports vitamin B12. The *btuB* mRNA contains a hairpin that binds vitamin B12 and acts as a riboswitch. When bound to vitamin B12, the mRNA changes conformation in a way that changes its accessibility. Thus, this riboswitch allows vitamin B12 to negatively regulate its own import. This sort of mechanism can affect translation, or it can affect transcription termination in a nascent mRNA.

RNAse H only cleaves RNA-DNA duplexes, so by adding DNA oligos and RNAse H you can detect whether a region of RNA is single-stranded. This method was used in [[Perdrizet 2012]].

### How to study RNA structure

You can purify RNA from a cell and then map its structure using one enzyme specific for ssRNA and another specific for dsRNA. This method is called PARS [[Kertesz 2010]]. There is more recent work from the two labs that pioneered this as well [[Wan 2014]]. They've found that coding sequences in mRNAs are more highly structured than UTRs, and they speculate this may be an evolved mechanism to prevent translation initiation from undesired start sites.

A limitation of PARS is because you use enzymes, you have to do it *in vitro*. Jonathan Weissman's lab has developed a new method applicable to live cells [[Rouskin 2014]]. They use chemical called dimethyl sulfate (DMS), which will selectively modify A and C that are not base-paired. The modifications cause reverse transcription to halt. So if you perform reverse transcrption you get cDNAs that end at each modified base. Therefore by sequencing the cDNAs and identifying their end sites you can figure out where there were exposed As and Cs.

These experiments have revealed that on average, *in vivo* RNA structures are less structured than what is seen *in vitro*. We still don't entirely know why - it may have to do with ribosomes doing active translation, RNA helicases unwinding structure, or with RNA-binding proteins.

### Transcription termination

Transcription termination serves several purposes:

+ Frees RNA pol II to go transcribe a different gene
+ Prevent transcription interference (?)
+ Regulate gene expression by sometimes terminating upstream of a gene

Transcription termination remains a mysterious process and an active area of investigation. Current open questions are how the RNA pol II "decides" to terminate transcription, and what exactly the mechanism of termination is in eukaryotes.

There are two mechanisms of transcription termination in prokaryotes: **intrinsic termination** and **Rho-dependent termination** [[Santangelo & Artsimovitch 2011]].

Intrinsic termination is a passive process mediated by hairpins in the nascent RNA and can be modulated by riboswitches, RNA-binding proteins or ribosomes.

Rho-dependent termination is an active process whose mechanism is still not entirely known. 

One way to study termination's dependency on RNA secondary structure is to apply a tensile force to the RNA via a DNA handle - if you pull on it, the loops in the RNA will come undone [[Larson 2008]].

In eukaryotes, we know that transcription termination has two steps:

1. Cut the nascent transcript at the polyadenylation site
2. Disengage RNA pol II from the DNA&dagger;

&dagger;RNA pol II actually *continues* for a while after the nascent transcript is cut. It gets disengaged later.

There is a consensus sequence for mRNA cleavage but it can vary immensely. Cleavage and polyadenylation occur co-transcriptionally. Together the cap and the polyA tail stabilize the mRNA, allowing efficient translation. polyA tails are typically ~70nt in yeast, ~200nt in mammals.

Yeast transcripts typically have short UTRs. Mammalian UTRs have greater average length, and also far greater variance in length.

One model for eukaryotes is the "torpedo model" of termination, which is somewhat analogous to Rho-dependent termination in prokaryotes.

Until now we've discussed canonical termination at the end of a transcript. There also exists a pathway for early termination, which was originally discovered for snoRNAs [reviewed in [Jacquier 2009]]. This involves Rrp6 and the "nuclear exosome" and when these are deleted, loads of new transcripts turn up. GRO-seq has made it clear that RNA pol II actually does bidirectional transcription from many transcription start sites, producing the canonical mRNA as well as an "upstream antisense RNA" (uaRNA) but the uaRNA is quickly degraded.


[Serganov & Nudler 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23332744 "Serganov A, Nudler E. A decade of riboswitches. Cell. 2013 Jan 17;152(1-2):17-24. doi: 10.1016/j.cell.2012.12.024. Review. PubMed PMID: 23332744; PubMed Central PMCID: PMC4215550."

[Perdrizet 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22331895/ "Perdrizet GA 2nd, Artsimovitch I, Furman R, Sosnick TR, Pan T. Transcriptional pausing coordinates folding of the aptamer domain and the expression platform of  a riboswitch. Proc Natl Acad Sci U S A. 2012 Feb 28;109(9):3323-8. doi: 10.1073/pnas.1113086109. Epub 2012 Feb 13. PubMed PMID: 22331895; PubMed Central  PMCID: PMC3295289."

[Kertesz 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20811459 "Kertesz M, Wan Y, Mazor E, Rinn JL, Nutter RC, Chang HY, Segal E. Genome-wide  measurement of RNA secondary structure in yeast. Nature. 2010 Sep 2;467(7311):103-7. doi: 10.1038/nature09322. PubMed PMID: 20811459; PubMed Central PMCID: PMC3847670."

[Wan 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24476892 "Wan Y, Qu K, Zhang QC, Flynn RA, Manor O, Ouyang Z, Zhang J, Spitale RC, Snyder MP, Segal E, Chang HY. Landscape and variation of RNA secondary structure  across the human transcriptome. Nature. 2014 Jan 30;505(7485):706-9. doi: 10.1038/nature12946. PubMed PMID: 24476892; PubMed Central PMCID: PMC3973747."

[Rouskin 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24336214 "Rouskin S, Zubradt M, Washietl S, Kellis M, Weissman JS. Genome-wide probing of RNA structure reveals active unfolding of mRNA structures in vivo. Nature. 2014 Jan 30;505(7485):701-5. doi: 10.1038/nature12894. Epub 2013 Dec 15. PubMed PMID: 24336214; PubMed Central PMCID: PMC3966492."

[Santangelo & Artsimovitch 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21478900 "Santangelo TJ, Artsimovitch I. Termination and antitermination: RNA polymerase runs a stop sign. Nat Rev Microbiol. 2011 May;9(5):319-29. doi: 10.1038/nrmicro2560. Epub 2011 Apr 11. Review. PubMed PMID: 21478900; PubMed Central PMCID: PMC3125153."

[Larson 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18358810 "Larson MH, Greenleaf WJ, Landick R, Block SM. Applied force reveals mechanistic and energetic details of transcription termination. Cell. 2008 Mar 21;132(6):971-82. doi: 10.1016/j.cell.2008.01.027. PubMed PMID: 18358810; PubMed  Central PMCID: PMC2295211."

[Jacquier 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19920851 "Jacquier A. The complex eukaryotic transcriptome: unexpected pervasive transcription and novel small RNAs. Nat Rev Genet. 2009 Dec;10(12):833-44. doi: 10.1038/nrg2683. Review. PubMed PMID: 19920851."