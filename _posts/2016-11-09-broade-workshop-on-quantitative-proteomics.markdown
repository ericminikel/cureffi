---
layout: post
title:  "BroadE workshop on quantitative proteomics"
date:   2016-11-09 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2016/11/proteomics_thumbnail.png
summary200: "My notes from attending a BroadE workshop on quantitative proteomics. Covers mass spec fundamentals, discovery MS, targeted MS, applications, and informatics."
---

![](/media/2016/11/proteomics_header.png)

*These are my notes from the BroadE workshop "Quantiative proteomics in biology and medicine", taught by various scientists from the Proteomics Platform at the Broad Institute, 12:00p - 5:00p on November 9, 2016.*

### Karl Clauser: fundamentals of peptide and protein mass spectrometry

Mass spec instruments have four responsibilities:

+ Create ions from analyte molecules
+ Separate ions by charge and mass
+ Detect ions and determine mass/charge (m/z) ratio
+ Select and fragment ions of interest to obtain structural information

Mass spec experiments can broadly be divided into two types. **Discovery** mass spec is global, for instance, proteome-wide &mdash; it detects everything. **Targeted** mass spec is the selective observation of just a few ions of interest. Broad has three types of instrument: the Fusion Lumos (good for discovery), the Quantiva (good for targeted MS), and the Q-Exactive Plus (good for both).

Most elements have more than one stable isotope. For instance, 98.89% of carbon is <sup>12</sup>C, which has a mass of 12.0000 Da, while 1.11% is <sup>13</sup>C, which has a mass of 13.0034 Da. 99.64% of nitrogen is <sup>14</sup>N, which is 14.0031 Da, and the other 0.36% is <sup>15</sup>N which is 15.0001 Da. Note that the mass contributed by the marginal neutron differs between a carbon nucleus versus a nitrogen nucleus (this has something to do with how tightly held together the nucleus is). High resolution mass spectrometers can resolve the distinct isotope peaks for ions containing 0, 1, 2, etc. different numbers of minor isotopes.

Peptides can be sequenced using an MS/MS intstrument. If you want to measure the masses of intact precursor ions, you only need one mass spec step, so the first instrument can simply scan, say, m/z ratios of 350-2000, and the second instrument can detect individual m/z values in that mixture. Alternatively, the first instrument can scan only a narrow range (for instance, m/z = 834-838) and then fling the ions at a collision cell which fragments them, with the fragments then detected by the second instrument. Peptides can fragment in several ways, for instance, b ion formation is cleavage of the peptide bond, whereas y ion formation involves moving a proton around. Sometimes, MS/MS can give a very clean spectrum that is readily interpretable and can be narrowed down to one or a few possible parent peptides. Other times, data can be sparse. However, much of the time, you don't need to determine peptide sequences *de novo* &mdash; you simply look them up in a database of peptides that could arise from the translation of the human transcriptome. There are various algorithms for this. It turns out that peptides of <6 amino acids are rarely unique in the human proteome, and are generally ignored in data analysis, peptides of length 6-11 are often unique in sequence but not in amino acid composition, and peptides of >11 amino acids are usually unique in amino acid composition, so you don't even need to sequence them [[Clauser 1999]].

So a modern MS/MS instrument can readily detect and quantify abundant peptides, separating them by retention time and then m/z ratio. Once you have measured peptides, you need to figure out what proteins they came from. Even for peptides of >11 amino acids, however, there are sometimes two possible proteins it could have come from &mdash; this is unlikely to arise by pure coincidence and instead usually comes from paralogs or conserved domains, etc. There are therefore various approaches for deconvoluting peptide abundances to yield protein abundances, though none of these algorithms are perfect. Fundamentally, one has four choices of which protein to assign the ambiguous peptide to:

1. The protein with the most peptides.
2. Both/all possible proteins.
3. None (just ignore this peptide).
4. The protein with the most similar quantitation as the peptide.

Today, most software presents the user with options 1-3 and the user must choose one approach to apply globally. Efforts are currently underway to develop more intelligent software that will make an intelligent choice between 1-4 on the fly for each individual peptide.

Here are the possible steps in a aample prep for proteomics (in order):

+ Solubilize the cells/tissue/fluid
+ Fractionate the protein, for instance by size (SDS-PAGE), solubility (detergents and centrifugation), and/or immunoenrichment or depletion
+ Digest the protein, usually with trypsin
+ Fractionate the peptides, for instance with immunoenrichment

There is no truly absolute quantification with mass spec. The end result of proteomics data analysis is always a ratio. For instance, the ratio of wild type to mutant, the ratio of unlabeled to labeled peptide, etc. If your goal is to quantify the relative abundance of a peptide under two different conditions (e.g. mutant vs. wild-type cells, compound-treated vs. untreated cells, etc.) then there are basically three approaches, each with a different "plex level" (how many comparisons can be made in one batch):

+ Unlabeled - just mix sample A and sample B. You can only do one comparison this way.
+ Chemically labeled - can do up to ~10 comparisons.
+ Metabolically labeled - (stable isotope labeling of amino acids in cell culture or SILAC) - can do up to 3 comparisons.

It is worth noting at least a couple of the fundamental differences between proteomics analysis and, say, RNA-seq:

+ Because there is no analog of PCR for proteins, there is no way to amplify signal. Mass spec must cope with a tremendous dynamic range, and often only the most abundant ~20-50% of features can be detected.
+ Because trypsin is specific to certain cut sites (after K or R except when followed by P), all peptides produced by a complete trypsin digestion are non-overlapping, so there is no overlap (produced in DNA and RNA sequencing by random shearing). This is actually an advantage which helps increase your dynamic range by avoiding redundancy (otherwise the dynamic range would be even worse).

Targeted MS differs from discovery MS in that you first mass-select for the peptide of interest before fragmenting it. Discovery MS is a powerful tool, but like any "ome"-wide approach, it has its false discovery rate, and many supposed biomarkers reported in the literature based on discovery MS experiments turn out to be false. Discovery is usually performed with only a small sample size (say, 10 samples). While this sample size is useful for hypothesis generation, the only way to validate a measurement as being biologically or clinically meaningful is to do quantitative measurements in a much larger number of samples. This translation from discovery MS based hypotheses to targeted MS validation is a principal challenge in proteomics today [[Rifai 2006], [Gillette & Carr 2013]].

### Namrata Udeshi: applications of quantitative discovery proteomics in biology and medicine part 1

Common questions that the Proteomics Platform at Broad is tasked with asking include:

+ Which proteins are significantly up- or down-regulated after a perturbation such as a drug treatment, or a gene knockout.
+ Which post-translational modifications are altered as a result of such a perturbation.
+ Which proteins are enriched in particular cellular compartments?
+ Which signaling pathways are activated in a particular cell state?
+ Which proteins interact with a protein of interest?

"Next generation" proteomics has arrived: in the past ~3 years, the number of distinct proteins and post-translational modifications (PTMs) that can be detected and quantified in human tissue samples has increased by 4- to 5-fold. 

It has been estimated that the average human cell expresses ~10,000 distinct proteins, with concentrations spanning 7 orders of magnitude, from ~10 copies to multiple tens of millions of copies per cell [[Beck 2011]]. Deeper fractionation allows you to detect a broader dynamic range of these proteins [[Mertins 2013]].

Broad has large-scale methods in place for analyzing three PTMs: phosphorylation, ubiquitination, and acetylation. For reference, one recommended review [[Aebersold & Mann 2016]] has a discussion of PTM detection in proteomics. The principle here is that you get much better dynamic range by enriching for your (less abundant) proteins or PTMs of interest. For instance, phosphorylated peptides can be enriched by immobilized metal affinity chromatography (IMAC). Titanium dioxide and phospho-tyrosine specific antibodies are also methods that are used [[Grimsrud 2010]].

For a couple of good examples of how the Proteomics Platform has applied discovery MS to the study of PTMs or interacting proteins, see [[Mertins 2014], [Kronke 2014]].

### Philipp Mertins: applications of quantitative discovery proteomics in biology and medicine part 2

**Spatial proteomics** relies on labeling of proteins in specific cellular compartments. This can be accomplished using APEX, an engineered peroxidase enzyme which can be expressed as a fusion protein with a protein known to localize to a particular compartment of interest [[Martell 2012]]. This way you can specifically label proteins in that compartment. For instance they used this to selectively label mitochondrial matrix proteins [[Rhee 2013]].

**Temporal proteomics** relies on differential labeling of cells over time. You can get up to 3-plex labeling with SILAC using light, "medium", and heavy media. For instance, grow cells in heavy media, and switch to medium media right before a perturbation of interest, all the while comparing to light media cell lysate as an internal control. They recently used this approach to characterize the temporal response to lipopolysaccharide stimulation in cells [[Jovanovic 2015]].

They also do global proteome profiling of human clinical samples, such as plasma or tumors. Often dynamic range can be improved by using techniques such as abundant protein depletion [[Keshishian 2007], [Shi 2012]].

### D.R. Mani: statisical analysis for proteomics and proteogenomics

This talk is a quick overview of how proteomics data are processed and analyzed.

Proteomics data are usually normalized in some way. Often you see proteomics data either Z scored (mean-centered and standard deviation (SD)-scaled) or median centered and median absolute deviation (MAD) scaled. They also sometimes use **2-component normalization**. Here's how that works. You assume that most proteins are unchanged ("unregulated") between the two conditions being compared (log<sub>2</sub>ratio &asymp; 0) while a few proteins are differentially regulated (\|log<sub>2</sub>ratio\| &gt;&gt; 0)). You therefore perform the normalization using the mean and SD (or median and MAD) of only the unregulated proteins. This method is better than naive normalization because it avoids underestimating the variance of the few truly differentially regulated proteins.

The goal of most discovery proteomics analyses is to identify a set of peptides or proteins whose abundance differs between two conditions. This is hypothesis testing, and so a few possible models are possible:

+ One-sample t test if comparing case vs. control to ask if log(case/control ratio) is different from zero.
+ Two-sample t test if comparing two conditions vs. control to ask if log(condition A/control) differs from log(condition B/control).
+ F test or longitudinal analysis if comparing multiple groups to ask if any of the log(group<sub>i</sub>/reference) values are different from zero.

"Moderated tests" &mdash; versions of the above using Bayesian methods &mdash; are helpful for small sample sizes and are almost always used in discovery MS.

Multiple testing correction is usually performed using Benjamini-Hochberg FDR correction.

Sometimes the goal of the analysis is to identify a set of statistically significantly differential markers (SAM) for making predictions. This can use a range of techniques such as random forest or genetic algorithms.

Another common goal of proteomics analysis is to use **clustering** to ask whether proteomics reflects the same differences between, say, various cell types or various tumors, as established by individual markers or RNA-seq analysis.

Finally, proteomics data often feeds into pathway enrichment analysis. Specifically, you end up asking whether one list of things (say, differentially regulated proteins from a proteomics experiment) is enriched within another list of thing (say, genes assigned to a particular pathway). This is usually done using a Fisher's exact test with Benjamini-Hochberg FDR correction. Alternatively, [GSEA](http://software.broadinstitute.org/gsea/index.jsp) [[Subramanian 2005]] is a popular tool which doesn't just compare membership in list 1 to membership in list 2, it compares a quantitative value for list 1 (e.g. each protein's enrichment score in a proteomics experiment) versus membership in list 2 (e.g. genes in a pathway).

### Monica Schenone: affinity enrichment proteomics - applications in chemistry and biology

Phenotypic screening can yield small molecule hits that are active in a cellular context. GWAS and other genomic association methods can point to loci that harbor susceptibility alleles for disease. In each case, we know that something (a small molecule or a gene) is active but we don't know how or why &mdash; we don't know what that thing *does*. Affinity enrichment proteomics is one approach to answering this question. The approach basically relies on guilt by association &mdash; for instance, a protein that is physically associated with a small molecule might be its mechanistic target.

Classical affinity enrichment relies on running proteins out on a gel and looking for bands that are present or enriched only in the experimental condition and not in the control condition. This is very vulnerable to differences in wash conditions and differences in sample handling, and the information you get out is not super quantitative. Mass spec offers a better approach.

While the entity of interest could be a protein, a small molecule, or even a nucleic acid, the fundamental approach is the same: affinity enrichment by tethering the entity of interest to solid support. In each case, it is considered essential to use the most relevant possible cell model &mdash; for instance, the disease-relevant cell type for a GWAS hit, or the cell type in which a small molecule hit was identified as bioactive.

Typical experimental details:

+ 1e7 cells per condition, for ~1 mg total protein
+ Assay development step to optimize conditions and parameters such as input protein, affinity matrix amount, wash conditions, choice of control
+ The experiment should be replicated with a label swap at a minimum.
+ Performed on the Q-Exactive with unbiased data acquisition methods.
+ Data processing uses Maxquant for SILAC or SpectrumMill for iTRAQ, and statistical analysis uses a moderated t test and mixed modeling.
+ The final output of the experiment is a rank-ordered list of candidate interactors with nominal p values and q values after FDR correction.

For identifying the target of a small molecule [[Ong 2009]], the currently favored experimental design is as follows. An analog of the small molecule, confirmed to still be bioactive, is tethered to solid support and used to affinity enrich proteins from two conditions: cells treated with DMSO, and cells treated with DMSO containing the free compound. The principle here is that the free compound will block the target protein, so you should see enrichment of that target exclusively in the unblocked (DMSO) condition. For recent examples see [[Chou 2015], [de Waal 2016]].

### Karsten Krug: building interactive data analysis tools

A typical data analysis work flow in, for example, the affinity enrichment experiments described above, would be to process the raw data through SpectrumMill or similar to obtain a table of proteins with expression values, then QC and filter the data (for instance, removing common contaminants and selecting only proteins quantified by 2 or more peptides), then perform normalization (such as Z scoring), then do statistical analysis such as moderated t tests. In order to create a solution that lets users control this workflow without needing to write code themselves, the Proteomics Platform is developing a [Shiny](http://shiny.rstudio.com/) app.

### Hasmik Keshishian & Jake Jaffe: targeted MS and its application in biology and medicine

As mentioned earlier, discovery MS is unbiased and proteome-wide, whereas targeted MS specifically aims to detect and quantify one or a few peptides of interest [[Gillette & Carr 2013], [Carr 2014]]. Targeted MS can be 50-1000X more sensitive than discovery MS. Targeted MS can be multiplexed to measure >150 peptides at once [[Ippoliti 2016]]. Targeted MS gives you a quantification of every selected peptide in every experiment, because you're looking specifically for each peptide so if you don't see it you can say with confidence that its abundance was below the limit of detection, whereas if you don't see something in discovery MS, that could just be chance. Quantification in targeted MS is highly precise and can detect small changes in peptide abundance.

**Multiple reaction monitoring** (MRM, also known as selected reaction monitoring or SRM), is a targeted MS method performed on triple quadrupole mass spectrometers. **Parallel reaction monitoring** (PRM) is a different targeted MS method performed on MS/MS machines. In MS/MS, you first mass-select a peptide ion, then fragment it and detect all the fragment ions, whereas in MRM you fragment and then detect only selected fragment ions. MRM is the most sensitive method. 

In developing an MRM assay, the first question is which peptides you want to detect. You can use prediction algorithms and proteomics data from public databases, but the best approach is to do your own unbiased experiments to figure out which peptides are detectable for your protein of interest. Then you choose one amino acid in each peptide of interest, usually the C-terminal one, and order a synthetic peptide where that particular amino acid is isotopically labeled. You then spike the heavy peptides into the samples before running the mass spec. Quantification in MRM is based on comparing the area under the peaks for light vs. heavy peptides. In principle this provides absolute quantification, although the fact that the heavy peptides don't go through all the same sample processing steps as the light peptides means that data are better interpreted as a relative quantification which is precise but not necessarily accurate [[Gillette & Carr 2013]].

Once you have the MRM assay up and running, you want to validate it. Run some samples in triplicate to assess the precision of the assay across techincal replicates. Run a dose response or dilution series to determine the assay's lower limit of detection (LOD) and the lower limit of quantification (LOQ). Then test it on a variety of actual clinical samples to confirm that the assay works for each of them.

If done right, MRM can be a very robust and quantitative assay. Many studies of MRM have been done in human plasma, a fluid in which a few incredibly abundant proteins comprise the majority of total protein. With abundant protein depletion and minimal fractionation [[Keshishian 2007]], a stable isotope dilution (SID) MRM assay can often achieve a lower limit of detection for a protein in plasma around ~100 ng/mL [[Gillette & Carr 2013]] and sometimes as low as 1-10 ng/mL with a ~3-15% coefficient of variation (CV) [[Keshishian 2007]]. If you need more sensitivity than that, you can first immunoenrich, either with an antibody to the whole protein, or multiple antibodies to each individual peptide of interest (the latter approach is called SISCAPA) [[Whiteaker 2011]]. An 8-plex MRM assay with SISCAPA can achieve an LOD of ~1 ng/mL in a 30 &mu;L volume of plasma [[Whiteaker 2011]]. Studies using known quantities of protein spiked into human plasma have demonstrated good intra- and inter-laboratory reproducibility for MRM both with [[Kuhn 2012]] or without [[Addona 2009]] SISCAPA. Note that the CV depends on where you are within the assay's dynamic range, and is higher near the lower limit of detection.

[Clauser 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10424174 "Clauser KR, Baker P, Burlingame AL. Role of accurate mass measurement (+/- 10  ppm) in protein identification strategies employing MS or MS/MS and database searching. Anal Chem. 1999 Jul 15;71(14):2871-82. PubMed PMID: 10424174."

[Nesvizhskii & Aebersold 2005]: https://www.ncbi.nlm.nih.gov/pubmed/16009968 "Nesvizhskii AI, Aebersold R. Interpretation of shotgun proteomic data: the protein inference problem. Mol Cell Proteomics. 2005 Oct;4(10):1419-40. PubMed PMID: 16009968."

[Subramanian 2005]: https://www.ncbi.nlm.nih.gov/pubmed/16199517 "Subramanian A, Tamayo P, Mootha VK, Mukherjee S, Ebert BL, Gillette MA, Paulovich A, Pomeroy SL, Golub TR, Lander ES, Mesirov JP. Gene set enrichment analysis: a knowledge-based approach for interpreting genome-wide expression profiles. Proc Natl Acad Sci U S A. 2005 Oct 25;102(43):15545-50. PubMed PMID: 16199517; PubMed Central PMCID: PMC1239896."

[Rifai 2006]: https://www.ncbi.nlm.nih.gov/pubmed/16900146 "Rifai N, Gillette MA, Carr SA. Protein biomarker discovery and validation: the long and uncertain path to clinical utility. Nat Biotechnol. 2006 Aug;24(8):971-83. Review. PubMed PMID: 16900146."

[Keshishian 2007]: https://www.ncbi.nlm.nih.gov/pubmed/17939991 "Keshishian H, Addona T, Burgess M, Kuhn E, Carr SA. Quantitative, multiplexed  assays for low abundance proteins in plasma by targeted mass spectrometry and stable isotope dilution. Mol Cell Proteomics. 2007 Dec;6(12):2212-29. PubMed PMID: 17939991; PubMed Central PMCID: PMC2435059."

[Addona 2009]: https://www.ncbi.nlm.nih.gov/pubmed/19561596 "Addona TA, Abbatiello SE, Schilling B, Skates SJ, Mani DR, Bunk DM, Spiegelman CH, Zimmerman LJ, Ham AJ, Keshishian H, Hall SC, Allen S, Blackman RK, Borchers CH, Buck C, Cardasis HL, Cusack MP, Dodder NG, Gibson BW, Held JM, Hiltke T, Jackson A, Johansen EB, Kinsinger CR, Li J, Mesri M, Neubert TA, Niles RK, Pulsipher TC, Ransohoff D, Rodriguez H, Rudnick PA, Smith D, Tabb DL, Tegeler TJ, Variyath AM, Vega-Montoto LJ, Wahlander A, Waldemarson S, Wang M, Whiteaker JR, Zhao L, Anderson NL, Fisher SJ, Liebler DC, Paulovich AG, Regnier FE, Tempst P, Carr SA. Multi-site assessment of the precision and reproducibility of multiple reaction monitoring-based measurements of proteins in plasma. Nat Biotechnol. 2009 Jul;27(7):633-41. doi: 10.1038/nbt.1546. Erratum in: Nat Biotechnol. 2009 Sep;27(9):864. PubMed PMID: 19561596; PubMed Central PMCID: PMC2855883."

[Ong 2009]: https://www.ncbi.nlm.nih.gov/pubmed/19255428 "Ong SE, Schenone M, Margolin AA, Li X, Do K, Doud MK, Mani DR, Kuai L, Wang X, Wood JL, Tolliday NJ, Koehler AN, Marcaurelle LA, Golub TR, Gould RJ, Schreiber SL, Carr SA. Identifying the proteins to which small-molecule probes and drugs bind in cells. Proc Natl Acad Sci U S A. 2009 Mar 24;106(12):4617-22. doi: 10.1073/pnas.0900191106. PubMed PMID: 19255428; PubMed Central PMCID: PMC2649954."

[Grimsrud 2010]: https://www.ncbi.nlm.nih.gov/pubmed/20047291 "Grimsrud PA, Swaney DL, Wenger CD, Beauchene NA, Coon JJ. Phosphoproteomics for the masses. ACS Chem Biol. 2010 Jan 15;5(1):105-19. doi: 10.1021/cb900277e. Review. PubMed PMID: 20047291; PubMed Central PMCID: PMC2810156."

[Whiteaker 2011]: https://www.ncbi.nlm.nih.gov/pubmed/21245105 "Whiteaker JR, Zhao L, Abbatiello SE, Burgess M, Kuhn E, Lin C, Pope ME, Razavi M, Anderson NL, Pearson TW, Carr SA, Paulovich AG. Evaluation of large scale quantitative proteomic assay development using peptide affinity-based mass spectrometry. Mol Cell Proteomics. 2011 Apr;10(4):M110.005645. doi: 10.1074/mcp.M110.005645. PubMed PMID: 21245105; PubMed Central PMCID: PMC3069346."

[Addona 2011]: https://www.ncbi.nlm.nih.gov/pubmed/21685905 "Addona TA, Shi X, Keshishian H, Mani DR, Burgess M, Gillette MA, Clauser KR, Shen D, Lewis GD, Farrell LA, Fifer MA, Sabatine MS, Gerszten RE, Carr SA. A pipeline that integrates the discovery and verification of plasma protein biomarkers reveals candidate markers for cardiovascular disease. Nat Biotechnol.  2011 Jun 19;29(7):635-43. doi: 10.1038/nbt.1899. PubMed PMID: 21685905; PubMed Central PMCID: PMC3366591." 

[Beck 2011]: https://www.ncbi.nlm.nih.gov/pubmed/22068332/ "Beck M, Schmidt A, Malmstroem J, Claassen M, Ori A, Szymborska A, Herzog F, Rinner O, Ellenberg J, Aebersold R. The quantitative proteome of a human cell line. Mol Syst Biol. 2011 Nov 8;7:549. doi: 10.1038/msb.2011.82. PubMed PMID: 22068332; PubMed Central PMCID: PMC3261713."

[Kuhn 2012]: https://www.ncbi.nlm.nih.gov/pubmed/22199228 "Kuhn E, Whiteaker JR, Mani DR, Jackson AM, Zhao L, Pope ME, Smith D, Rivera KD, Anderson NL, Skates SJ, Pearson TW, Paulovich AG, Carr SA. Interlaboratory evaluation of automated, multiplexed peptide immunoaffinity enrichment coupled to multiple reaction monitoring mass spectrometry for quantifying proteins in plasma. Mol Cell Proteomics. 2012 Jun;11(6):M111.013854. doi: 10.1074/mcp.M111.013854. PubMed PMID: 22199228; PubMed Central PMCID: PMC3433918."

[Shi 2012]: https://www.ncbi.nlm.nih.gov/pubmed/22577010 "Shi T, Su D, Liu T, Tang K, Camp DG 2nd, Qian WJ, Smith RD. Advancing the sensitivity of selected reaction monitoring-based targeted quantitative proteomics. Proteomics. 2012 Apr;12(8):1074-92. doi: 10.1002/pmic.201100436. Review. PubMed PMID: 22577010; PubMed Central PMCID: PMC3375056."

[Martell 2012]: https://www.ncbi.nlm.nih.gov/pubmed/23086203 "Martell JD, Deerinck TJ, Sancak Y, Poulos TL, Mootha VK, Sosinsky GE, Ellisman MH, Ting AY. Engineered ascorbate peroxidase as a genetically encoded reporter for electron microscopy. Nat Biotechnol. 2012 Nov;30(11):1143-8. doi: 10.1038/nbt.2375. PubMed PMID: 23086203; PubMed Central PMCID: PMC3699407."

[Mertins 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23749302 "Mertins P, Qiao JW, Patel J, Udeshi ND, Clauser KR, Mani DR, Burgess MW, Gillette MA, Jaffe JD, Carr SA. Integrated proteomic analysis of post-translational modifications by serial enrichment. Nat Methods. 2013 Jul;10(7):634-7. doi: 10.1038/nmeth.2518. PubMed PMID: 23749302; PubMed Central PMCID: PMC3943163."

[Schenone 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23508189 "Schenone M, Dančík V, Wagner BK, Clemons PA. Target identification and mechanism of action in chemical biology and drug discovery. Nat Chem Biol. 2013 Apr;9(4):232-40. doi: 10.1038/nchembio.1199. Review. PubMed PMID: 23508189."

[Gillette & Carr 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23269374 "Gillette MA, Carr SA. Quantitative analysis of peptides and proteins in biomedicine by targeted mass spectrometry. Nat Methods. 2013 Jan;10(1):28-34. doi: 10.1038/nmeth.2309. PubMed PMID: 23269374; PubMed Central PMCID: PMC3943160."

[Rhee 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23371551 "Rhee HW, Zou P, Udeshi ND, Martell JD, Mootha VK, Carr SA, Ting AY. Proteomic  mapping of mitochondria in living cells via spatially restricted enzymatic tagging. Science. 2013 Mar 15;339(6125):1328-31. doi: 10.1126/science.1230593. PubMed PMID: 23371551; PubMed Central PMCID: PMC3916822."

[Mertins 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24719451 "Mertins P, Yang F, Liu T, Mani DR, Petyuk VA, Gillette MA, Clauser KR, Qiao JW, Gritsenko MA, Moore RJ, Levine DA, Townsend R, Erdmann-Gilmore P, Snider JE,  Davies SR, Ruggles KV, Fenyo D, Kitchens RT, Li S, Olvera N, Dao F, Rodriguez H,  Chan DW, Liebler D, White F, Rodland KD, Mills GB, Smith RD, Paulovich AG, Ellis  M, Carr SA. Ischemia in tumors induces early and sustained phosphorylation changes in stress kinase pathways but does not affect global protein levels. Mol  Cell Proteomics. 2014 Jul;13(7):1690-704. doi: 10.1074/mcp.M113.036392. PubMed PMID: 24719451; PubMed Central PMCID: PMC4083109."

[Kronke 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24292625 "Krönke J, Udeshi ND, Narla A, Grauman P, Hurst SN, McConkey M, Svinkina T, Heckl D, Comer E, Li X, Ciarlo C, Hartman E, Munshi N, Schenone M, Schreiber SL,  Carr SA, Ebert BL. Lenalidomide causes selective degradation of IKZF1 and IKZF3 in multiple myeloma cells. Science. 2014 Jan 17;343(6168):301-5. doi: 10.1126/science.1244851. PubMed PMID: 24292625; PubMed Central PMCID: PMC4077049."

[Carr 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24443746 "Carr SA, Abbatiello SE, Ackermann BL, Borchers C, Domon B, Deutsch EW, Grant RP, Hoofnagle AN, Hüttenhain R, Koomen JM, Liebler DC, Liu T, MacLean B, Mani DR, Mansfield E, Neubert H, Paulovich AG, Reiter L, Vitek O, Aebersold R, Anderson L, Bethem R, Blonder J, Boja E, Botelho J, Boyne M, Bradshaw RA, Burlingame AL, Chan D, Keshishian H, Kuhn E, Kinsinger C, Lee JS, Lee SW, Moritz R, Oses-Prieto J, Rifai N, Ritchie J, Rodriguez H, Srinivas PR, Townsend RR, Van Eyk J, Whiteley G, Wiita A, Weintraub S. Targeted peptide measurements in biology and medicine: best practices for mass spectrometry-based assay development using a fit-for-purpose approach. Mol Cell Proteomics. 2014 Mar;13(3):907-17. doi: 10.1074/mcp.M113.036095. PubMed PMID: 24443746; PubMed Central PMCID: PMC3945918."

[Jovanovic 2015]: https://www.ncbi.nlm.nih.gov/pubmed/25745177 "Jovanovic M, Rooney MS, Mertins P, Przybylski D, Chevrier N, Satija R, Rodriguez EH, Fields AP, Schwartz S, Raychowdhury R, Mumbach MR, Eisenhaure T, Rabani M, Gennert D, Lu D, Delorey T, Weissman JS, Carr SA, Hacohen N, Regev A. Immunogenetics. Dynamic profiling of the protein life cycle in response to pathogens. Science. 2015 Mar 6;347(6226):1259038. doi: 10.1126/science.1259038. PubMed PMID: 25745177; PubMed Central PMCID: PMC4506746."

[Chou 2015]: https://www.ncbi.nlm.nih.gov/pubmed/26042473 "Chou DH, Vetere A, Choudhary A, Scully SS, Schenone M, Tang A, Gomez R, Burns  SM, Lundh M, Vital T, Comer E, Faloon PW, Dančík V, Ciarlo C, Paulk J, Dai M, Reddy C, Sun H, Young M, Donato N, Jaffe J, Clemons PA, Palmer M, Carr SA, Schreiber SL, Wagner BK. Kinase-Independent Small-Molecule Inhibition of JAK-STAT Signaling. J Am Chem Soc. 2015 Jun 24;137(24):7929-34. doi: 10.1021/jacs.5b04284. PubMed PMID: 26042473; PubMed Central PMCID: PMC5003570."

[Ippoliti 2016]: https://www.ncbi.nlm.nih.gov/pubmed/27321643 "Ippoliti PJ, Kuhn E, Mani DR, Fagbami L, Keshishian H, Burgess MW, Jaffe JD, Carr SA. Automated Microchromatography Enables Multiplexing of Immunoaffinity Enrichment of Peptides to Greater than 150 for Targeted MS-Based Assays. Anal Chem. 2016 Aug 2;88(15):7548-55. doi: 10.1021/acs.analchem.6b00946. PubMed PMID:  27321643."

[Abelin 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26912667 "Abelin JG, Patel J, Lu X, Feeney CM, Fagbami L, Creech AL, Hu R, Lam D, Davison D, Pino L, Qiao JW, Kuhn E, Officer A, Li J, Abbatiello S, Subramanian A, Sidman R, Snyder E, Carr SA, Jaffe JD. Reduced-representation Phosphosignatures Measured by Quantitative Targeted MS Capture Cellular States and Enable Large-scale Comparison of Drug-induced Phenotypes. Mol Cell Proteomics. 2016 May;15(5):1622-41. doi: 10.1074/mcp.M116.058354. PubMed PMID: 26912667; PubMed Central PMCID: PMC4858944."

[Aebersold & Mann 2016]: https://www.ncbi.nlm.nih.gov/pubmed/27629641 "Aebersold R, Mann M. Mass-spectrometric exploration of proteome structure and function. Nature. 2016 Sep 14;537(7620):347-55. doi: 10.1038/nature19949. Review. PubMed PMID: 27629641."

[de Waal 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26656089 "de Waal L, Lewis TA, Rees MG, Tsherniak A, Wu X, Choi PS, Gechijian L, Hartigan C, Faloon PW, Hickey MJ, Tolliday N, Carr SA, Clemons PA, Munoz B, Wagner BK, Shamji AF, Koehler AN, Schenone M, Burgin AB, Schreiber SL, Greulich H, Meyerson M. Identification of cancer-cytotoxic modulators of PDE3A by predictive chemogenomics. Nat Chem Biol. 2016 Feb;12(2):102-8. doi: 10.1038/nchembio.1984. PubMed PMID: 26656089; PubMed Central PMCID: PMC4718766."


