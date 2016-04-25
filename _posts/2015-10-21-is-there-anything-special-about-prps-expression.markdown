---
layout: post
title:  "Is there anything special about PrP's expression?"
date:   2015-10-21 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2015/10/prnp-mrna-thumbnail.png
summary200: "If you want to find a compound to reduce PrP expression without affecting a lot of other proteins, what could possibly be its mechansim of action?"
---

In [a recent post](/2015/09/22/small-molecules-to-alter-one-proteins-expression) I discussed proofs of principle for using small molecules to target one protein's expression level. One take-home from that post is that if you want to target your protein of interest with any specificity, it is useful to find something unique about that protein, or its transcript or gene. Accordingly, this post will review what is known about PrP's journey from the genome to the ribosome, and whether there might be any opportunities for specific intervention along the way.

### chromatin state

We know of lots of small molecules that affect histone marks and therefore chromatin state: HDAC inhibitors, BET bromodomain inhibitors, and so on. So it's not implausible to imagine that a drug modulating histone marks could affect *PRNP* expression. 

But to imagine any kind of specificity against *PRNP* is much harder. In fact, I am not aware of any really good datasets available for asking whether there is anything very unique about the chromatin surrounding *PRNP*. If you look in UCSC Genome Browser at all of the histone mark data from ENCODE and other genome-wide projects, you are confronted with the fact that all the ChIP-seq experiments are done with antibodies against the most common histone marks, which by definition will never be specific to one gene. Here is a screenshot of [this UCSC view](http://genome.ucsc.edu/cgi-bin/hgTracks?db=hg19&position=chr20%3A4662938-4686094&hgsid=449386155_yspwaptfpA3ZgVVqR1mxSZAWPB3a):

![](/media/2015/10/prnp-ucsc-histone-tracks.png)

All you see is a bunch of H3K4 methylation around the promoter and first exon, a smattering of H3K36 methylation throughout, and a relative dearth of H3K27 methylation &mdash; pretty much like any active gene. New, more exotic histone marks are discovered from time to time, as mentioned in [molecular biology 15](/2014/10/15/molecular-biology-15/), but I'm not aware of a lot of genome-wide data for these. I'm probably just uneducated on the subject (I don't follow epigenetics much), so there may well be a better browser out there somewhere with more comprehensive data (feel free to let me know as much in a comment).

### transcription initiation

A couple of years ago I wrote a post [reviewing what's known about PrP transcription](/2013/05/15/regulation-of-prion-protein-transcription/). While there are several reports in the literature, not much has been reproduced by different independent investigators. According to ENCODE, the PrP promoter is bound by STAT3, AP-1, and AP-2. Literature has also pointed to p53 and Sp1 as being involved with the promoter. These are all factors that regulate tons of genes. A few different investigators have reported that copper promotes, or is required for, PrP expression, but as reviewed [here](/2013/06/24/the-complicated-relationship-between-copper-prp-and-prion-disease/), people have already tested copper chelators as therapeutics for prion disease *in vivo* and have not shown any strong reproducible effect on disease.

### splicing

I recently examined [*PRNP* mRNA splicing in detail](/2015/10/09/is-prnp-mrna-alternatively-spliced/). Here's a quick summary.

*PRNP* has only two exons and one intron, thus one splice donor and one splice acceptor. The only interesting thing about its splicing is that the donor undergoes alternative splicing, with most of the copies of the mRNA being spliced at a canonical donor motif with GT at the +1 and +2 positions, but somewhere around 30-50% of copies being spliced at a GC motif a few bases upstream. These alternate donor sites are annotated in UCSC:

![](/media/2015/10/prnp-splice-donor.png)

And I was able to find evidence for them in RNA-seq data as well. This is at least a little bit unique, with <1% of splice sites genome-wide having GC donors, but since no more than half of copies of the mRNA are spliced in this way, it doesn't seem like the most compelling target.

### mRNA stability

As discussed in [a recent post](/2015/09/22/small-molecules-to-alter-one-proteins-expression), there is really no good proof of concept out there for it even being feasible to specifically bind an mRNA with a small molecule. Nevertheless, I figured it was at least worth looking into whether there is anything special about *PRNP* mRNA.

There have been two published papers [[Wills 1992], [Barrette 2001]] asserting that *PRNP* mRNA forms a [pseudoknot](https://en.wikipedia.org/wiki/Pseudoknot), which refers to a particular structure where RNA loops back on itself. These two papers mostly seem to have been written to propose RNA-related alternative explanations for the etiology of prion disease, which are no longer relevant given the overwhelming evidence that prions are formed by post-translational conformational change. In any event, neither of these papers includes any experimental evidence, only predicted structures. And even if the "prion pseudoknot" is real, that doesn't necessarily imply that *PRNP* mRNA is unique and therefore targetable, as pseudoknots are "among the most prevalent RNA structures" [[Staple & Butcher 2005]].

I grabbed the whole human *PRNP* transcript (RefSeq variant 1, [NM_000311.3](http://www.ncbi.nlm.nih.gov/nuccore/NM_000311.3)) from Genbank and tried to feed it into a modern mRNA structure prediction tool called [SHAPE](http://rna.urmc.rochester.edu/RNAstructureWeb/Servers/Predict1/Predict1.html), which apparently unlike older tools can actually handle pseudoknots [[Hajdin 2013]]. Sadly, it is limited to 2500 bp, while NM_000311.3 is 2755 bp, so I had to lop off the last 255 bases, which arguably defeats the whole point. Anyway, it returned to me a set of 20 PDFs of different predicted mRNA structures; here is one example [[PDF](/media/2015/10/shape-mrna-prediction-1.pdf)]:

![](/media/2015/10/shape-mrna-prediction-1.png)

The other 19 looked, to my untrained eye, about the same, and I feel I have no ability to evaluate which of them is most likely or whether any of them contains a structure that is unique in the world of human mRNAs. There is no experimental evidence out there for what *PRNP* mRNA actually looks like, and I have trouble imagining a screening strategy that would let you specifically identify compounds that bind (and destabilize) only *PRNP* mRNA and no other mRNAs.

### translation initiation

One potentially interesting thing about *PRNP* translation is its reported regulation by the presence of multiple upstream open reading frames (uORFs) [[Moreno 2012]]. I have touched on this topic twice briefly, in [biological literature 09](/2014/11/13/biolit-09/) and in [molecular biology 27](/2014/11/21/molecular-biology-27/). A minority of mRNAs, the canonical example of which is *ATF4*, have the unique property of being translationally upregulated under conditions of cellular stress at precisely the moment when all *other* mRNAs are having their translation downregulated, thanks to uORFs. The principle at work here is diagramemd in [Figure 4](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4461372/figure/F4/) of [[Jackson 2010]] or [Figure 3](http://www.sciencedirect.com/science/article/pii/S1097276510007562#gr3) of [[Spriggs 2010]]. Basically, when the concentration of translation-ready eIF2 ternary complexes is high (normal conditions), then ribosomes acquire them quickly while scanning the mRNA, and so an upstream ORF will be translated, precluding the translation of the canonical ORF. Only when that concentration decreases (stress conditions, resulting in PERK phosphorylation) does it take longer, on average, for the ribosome to pick up such a ternary complex, such that the upstream ORF gets missed and the canonical ORF is translated instead. This regulatory mechanism certainly seems counterintuitive, but according to the reviews above, it's well-established for *ATF4*. 

The evidence for this mechanism applying to *PRNP* in particular is reported in [Figure 2J](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3378208/figure/F2/) and [Figures S4-5](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3378208/#SD1) of [[Moreno 2012]] and is based on polysome fractioning. Under stress conditions, *PRNP* mRNA shifts towards a heavier fraction, suggesting association with a greater number of ribosomes, and thus implying a greater translation rate. The shift illustrated here is rather subtle. So I'd really like to see some ribosome profiling data, hypothetically demonstrating that the abundance of ribosomes on the start codon of *PRNP*'s canonical ORF is increased under stress, before I'd feel certain that I believe that this mechanism really applies to *PRNP*. I say that, particularly because *PRNP* does not fit the canonical arrangement of uORFs depicted in [Figure 4](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC4461372/figure/F4/) of [[Jackson 2010]] or [Figure 3](http://www.sciencedirect.com/science/article/pii/S1097276510007562#gr3) of [[Spriggs 2010]]. According to those models, the last ORF before the canonical one should be in a different frame than the canonical ORF, and should overlap the canonical ORF, such that translation of the former precludes translation of the latter. In human *PRNP*, there are four uORFs, the last of which actually in the same frame as the fifth and canonical ORF, and ends long before the canonical ORF begins:

~~~ python
import re # python library for regular expressions
human_prnp = 'ATTAAAGATGATTTTTACAGTCAATGAGCCACGTCAGGGAGCGATGGCACCCGCAGGCGGTATCAACTGATGCAAGTGTTCAAGCGAATCTCAACTCGTTTTTTCCGGTGACTCATTCCCGGCCCTGCTTGGCAGCGCTGCACCCTTTAACTTAAACCTCGGCCGGCCGCCCGCCGGGGGCACAGAGTGTGCGCCGGGCCGCGCGGCAATTGGTCCCCGCGCCGACCTCCGCCCGCGAGCGCCGCCGCTTCCCTTCCCCGCCCCGCGTCCCTCCCCCTCGGCCCCGCGCGTCGCCTGTCCTCCGAGCCAGTCGCTGACAGCCGCGGCGCCGCGAGCTTCTCCTCTCCTCACGACCGAGGCAGAGCAGTCATTATGGCGAAC' # human PRNP sequence up just past canonical ATG, from http://www.ncbi.nlm.nih.gov/nuccore/NM_000311.3
[m.start() % 3 for m in re.finditer('ATG',human_prnp)] # calculate the reading frame of each ATG
~~~

![](/media/2015/10/human-prnp-and-its-uorfs.png)

Based on this, it is not immediately obvious that the same mechanism from *ATF4* should apply. Indeed, this is implicitly acknowledged in [Figure S6](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3378208/#SD1) of [[Moreno 2012]], which shows the reading frames for all of the human *PRNP* uORFs, none of which overlap the canonical ORF. To me, this further raises the bar for the level of empirical evidence that would be required to demonstrate that an *ATF4*-like mechanism applies to *PRNP*, and I don't think that's a bar that's been met yet, though I'd love to see more data on it.

In any event, supposing for a moment that PrP translation is indeed regulated by this mechanism, how would you go about trying to find a compound to interfere with it and downregulate PrP? As far as I can tell from those reviews [[Spriggs 2010], [Jackson 2010]] there are no special proteins involved in this mechanism, just changes in concentrations of essential translation initiation factors. So a drug target doesn't obviously present itself here. The unbiased way to search for a compound to interfere with PrP's translation initiation would be simply to screen for compounds that reduce the activity of the *PRNP* 5'UTR. Say, maybe by fusing that UTR to luciferase and screening for compounds that reduce luciferase activity. That's exactly what Jack Rogers and the folks at Broad's Center for the Development of Therapeutics did years ago. They screened the entire MLPCN compound library at the time, 335,011 compounds, and deposited the data in PubChem as [BioAssay 488864](https://pubchem.ncbi.nlm.nih.gov/bioassay/488864), without ever publishing the results. This might suggest that there weren't any good results, but I've been meaning for a while now to go back and take a serious look at that dataset to see. I'll renew my efforts on that front and keep you posted on what I find.

### co- and post-translational events

I originally envisioned this post's scope would be "genome to ribosome" but when I discussed some of these topics and those of [my related post](/2015/09/23/small-molecules-to-reduce-one-proteins-expression/) in a brainstorm session, a few of my Broad Institute colleagues tossed around a some other possibilities further downstream.

First, PrP has a **signal peptide** that directs it to be co-translationally translocated into the ER. Signal peptides are a fairly diverse bunch [[Martoglio & Dobberstein 1998]]; could one imagine a small molecule that specifically binds to PrP's signal peptide? I went to UniProt and ran a BLAST search for human PrP's signal peptide, MANLGCWMLVLFVATWSDLGLC, and all 250 out of the [250 results](http://www.uniprot.org/blast/uniprot/B201510202IQ78HWD8E) are just orthologs of PrP in other species, even when you get down as low as 63% identity. So yes, PrP's signal peptide is pretty different from any other signal peptide in all the accumulated proteomes of UniProt. What would you do if you could bind the signal peptide with a small molecule? You wouldn't want to just shunt PrP translation into the cytosol, because ectopic cytosolic expression of PrP is *also* a bad thing [[Ma 2002], [Ma & Lindquist 2002]] \(there are [lots of ways](/2014/08/26/a-retrospective-view-of-muscle-disease-in-prp-overexpressing-mice/) PrP can go wrong\). The useful thing would be if you could somehow gum up the whole complex of the ribosome, the *PRNP* mRNA, the signal peptide, and the signal recognition particle, in a way that keeps PrP from ever being translated. Maybe then you'd be playing with fire &mdash; it seems like there'd be a risk that anything you find would just inactivate the whole ribosome, and thus be very toxic. But who knows, the idea might be worth exploring.

The other topic that came up was PrP's **GPI anchor**. One colleague pointed out that there are only about 45 GPI-anchored proteins in humans \[citation needed\], so PrP's GPI anchor is a relatively unique thing. I couldn't find a citation to support the specific number 45, but [this table](http://www.ncbi.nlm.nih.gov/books/NBK1966/table/ch11.t1/?report=objectonly) only lists 14 human GPI-anchored proteins, and all three reviews of GPI anchors that I looked at [[Englund 1993], [Paulick & Bertozzi 2008], [Ferguson 2009](http://www.ncbi.nlm.nih.gov/books/NBK1966/)] actually mention PrP itself, so it's certainly one of a small cohort. There are humans who have a GPI biosynthesis defect due to a recessive mutation in the promoter of *PIGM* [[Almeida 2006], [OMIM #610293](http://www.omim.org/entry/610293)]. This results in a pretty severe Mendelian disease, which I take as a sign we shouldn't go tinkering with GPI anchors just to get at PrP. In addition, analogous to the problem with cytosolic PrP in the last paragraph, secreted PrP is [also bad](/2013/06/29/proteolytic-shedding-of-prion-protein/), so it wouldn't be enough to just prevent the GPI attachment of PrP &mdash; you'd have to somehow leverage targeting the GPI anchor to block production of PrP entirely.

### conclusions

Here's a quick summary of what I think I've learned in writing this post. I don't see an obvious path forward for reducing PrP expression with a small molecule. One could imagine going after histone modifications or transcription factors but it would be hard to achieve specificity, and we don't really know of anything very unique about *PRNP* in those departments as of now, though there could be something out there. Targeting that non-canonical GC splice donor seems like one unique thing, and the proof of principle for targeting splicing with a small molecule is certainly better than for many other mechanisms (as discussed [here](/2015/09/22/small-molecules-to-alter-one-proteins-expression)), but that non-canonical splice doesn't even account for half of copies of *PRNP* mRNA. PrP's mRNA might contain some unique structures, but we have neither any empirical data on this, nor any proof of principle for specifically binding one mRNA with a small molecule. PrP is reported to have a relatively rare mechanism of translation initiation regulation based on upstream open reading frames, but the evidence for this isn't rock solid. PrP's signal peptide may be unique, but it's small and you'd have to find a small molecule that did just the right thing to it, blocking translation without just shunting PrP into the cytosol. And GPI anchors, though relatively rare, are essential. So all told, I don't see any smoking guns here, no obvious path forward.

That still leaves the possibility of unbiased screens for molecules that reduce PrP expression, since there could well be some mechanism we haven't thought of. Two such screens have already been published [[Karapetyan & Sferrazza 2013], [Silber 2014]] and two others left to age in the cellars of PubChem ([BioAssay 488864](https://pubchem.ncbi.nlm.nih.gov/bioassay/488864) & [BioAssay 720640](https://pubchem.ncbi.nlm.nih.gov//bioassay/720640)), without any new mechanisms, nor any safe and effective leads, emerging thus far. I do intend to take a closer look at the data in these screens to see if there's anything interesting there. But unbiased screens like these are always hazardous in that there are presumably far more ways to downregulate PrP non-specifically (like [cycloheximide](https://en.wikipedia.org/wiki/Cycloheximide)!) than specifically. Part of the motivation for thinking about specific mechanisms that might target PrP is that if you knew what mechanism you were looking for, you could design just the right counterscreen to toss out all that chaff. Absent that, we're left to do a whole lot of sifting.


[Wills 1992]: https://www.ncbi.nlm.nih.gov/pubmed/1296103 "Wills PR. Potential pseudoknots in the PrP-encoding mRNA. J Theor Biol. 1992 Dec 21;159(4):523-7. PubMed PMID: 1296103."

[Barrette 2001]: https://www.ncbi.nlm.nih.gov/pubmed/11160898 "Barrette I, Poisson G, Gendron P, Major F. Pseudoknots in prion protein mRNAs  confirmed by comparative sequence analysis and pattern searching. Nucleic Acids Res. 2001 Feb 1;29(3):753-8. PubMed PMID: 11160898; PubMed Central PMCID: PMC30388."

[Staple & Butcher 2005]: https://www.ncbi.nlm.nih.gov/pubmed/15941360 "Staple DW, Butcher SE. Pseudoknots: RNA structures with diverse functions. PLoS Biol. 2005 Jun;3(6):e213. Epub 2005 Jun 14. PubMed PMID: 15941360; PubMed Central PMCID: PMC1149493."

[Liao 1986]: http://www.ncbi.nlm.nih.gov/pubmed/3014653 "Liao YC, Lebo RV, Clawson GA, Smuckler EA. Human prion protein cDNA: molecular cloning, chromosomal mapping, and biological implications. Science. 1986 Jul 18;233(4761):364-7. PubMed PMID: 3014653."

[Puckett 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1678248/ "Puckett C, Concannon P, Casey C, Hood L. Genomic structure of the human prion protein gene. Am J Hum Genet. 1991 Aug;49(2):320-9. PubMed PMID: 1678248; PubMed  Central PMCID: PMC1683278."

[Stephens & Schneider 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1474582 "Stephens RM, Schneider TD. Features of spliceosome evolution and function inferred from an analysis of the information at human splice sites. J Mol Biol. 1992 Dec 20;228(4):1124-36. PubMed PMID: 1474582."

[Roca 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23348838 "Roca X, Krainer AR, Eperon IC. Pick one, but be quick: 5' splice sites and the problems of too many choices. Genes Dev. 2013 Jan 15;27(2):129-44. doi: 10.1101/gad.209759.112. Review. PubMed PMID: 23348838; PubMed Central PMCID: PMC3566305."

[Burset 2000]: http://www.ncbi.nlm.nih.gov/pubmed/11058137/ "Burset M, Seledtsov IA, Solovyev VV. Analysis of canonical and non-canonical splice sites in mammalian genomes. Nucleic Acids Res. 2000 Nov 1;28(21):4364-75.  PubMed PMID: 11058137; PubMed Central PMCID: PMC113136."

[Moreno 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22622579 "Moreno JA, Radford H, Peretti D, Steinert JR, Verity N, Martin MG, Halliday M, Morgan J, Dinsdale D, Ortori CA, Barrett DA, Tsaytler P, Bertolotti A, Willis AE, Bushell M, Mallucci GR. Sustained translational repression by eIF2α-P mediates prion neurodegeneration. Nature. 2012 May 6;485(7399):507-11. doi: 10.1038/nature11058. Erratum in: Nature.2014 Jul 17;511(7509):370. PubMed PMID: 22622579; PubMed Central PMCID: PMC3378208."

[Martoglio & Dobberstein 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9789330 "Martoglio B, Dobberstein B. Signal sequences: more than just greasy peptides.  Trends Cell Biol. 1998 Oct;8(10):410-5. Review. PubMed PMID: 9789330."

[Ma 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12386337 "Ma J, Wollmann R, Lindquist S. Neurotoxicity and neurodegeneration when PrP accumulates in the cytosol. Science. 2002 Nov 29;298(5599):1781-5. Epub 2002 Oct  17. PubMed PMID: 12386337."

[Ma & Lindquist 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12386336 "Ma J, Lindquist S. Conversion of PrP to a self-perpetuating PrPSc-like conformation in the cytosol. Science. 2002 Nov 29;298(5599):1785-8. Epub 2002 Oct 17. PubMed PMID: 12386336."

[Almeida 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16767100 "Almeida AM, Murakami Y, Layton DM, Hillmen P, Sellick GS, Maeda Y, Richards S, Patterson S, Kotsianidis I, Mollica L, Crawford DH, Baker A, Ferguson M, Roberts  I, Houlston R, Kinoshita T, Karadimitris A. Hypomorphic promoter mutation in PIGM causes inherited glycosylphosphatidylinositol deficiency. Nat Med. 2006 Jul;12(7):846-51. Epub 2006 Jun 11. PubMed PMID: 16767100."

[Englund 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8352586 "Englund PT. The structure and biosynthesis of glycosyl phosphatidylinositol protein anchors. Annu Rev Biochem. 1993;62:121-38. Review. PubMed PMID: 8352586."

[Paulick & Bertozzi 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18557633/ "Paulick MG, Bertozzi CR. The glycosylphosphatidylinositol anchor: a complex membrane-anchoring structure for proteins. Biochemistry. 2008 Jul 8;47(27):6991-7000. doi: 10.1021/bi8006324. Epub 2008 Jun 17. Review. PubMed PMID: 18557633; PubMed Central PMCID: PMC2663890."

[Hajdin 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23503844 "Hajdin CE, Bellaousov S, Huggins W, Leonard CW, Mathews DH, Weeks KM. Accurate SHAPE-directed RNA secondary structure modeling, including pseudoknots. Proc Natl Acad Sci U S A. 2013 Apr 2;110(14):5498-503. doi: 10.1073/pnas.1219988110. Epub 2013 Mar 15. PubMed PMID: 23503844; PubMed Central PMCID: PMC3619282."

[Jackson 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20094052 "Jackson RJ, Hellen CU, Pestova TV. The mechanism of eukaryotic translation initiation and principles of its regulation. Nat Rev Mol Cell Biol. 2010 Feb;11(2):113-27. doi: 10.1038/nrm2838. Review. PubMed PMID: 20094052; PubMed Central PMCID: PMC4461372."

[Spriggs 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20965418/ "Spriggs KA, Bushell M, Willis AE. Translational regulation of gene expression  during conditions of cell stress. Mol Cell. 2010 Oct 22;40(2):228-37. doi: 10.1016/j.molcel.2010.09.028. Review. PubMed PMID: 20965418."

[Silber 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24530226 "Silber BM, Gever JR, Rao S, Li Z, Renslo AR, Widjaja K, Wong C, Giles K, Freyman Y, Elepano M, Irwin JJ, Jacobson MP, Prusiner SB. Novel compounds lowering the cellular isoform of the human prion protein in cultured human cells. Bioorg Med Chem. 2014 Mar 15;22(6):1960-72. doi: 10.1016/j.bmc.2014.01.001. Epub  2014 Jan 9. PubMed PMID: 24530226; PubMed Central PMCID: PMC3984052."

[Karapetyan & Sferrazza 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23576755 "Karapetyan YE, Sferrazza GF, Zhou M, Ottenberg G, Spicer T, Chase P, Fallahi M, Hodder P, Weissmann C, Lasmézas CI. Unique drug screening approach for prion diseases identifies tacrolimus and astemizole as antiprion agents. Proc Natl Acad Sci U S A. 2013 Apr 23;110(17):7044-9. doi: 10.1073/pnas.1303510110. Epub 2013 Apr 1. PubMed PMID: 23576755; PubMed Central PMCID: PMC3637718."



