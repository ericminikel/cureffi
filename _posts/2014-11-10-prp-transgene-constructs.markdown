---
layout: post
title:  "PrP transgene constructs"
date:   2014-11-10 12:00:00
author: ericminikel
location: Boston, MA
thumb120: http://www.cureffi.org/media/2014/11/transgene-thumbnail.png
summary200: "There are tens of transgene mouse lines for studying prions, but they're all based on just four Prnp clones. Here's a side-by-side comparison."
---

### Background on vectors for transgenesis

Now that I've learned a bit more about cloning and various types of vectors in my [introductory genetics class](/tag/genetics-201/) I sat down to acquaint myself with the different types of clones of the prion protein gene that have been used in transgenic animals.

First off, here is a quick review of the sizes of different types of vectors that people use, as reviewed in [Lodish 2000 Chapter 7.2](http://www.ncbi.nlm.nih.gov/books/NBK21696/), particularly [Table 7.2](http://www.ncbi.nlm.nih.gov/books/NBK21696/table/A1625/?report=objectonly), and [Strachan & Reed 1999 Chapter 4](http://www.ncbi.nlm.nih.gov/books/NBK7579/) ([Table 4.2](http://www.ncbi.nlm.nih.gov/books/NBK7579/table/A423/?report=objectonly)):

![](/media/2014/11/vector-size-comparison.png)

Most of these things are just different kinds of plasmids. Above and in the cited references, "plasmid" by itself refers to standard high copy number plasmids, which have relatively low capacity. Cosmids are special plasmids containing a phage cos sequence and able to accept a larger insert of foreign DNA. P1 phage artificial chromosomes (PACs) are packaged into P1 bacteriphages but circularize once they are adsorbed into a bacterial cell, so they too may be thought of as plasmids. Bacterial artificial chromosomes (BACs) are just very large low copy number plasmids, usually based on the [F factor](http://en.wikipedia.org/wiki/Fertility_factor). Of the above options, only yeast artificial chromosomes (YACs) are fundamentally different, as they require producing your DNA in yeast instead of bacteria.

To my understanding, the larger the vector, the more difficult it is to work with. If you're doing transgenesis, then you're microinjecting DNA into pronuclei as explained [here](/2014/11/10/genetics-21/), and the larger vectors are more likely to shear apart upon being forced through the tiny needle. That's one motivation for picking the smallest vector that gets the job done. But what "the job" is here is debatable - do you want the smallest construct that makes a mouse sick, or do you want to include the entire genomic locus in an effort to as closely mimic physiological expression patterns as possible? Efforts to model Huntington's disease, for instance, have spawned a wide spectrum of mouse models, from R6/2 with their tiny single-exon transgene [[Mangiarini 1996]], N171-82Q with their two-exon transgene [[Schilling 1999]], *Hdh* mice with mutant human exon 1 knocked in [[Wheeler 1999]], to BACHD [[Gray 2008]] and YAC128 mice [[Hodgson 1999]] with the entire human *HTT* locus.

### Unsuccessful attempts at PrP expression via cDNA clones

As far as I can tell, the first PrP transgenes were created from Syrian hamster sequence and were reported by Prusiner's group in [[Scott 1989]]. In hamsters, as in humans, *Prnp* has two exons, with the entire coding sequence in the second one. The first construct reported in this paper is a minigene dubbed migHaPrP containing a 1.5kb piece of the hamster PrP promoter, a 1.7kb hamster cDNA and a 0.8 fragment containing the polyadenylation signal, for a total of ~4kb. They were only able to obtain one line of mice harboring the migHaPrP transgene, but these mice were not susceptible to hamster prions (Table 1) and their PrP expression was not characterized in Figs 1-2.

Similarly, Weissmann's group created a transgene with a mouse cDNA plus 6kb of 5' sequence containing the prion promoter and 2.2kb of 3' sequence presumably containing the polyadenylation signal [[Fischer 1996]]. In mice, *Prnp* has three exons, the first two of which are just 5'UTR and the last of which contains the whole coding sequence - so of course a cDNA lacks both introns, fusing all three exons together. This ~10kb construct didn't work:

> in all eight lines tested, even in those... with very high transgene copy numbers (>150 copies), showed no detectable levels of PrP protein in the brain and only very weak (tgb24/+) or no expression of PrP RNA
>
> &mdash; [[Fischer 1996]]

So, cDNAs appear not to be sufficient to drive PrP expression.

### Successful PrP transgenes

#### cos-Tet

That first paper from Prusiner's group [[Scott 1989]] also reported the creation of a Syrian hamster cosmid clone containing the entire ~15kb hamster *Prnp* genomic sequence plus 24kb to the 5' and 6kb to the 3', so about 45kb total. This transgene achieved efficient expression in several transgenic mouse lines (Tg69, 71, 81). These and another line created with the same cosmid (Tg7) formed the basis of subsequent transgenesis experiments from the Prusiner lab [[Prusiner 1990]]. This construct, variously called the cos.Tet or cos-Tet vector, continues to be the basis of most of the newer transgenic lines from the Prusiner. Many other species' open reading frames, or chimeras thereof, have been swapped into the protein-coding portion of this cosmid [e.g. [Giles 2010], [Watts 2012]], and Rocky Mountain Labs and MRC Prion Unit have both adopted cos-Tet for their mouse models as well [e.g. [Race 2009], [Asante 2009]].

#### I/LnJ cosmid

Westaway and Prusiner also created a separate cosmid clone of the mouse <em>Prnp<sup>b</sup></em> allele from I/LnJ mice [[Westaway 1991]]. That cosmid contains the entire *Prnp* gene plus 6kb of 5' sequence and 15.5kb of 3' sequence, and Westaway's group eventually found that it also includes *Prnd*, which encodes Doppel [[Moore 1999]]. The mouse reference genome, which is based on <em>Prnp<sup>a</sup></em> mice, has the *Prnp* transcript as spanning 28.5kb ([chr2:131909928-131938436](http://genome.ucsc.edu/cgi-bin/hgTracks?db=mm10&position=chr2%3A131909928-131938436&hgsid=394602175_958oqH8aGOkzNeTkRZAx3DBMKGgW) in mm10), but the  <em>Prnp<sup>a</sup></em> allele turns out to contain a 6.5kb retroviral insertion of an intracisternal A-particle (IAP) sequence in intron 2 which is absent in <em>Prnp<sup>b</sup></em> [[Lee 1998]]. This I'd expect the <em>Prnp<sup>b</sup></em> cosmid to be 6kb + (28.5-6.5)kb + 15.5kb = 43.5kb; it is reported to be in fact only 39.76kb in total [[Moore 1999]]. I'm not sure what accounts for this small discrepancy.

#### Half-genomic construct

Weissmann and Aguzzi had similar luck creating transgenic mice using larger cosmid clones. They created one line of mice using Westaway's <em>Prnp<sup>b</sup></em> construct, and several lines using a new "half-genomic" (HG) construct they created [[Fischer 1996]]. This construct was created by fusing together 5.5kb of 5' promoter sequence and 1.3kb of mouse exon 1, intron 1 and exon 2 from Westaway's <em>Prnp<sup>b</sup></em> clone to 1.3kb of a MoPrP-A cDNA and 3kb of 3' flanking sequence from a <em>Prnp<sup>a</sup></em> mouse. All told, this construct weighs in at about 12kb. The sacrifice of mouse intron 2 makes it considerably smaller than the 45kb cosmid clones, though it lacks PrP expression in Purkinje cells. Case Western has adopted the half-genomic construct for its transgenic lines [[Kong 2005]]. In addition, two different lines of mice have been created which express just a smaller, 5kb fragment of the "half-genomic" construct under a doxycycline-controlled "Tet-off" (tTA) [[Tremblay 1998]] or "Tet-on" (rtTA) [[Huang 2007]] promoter. These lines both exhibit toxic ectopic and/or heterochronic expression of PrP.

#### Human *PRNP* in a P1 artificial chromosome 

Vincent Beringue and Hubert Laude at France's INRA created a transgenic line (tg650) expressing HuPrP 129M which utilizes the entire human *PRNP* locus [[Beringue 2008]]. They used a P1 artificial chromosome containing 110kb of human sequence including 
*PRNP* as well as *PRND* and possibly other neighboring genes, and microinjected it into Zurich I PrP knockout mice [[Bueler 1992]]. They obtained one founder with 5 copies of this PAC in cis, and bred it to homozygosity for a total of 10 copies, achieving ~6x wild-type expression levels. The transmission properties of CJD and absence of spontaneous disease in these mice have been well characterized [[Beringue 2008]]. Because these mice include the entire human sequence and not just the human open reading frame, they would be especially valuable for gene therapy studies where you might want to direct siRNA, ASOs or CRISPRs against non-coding sequence in *PRNP*.

### Summary

Any attempt to compare the above transgenes side-by-side is by necessity fanciful, since the mapping between hamster, mouse and human is not perfect. Nonetheless, I wanted some sort of visual aid to see at a glance which regions of sequence were included in which construct. This is the best representation I've come up with:

![](/media/2014/11/transgene-comparison.png)

I didn't find any other transgenes in use in the literature - if you know of any others, let me know.


[Mangiarini 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8898202 "Mangiarini L, Sathasivam K, Seller M, Cozens B, Harper A, Hetherington C, Lawton M, Trottier Y, Lehrach H, Davies SW, Bates GP. Exon 1 of the HD gene with  an expanded CAG repeat is sufficient to cause a progressive neurological phenotype in transgenic mice. Cell. 1996 Nov 1;87(3):493-506. PubMed PMID: 8898202."

[Schilling 1999]: http://www.ncbi.nlm.nih.gov/pubmed/9949199 "Schilling G, Becher MW, Sharp AH, Jinnah HA, Duan K, Kotzuk JA, Slunt HH, Ratovitski T, Cooper JK, Jenkins NA, Copeland NG, Price DL, Ross CA, Borchelt DR. Intranuclear inclusions and neuritic aggregates in transgenic mice expressing a mutant N-terminal fragment of huntingtin. Hum Mol Genet. 1999 Mar;8(3):397-407. Erratum in: Hum Mol Genet 1999 May;8(5):943. PubMed PMID: 9949199."

[Wheeler 1999]: http://www.ncbi.nlm.nih.gov/pubmed/9887339 "Wheeler VC, Auerbach W, White JK, Srinidhi J, Auerbach A, Ryan A, Duyao MP, Vrbanac V, Weaver M, Gusella JF, Joyner AL, MacDonald ME. Length-dependent gametic CAG repeat instability in the Huntington's disease knock-in mouse. Hum Mol Genet. 1999 Jan;8(1):115-22. PubMed PMID: 9887339."

[Hodgson 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10402204 "Hodgson JG, Agopyan N, Gutekunst CA, Leavitt BR, LePiane F, Singaraja R, Smith DJ, Bissada N, McCutcheon K, Nasir J, Jamot L, Li XJ, Stevens ME, Rosemond E, Roder JC, Phillips AG, Rubin EM, Hersch SM, Hayden MR. A YAC mouse model for Huntington's disease with full-length mutant huntingtin, cytoplasmic toxicity, and selective striatal neurodegeneration. Neuron. 1999 May;23(1):181-92. PubMed PMID: 10402204."

[Gray 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18550760 "Gray M, Shirasaki DI, Cepeda C, André VM, Wilburn B, Lu XH, Tao J, Yamazaki I, Li SH, Sun YE, Li XJ, Levine MS, Yang XW. Full-length human mutant huntingtin with a stable polyglutamine repeat can elicit progressive and selective neuropathogenesis in BACHD mice. J Neurosci. 2008 Jun 11;28(24):6182-95. doi: 10.1523/JNEUROSCI.0857-08.2008. PubMed PMID: 18550760; PubMed Central PMCID: PMC2630800."

[Scott 1989]: http://www.ncbi.nlm.nih.gov/pubmed/2574076 "Scott M, Foster D, Mirenda C, Serban D, Coufal F, Wälchli M, Torchia M, Groth  D, Carlson G, DeArmond SJ, Westaway D, Prusiner SB. Transgenic mice expressing hamster prion protein produce species-specific scrapie infectivity and amyloid plaques. Cell. 1989 Dec 1;59(5):847-57. PubMed PMID: 2574076."

[Prusiner 1990]: http://www.ncbi.nlm.nih.gov/pubmed/1977523 "Prusiner SB, Scott M, Foster D, Pan KM, Groth D, Mirenda C, Torchia M, Yang SL, Serban D, Carlson GA, et al. Transgenetic studies implicate interactions between homologous PrP isoforms in scrapie prion replication. Cell. 1990 Nov 16;63(4):673-86. PubMed PMID: 1977523."

[Giles 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20695008/ "Giles K, Glidden DV, Patel S, Korth C, Groth D, Lemus A, DeArmond SJ, Prusiner SB. Human prion strain selection in transgenic mice. Ann Neurol. 2010 Aug;68(2):151-61. doi: 10.1002/ana.22104. PubMed PMID: 20695008; PubMed Central PMCID: PMC2935907."

[Moore 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10525406 "Moore RC, Lee IY, Silverman GL, Harrison PM, Strome R, Heinrich C, Karunaratne A, Pasternak SH, Chishti MA, Liang Y, Mastrangelo P, Wang K, Smit AF, Katamine S, Carlson GA, Cohen FE, Prusiner SB, Melton DW, Tremblay P, Hood LE, Westaway D. Ataxia in prion protein (PrP)-deficient mice is associated with upregulation of the novel PrP-like protein doppel. J Mol Biol. 1999 Oct 1;292(4):797-817. PubMed  PMID: 10525406."

[Watts 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22331873 "Watts JC, Giles K, Stöhr J, Oehler A, Bhardwaj S, Grillo SK, Patel S, DeArmond SJ, Prusiner SB. Spontaneous generation of rapidly transmissible prions in transgenic mice expressing wild-type bank vole prion protein. Proc Natl Acad Sci  U S A. 2012 Feb 28;109(9):3498-503. doi: 10.1073/pnas.1121556109. Epub 2012 Feb 13. PubMed PMID: 22331873; PubMed Central PMCID: PMC3295307."

[Westaway 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1676894 "Westaway D, Mirenda CA, Foster D, Zebarjadian Y, Scott M, Torchia M, Yang SL,  Serban H, DeArmond SJ, Ebeling C, et al. Paradoxical shortening of scrapie incubation times by expression of prion protein transgenes derived from long incubation period mice. Neuron. 1991 Jul;7(1):59-68. PubMed PMID: 1676894."

[Moore 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10525406 "Moore RC, Lee IY, Silverman GL, Harrison PM, Strome R, Heinrich C, Karunaratne A, Pasternak SH, Chishti MA, Liang Y, Mastrangelo P, Wang K, Smit AF, Katamine S, Carlson GA, Cohen FE, Prusiner SB, Melton DW, Tremblay P, Hood LE, Westaway D. Ataxia in prion protein (PrP)-deficient mice is associated with upregulation of the novel PrP-like protein doppel. J Mol Biol. 1999 Oct 1;292(4):797-817. PubMed  PMID: 10525406."

[Tremblay 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9770528/ "Tremblay P, Meiner Z, Galou M, Heinrich C, Petromilli C, Lisse T, Cayetano J,  Torchia M, Mobley W, Bujard H, DeArmond SJ, Prusiner SB. Doxycycline control of prion protein transgene expression modulates prion disease in mice. Proc Natl Acad Sci U S A. 1998 Oct 13;95(21):12580-5. PubMed PMID: 9770528; PubMed Central  PMCID: PMC22873."

[Huang 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17420473 "Huang S, Liang J, Zheng M, Li X, Wang M, Wang P, Vanegas D, Wu D, Chakraborty  B, Hays AP, Chen K, Chen SG, Booth S, Cohen M, Gambetti P, Kong Q. Inducible overexpression of wild-type prion protein in the muscles leads to a primary myopathy in transgenic mice. Proc Natl Acad Sci U S A. 2007 Apr 17;104(16):6800-5. Epub 2007 Apr 9. PubMed PMID: 17420473; PubMed Central PMCID:  PMC1871865."

[Lee 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9799790 "Lee IY, Westaway D, Smit AF, Wang K, Seto J, Chen L, Acharya C, Ankener M, Baskin D, Cooper C, Yao H, Prusiner SB, Hood LE. Complete genomic sequence and analysis of the prion protein gene region from three mammalian species. Genome Res. 1998 Oct;8(10):1022-37. PubMed PMID: 9799790."

[Race 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19788803/ "Race B, Meade-White KD, Miller MW, Barbian KD, Rubenstein R, LaFauci G, Cervenakova L, Favara C, Gardner D, Long D, Parnell M, Striebel J, Priola SA, Ward A, Williams ES, Race R, Chesebro B. Susceptibilities of nonhuman primates to chronic wasting disease. Emerg Infect Dis. 2009 Sep;15(9):1366-76. doi: 10.3201/eid1509.090253. PubMed PMID: 19788803; PubMed Central PMCID: PMC2819871."

[Asante 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19218199 "Asante EA, Gowland I, Grimshaw A, Linehan JM, Smidak M, Houghton R, Osiguwa O, Tomlinson A, Joiner S, Brandner S, Wadsworth JD, Collinge J. Absence of spontaneous disease and comparative prion susceptibility of transgenic mice expressing mutant human prion proteins. J Gen Virol. 2009 Mar;90(Pt 3):546-58. doi: 10.1099/vir.0.007930-0. PubMed PMID: 19218199; PubMed Central PMCID: PMC2885063."

[Kong 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16135751 "Kong Q, Huang S, Zou W, Vanegas D, Wang M, Wu D, Yuan J, Zheng M, Bai H, Deng  H, Chen K, Jenny AL, O'Rourke K, Belay ED, Schonberger LB, Petersen RB, Sy MS, Chen SG, Gambetti P. Chronic wasting disease of elk: transmissibility to humans examined by transgenic mouse models. J Neurosci. 2005 Aug 31;25(35):7944-9. PubMed PMID: 16135751."

[Beringue 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18183299/ "Béringue V, Le Dur A, Tixador P, Reine F, Lepourry L, Perret-Liaudet A, Haïk S, Vilotte JL, Fontés M, Laude H. Prominent and persistent extraneural infection  in human PrP transgenic mice infected with variant CJD. PLoS One. 2008 Jan 9;3(1):e1419. doi: 10.1371/journal.pone.0001419. PubMed PMID: 18183299; PubMed Central PMCID: PMC2171367."

[Bueler 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1373228 "Büeler H, Fischer M, Lang Y, Bluethmann H, Lipp HP, DeArmond SJ, Prusiner SB,  Aguet M, Weissmann C. Normal development and behaviour of mice lacking the neuronal cell-surface PrP protein. Nature. 1992 Apr 16;356(6370):577-82. PubMed PMID: 1373228."

[Fischer 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8635458/ "Fischer M, Rülicke T, Raeber A, Sailer A, Moser M, Oesch B, Brandner S, Aguzzi A, Weissmann C. Prion protein (PrP) with amino-proximal deletions restoring susceptibility of PrP knockout mice to scrapie. EMBO J. 1996 Mar 15;15(6):1255-64. PubMed PMID: 8635458; PubMed Central PMCID: PMC450028."