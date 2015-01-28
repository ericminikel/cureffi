---
layout: post
title:  "The search for genetic modifiers of prion disease"
date:   2015-01-27 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2015/01/genetic-modifiers-thumbnail.png
summary200: "For >15 years people have searched for a gene other than PRNP that can affect the course of prion disease. What have we learned from these efforts?"
---

### Why genetic modifiers?

20 years ago, Yury Chernoff and Susan Liebman made a fundamental breakthrough in our understanding of yeast prions [[Chernoff 1995]]. In order for the [<em>\[PSI<sup>+</sup>\]</em> prion](/2014/09/30/the-conformation-holds-the-information/) to propagate, yeast must express a moderate amount of the chaperone protein Hsp104. Either knockout *or* overexpression of Hsp104 results in an inability to propagate prions. This apparent paradox is resolved by the breakable filament model of prion propagation. It turns out that Hsp104 is responsible for cleaving amyloid fibrils of <em>\[PSI<sup>+</sup>\]</em> to generate new ends where monomers can be added. Overexpress it, and you cleave the prions into bits too small to propagate; knock it out, and the prions can only grow linearly, adding at both ends, and not exponentially by creating new ends.

Adriano Aguzzi has opined that there must exist some chaperone or other factor in mammals required for propagating PrP<sup>Sc</sup>. If there weren't, then it should be easier than it is to generate prions *de novo* and propagate them *in vitro*. Prion propagation *in vivo* is like clockwork, predictable and (so far) unstoppable, while [cell-free prion formation](/2013/10/28/the-evolution-of-cell-free-prion-conversion-assays/) eluded researchers altogether for many years, and when it finally was achieved, has remained unpredictable and requires huge amounts of energy in the form of sonication. Do mammals have some analogue of Hsp104? What factor does so efficiently for the mammalian brain what sonication does so inefficiently *in vitro*?

Chernoff and Liebman discovered Hsp104 through a systematic, unbiased genetic screen - overexpressing 6000 different yeast plasmids in <em>\[PSI<sup>+</sup>\]</em> yeast to find one that would cause prion curing. Their success, and the impact that their discovery had on the study of yeast prions, are perhaps one reason why genetics has seemed an appealing approach to discover that hypothetical mammalian analogue of Hsp104. Surely discovering a protein involved in PrP<sup>Sc</sup> propagation would be an enormous advance in basic science, and possibly a drug target for treating prion disease as well. And just as the possible factor(s) involved in prion propagation have remained mysterious, our understanding of pathways involved in neurotoxicity is still fairly limited too, and perhaps breakthroughs in this area could lead to drug targets for treating symptomatic-stage prion disease.

For all of these reasons, a considerable amount of effort has been expended over the past 20 years on finding genes other than *PRNP* that affect prion disease. In this post, I review these efforts.

### Prehistory

Studies of genetic control of prion incubation time pre-date the prion concept. It was clear early on that genetically distinct mouse strains differed in their incubation times for RML scrapie [[Dickinson & Mackay 1964]], but these differences were eventually attributed to missense variants in the *Prnp* gene [[Carlson 1986], [Westaway 1987]]. Specifically, the rare, long incubation time MoPrP-B allele differs from the reference, short incubation time MoPrP-A allele by two substitutions, L108F and V189T. This discovery that *Prnp* amino acid sequence differences control incubation time in mice foreshadowed similar discoveries in other organisms: for instance, that *PRNP* codon 129 controls prion disease risk in humans [[Palmer 1991], [Collinge 1991], [Lee 2001]] and that codon 171 controls scrapie susceptibility in sheep [[Westaway 1994]].

But even before the prion protein gene was established as the major basis for genetic control of prion disease risk and/or incubation time, the search for other loci had already begun. The earliest such reference that I ran across was [[Kingsbury 1983]]. In that study, a hypothesis about immunological differences led to a comparison of congenic mouse strains differing only in the H-2 locus (which appears to be equivalent to the HLA locus in humans). Mice differing in their H-2D haplotypes had different incubation times for RML and Fukuoka prions, and a hypothetical gene in that locus that controls incubation time was designated *Pid1* for prion incubation determinant 1. However, far as I can tell, *Pid1*'s true identity was never determined, [[Mohri & Tateishi 1989]] failed to replicate an association between H-2D haplotype and incubation period, and none of the genome-wide QTL mapping studies reviewed below had peaks at H-2D. Candidate gene (or candidate locus) approaches like that of Kingsbury have continued to be popular, even as technological improvements have enabled genome-wide approaches in multiple species.

### Mouse QTL studies

Traits defined in terms of continuous (height, longevity, etc) rather than dichotomous (disease vs. no disease) values are called **quantitative traits**. The genomic interval containing a genetic variant that modifies a quantitative trait is called a **quantitative trait locus** or QTL. In model organisms, QTL mapping can be performed by obtaining two distinct inbred strains of the animal which have different phenotypes. Ideally, the quantitative trait should have a tight distribution within each strain, and the difference between the means of the two strains should be large. In mice, QTL mapping can be performed by crossing two inbred mouse lines (P0) to obtain heterozygote F1s and then intercrossing these to obtain F2s which are phenotyped and genotyped.

In the early 2000s, a total of five separate studies by three independent groups sought to map QTLs contributing to differences in prion disease incubation time in different mouse strains. Here is a quick comparison of mouse QTL discovery studies:

| study  | prion strain | rapid mouse background (incubation time) | slow mouse background (incubation time) | n F2s genotyped |
| ---- | ---- | ---- | ---- | ---- |
| [Stephenson 2000] | RML | SJL/J (105 &plusmn; 4) | CAST/Ei (172 &plusmn; 6) | 153 |
| [Lloyd 2001] | RML | NZW/OlaHsd (108 &plusmn; 4) | CAST/Ei (188 &plusmn; 12) | 1009 |
| [Manolakou 2001] | BSE | RIII/Fa/Dk (441) | C57BL/Fa/Dk (541) | 1200 |
| [Lloyd 2002] | Mouse-passaged BSE | NZW/OlaHsd (133 &plusmn; 1) | CAST/Ei (181 &plusmn; 5) | 124 |
| [Moreno 2003] | C506-M3 | RIII/Fa/Dk (161) | C57BL/Fa/Dk (167) | 282 |

Note that all of the mouse strains listed above have the PrP-A allele, at least as far as the coding sequence is concerned. RIII and C57BL probably differ in non-coding regions of *Prnp*, as [[Manolakou 2001]] found linkage on Mmu2 probably mapping to *Prnp*. The above table does not capture all of the differences between the studies. [[Stephenson 2000]] and [[Lloyd 2001]] performed intercrosses (F1s were crossed with each other to yield F2s), whereas [[Manolakou 2001]] performed backcrosses (F1s were back-crossed to either of the parental strains). In addition, note that the BSE brain homogenate used in [[Manolakou 2001]] was a primary isolate from cattle and thus the QTLs identified could affect strain adaptation in a new species, which was not a factor in the other studies. 

Each study found at least one QTL meeting the threshold for genome-wide significant linkage according to [[Lander & Kruglyak 1995]]. I wanted to understand how well the linkage peaks from the different studies lined up with one another, so I set out to plot them all on top of each other. I read through the papers to create [a table](https://github.com/ericminikel/prp-misc/blob/master/qtl-mapping.txt) of the microsatellite markers that were genotyped and showed some level of linkage (sadly, most of the studies did not report _all_ markers, all the significant ones, so my data do not cover the whole genome, only the peaks), then used [JAX Informatics' marker lookup table](ftp://ftp.informatics.jax.org/pub/reports/index.html#marker) to figure out where those markers are in relation to the modern mouse reference genome, and wrote [an R script](https://github.com/ericminikel/prp-misc/blob/master/mouse-prion-qtl-mapping.r) to do the matching and plot them all on top of each other. Here's the result:

![](/media/2015/01/mouse-incubation-time-qtls.png)

Two studies [[Lloyd 2001], [Lloyd 2002]] found a peak that probably corresponds to *Prnp* itself, but the other Mmu2 peak, from [[Manolakou 2001]], is probably independent of *Prnp*. There are additional peaks on chromosomes 4, 5, 11, and 12. Three studies have agreed that there is a linkage peak on Mmu11, and in one of them [[Lloyd 2001]] the LOD score is off the charts (a score of about 50, orange curve cut off at the top).

The fact that the studies don't exhibit perfect overlap isn't necessarily an indication of anything wrong. While the underlying genes that are capable of modifying prion disease are present in all of these mouse strains, whether or not a given QTL study can actually detect such a gene depends on whether there are functional polymorphisms between the two mouse strains that affect gene expression or function. Since these studies used different mouse strains, they didn't all have the same genetic differences between strains to work from.

QTLs in and of themselves aren't all that interesting - the ultimate goal is to find the specific gene and variant that give rise to the observed linkage. Consider that for instance all of the studies used i.c. inoculation as the method of prion infection. One can therefore imagine many plausible mechanisms by which genes might influence incubation time - some could affect prion replication or degradation, which are mechanisms we would be very interested in from both a basic science perspective and a human health perspective. Others might conceivably affect initial clearance of foreign inoculum, which would not be relevant to sporadic or genetic prion diseases in humans and probably wouldn't tell us anything very fundamental about prions either. Only when a quantitative trait variant has been identified can one proceed with the functional studies that would clarify how the gene affects prion disease mechanistically.

For this reasons, the QTLs plotted above therefore led to several follow-up studies aimed at identifying the causal gene. For instance, George Carlson and Lee Hood pursued their study of differential gene expression over the course of prion infection [[Hwang 2009]] in part to identify the most promising candidate genes under the linkage peaks. In light of the linkage at Mmu2, and particularly after mahogunin was proposed as a possible mediator of neurodegeneration prion disease [[Chakrabarti & Hegde 2009]], George Carlson tested whether knockout or overexpression of *Atrn* or *Mgrn1* would affect incubation time - neither did [[Silvius 2013], [Gunn & Carlson 2013]]. Meanwhile, MRC Prion Unit pursued further fine mapping on Mmu11 and 15 and examined the candidate genes *Mcp1* and *Cpne8* respectively. Today, cheap genotyping and sequencing technology would make it possible to do these sorts of fine mapping studies in a relatively more comprehensive and unbiased manner, but these studies were done several years ago. Because *Mcp1* knockout had already been reported to extend incubation time for ME7 prions [[Felton 2005]], it was considered as a candidate to explain the Mmu11 linkage peak, but when Felton's results failed to validate in an RML-infected model [[O'Shea 2008]] the peak was not considered further, as far as I can tell. The linkage interval on Mmu15 contained 39 genes, but (presumably due to sequencing cost) only 29 of them were genotyped to identify candidate polymorphisms. One gene with a large number of polymorphisms, *Cpne8*, was considered as a candidate gene, and shown to be differentially expressed in prion infection [[Lloyd 2010]], but knockout/overexpression studies were never conducted.

### Genetic studies in livestock

Several studies have looked for genetic linkage in sheep and cattle. I found these studies interesting because the methods were sort of a hybrid of other things I've learned about. Mouse genetics is interventional - set up the cross, breed the mice, etc. - while human genetics is observational - you have to do what you can with the humans you've got. Livestock are somewhere in between - they're sufficiently more expensive than mice that you're somewhat more limited to observational study. Yet they have an inbred population structure more like that of laboratory mice.

Two studies have looked for quantitative trait loci in sheep, though with a slightly different study design than in the mouse studies above. One study followed two half-sibships (offspring all born of the same father or same "sire" as they say in sheep parlance) of ARQ/VRQ sheep on a scrapie-infected farm and tracked their scrapie incubation times [[Moreno 2008]]. It found linkage peaks that were "chromosome-wide significant" in one half-sibship at the .05 level on OAR6 and OAR18, but no peaks that were genome-wide significant. A subsequent followup study [[Moreno 2010]] genotyped and phenotyped a further >500 sheep of various pedigree structures on the same farm. This study found additional evidence for linkage on OAR18, though it is not clear to me whether this was genome-wide significant. There was no support for linkage on OAR6.

One study performed transmission disequilibrium tests on cattle with BSE [[Hernandez-Sanchez 2002]]. Another series of studies performed genome-wide association studies on Holstein cattle, in a case (BSE) vs. control (no BSE) study design [[Murdoch 2010], [Murdoch 2011]]. The [cattle genome](http://www.ncbi.nlm.nih.gov/genome/82) is about the same size as humans - 3 Gb - though I don't know in terms of centimorgans, which would better represent what threshold should be used for genome-wide significance. In any case, these studies have identified some suggestive peaks but the lowest p value reported so far is 5e-5, so not genome-wide significant.

### Genome-wide association studies in humans

The first GWAS for prion disease in humans used 929 prion disease patients and 4,254 controls, focusing primarily on vCJD [[Mead 2009]]. This study confirmed the known association between codon 129 and vCJD risk, and also identified other SNPs in and around *PRNP* that were still associated with risk after conditioning on codon 129. It also noted a SNP in *RARB* (retinoic acid receptor beta) with a p value of 1.9e-7, somewhat short of the canonical genome-wide significance threshold of 5e-8. This possible association with *RARB* was further studied by performing a candidate QTL analysis (a cross of 1000 heterogeneous stock mice and then targeted sequencing of candidate genes) in prion-infected mice, which showed a nominal association between *Rarb* genotype and incubation time (p = .0005) [[Grizenkova 2010]]. To my knowledge, knockout/overexpression studies of *Rarb* have not been reported.

The second GWAS came a few years later and included about 2000 cases and 6000 controls [[Mead 2012]]. The cases included acquired, genetic and sporadic prion disease, so there were a number of different subgroups to be dealt with. Interestingly, an allelic model - which cannot capture the enormous heterozygote advantage at codon 129 - still picked up SNPs in *PRNP*, probably related to a very small difference in risk between 129MM and 129VV genotypes. In contrast to the 2009 GWAS, this study did not find residual association at *PRNP* after conditioning on codon 129 genotype. It also did not find any other genome-wide significant loci.

That picture may now be changing. Simon Mead announced at [Prion2014 Day 4](/2014/05/30/prion2014-day-4/) that his number of sporadic CJD samples has more than doubled, and he now sees several apparently genome-wide significant (p < 5e-8) hits. He is currently seeking any investigators with appropriately consented DNA samples from prion disease patients to contribute to a replication study before publishing these findings.

### Knockout and overexpression in mice

Arguably, the ultimate test of whether a mouse gene affects prion incubation time is whether knockout or overexpressing mice have different incubation times than their wild-type littermates do. Additionally, we might hope that if the association is real, then knockout and overexpression should have opposite effects. But that wasn't true in the case of Hsp104 in yeast, so we should also stay open-minded if there is strong evidence for knockout and overexpression both giving real effects and in the same direction.

To date, tens of genes have been knocked out and/or overexpressed in an effort to determine whether they affect the course of prion disease. Such studies have identified genes that dramatically affect the ability of peripherally acquired prion disease to invade the CNS - for instance, complement receptors CD21/35 [[Michel 2012]]. However, studies of i.c. inoculated mice have given largely negative results, and the few positive results that have been reported are of very limited effect size. In the table below, I have tried to collect all of the candidate gene knockout and/or overexpression studies from i.c. inoculated mice. Blank cells indicate the experiment has not been reported.

| mouse gene | knockout affects prion disease? | overexpression affects prion disease? | citations |
| ---- | ---- | ---- | ---- |
| *Aplp2* | no | | [[Tamguney 2008]] |
| *Apoe* | no | | [[Tamguney 2008]] |
| *App* | yes | no | [[Tamguney 2008]] |
| *Atrn* | no | | [[Gunn & Carlson 2013]] |
| *Cav1* | no | | [[Tamguney 2008]] |
| *Ccr2* | no | no | [[Tamguney 2008]] |
| *Ccr5* | no | no | [[Tamguney 2008]] |
| *Cd9* | no | | [[Tamguney 2008]] |
| *Dpl* | no | | [[Behrens 2001], [Tamguney 2008]] | 
| *Fyn* | no | no | [[Tamguney 2008]] |
| *Hectd2* | no | no | [[Begum 2013]] |
| *Hsp70* | | no | [[Tamguney 2008]] |
| *Il10* | no | | [[Tamguney 2008]] |
| *Il1r1* | yes | | [[Tamguney 2008]] |
| *Mapt* | no | | [[Lawson 2011]] |
| *Mcp1* | supposedly | | [[Felton 2005]] |
| *Mgat3* | no | | [[Tamguney 2008]] |
| *Mgrn1* | no | no | [[Silvius 2013]] |
| *Msra* | no | | [[Tamguney 2008]] |
| *Msrb* | no | | [[Tamguney 2008]] |
| *Nox2* | yes | | [[Sorce 2014]] |
| *Ptpra* | no | | [[Tamguney 2008]] |
| *Sod1* | | yes | [[Tamguney 2008]] |
| *Sprn* | no | | [[Daude 2012]] | 
| *Tgfb1* | no | no | [[Tamguney 2008]] |
| *Tnf* | no | | [[Tamguney 2008]] |

Positive results were reported for *App*, *Sod1* and *Il1r1*, but opposite directions of effect between knockout and overexpression were not shown, and these genes do not seem to have been pursued further. The most convincing result is the recently reported effect of *Nox2* (NADPH oxidase) knockout [[Sorce 2014]] - although the effect size was very small, it seems to indicate some role for oxidative stress in prion neurotoxicity.

Reading through these studies, it is haunting to see how much effort often went into chasing up candidate genes for which no convincing effect on prion disease was ultimately demonstrated.

For example, one travels a very long road from the originally reported phenocopy of prion disease in mahoganoid mice [[He 2003]] to the reported depletion of mahogany by cytosolic PrP [[Chakrabarti & Hegde 2009]] to finally find that mahogany (*Mgrn1*) knockout and overexpression do not, after all, affect prion disease [[Silvius 2013]].

Another well-documented story is that of *Hectd2*. Although one study [[Stephenson 2000]] found an almost-suggestive QTL on Mmu19, the chromosome where *Hectd2* is located (see plot above), this genomic region was actually subjected to fine mapping for a different reason, which was "an interest in candidate genes on human chromosome 10 (unpublished data)" [[Lloyd 2009]]. Fine mapping and sequencing of candidate exons and UTRs in a heterogeneous mouse stock of mice led to an interest in *Hectd2*. Mouse strains with short incubation times (AKR and BALB/c) had 2.4x higher whole brain *Hectd2* mRNA levels by qPCR than strains with long incubation times. A minor allele of the human ortholog was nominally (p = .0049) enriched (odds ratio of 2.11) in vCJD patients compared to population controls (the possibility of population stratification is not discussed in any detail), and minor allele heterozygotes had 2.3x higher *HECTD2* mRNA levels in blood than homozygous reference humans. If *Hectd2* were the quantitative trait gene, then these findings would lead one to hypothesize that *Hectd2* knockout would extend incubation time, while *Hectd2* overexpression would result in a more rapid disease course. Subsequent knockout/overexpression studies have failed to validate any association between *Hectd2* and prion incubation time [[Begum 2013]]. A total of 22 comparisons are made between knockout vs. wild-type and overexpresser vs. wild-type mice (Table 6.3.1 and Table 6.5.1), with virtually identical times to endpoint in almost all of them. The only one comparison that remains significant after multiple testing correction is that of time to first symptoms in knockout vs. wild-type females inoculated with RML prions, but this is not highly convincing given the "&plusmn;0" standard deviation, lack of replication in other prion strains, sexes or endpoints, and the fact that the supposed direction of effect (knockouts had shorter incubation time) contradicts the original study [[Lloyd 2009]].

Given the widespread tendency not to report negative results, I suspect that the above stories represent just a fraction of all the efforts that have gone into determining whether various genetic manipulations can affect prion incubation time. Depending on your perspective, the preponderance of negative results in this area might be either a reminder that most things don't work in science, period, or a reminder that nominal associations and seemingly compelling biology do not provide sufficient basis for choosing candidate genes, and that instead what we really need are better genome-wide approaches.

### Outlook

The papers cited in this post represent a huge number of animals, a huge number of dollars and a huge number of hours of work. For all this effort, we so far have very little idea what, if any, genes besides *PRNP* affect prion propagation and neurotoxicity. The association with *Nox2* [[Sorce 2014]] appears to be real, and the associations for *App*, *Sod1* and *Il1r1* might or might not be real. And the possibility, however speculative, of genome-wide significant hits from the newest generation of GWAS is exciting as well. But the overall impression I am left with after reviewing all of this literature is that we need bigger, better, genome-wide approaches.

Luckily, that seems to be the direction in which biology is moving. [CRISPR loss-of-function screens](/2014/07/18/four-flavors-of-crispr-knockout-screens/) appear to present an opportunity to do genome-wide mutagenesis screens in cultured mammalian cells, of the type that were once possible only in yeast or (with great effort) maybe worms and flies. The challenge is finding a cell culture model that is relevant to the *in vivo* situation. 

[Stephenson 2000]: http://www.ncbi.nlm.nih.gov/pubmed/11013074 "Stephenson DA, Chiotti K, Ebeling C, Groth D, DeArmond SJ, Prusiner SB, Carlson GA. Quantitative trait loci affecting prion incubation time in mice. Genomics. 2000 Oct 1;69(1):47-53. PubMed PMID: 11013074."

[Lloyd 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11353827 "Lloyd SE, Onwuazor ON, Beck JA, Mallinson G, Farrall M, Targonski P, Collinge  J, Fisher EM. Identification of multiple quantitative trait loci linked to prion disease incubation period in mice. Proc Natl Acad Sci U S A. 2001 May 22;98(11):6279-83. Epub 2001 May 15. PubMed PMID: 11353827; PubMed Central PMCID: PMC33459."

[Manolakou 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11404459 "Manolakou K, Beaton J, McConnell I, Farquar C, Manson J, Hastie ND, Bruce M, Jackson IJ. Genetic and environmental factors modify bovine spongiform encephalopathy incubation period in mice. Proc Natl Acad Sci U S A. 2001 Jun 19;98(13):7402-7. Epub 2001 Jun 12. PubMed PMID: 11404459; PubMed Central PMCID:  PMC34681."

[Lloyd 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12481985 "Lloyd SE, Uphill JB, Targonski PV, Fisher EM, Collinge J. Identification of genetic loci affecting mouse-adapted bovine spongiform encephalopathy incubation time in mice. Neurogenetics. 2002 Oct;4(2):77-81. PubMed PMID: 12481985."

[Moreno 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14704188/ "Moreno CR, Lantier F, Lantier I, Sarradin P, Elsen JM. Detection of new quantitative trait Loci for susceptibility to transmissible spongiform encephalopathies in mice. Genetics. 2003 Dec;165(4):2085-91. PubMed PMID: 14704188; PubMed Central PMCID: PMC1462892."

[Moreno 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18493086/ "Moreno CR, Cosseddu GM, Schibler L, Roig A, Moazami-Goudarzi K, Andreoletti O, Eychenne F, Lajous D, Schelcher F, Cribiu EP, Laurent P, Vaiman D, Elsen JM. Identification of new quantitative trait Loci (other than the PRNP gene) modulating the scrapie incubation period in sheep. Genetics. 2008 May;179(1):723-6. doi: 10.1534/genetics.108.088146. PubMed PMID: 18493086; PubMed Central PMCID: PMC2390651."

[O'Shea 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18716327 "O'Shea M, Maytham EG, Linehan JM, Brandner S, Collinge J, Lloyd SE. Investigation of mcp1 as a quantitative trait gene for prion disease incubation time in mouse. Genetics. 2008 Sep;180(1):559-66. doi: 10.1534/genetics.108.090894. Epub 2008 Aug 20. PubMed PMID: 18716327; PubMed Central PMCID: PMC2535705."

[Lloyd 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19214206 "Lloyd SE, Maytham EG, Pota H, Grizenkova J, Molou E, Uphill J, Hummerich H, Whitfield J, Alpers MP, Mead S, Collinge J. HECTD2 is associated with susceptibility to mouse and human prion disease. PLoS Genet. 2009 Feb;5(2):e1000383. doi: 10.1371/journal.pgen.1000383. Epub 2009 Feb 13. PubMed PMID: 19214206; PubMed Central PMCID: PMC2633041."

[Moreno 2010]: http://www.ncbi.nlm.nih.gov/pubmed/19828762 "Moreno CR, Moazami-Goudarzi K, Briand S, Robert-Granié C, Weisbecker JL, Laurent P, Cribiu EP, Haley CS, Andréoletti O, Bishop SC, Pong-Wong R. Mapping of quantitative trait loci affecting classical scrapie incubation time in a population comprising several generations of scrapie-infected sheep. J Gen Virol. 2010 Feb;91(Pt 2):575-9. doi: 10.1099/vir.0.014134-0. Epub 2009 Oct 14. PubMed PMID: 19828762."

[Lloyd 2010]: http://www.ncbi.nlm.nih.gov/pubmed/19795140 "Lloyd SE, Maytham EG, Grizenkova J, Hummerich H, Collinge J. A Copine family member, Cpne8, is a candidate quantitative trait gene for prion disease incubation time in mouse. Neurogenetics. 2010 May;11(2):185-91. doi: 10.1007/s10048-009-0219-8. Epub 2009 Oct 1. PubMed PMID: 19795140; PubMed Central PMCID: PMC2854345."

[Murdoch 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20350325 "Murdoch BM, Clawson ML, Laegreid WW, Stothard P, Settles M, McKay S, Prasad A, Wang Z, Moore SS, Williams JL. A 2cM genome-wide scan of European Holstein cattle affected by classical BSE. BMC Genet. 2010 Mar 29;11:20. doi: 10.1186/1471-2156-11-20. PubMed PMID: 20350325; PubMed Central PMCID: PMC2853485."

[Lloyd 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23518043/ "Lloyd SE, Mead S, Collinge J. Genetics of prion diseases. Curr Opin Genet Dev. 2013 Jun;23(3):345-51. doi: 10.1016/j.gde.2013.02.012. Epub 2013 Mar 19. Review.  PubMed PMID: 23518043; PubMed Central PMCID: PMC3705206."

[Begum 2013]: http://discovery.ucl.ac.uk/1410699/ "Begum, R; (2013) Functional analysis of Hectd2: a prion disease modifier associated with incubation time. Doctoral thesis, UCL (University College London)."

[Kingsbury 1983]: http://www.ncbi.nlm.nih.gov/pubmed/6408182/ "Kingsbury DT, Kasper KC, Stites DP, Watson JD, Hogan RN, Prusiner SB. Genetic  control of scrapie and Creutzfeldt-Jakob disease in mice. J Immunol. 1983 Jul;131(1):491-6. PubMed PMID: 6408182."

[Mohri & Tateishi 1989]: http://www.ncbi.nlm.nih.gov/pubmed/2659733/ "Mohri S, Tateishi J. Host genetic control of incubation periods of Creutzfeldt-Jakob disease in mice. J Gen Virol. 1989 Jun;70 ( Pt 6):1391-400. PubMed PMID: 2659733."

[Grizenkova 2010]: http://www.ncbi.nlm.nih.gov/pubmed/21151910 "Grizenkova J, Akhtar S, Collinge J, Lloyd SE. The retinoic acid receptor beta (Rarb) region of Mmu14 is associated with prion disease incubation time in mouse. PLoS One. 2010 Dec 6;5(12):e15019. doi: 10.1371/journal.pone.0015019. PubMed PMID: 21151910; PubMed Central PMCID: PMC2997791."

[Hernandez-Sanchez 2002]: http://www.ncbi.nlm.nih.gov/pubmed/11919688 "Hernández-Sánchez J, Waddington D, Wiener P, Haley CS, Williams JL. Genome-wide search for markers associated with bovine spongiform encephalopathy.  Mamm Genome. 2002 Mar;13(3):164-8. PubMed PMID: 11919688."

[Zhang 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15342524 "Zhang C, De Koning DJ, Hernández-Sánchez J, Haley CS, Williams JL, Wiener P. Mapping of multiple quantitative trait loci affecting bovine spongiform encephalopathy. Genetics. 2004 Aug;167(4):1863-72. PubMed PMID: 15342524; PubMed  Central PMCID: PMC1470995."

[Lander & Kruglyak 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7581446 "Lander E, Kruglyak L. Genetic dissection of complex traits: guidelines for interpreting and reporting linkage results. Nat Genet. 1995 Nov;11(3):241-7. PubMed PMID: 7581446."

[Chakrabarti & Hegde 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19524515 "Chakrabarti O, Hegde RS. Functional depletion of mahogunin by cytosolically exposed prion protein contributes to neurodegeneration. Cell. 2009 Jun 12;137(6):1136-47. doi: 10.1016/j.cell.2009.03.042. PubMed PMID: 19524515; PubMed Central PMCID: PMC2709807."

[Gunn & Carlson 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23787699/ "Gunn TM, Carlson GA. RML prions act through Mahogunin and Attractin-independent pathways. Prion. 2013 Jul-Aug;7(4):267-71. doi: 10.4161/pri.25054. Epub 2013 May 31. PubMed PMID: 23787699; PubMed Central PMCID: PMC3904309."

[Silvius 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23383230/ "Silvius D, Pitstick R, Ahn M, Meishery D, Oehler A, Barsh GS, DeArmond SJ, Carlson GA, Gunn TM. Levels of the Mahogunin Ring Finger 1 E3 ubiquitin ligase do not influence prion disease. PLoS One. 2013;8(1):e55575. doi: 10.1371/journal.pone.0055575. Epub 2013 Jan 30. PubMed PMID: 23383230; PubMed Central PMCID: PMC3559536."

[Hwang 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19308092/ "Hwang D, Lee IY, Yoo H, Gehlenborg N, Cho JH, Petritis B, Baxter D, Pitstick R, Young R, Spicer D, Price ND, Hohmann JG, Dearmond SJ, Carlson GA, Hood LE. A systems approach to prion disease. Mol Syst Biol. 2009;5:252. doi: 10.1038/msb.2009.10. Epub 2009 Mar 24. PubMed PMID: 19308092; PubMed Central PMCID: PMC2671916."

[Lawson 2011]: http://www.ncbi.nlm.nih.gov/pubmed/22002429 "Lawson VA, Klemm HM, Welton JM, Masters CL, Crouch P, Cappai R, Ciccotosto GD. Gene knockout of tau expression does not contribute to the pathogenesis of prion  disease. J Neuropathol Exp Neurol. 2011 Nov;70(11):1036-45. doi: 10.1097/NEN.0b013e318235b471. PubMed PMID: 22002429."

[Michel 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23002439 "Michel B, Ferguson A, Johnson T, Bender H, Meyerett-Reid C, Pulford B, von Teichman A, Seelig D, Weis JH, Telling GC, Aguzzi A, Zabel MD. Genetic depletion  of complement receptors CD21/35 prevents terminal prion disease in a mouse model  of chronic wasting disease. J Immunol. 2012 Nov 1;189(9):4520-7. doi: 10.4049/jimmunol.1201579. Epub 2012 Sep 21. PubMed PMID: 23002439; PubMed Central PMCID: PMC3478448."

[Sorce 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25502554 "Sorce S, Nuvolone M, Keller A, Falsig J, Varol A, Schwarz P, Bieri M, Budka H, Aguzzi A. The Role of the NADPH Oxidase NOX2 in Prion Pathogenesis. PLoS Pathog.  2014 Dec 11;10(12):e1004531. doi: 10.1371/journal.ppat.1004531. eCollection 2014  Dec. PubMed PMID: 25502554; PubMed Central PMCID: PMC4263757."

[Felton 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15886005 "Felton LM, Cunningham C, Rankine EL, Waters S, Boche D, Perry VH. MCP-1 and murine prion disease: separation of early behavioural dysfunction from overt clinical disease. Neurobiol Dis. 2005 Nov;20(2):283-95. PubMed PMID: 15886005."

[Mead 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19081515/ "Mead S, Poulter M, Uphill J, Beck J, Whitfield J, Webb TE, Campbell T, Adamson G, Deriziotis P, Tabrizi SJ, Hummerich H, Verzilli C, Alpers MP, Whittaker JC, Collinge J. Genetic risk factors for variant Creutzfeldt-Jakob disease: a genome-wide association study. Lancet Neurol. 2009 Jan;8(1):57-66. doi: 10.1016/S1474-4422(08)70265-5. PubMed PMID: 19081515; PubMed Central PMCID: PMC2643048."

[Mead 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22210626 "Mead S, Uphill J, Beck J, Poulter M, Campbell T, Lowe J, Adamson G, Hummerich  H, Klopp N, Rückert IM, Wichmann HE, Azazi D, Plagnol V, Pako WH, Whitfield J, Alpers MP, Whittaker J, Balding DJ, Zerr I, Kretzschmar H, Collinge J. Genome-wide association study in multiple human prion diseases suggests genetic risk factors additional to PRNP. Hum Mol Genet. 2012 Apr 15;21(8):1897-906. doi:  10.1093/hmg/ddr607. Epub 2011 Dec 30. PubMed PMID: 22210626; PubMed Central PMCID: PMC3313791."

[Murdoch 2011]: http://www.ncbi.nlm.nih.gov/pubmed/22073200 "Murdoch BM, Murdoch GK, Settles M, McKay S, Williams JL, Moore SS. Genome-wide scan identifies loci associated with classical BSE occurrence. PLoS One. 2011;6(11):e26819. doi: 10.1371/journal.pone.0026819. Epub 2011 Nov 4. PubMed PMID: 22073200; PubMed Central PMCID: PMC3208576."

[Tamguney 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18559949 "Tamgüney G, Giles K, Glidden DV, Lessard P, Wille H, Tremblay P, Groth DF, Yehiely F, Korth C, Moore RC, Tatzelt J, Rubinstein E, Boucheix C, Yang X, Stanley P, Lisanti MP, Dwek RA, Rudd PM, Moskovitz J, Epstein CJ, Cruz TD, Kuziel WA, Maeda N, Sap J, Ashe KH, Carlson GA, Tesseur I, Wyss-Coray T, Mucke L, Weisgraber KH, Mahley RW, Cohen FE, Prusiner SB. Genes contributing to prion pathogenesis. J Gen Virol. 2008 Jul;89(Pt 7):1777-88. doi: 10.1099/vir.0.2008/001255-0. PubMed PMID: 18559949; PubMed Central PMCID: PMC2828448."

[Chernoff 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7754373 "Chernoff YO, Lindquist SL, Ono B, Inge-Vechtomov SG, Liebman SW. Role of the chaperone protein Hsp104 in propagation of the yeast prion-like factor [psi+]. Science. 1995 May 12;268(5212):880-4. PubMed PMID: 7754373."

[Dickinson & Mackay 1964]: http://www.ncbi.nlm.nih.gov/pubmed/14167576 "DICKINSON AG, MACKAY JM. GENETICAL CONTROL OF THE INCUBATION PERIOD IN MICE OF THE NEUROLOGICAL DISEASE, SCRAPIE. Heredity (Edinb). 1964 May;19:279-88. PubMed PMID: 14167576."

[Carlson 1986]: http://www.ncbi.nlm.nih.gov/pubmed/3015416 "Carlson GA, Kingsbury DT, Goodman PA, Coleman S, Marshall ST, DeArmond S, Westaway D, Prusiner SB. Linkage of prion protein and scrapie incubation time genes. Cell. 1986 Aug 15;46(4):503-11. PubMed PMID: 3015416."

[Westaway 1987]: http://www.ncbi.nlm.nih.gov/pubmed/2890436 "Westaway D, Goodman PA, Mirenda CA, McKinley MP, Carlson GA, Prusiner SB. Distinct prion proteins in short and long scrapie incubation period mice. Cell. 1987 Nov 20;51(4):651-62. PubMed PMID: 2890436."

[Collinge 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1675319 "Collinge J, Palmer MS, Dryden AJ. Genetic predisposition to iatrogenic Creutzfeldt-Jakob disease. Lancet. 1991 Jun 15;337(8755):1441-2. PubMed PMID: 1675319."

[Palmer 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1677164 "Palmer MS, Dryden AJ, Hughes JT, Collinge J. Homozygous prion protein genotype predisposes to sporadic Creutzfeldt-Jakob disease. Nature. 1991 Jul 25;352(6333):340-2. Erratum in: Nature 1991 Aug 8;352(6335):547. PubMed PMID: 1677164."

[Westaway 1994]: http://www.ncbi.nlm.nih.gov/pubmed/7926780 "Westaway D, Zuliani V, Cooper CM, Da Costa M, Neuman S, Jenny AL, Detwiler L,  Prusiner SB. Homozygosity for prion protein alleles encoding glutamine-171 renders sheep susceptible to natural scrapie. Genes Dev. 1994 Apr 15;8(8):959-69. PubMed PMID: 7926780."

[Lee 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11120925 "Lee HS, Brown P, Cervenáková L, Garruto RM, Alpers MP, Gajdusek DC, Goldfarb LG. Increased susceptibility to Kuru of carriers of the PRNP 129 methionine/methionine genotype. J Infect Dis. 2001 Jan 15;183(2):192-196. Epub 2000 Dec 21. PubMed PMID: 11120925."

[Grizenkova 2010]: http://www.ncbi.nlm.nih.gov/pubmed/21151910 "Grizenkova J, Akhtar S, Collinge J, Lloyd SE. The retinoic acid receptor beta  (Rarb) region of Mmu14 is associated with prion disease incubation time in mouse. PLoS One. 2010 Dec 6;5(12):e15019. doi: 10.1371/journal.pone.0015019. PubMed PMID: 21151910; PubMed Central PMCID: PMC2997791."

[Behrens 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11306558/ "Behrens A, Brandner S, Genoud N, Aguzzi A. Normal neurogenesis and scrapie pathogenesis in neural grafts lacking the prion protein homologue Doppel. EMBO Rep. 2001 Apr;2(4):347-52. PubMed PMID: 11306558; PubMed Central PMCID: PMC1083878."

[Behrens 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12110578/ "Behrens A, Genoud N, Naumann H, Rülicke T, Janett F, Heppner FL, Ledermann B,  Aguzzi A. Absence of the prion protein homologue Doppel causes male sterility. EMBO J. 2002 Jul 15;21(14):3652-8. PubMed PMID: 12110578; PubMed Central PMCID: PMC125402."

[Paisley 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15161660/ "Paisley D, Banks S, Selfridge J, McLennan NF, Ritchie AM, McEwan C, Irvine DS, Saunders PT, Manson JC, Melton DW. Male infertility and DNA damage in Doppel knockout and prion protein/Doppel double-knockout mice. Am J Pathol. 2004 Jun;164(6):2279-88. PubMed PMID: 15161660; PubMed Central PMCID: PMC1615753."

[Daude 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22619325 "Daude N, Wohlgemuth S, Brown R, Pitstick R, Gapeshina H, Yang J, Carlson GA, Westaway D. Knockout of the prion protein (PrP)-like Sprn gene does not produce embryonic lethality in combination with PrP(C)-deficiency. Proc Natl Acad Sci U S A. 2012 Jun 5;109(23):9035-40. doi: 10.1073/pnas.1202130109. Epub 2012 May 22. PubMed PMID: 22619325; PubMed Central PMCID: PMC3384183."

[He 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12560552 "He L, Lu XY, Jolly AF, Eldridge AG, Watson SJ, Jackson PK, Barsh GS, Gunn TM.  Spongiform degeneration in mahoganoid mutant mice. Science. 2003 Jan 31;299(5607):710-2. PubMed PMID: 12560552."




