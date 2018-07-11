---
layout: post
title:  "Annotating the literature on pathogenicity of PRNP variants"
date:   2017-04-24 12:01:00
author: ericminikel
thumb120: http://www.cureffi.org/media/2017/04/prnp_variants_by_evidence_thumbnail.png
summary200: "Of 66 reportedly pathogenic PRNP variants, for how many is there even one family with Mendelian segregation, or any other evidence for pathogenicity?"
---

In our study last year, by [comparing case and population control allele frequencies](/2016/10/19/estimation-of-penetrance/), we managed to come to conclusions about the penetrance of only 14 out of the now 67 reportedly pathogenic *PRNP* variants [[Minikel 2016]]. The remainder were too rare, both in prion disease cases and population controls, for allele frequency comparisons to reach any meaningful conclusion. But it would be very useful to have at least an educated guess about the penetrance of the other 53 variants. Some are probably high penetrance (say, >50% lifetime risk), others might confer a risk that is increased above the population baseline but still low, and some might be completely benign. Where to begin?

To start to get at this problem, I recently took a deeper dive on the literature about these 67 reportedly pathogenic variants, looking at the human genetic evidence for each variant's pathogenicity. Here are the criteria I looked at:

+ **Mendelian segregation.** In a group of closely related individuals, if most or all of the individuals with a particular genetic variant develop a particular disease, and the people without that genetic variant do not develop the disease, this is called Mendelian segregation. Every geneticist agrees that segregation is a valuable clue in investigating pathogenicity, but the context matters a lot. The American College of Medical Genetics (ACMG), for instance, considers segregation to be only "supportive evidence" (as opposed to "strong" or "very strong" evidence) of pathogenicity, because all it means is the *locus* (a segment of a chromosome) is linked to disease, it doesn't prove that one specific *variant* is causal [[Richards 2015]]. But in prion disease, there is only one causal gene, *PRNP*, all known pathogenic variants therein are protein-coding, and there is just one short open-reading frame that can easily be sequenced. The upshot is that if a rare protein-altering variant in *PRNP* segregates with prion disease, it *is* the causal variant. Investigators looking to establish a novel gene as disease-causing might like to see segregation in two different families before they're confident, but for a novel variant in a well-established disease gene, I think that segregation even in one family (especially if that's the only family with the variant) is pretty strong evidence (perhaps not definitive proof) of fairly high penetrance. I therefore looked through the literature to see, for each variant, if there was even one family where there were at least three closely related affected individuals in a pattern consistent with Mendelian segregation. If there was, I considered this evidence for high penetrance.
+ **<i>De novo</i> variants**. Just because a disease is genetic doesn't mean it's inherited &mdash; the average person has ~60-70 *de novo* (spontaneous) mutations in their genome, mutations that neither of their parents had, ~1 of which falls in a protein-coding portion of a gene [[Michaelson 2012], [Kong 2012]]. And if a person with a *de novo* mutation in *PRNP* has prion disease, that mutation is probably highly penetrant. As a back of the envelope, if the average person has only about 1 protein-coding *de novo* SNP or indel in their entire genome, and there are ~20,000 genes, of which *PRNP* is one of the smaller ones, and only ~20,000 prion disease cases have ever come to the attention of the modern medical establishment. Therefore, it's unlikely there's *ever* even been *one* individual who had sporadic prion disease and just happened to have a benign *de novo* in *PRNP* just by coincidence. Others who do variant classification seem to agree &mdash; ACMG considers *de novo* status to be "strong evidence" of pathogenicity [[Richards 2015]]. I considered *de novo* status to be evidence for high penetrance.
+ **Homozygotes**. Almost all cases of genetic prion disease are in heterozygotes &mdash; people with just one mutant copy of the *PRNP* gene. But a few variants have been seen in homozygotes. For E200K, which has ample evidence for high penetrance and is found in some dense founder clusters around the world [[Lee 1999]], this isn't too surprising. But for a couple of variants that don't have evidence for high penetrance, the presence of an affected homozygote is suggestive that the variant at least confers an increased risk of prion disease. That's because these *PRNP* variants are so rare that even one affected homozygote can represent a very unlikely-by-chance deviation from Hardy-Weinberg equilibrium. Let me explain. The variants in question have allele frequencies <<0.1% in the general population (based on ExAC continental populations). A variant with, say, AF 0.1% has a het frequency of 2 in 1,000 and, under random breeding, a homozygote frequency of 1 in 1,000,000, so there are 2,000 hets out there for every 1 homozygote. Consider that 1 of the 4 known affected V203I individuals is a homozygote [[Komatsu 2014]], and 1 of 3 affected Q212P individuals is a homozygote [[Beck 2010], [Minikel 2016]]. In both cases, the homozygotes had no family history of the disease on either side of the family. Without doing any math, it's clear that these numbers are fairly unlikely to happen by chance if the variant confers no risk. Here, a likely explanation is that one mutant allele confers an elevated but still low risk, while two mutant alleles confer a higher risk. Thus, in these cases, an affected homozygote provides some evidence that a variant confers risk increased above the baseline.
+ **Case/control enrichment.** For completeness, I also noted the handful of variants for which we have evidence that the variant is [more common in cases than controls](/2016/10/19/estimation-of-penetrance/) [[Minikel 2016]], as this is evidence for increased risk or, with very strong enrichment, high penetrance.

All that said, here's what I found (*last updated 2018-07-11*):

| variant | evidence for high penetrance | evidence for increased risk | refs | comments |
| ---- | ---- | ---- | ---- | ---- | 
| P39L |  |  |   [Bernardi 2014](http://www.ncbi.nlm.nih.gov/pubmed/25022973) | |
| 2-OPRD |  |  |    [Beck 2001](http://www.ncbi.nlm.nih.gov/pubmed/11468331), [Capellari 2002](http://www.ncbi.nlm.nih.gov/pubmed/12451210) | | 
| 1-OPRI |  |  |   [Laplanche 1995](http://www.ncbi.nlm.nih.gov/pubmed/7655470), [Pietrini 2003](http://www.ncbi.nlm.nih.gov/pubmed/14610142) | |
| 2-OPRI |  |  |   [Hill 2006](http://www.ncbi.nlm.nih.gov/pubmed/16415305) | |
| 3-OPRI |  |  |   [Nishida 2004](http://www.ncbi.nlm.nih.gov/pubmed/15557533) | |
| 4-OPRI |  |  |   [Kaski 2011](http://www.ncbi.nlm.nih.gov/pubmed/21616973) | most cases have negative family history |
| 5-OPRI | Mendelian segregation |  |    [Mead 2007](https://www.ncbi.nlm.nih.gov/pubmed/17709704) | |
| 6-OPRI | Mendelian segregation |  |    [Mead 2006](http://www.ncbi.nlm.nih.gov/pubmed/16923955/) | |
| 7-OPRI | Mendelian segregation |  |    [Goldfarb 1991](http://www.ncbi.nlm.nih.gov/pubmed/1683708) | |
| 8-OPRI | Mendelian segregation |  |    [Goldfarb 1991](http://www.ncbi.nlm.nih.gov/pubmed/1683708), [Laplanche 1999](http://www.ncbi.nlm.nih.gov/pubmed/10581230) | |
| 9-OPRI | Mendelian segregation, *de novo* |  |   [Krasemann 1995](http://www.ncbi.nlm.nih.gov/pubmed/8750875), [Sanchez-Valle 2008](https://www.ncbi.nlm.nih.gov/pubmed/18559465) | |
| 12-OPRI | Mendelian segregation |  |   [Kumar 2011](http://www.ncbi.nlm.nih.gov/pubmed/21911696) | |
| P84S |  |  |    [Jones 2014](http://www.ncbi.nlm.nih.gov/pubmed/24814844) |  |
| S97N |  |  |    [Zheng 2008](http://www.ncbi.nlm.nih.gov/pubmed/18425766) |  |
| P102L | Mendelian segregation | case/control enrichment |    [Webb 2008](https://www.ncbi.nlm.nih.gov/pubmed/18757886) | |
| P105L | Mendelian segregation |  |    [Yamada 1999](http://www.ncbi.nlm.nih.gov/pubmed/10408557) | 2 sibs affected & genotyped, 1 ungenotyped parent likely affected |
| P105S |  |  |    [Tunnell 2008](http://www.ncbi.nlm.nih.gov/pubmed/18955686/) | 
| P105T | Mendelian segregation |  |   [Rogaeva 2006](http://www.ncbi.nlm.nih.gov/pubmed/16831973) |
| G114V | Mendelian segregation |  |   [Rodriguez 2005](http://www.ncbi.nlm.nih.gov/pubmed/15851745), [Liu 2010](http://www.ncbi.nlm.nih.gov/pubmed/20028338) | pedigree suggests penetrance high though not 100% |
| A117V | Mendelian segregation | case/control enrichment |   [Hsiao 1991](http://www.ncbi.nlm.nih.gov/pubmed/1674116) |
| 129insLGGLGGYV | *de novo* |  |  [Hinnell 2011](http://www.ncbi.nlm.nih.gov/pubmed/21282596) |  |
| G131V |  |  |   [Panegyres 2001](http://www.ncbi.nlm.nih.gov/pubmed/11709001), [Jansen 2011](https://www.ncbi.nlm.nih.gov/pubmed/21760536) | positive family history in one case |
| S132I | Mendelian segregation |  |   [Hilton 2009](http://www.ncbi.nlm.nih.gov/pubmed/19187063) | extensive family history, only proband genotyped |
| A133V |  |  |    [Rowe 2007](http://www.ncbi.nlm.nih.gov/pubmed/17353478) |  |
| Y145X |  |  |    [Kitamoto 1993](http://www.ncbi.nlm.nih.gov/pubmed/8097911) |  |
| R148H |  |  |    [Krebs 2005](http://www.ncbi.nlm.nih.gov/pubmed/15776279/) | |
| R156C |  |  | [Kenny 2017](https://www.ncbi.nlm.nih.gov/pubmed/28572272) | |
| Q160X | Mendelian segregation |  |    [Fong & Rojas 2016](https://www.ncbi.nlm.nih.gov/pubmed/27716661) | |
| Y162X | Mendelian segregation |  | [Bommarito 2018](https://www.ncbi.nlm.nih.gov/pubmed/29984897) | |
| Y163X | Mendelian segregation |  |    [Mead 2013](http://www.ncbi.nlm.nih.gov/pubmed/24224623/), [Capellari 2018](https://doi.org/10.1002/acn3.568) | |
| D167G |  |  |    [Bishop 2009](http://www.ncbi.nlm.nih.gov/pubmed/20035629) |  |
| D167N |  |  |    [Beck 2010](http://www.ncbi.nlm.nih.gov/pubmed/20583301) |  |
| Y169X | Mendelian segregation | | [Capellari 2018](https://doi.org/10.1002/acn3.568) |
| V176G |  |  |    [Simpson 2013](http://www.ncbi.nlm.nih.gov/pubmed/23857164) |  |
| D178Efs25X | Mendelian segregation |  |  [Mastuzono 2013](http://www.ncbi.nlm.nih.gov/pubmed/23577609) | only proband genotyped |
| D178N | Mendelian segregation, *de novo* | case/control enrichment |   [Medori 1992](http://www.ncbi.nlm.nih.gov/pubmed/1346338), [Dagvadorj 2002] |
| V180I |  | case/control enrichment |   [Hitoshi 1993](http://www.ncbi.nlm.nih.gov/pubmed/8138811) | |
| T183A | Mendelian segregation |  |   [Nitrini 1997](http://www.ncbi.nlm.nih.gov/pubmed/9266722) |  |
| H187R | Mendelian segregation |  |  [Butefisch 2000](http://www.ncbi.nlm.nih.gov/pubmed/10953183) |  |
| T188A |  |  |    [Collins 2000](http://www.ncbi.nlm.nih.gov/pubmed/10891990) |  |
| T188K |  |  |    [Roeber 2008](http://www.ncbi.nlm.nih.gov/pubmed/18478114/) | multiple cases with negative family history |
| T188R |  |  |    [Roeber 2008](http://www.ncbi.nlm.nih.gov/pubmed/18478114/), [Tartaglia 2010](http://www.ncbi.nlm.nih.gov/pubmed/21107135/) |
| T193I |  |  |    [Kotta 2006](http://www.ncbi.nlm.nih.gov/pubmed/17129366) |  |
| K194E |  |  |   [Takada 2017](https://www.ncbi.nlm.nih.gov/pubmed/27943639) | |
| E196A |  |  |    [Zhang 2014](http://www.ncbi.nlm.nih.gov/pubmed/23787189) |  |
| E196K | Mendelian segregation |  |   [Peoc'h 2000](http://www.ncbi.nlm.nih.gov/pubmed/10790216) | only proband genotyped |
| F198S | Mendelian segregation |  |   [Dlouhy 1992](https://www.ncbi.nlm.nih.gov/pubmed/1363809), [Hsiao 1992](http://www.ncbi.nlm.nih.gov/pubmed/1363810) |
| F198V |  |  |    [Zheng 2008](http://www.ncbi.nlm.nih.gov/pubmed/18425766) |  |
| E200G |  |  |    [Kim 2013](http://www.ncbi.nlm.nih.gov/pubmed/24330864) |  |
| E200K | Mendelian segregation |  homozygote, case/control enrichment |   [Hsiao 1991](http://www.ncbi.nlm.nih.gov/pubmed/2008182) |
| T201S |  |  |   [Parvez 2010](http://www.esc-archive.eu/barcelona10/bar_s8_poster.asp) |  |
| D202G | Mendelian segregation |  |   [Heinemann 2008](http://www.ncbi.nlm.nih.gov/pubmed/18443555) | only proband genotyped |
| D202N |  |  |   [Piccardo 1998](http://www.ncbi.nlm.nih.gov/pubmed/9786248) |  |
| V203I |  | homozygote |   [Komatsu 2014](https://www.ncbi.nlm.nih.gov/pubmed/25495585) |  |
| R208C |  |  |    [Zheng 2008](http://www.ncbi.nlm.nih.gov/pubmed/18425766) |  |
| R208H |  |  |    [Mastrianni 1996](http://www.ncbi.nlm.nih.gov/pubmed/8909447) | |
| V210I |  | case/control enrichment |    [Ripoll 1993](http://www.ncbi.nlm.nih.gov/pubmed/8105421), [Pocchiari 1993](http://www.ncbi.nlm.nih.gov/pubmed/7902693) |
| E211D | Mendelian segregation |  |  [Peoc'h 2012](http://www.ncbi.nlm.nih.gov/pubmed/22965875) | supplement describes 1 family with 3 affected |
| E211Q |  |  |    [Peoc'h 2000](http://www.ncbi.nlm.nih.gov/pubmed/10790216) | 2 sibs affected |
| Q212P |  |  homozygote |   [Beck 2010](http://www.ncbi.nlm.nih.gov/pubmed/20583301) |   |
| I215V |  |  |    [Munoz-Nieto 2013](http://www.ncbi.nlm.nih.gov/pubmed/22763467) |  |
| Q217R |  |  |    [Hsiao 1992](http://www.ncbi.nlm.nih.gov/pubmed/1363810) | 2 affected |
| Y218N | Mendelian segregation |  |   [Alzualde 2010](http://www.ncbi.nlm.nih.gov/pubmed/20613639) |  |
| A224V |  |  |    [Watts 2015](http://www.ncbi.nlm.nih.gov/pubmed/26094969) |  |
| Y226X |  |  |    [Jansen 2010](http://www.ncbi.nlm.nih.gov/pubmed/19911184) |  |
| Q227X |  |  |    [Jansen 2010](http://www.ncbi.nlm.nih.gov/pubmed/19911184) |  |
| M232R |  | case/control enrichment |    [Hitoshi 1993](http://www.ncbi.nlm.nih.gov/pubmed/8138811) | |
| M232T |  |  |    [Bratosiewicz 2000](http://www.ncbi.nlm.nih.gov/pubmed/11693719) |  |
| P238S |  |  |    [Windl 1999](http://www.ncbi.nlm.nih.gov/pubmed/10987652) |  |

In total, then, 27 out of the 69 have evidence for either Mendelian segregation or *de novo* status according to these criteria. These are all likely to be high penetrance variants. For some of these we can say definitively that penetrance is high, when the family is large or when there is dramatic case/control enrichment. For the rest it's likely, although it's conceivable for some variants that the penetrance is somewhat more modest and maybe there just happened to be a family with three affecteds by coincidence.

There are also probably some variants that are genuinely high penetrance but have no boxes checked above. For instance, sometimes a family history just isn't available for a patient, or there is a history of disease but the family never speaks about it and so the younger generation doesn't know, or the family history appears negative only due to adoption or a non-paternity event, or the variant is *de novo* but the parents are already deceased and there are no siblings, so it is impossible to prove that it's *de novo*. When there's only one patient and the variant is also ultra-rare in controls, it's hard to say anything completely definitive.

Overall, then, I am not asserting that any of the criteria above are proof positive for a particular risk classification, but I think they each make a classification more or less likely, and are worth noting. Many papers on genetic prion disease include a figure with a diagram of *PRNP*'s coding sequence, sometimes with elements of protein secondary structure noted, and all the reportedly pathogenic mutations indicated. I set out to make a new such figure with variants shaded by their level of human genetic evidence (evidence for high penetrance, evidence for increased risk, or no evidence) and sized by the number of cases in our recent case series [[Minikel 2016]]. Here's what I came up with:

![](/media/2017/04/prnp_variants_by_evidence.png)

[*code to produce this plot*](https://github.com/ericminikel/prp-misc/blob/master/variants_by_evidence.R)

As a future direction, there are additional sources of information that should be useful in classification that I haven't gotten into here but may go through and annotate in the future:

+ More could probably be done with **allele frequency comparisons** &mdash; for instance in some cases the sheer frequency in controls is too high for a variant to be highly penetrant, and can be enough to suggest that certain variants are likely benign.
+ **Multiple isolated cases without family history** provide some evidence against high penetrance.
+ **CpG variants with a low case count** are probably not high penetrance. CpG variants (C &rarr; T transitions where the next base is G) are the most frequent type of DNA mutation, occurring 10X more often than non-CpG transitions and 100X more often than transversions [[Samocha 2014], [Lek 2016]]. CpG variants are responsible for all three of the most prevalent, most highly recurrent *PRNP* mutations in cases (P102L, D178N, and E200K). Based on mutation rates, we can estimate that other CpG variants in *PRNP* have probably arisen very roughly about as many times in the world population as those three, so they've had roughly as many chances to produce prion disease cases, if they were highly penetrant. So if you see a CpG variant that has few cases, and no Mendelian segregation, it's likely to confer at worst a low risk of disease, and perhaps no risk at all.


[Lee 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10090891 "Lee HS, Sambuughin N, Cervenakova L, Chapman J, Pocchiari M, Litvak S, Qi HY,  Budka H, del Ser T, Furukawa H, Brown P, Gajdusek DC, Long JC, Korczyn AD, Goldfarb LG. Ancestral origins and worldwide distribution of the PRNP 200K mutation causing familial Creutzfeldt-Jakob disease. Am J Hum Genet. 1999 Apr;64(4):1063-70. PubMed PMID: 10090891; PubMed Central PMCID: PMC1377830."

[Simon 2000]: https://www.ncbi.nlm.nih.gov/pubmed/10665501 "Simon ES, Kahana E, Chapman J, Treves TA, Gabizon R, Rosenmann H, Zilber N, Korczyn AD. Creutzfeldt-Jakob disease profile in patients homozygous for the PRNP E200K mutation. Ann Neurol. 2000 Feb;47(2):257-60. PubMed PMID: 10665501."

[Dagvadorj 2002]: https://www.ncbi.nlm.nih.gov/pubmed/12205650 "Dagvadorj A, Petersen RB, Lee HS, Cervenakova L, Shatunov A, Budka H, Brown P, Gambetti P, Goldfarb LG. Spontaneous mutations in the prion protein gene causing  transmissible spongiform encephalopathy. Ann Neurol. 2002 Sep;52(3):355-9. PubMed PMID: 12205650."

[Beck 2010]: https://www.ncbi.nlm.nih.gov/pubmed/20583301 "Beck JA, Poulter M, Campbell TA, Adamson G, Uphill JB, Guerreiro R, Jackson GS, Stevens JC, Manji H, Collinge J, Mead S. PRNP allelic series from 19 years of prion protein gene sequencing at the MRC Prion Unit. Hum Mutat. 2010 Jul;31(7):E1551-63. doi: 10.1002/humu.21281. PubMed PMID: 20583301."

[Michaelson 2012]: https://www.ncbi.nlm.nih.gov/pubmed/23260136 "Michaelson JJ, Shi Y, Gujral M, Zheng H, Malhotra D, Jin X, Jian M, Liu G, Greer D, Bhandari A, Wu W, Corominas R, Peoples A, Koren A, Gore A, Kang S, Lin GN, Estabillo J, Gadomski T, Singh B, Zhang K, Akshoomoff N, Corsello C, McCarroll S, Iakoucheva LM, Li Y, Wang J, Sebat J. Whole-genome sequencing in autism identifies hot spots for de novo germline mutation. Cell. 2012 Dec 21;151(7):1431–1442. PMID: 23260136"

[Kong 2012]: http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3548427 "Kong A, Frigge ML, Masson G, Besenbacher S, Sulem P, Magnusson G, Gudjonsson SA, Sigurdsson A, Jonasdottir A, Jonasdottir A, Wong WSW, Sigurdsson G, Walters GB, Steinberg S, Helgason H, Thorleifsson G, Gudbjartsson DF, Helgason A, Magnusson OT, Thorsteinsdottir U, Stefansson K. Rate of de novo mutations and the importance of father’s age to disease risk. Nature. 2012 Aug 23;488(7412):471–475. PMCID: PMC3548427"

[Komatsu 2014]: https://www.ncbi.nlm.nih.gov/pubmed/25495585/ "Komatsu J, Sakai K, Hamaguchi T, Sugiyama Y, Iwasa K, Yamada M. Creutzfeldt-Jakob disease associated with a V203I homozygous mutation in the prion protein gene. Prion. 2014;8(5):336-8. doi: 10.4161/19336896.2014.971569. PubMed PMID: 25495585; PubMed Central PMCID: PMC4601383."

[Samocha 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25086666 "Samocha KE, Robinson EB, Sanders SJ, Stevens C, Sabo A, McGrath LM, Kosmicki JA, Rehnström K, Mallick S, Kirby A, Wall DP, MacArthur DG, Gabriel SB, DePristo  M, Purcell SM, Palotie A, Boerwinkle E, Buxbaum JD, Cook EH Jr, Gibbs RA, Schellenberg GD, Sutcliffe JS, Devlin B, Roeder K, Neale BM, Daly MJ. A framework for the interpretation of de novo mutation in human disease. Nat Genet. 2014 Sep;46(9):944-50. doi: 10.1038/ng.3050. Epub 2014 Aug 3. PubMed PMID: 25086666; PubMed Central PMCID: PMC4222185."

[Richards 2015]: https://www.ncbi.nlm.nih.gov/pubmed/25741868 "Richards S, Aziz N, Bale S, Bick D, Das S, Gastier-Foster J, Grody WW, Hegde M, Lyon E, Spector E, Voelkerding K, Rehm HL; ACMG Laboratory Quality Assurance Committee.. Standards and guidelines for the interpretation of sequence variants: a joint consensus recommendation of the American College of Medical Genetics and  Genomics and the Association for Molecular Pathology. Genet Med. 2015 May;17(5):405-24. doi: 10.1038/gim.2015.30. PubMed PMID: 25741868; PubMed Central PMCID: PMC4544753."

[Minikel 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26791950 "Minikel EV, Vallabh SM, Lek M, Estrada K, Samocha KE, Sathirapongsasuti JF, McLean CY, Tung JY, Yu LP, Gambetti P, Blevins J, Zhang S, Cohen Y, Chen W, Yamada M, Hamaguchi T, Sanjo N, Mizusawa H, Nakamura Y, Kitamoto T, Collins SJ, Boyd A, Will RG, Knight R, Ponto C, Zerr I, Kraus TF, Eigenbrod S, Giese A, Calero M, de Pedro-Cuesta J, Haïk S, Laplanche JL, Bouaziz-Amar E, Brandel JP, Capellari S, Parchi P, Poleggi A, Ladogana A, O'Donnell-Luria AH, Karczewski KJ,  Marshall JL, Boehnke M, Laakso M, Mohlke KL, Kähler A, Chambert K, McCarroll S, Sullivan PF, Hultman CM, Purcell SM, Sklar P, van der Lee SJ, Rozemuller A, Jansen C, Hofman A, Kraaij R, van Rooij JG, Ikram MA, Uitterlinden AG, van Duijn  CM; Exome Aggregation Consortium (ExAC)., Daly MJ, MacArthur DG. Quantifying prion disease penetrance using large population control cohorts. Sci Transl Med.  2016 Jan 20;8(322):322ra9. doi: 10.1126/scitranslmed.aad5169. PubMed PMID: 26791950; PubMed Central PMCID: PMC4774245."

[Lek 2016]: https://www.ncbi.nlm.nih.gov/pubmed/27535533 "Lek M, Karczewski KJ, Minikel EV, Samocha KE, Banks E, Fennell T, O'Donnell-Luria AH, Ware JS, Hill AJ, Cummings BB, Tukiainen T, Birnbaum DP, Kosmicki JA, Duncan LE, Estrada K, Zhao F, Zou J, Pierce-Hoffman E, Berghout J, Cooper DN, Deflaux N, DePristo M, Do R, Flannick J, Fromer M, Gauthier L, Goldstein J, Gupta N, Howrigan D, Kiezun A, Kurki MI, Moonshine AL, Natarajan P,  Orozco L, Peloso GM, Poplin R, Rivas MA, Ruano-Rubio V, Rose SA, Ruderfer DM, Shakir K, Stenson PD, Stevens C, Thomas BP, Tiao G, Tusie-Luna MT, Weisburd B, Won HH, Yu D, Altshuler DM, Ardissino D, Boehnke M, Danesh J, Donnelly S, Elosua  R, Florez JC, Gabriel SB, Getz G, Glatt SJ, Hultman CM, Kathiresan S, Laakso M, McCarroll S, McCarthy MI, McGovern D, McPherson R, Neale BM, Palotie A, Purcell SM, Saleheen D, Scharf JM, Sklar P, Sullivan PF, Tuomilehto J, Tsuang MT, Watkins HC, Wilson JG, Daly MJ, MacArthur DG; Exome Aggregation Consortium. Analysis of protein-coding genetic variation in 60,706 humans. Nature. 2016 Aug 17;536(7616):285-91. doi: 10.1038/nature19057. PubMed PMID: 27535533; PubMed Central PMCID: PMC5018207."



