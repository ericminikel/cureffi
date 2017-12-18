---
layout: post
title:  "Protective PrP missense variants"
date:   2017-12-18 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2017/12/e219k-2lft-thumbnail.png
summary200: "Some lucky people have genetic variants in the prion protein that give them a reduced risk of prion disease. But it's not obvious how to translate this insight into a therapy."
---

![](/media/2017/12/e219k-2lft.png)

*Above: close-up of the lysine (K) residue in an NMR structure of human prion protein with the E219K substitution, which reduces a person's risk of sporadic prion disease. From structure [2LFT](http://www.rcsb.org/pdb/explore/explore.do?structureId=2LFT) [[Biljan 2012]].*

On multiple occasions recently I've gotten a question about the protective missense variants in the prion protein gene, *PRNP*. There are two questions people ask:

1. Do these variants protect universally against all types of prion disease?
2. Do these variants offer some insight into how to develop a therapy for prion disease?

To which the short answers are 1) not necessarily, and 2) yes, but not in the way you might think. The long answer is this blog post.

### the literature on protective missense variants

What we're talking about here are missense variants &mdash; genetic changes resulting in amino acid substitutions in the prion protein (PrP) &mdash; that reduce the risk of prion disease. There are examples documented in several species. For instance, V136A, R154H, and Q217R in sheep [[Laplanche 1993], [Hunter 1994], [Westaway 1994], [Baylis 2004]], and G96S in white-tailed deer [[Johnson 2006]]. But in this post I'll focus on the protective variants in humans, of which I am aware of three: G127V, M129V, and E219K.

Here's a quick rundown of what we know about each of these:

#### M129V

This is the most common variant in *PRNP* in humans, with 129V having a [~30% allele frequency](http://gnomad.broadinstitute.org/variant/20-4680251-A-G) in most human populatons, except among East Asians where it's only about 2%. The variant is well-known to be associated with a longer disease duration [[Pocchiari 2004]] and it also affects the neuropathological presentation of the disease [[Parchi 1999]]. But its effects on risk are not uniform across the different types of prion disease. 

Even a single 129V allele provides nearly complete protection against variant CJD [[Mok 2017]], and some protection against kuru [[Mead 2003]]. Yet 129V is associated with increased risk of human growth hormone-related CJD, perhaps due to compatibility with the genotype of the unknown infected donor [[Collinge 1991], [Brandel 2003], [Moore 2016]]. 

In sporadic prion disease, codon 129 exhibits heterozygote advantage. 129MV individuals have about one-third the risk of sporadic prion disease, compared to either homozygous genotype [[Palmer 1991], [Mead 2012]].

There isn't evidence that codon 129 affects penetrance (lifetime disease risk) in genetic prion disease. For age of onset, as reviewed [here](/2016/02/17/age-of-onset-in-genetic-prion-disease/), the answer depends on which mutation. For the 6-OPRI mutation, there is evidence that 129MV is associated with a later age of onset (but still complete penetrance), compared to 129MM [[Mead 2006]]. For P102L, reports are conflicting [[Kovacs 2005], [Mead 2006], [Webb 2008]]. For other mutations, there is no evidence that codon 129 has any effect on age of onset.

I'm not yet sure what to make of it, but recently I noticed something interesting while looking back at some old data &mdash; [Table S10](https://github.com/ericminikel/prnp_penetrance/blob/master/supplement/table_s10_japanese_case_details.tsv) from [[Minikel 2016]]. Among Japanese prion disease cases with the low-penetrance V180I mutation, the genotype distribution is: 162 MM, 54 MV. The Japanese V180I allele is in *cis* with 129M, so that means that 25% (54/216) of *trans* alleles are 129V, which struck me as a dramatic enrichment, since 129V has an allele frequency of only a few percent in Japan. To see if this was significant, I did some digging and found that 129V was found to have an allele frequency of 3% among 645 Japanese controls [[Nozaki 2010]]. The raw numbers aren't given, but that probably corresponds to ~39 V alleles out of 1290 chromosomes. So I did a test (in R: `fisher.test(matrix(c(1290-39,39,162,54),nrow=2,byrow=T),alternative='two.sided')`) and sure enough, 129V is enriched ~10-fold among V180I prion disease cases compared to the general population, *P* = 1 &times; 10<sup>-24</sup>. I don't have any data to rule out the possibility that this is due to population stratification &mdash; maybe V180I is just more common in some region of Japan where 129V is also more common &mdash; but it is possible that 129V does actually increase risk, compared to 129M, when found in *trans* to V180I. I'm not sure if this is real, but one should not assume that 129V can only be helpful, not harmful, in genetic prion disease &mdash; after all, in acquired prion disease, it can be either.

#### E219K

E219K has an [allele frequency of ~4%](http://gnomad.broadinstitute.org/variant/20-4680521-G-A) among East Asians and South Asians, while it is very rare in other populations. It's been studied extensively in the Japanese population, where it has a frequency of about 6-7% [[Nozaki 2010]].

E219K appears to have no effect on the risk of acquired prion disease, at least for dura mater graft CJD, which is the only type of acquired prion disease common enough in Japan for there to be a reasonable amount of data [[Nozaki 2010]].

In sporadic prion disease, E219K is associated with reduced risk of prion disease [[Shibuya 1998], [Nozaki 2010]]. 219EK heterozygotes appear to have about 20-fold reduced risk, as there were 3 EK and 561 EE genotypes in sporadic CJD in Japan at last count [[Nozaki 2010]], corresponding to an allele frequency of ~0.3% in cases, compared to 6% in controls. Oddly, we don't yet know if the homozygous KK genotype is protective or not, because this genotype is rare enough *a priori* that even though zero KK sporadic CJD cases have been observed, that doesn't yet add up to a statistically significant depletion of this genotype. (If KK risk was equal to EE risk, then out of 564 genotyped sporadic CJD cases, you'd only expect ~2 cases, so observing 0 is not too surprising.) We can say that KK almost certainly does not *increase* risk, though.

In genetic prion disease, it's not clear what effect, if any, E219K might have. In the aggregate, it was reported that the K allele is depleted among genetic prion disease cases in Japan [[Nozaki 2010]], but it's not yet clear to me whether that difference is statistically significant. The paper reported *P* < 0.001 but it is difficult to do the statistics right here &mdash; the *N*=214 individuals with genetic prion disease in that paper are not actually 214 independent events, as most statistical tests would assume, because there might be, say, only 20 or so genetic prion disease haplotypes in Japan (we don't know the true number). The answer could also vary depending on which mutation a person has.

#### G127V

G127V has a frequency probably down arond 1% or lower in the Papua New Guinea highlands [[Mead 2009]] and has only ever been seen in [one](http://gnomad.broadinstitute.org/variant/20-4680246-G-T) other individual. 

Homozygotes have never been observed, but the 127GV heterozygous genotype is associated with dramatic, possiblty complete, protection from kuru [[Mead 2009]]. A [transgenic mouse study](/2015/06/10/the-powerful-protective-effect-of-g127v/) found that 127V also protected against some variant CJD and iatrogenic CJD isolates [[Asante 2015]], but we don't have any human data on this.

There are also no human data on the effects of 127V on the risk of sporadic prion disease. The mouse study found a large protective effect [[Asante 2015]], although that was upon inoculation with sporadic CJD brain homogenate, so it doesn't tell us about the risk of spontaneously developing prion disease. For example, it doesn't rule out the possibility that there might just exist a transmission barrier between 127G prions and 127V prions, with G127V individuals having equal or even increased risk to spontaneously form prions of a 127V strain.

There are no data on the effects of G127V on genetic prion disease.

### summary table

Here's a table summarizing everything I described above:

| variant | allele frequency | acquired | sporadic | genetic |
| ---- | ---- | ---- | ---- | ---- |
| M129V | ~30% worldwide | Nearly complete protection from vCJD and kuru but increased risk of HGH CJD. | Heterozygotes have ~1/3 the risk of either homozygous genotype. | No known effect for most mutations. Later onset for 6-OPRI mutation. |
| E219K | ~6% in Japan | No effect. | ~20-fold reduced risk in heterozygotes. Homozygous effect unknown. | Not clear. |
| G127V | ~1% in Papua New Guinea | Nearly complete protection from kuru. | Evidence for protection from mouse study, but no human data. | No data. |

So to summarize the answer to question #1, protective PrP missense variants do not necessarily have uniformly protective effects across different types of prion disease.

### implications for therapy

Now we come to question #2 &mdash; do these protective variants offer some insight into how to develop a therapy for prion disease? Yes, absolutely: the existence of these mutations is one of [many lines of evidence](/2016/06/28/introductory-reading-list/) telling us that PrP is the cause of prion disease, and is the right drug target for therapies to prevent, delay, or treat prion disease.

But beyond that, I submit that these variants do not actually provide any more specific inspiration for how to develop a therapy. We're not going to CRISPR these variants into people's genomes, because we don't have the technology to deliver CRISPR to the 100 billion neurons of the adult human brain, and even if we did, we'd probably just aim to knock out *PRNP*, since that is easier to do with CRISPR and has [stronger proofs of concept](/2016/06/28/introductory-reading-list/) for being protective against prion disease. And we're probably not going to infuse PrP molecules containing these mutations into people's brains, because we also lack the technology to deliver proteins or peptides to a wide swath of the human brain, and anyway it's not clear whether a recombinant protein floating around unanchored would have the same protective effect as PrP anchored to the cell surface, where it's supposed to be. (People have tried this peptide infusion idea in mouse models [[Furuya 2006]], but the results haven't been too promising). There's also an idea that maybe these protective missense variants can somehow provide inspiration for a small molecule drug for prion disease, which sounds great on the face of it, but it's just not obvious how exactly you would design that molecule. One study used a computational approach to try to identify molecules that had structural similarity to the parts of PrP containing protective variants, and then tested some of the candidate molecules in cell culture [[Perrier 2000]]. But the molecules all had EC<sub>50</sub> values of &gt;15 &mu;M in cell culture (that's not very potent), and a later study could not replicate any binding to PrP nor any activity in cell culture [[Kamatari 2013]].

If anyone has specific ideas for how to translate these protective variants into a therapy, I'd be curious to hear them, but from everything I've seen and read, the translation into therapy is anything but obvious. And while these variants are clearly protective &mdash; sometimes dramatically so &mdash; in some forms of prion disease, we do not have for them nearly the proof of concept that we have for lowering PrP. As reviewed [here](/2016/06/28/introductory-reading-list/), for lowering PrP, we know there is total protection in knockouts [[Bueler 1993]], there is a dose-response curve across a wide range of expression levels [[Bueler 1994], [Fischer 1996]], PrP is needed not only for replication but also neurotoxicity [[Brandner 1996]], and shutting off PrP expression is beneficial even after the disease process has begun [[Mallucci 2003], [Safar 2005]]. The protective missense variants provide one further line of evidence pointing to PrP as a drug target, but they do not open up a more promising therapeutic strategy than PrP lowering.





[Collinge 1991]: https://www.ncbi.nlm.nih.gov/pubmed/1675319/ "Collinge J, Palmer MS, Dryden AJ. Genetic predisposition to iatrogenic Creutzfeldt-Jakob disease. Lancet. 1991 Jun 15;337(8755):1441-2. PubMed PMID: 1675319."

[Palmer 1991]: https://www.ncbi.nlm.nih.gov/pubmed/1677164/ "Palmer MS, Dryden AJ, Hughes JT, Collinge J. Homozygous prion protein genotype predisposes to sporadic Creutzfeldt-Jakob disease. Nature. 1991 Jul 25;352(6333):340-2. Erratum in: Nature 1991 Aug 8;352(6335):547. PubMed PMID: 1677164."

[Laplanche 1993]: https://www.ncbi.nlm.nih.gov/pubmed/8094373/ "Laplanche JL, Chatelain J, Westaway D, Thomas S, Dussaucy M, Brugere-Picoux J, Launay JM. PrP polymorphisms associated with natural scrapie discovered by denaturing gradient gel electrophoresis. Genomics. 1993 Jan;15(1):30-7. PubMed PMID: 8094373."

[Bueler 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8100741 "Büeler H, Aguzzi A, Sailer A, Greiner RA, Autenried P, Aguet M, Weissmann C. Mice devoid of PrP are resistant to scrapie. Cell. 1993 Jul 2;73(7):1339-47. PubMed PMID: 8100741."

[Bueler 1994]: http://www.ncbi.nlm.nih.gov/pubmed/8790598 "Büeler H, Raeber A, Sailer A, Fischer M, Aguzzi A, Weissmann C. High prion and PrPSc levels but delayed onset of disease in scrapie-inoculated mice heterozygous for a disrupted PrP gene. Mol Med. 1994 Nov;1(1):19-30. PubMed PMID: 8790598; PubMed Central PMCID: PMC2229922."

[Hunter 1994]: https://www.ncbi.nlm.nih.gov/pubmed/7979991/ "Hunter N, Goldmann W, Smith G, Hope J. The association of a codon 136 PrP gene variant with the occurrence of natural scrapie. Arch Virol. 1994;137(1-2):171-7. PubMed PMID: 7979991."

[Westaway 1994]: https://www.ncbi.nlm.nih.gov/pubmed/7926780/ "Westaway D, Zuliani V, Cooper CM, Da Costa M, Neuman S, Jenny AL, Detwiler L, Prusiner SB. Homozygosity for prion protein alleles encoding glutamine-171 renders sheep susceptible to natural scrapie. Genes Dev. 1994 Apr 15;8(8):959-69. PubMed PMID: 7926780."

[Fischer 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8635458 "Fischer M, Rülicke T, Raeber A, Sailer A, Moser M, Oesch B, Brandner S, Aguzzi A, Weissmann C. Prion protein (PrP) with amino-proximal deletions restoring susceptibility of PrP knockout mice to scrapie. EMBO J. 1996 Mar 15;15(6):1255-64. PubMed PMID: 8635458; PubMed Central PMCID: PMC450028."

[Brandner 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8552188 "Brandner S, Isenmann S, Raeber A, Fischer M, Sailer A, Kobayashi Y, Marino S,  Weissmann C, Aguzzi A. Normal host prion protein necessary for scrapie-induced neurotoxicity. Nature. 1996 Jan 25;379(6563):339-43. PubMed PMID: 8552188."

[Shibuya 1998]: https://www.ncbi.nlm.nih.gov/pubmed/9629853/ "Shibuya S, Higuchi J, Shin RW, Tateishi J, Kitamoto T. Codon 219 Lys allele of PRNP is not found in sporadic Creutzfeldt-Jakob disease. Ann Neurol. 1998 Jun;43(6):826-8. PubMed PMID: 9629853."

[Parchi 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10443888/ "Parchi P, Giese A, Capellari S, Brown P, Schulz-Schaeffer W, Windl O, Zerr I, Budka H, Kopp N, Piccardo P, Poser S, Rojiani A, Streichemberger N, Julien J, Vital C, Ghetti B, Gambetti P, Kretzschmar H. Classification of sporadic Creutzfeldt-Jakob disease based on molecular and phenotypic analysis of 300 subjects. Ann Neurol. 1999 Aug;46(2):224-33. PubMed PMID: 10443888."

[Perrier 2000]: https://www.ncbi.nlm.nih.gov/pubmed/10823951/ "Perrier V, Wallace AC, Kaneko K, Safar J, Prusiner SB, Cohen FE. Mimicking dominant negative inhibition of prion replication through structure-based drug design. Proc Natl Acad Sci U S A. 2000 May 23;97(11):6073-8. PubMed PMID: 10823951; PubMed Central PMCID: PMC18560."

[Mallucci 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14593181 "Mallucci G, Dickinson A, Linehan J, Klöhn PC, Brandner S, Collinge J. Depleting neuronal PrP in prion infection prevents disease and reverses spongiosis. Science. 2003 Oct 31;302(5646):871-4. PubMed PMID: 14593181."

[Mead 2003]: https://www.ncbi.nlm.nih.gov/pubmed/12690204/ "Mead S, Stumpf MP, Whitfield J, Beck JA, Poulter M, Campbell T, Uphill JB, Goldstein D, Alpers M, Fisher EM, Collinge J. Balancing selection at the prion protein gene consistent with prehistoric kurulike epidemics. Science. 2003 Apr 25;300(5619):640-3. Epub 2003 Apr 10. PubMed PMID: 12690204."

[Brandel 2003]: https://www.ncbi.nlm.nih.gov/pubmed/12867116/ "Brandel JP, Preece M, Brown P, Croes E, Laplanche JL, Agid Y, Will R, Alpérovitch A. Distribution of codon 129 genotype in human growth hormone-treated CJD patients in France and the UK. Lancet. 2003 Jul 12;362(9378):128-30. PubMed PMID: 12867116."

[Baylis 2004]: https://www.ncbi.nlm.nih.gov/pubmed/15302967/ "Baylis M, Chihota C, Stevenson E, Goldmann W, Smith A, Sivam K, Tongue S, Gravenor MB. Risk of scrapie in British sheep of different prion protein genotype. J Gen Virol. 2004 Sep;85(Pt 9):2735-40. PubMed PMID: 15302967."

[Pocchiari 2004]: https://www.ncbi.nlm.nih.gov/pubmed/15361416/ "Pocchiari M, Puopolo M, Croes EA, Budka H, Gelpi E, Collins S, Lewis V, Sutcliffe T, Guilivi A, Delasnerie-Laupretre N, Brandel JP, Alperovitch A, Zerr I, Poser S, Kretzschmar HA, Ladogana A, Rietvald I, Mitrova E, Martinez-Martin P, de Pedro-Cuesta J, Glatzel M, Aguzzi A, Cooper S, Mackenzie J, van Duijn CM, Will RG. Predictors of survival in sporadic Creutzfeldt-Jakob disease and other human transmissible spongiform encephalopathies. Brain. 2004 Oct;127(Pt 10):2348-59. Epub 2004 Sep 10. PubMed PMID: 15361416."

[Safar 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16186247 "Safar JG, DeArmond SJ, Kociuba K, Deering C, Didorenko S, Bouzamondo-Bernstein E, Prusiner SB, Tremblay P. Prion clearance in bigenic mice. J Gen Virol. 2005 Oct;86(Pt 10):2913-23. PubMed PMID: 16186247."

[Kovacs 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16187142 "Kovács GG, Puopolo M, Ladogana A, Pocchiari M, Budka H, van Duijn C, Collins SJ, Boyd A, Giulivi A, Coulthart M, Delasnerie-Laupretre N, Brandel JP, Zerr I, Kretzschmar HA, de Pedro-Cuesta J, Calero-Lara M, Glatzel M, Aguzzi A, Bishop M,  Knight R, Belay G, Will R, Mitrova E; EUROCJD. Genetic prion disease: the EUROCJD experience. Hum Genet. 2005 Nov;118(2):166-74. Epub 2005 Nov 15. PubMed PMID: 16187142."

[Furuya 2006]: https://www.ncbi.nlm.nih.gov/pubmed/16759805/ "Furuya K, Kawahara N, Yamakawa Y, Kishida H, Hachiya NS, Nishijima M, Kirino T, Kaneko K. Intracerebroventricular delivery of dominant negative prion protein in a mouse model of iatrogenic Creutzfeldt-Jakob disease after dura graft transplantation. Neurosci Lett. 2006 Jul 24;402(3):222-6. Epub 2006 Jun 6. PubMed PMID: 16759805."

[Johnson 2006]: https://www.ncbi.nlm.nih.gov/pubmed/16760415/ "Johnson C, Johnson J, Vanderloo JP, Keane D, Aiken JM, McKenzie D. Prion protein polymorphisms in white-tailed deer influence susceptibility to chronic wasting disease. J Gen Virol. 2006 Jul;87(Pt 7):2109-14. PubMed PMID: 16760415."

[Mead 2006]: https://www.ncbi.nlm.nih.gov/pubmed/16923955/ "Mead S, Poulter M, Beck J, Webb TE, Campbell TA, Linehan JM, Desbruslais M, Joiner S, Wadsworth JD, King A, Lantos P, Collinge J. Inherited prion disease with six octapeptide repeat insertional mutation--molecular analysis of phenotypic heterogeneity. Brain. 2006 Sep;129(Pt 9):2297-317. PubMed PMID: 16923955."

[Webb 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18757886 "Webb TE, Poulter M, Beck J, Uphill J, Adamson G, Campbell T, Linehan J, Powell C, Brandner S, Pal S, Siddique D, Wadsworth JD, Joiner S, Alner K, Petersen C, Hampson S, Rhymes C, Treacy C, Storey E, Geschwind MD, Nemeth AH, Wroe S, Collinge J, Mead S. Phenotypic heterogeneity and genetic modification of P102L inherited prion disease in an international series. Brain. 2008 Oct;131(Pt 10):2632-46. doi: 10.1093/brain/awn202. Epub 2008 Aug 30. PubMed PMID: 18757886;  PubMed Central PMCID: PMC2570713."

[Mead 2009]: https://www.ncbi.nlm.nih.gov/pubmed/19923577/ "Mead S, Whitfield J, Poulter M, Shah P, Uphill J, Campbell T, Al-Dujaily H, Hummerich H, Beck J, Mein CA, Verzilli C, Whittaker J, Alpers MP, Collinge J. A novel protective prion protein variant that colocalizes with kuru exposure. N Engl J Med. 2009 Nov 19;361(21):2056-65. doi: 10.1056/NEJMoa0809716. PubMed PMID: 19923577."

[Nozaki 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20855418 "Nozaki I, Hamaguchi T, Sanjo N, Noguchi-Shinohara M, Sakai K, Nakamura Y, Sato T, Kitamoto T, Mizusawa H, Moriwaka F, Shiga Y, Kuroiwa Y, Nishizawa M, Kuzuhara  S, Inuzuka T, Takeda M, Kuroda S, Abe K, Murai H, Murayama S, Tateishi J, Takumi  I, Shirabe S, Harada M, Sadakane A, Yamada M. Prospective 10-year surveillance of human prion diseases in Japan. Brain. 2010 Oct;133(10):3043-57. doi: 10.1093/brain/awq216. Epub 2010 Sep 20. PubMed PMID: 20855418."

[Mead 2012]: https://www.ncbi.nlm.nih.gov/pubmed/22210626/ "Mead S, Uphill J, Beck J, Poulter M, Campbell T, Lowe J, Adamson G, Hummerich H, Klopp N, Rückert IM, Wichmann HE, Azazi D, Plagnol V, Pako WH, Whitfield J, Alpers MP, Whittaker J, Balding DJ, Zerr I, Kretzschmar H, Collinge J. Genome-wide association study in multiple human prion diseases suggests genetic risk factors additional to PRNP. Hum Mol Genet. 2012 Apr 15;21(8):1897-906. doi: 10.1093/hmg/ddr607. Epub 2011 Dec 30. PubMed PMID: 22210626; PubMed Central PMCID: PMC3313791."

[Biljan 2012]: https://www.ncbi.nlm.nih.gov/pubmed/22676969/ "Biljan I, Giachin G, Ilc G, Zhukov I, Plavec J, Legname G. Structural basis for the protective effect of the human prion protein carrying the dominant-negative E219K polymorphism. Biochem J. 2012 Sep 1;446(2):243-51. doi: 10.1042/BJ20111940. PubMed PMID: 22676969."

[Kamatari 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23081827/ "Kamatari YO, Hayano Y, Yamaguchi K, Hosokawa-Muto J, Kuwata K. Characterizing antiprion compounds based on their binding properties to prion proteins: implications as medical chaperones. Protein Sci. 2013 Jan;22(1):22-34. doi: 10.1002/pro.2180. Epub 2012 Nov 19. PubMed PMID: 23081827; PubMed Central PMCID: PMC3575857."

[Asante 2015]: https://www.ncbi.nlm.nih.gov/pubmed/26061765/ "Asante EA, Smidak M, Grimshaw A, Houghton R, Tomlinson A, Jeelani A, Jakubcova T, Hamdan S, Richard-Londt A, Linehan JM, Brandner S, Alpers M, Whitfield J, Mead S, Wadsworth JD, Collinge J. A naturally occurring variant of the human prion protein completely prevents prion disease. Nature. 2015 Jun 25;522(7557):478-81. doi: 10.1038/nature14510. Epub 2015 Jun 10. PubMed PMID: 26061765; PubMed Central PMCID: PMC4486072."

[Moore 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26840342/ "Moore RA, Head MW, Ironside JW, Ritchie DL, Zanusso G, Choi YP, Priola SA. The Distribution of Prion Protein Allotypes Differs Between Sporadic and Iatrogenic Creutzfeldt-Jakob Disease Patients. PLoS Pathog. 2016 Feb 3;12(2):e1005416. doi: 10.1371/journal.ppat.1005416. eCollection 2016 Feb. Erratum in: PLoS Pathog. 2016 Mar;12(3):e1005496. Pyo Choi, Young [corrected to Choi, Young Pyo]. PubMed PMID: 26840342; PubMed Central PMCID: PMC4740439."

[Minikel 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26791950/ "Minikel EV, Vallabh SM, Lek M, Estrada K, Samocha KE, Sathirapongsasuti JF, McLean CY, Tung JY, Yu LP, Gambetti P, Blevins J, Zhang S, Cohen Y, Chen W, Yamada M, Hamaguchi T, Sanjo N, Mizusawa H, Nakamura Y, Kitamoto T, Collins SJ, Boyd A, Will RG, Knight R, Ponto C, Zerr I, Kraus TF, Eigenbrod S, Giese A, Calero M, de Pedro-Cuesta J, Haïk S, Laplanche JL, Bouaziz-Amar E, Brandel JP, Capellari S, Parchi P, Poleggi A, Ladogana A, O'Donnell-Luria AH, Karczewski KJ, Marshall JL, Boehnke M, Laakso M, Mohlke KL, Kähler A, Chambert K, McCarroll S, Sullivan PF, Hultman CM, Purcell SM, Sklar P, van der Lee SJ, Rozemuller A, Jansen C, Hofman A, Kraaij R, van Rooij JG, Ikram MA, Uitterlinden AG, van Duijn CM; Exome Aggregation Consortium (ExAC), Daly MJ, MacArthur DG. Quantifying prion disease penetrance using large population control cohorts. Sci Transl Med. 2016 Jan 20;8(322):322ra9. doi: 10.1126/scitranslmed.aad5169. PubMed PMID: 26791950; PubMed Central PMCID: PMC4774245."

[Mok 2017]: https://www.ncbi.nlm.nih.gov/pubmed/28099827/ "Mok T, Jaunmuktane Z, Joiner S, Campbell T, Morgan C, Wakerley B, Golestani F, Rudge P, Mead S, Jäger HR, Wadsworth JD, Brandner S, Collinge J. Variant Creutzfeldt-Jakob Disease in a Patient with Heterozygosity at PRNP Codon 129. N Engl J Med. 2017 Jan 19;376(3):292-294. doi: 10.1056/NEJMc1610003. PubMed PMID: 28099827."


