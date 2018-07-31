---
layout: post
title:  "Molecular Biology 25: 'Stirling Churchman\\'s research seminar'"
date:   2014-11-14 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 25 in Harvard's BCMP 200: Molecular Biology course, delivered by [Stirling Churchman](https://twitter.com/fiddle) on November 14, 2014.*

### Stirling Churchman's postdoctoral work with Jonathan Weissman

#### Motivation

How does transcription go through chromatin *in vivo*? Are nucleosomes a barrier to transcriptional elongation? How do histone modifications affect this?

#### NET-seq

Churchman wanted to develop a method to determine where RNA pol II is at any given moment at nucleotide resolution. She named this technique NET-seq [[Churchman & Weissman 2011], [Churchman & Weissman 2012]].

The method begins with isolating all engaged RNA polymerase via immunoprecipitation and purifing the RNA associated with it. Then you ligate adapters containing a sequencing primer to only the 3' end of the purified RNA, and perform next gen sequencing. The resulting reads give good coverage of introns and also past the polyadenylation site, in contrast to mRNA-seq. Places with a large pileup of reads are places where RNA pol II is spending extra time, and therefore must indicate pausing.

They performed this method in yeast and characterized the transcriptional pausing phenomenon on a genome-wide basis. It turns out that 70% of transcriptional pauses occur at an A, and there is a sequence logo describing the motif under pauses in [Figure 4](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3880149/figure/F4/). They also looked at Dst1 (the yeast ortholog of TFIIS) which promotes processivity by helping RNA pol II to cleave a transcript and backtrack. Dst1 is non-essential, and they found that in yeast with *DST1* deleted, pausing occurred several 5-18 nucleotides downstream of the sites where it occurred in wild-type yeast, and with a different sequence motif - see [Figure 5](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3880149/figure/F5/). This indicated that the backtracking associated with Dst1 activity is about 5-18 nucleotides.

They next asked, are nucleosomes responsible for these pausing events? Nucleosome positioning follows a very well-defined periodic distribution after transcription start sites, as shown by [[Weiner 2010]] in [Figure 2](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2798834/figure/F2/). Indeed, Churchman and Weissman found that pausing is enriched at nucleosome occupancy sites ([Figure 6](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3880149/figure/F6/)).

The degree to which you find pauses occurring at nucleosome occupancy sites depends on your peak-calling threshold, meaning how many reads need to pile up in NET-seq data before you consider a pause to have occurred? They used a [**receiver-operator characteristic curve**](http://en.wikipedia.org/wiki/Receiver_operating_characteristic) to assess the predictive value of NET-seq data, and found that the **area under the curve** (AUC) for using nucleosomes to predict pausing is only 0.51, compared to 0.50 for random guessing. So although nucleosomes are significantly associated with pausing, they have very little predictive value - there must be many other causes of pausing.

They also looked at **divergent transcription**, the phenomenon whereby a promoter often gives rise to an mRNA in the sense direction and an antisense transcript in the opposite direction. This antisense transcript is rapidly degraded and cannot be seen in mRNA-seq data but can be observed with NET-seq data - see [Figure 2](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3880149/figure/F2/). Churchman has since collaborated with other groups to use this property of NET-seq to elucidate mechanisms by which divergent transcription is regulated [[Marquardt 2014]].

NET-seq and transcriptional elongation continue to be areas of [active research](http://churchman.med.harvard.edu/?page_id=199) in the Churchman Lab at HMS.

[Churchman & Weissman 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21248844 "Churchman LS, Weissman JS. Nascent transcript sequencing visualizes transcription at nucleotide resolution. Nature. 2011 Jan 20;469(7330):368-73. doi: 10.1038/nature09652. PubMed PMID: 21248844; PubMed Central PMCID: PMC3880149."

[Churchman & Weissman 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22470065 "Churchman LS, Weissman JS. Native elongating transcript sequencing (NET-seq).  Curr Protoc Mol Biol. 2012 Apr;Chapter 4:Unit 4.14.1-17. doi: 10.1002/0471142727.mb0414s98. PubMed PMID: 22470065."

[Weiner 2010]: http://www.ncbi.nlm.nih.gov/pubmed/19846608 "Weiner A, Hughes A, Yassour M, Rando OJ, Friedman N. High-resolution nucleosome mapping reveals transcription-dependent promoter packaging. Genome Res. 2010 Jan;20(1):90-100. doi: 10.1101/gr.098509.109. Epub 2009 Oct 21. PubMed  PMID: 19846608; PubMed Central PMCID: PMC2798834."

[Marquardt 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24949978 "Marquardt S, Escalante-Chong R, Pho N, Wang J, Churchman LS, Springer M, Buratowski S. A chromatin-based mechanism for limiting divergent noncoding transcription. Cell. 2014 Jun 19;157(7):1712-23. doi: 10.1016/j.cell.2014.04.036. PubMed PMID: 24949978; PubMed Central PMCID: PMC4090027."

