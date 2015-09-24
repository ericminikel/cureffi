---
layout: post
title:  "Chemical biology tutorial 1: cMAP workshop"
date:   2015-09-24 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from tutorial 1 in Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Paul Clemons on September 24, 2015.*

Profiling small molecules by measuring multiple cellular responses, possibly in multiple cell types, can be a way of asking whether a small molecule does something new, or something we've seen before. The multiple responses measured could be mRNA transcripts, morphological features, cytotoxicity, or mining of diverse assay readouts from public databases such as PubChem. 

[Connectivity map (cMAP)](http://broadinstitute.org/cmap/) [[Lamb 2006]] exists to catalog small molecule responses in a common languge: genome-wide mRNA expression profiles. For an early example of using it to generate a therapeutic hypothesis, see [[Wei 2006]]. The data now publicly available are cMAP 02, which was released in July 2008.

Queries can only have 500 up probes and 500 down probes at a maximum. To get down to this number, you can change your cutoff for what qualifies as an "up" or "down" probe &mdash; +.67 and -.67 are usually good.

The simplest task you can do in cMAP is query > instance query, which lets you choose the already-existing data on one of the compounds used in cMAP, and check for signatures that correlate with that compound. 

The underlying data for cMAP are in Affymetrix ProbeSet ID space. If you have a list of gene symbols &mdash; for an example see [Table 1](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2754894/table/T1/) of [[Rieck 2009]] &mdash; you will need to convert these gene symbols to Affymetrix ProbeSet IDs, use the "NetAffx Query" tool available [here](http://www.affymetrix.com//analysis/index.affx). Export a plain text file with one ProbeSet ID per line and a `.grp` file extension, and upload one file with all "up" probes and one with all "down" probes into cMAP via the query > load signature dialogue. You can then use these data as a signature to query against, using the query > signature query menu. In the example discussed here [[Rieck 2009]], the authors had noticed that pancreatic beta islet cells, which are usually non-dividing, sometimes divide during pregnancy. So they measured changes in beta islet cell gene expression during pregnancy, and then queried cMAP to see if there were compounds that could induce this "pregnancy-like" state. 

The next generation of cMAP uses the Luminex 1000 (L1000) assay to measure levels of 1000 "landmark" transcripts and, from those, infer the levels of other correlated transcripts. This is much faster and higher throughput than Affy arrays. Thus, whereas the 2008 version of cMAP only included 3 cell lines (of which 85% of measurements were taken in one cell line), the new cMAP includes a vastly greater number of cell lines, as well as more compounds and more genetic perturbations.

Profiling of cell morphological measurements via "cell painting" with many fluorescent probes and high-content image analysis using CellProfiler has also emerged as another "universal language" for what compounds do [[Gustafsdottir & Ljosa 2013]]. This has been used to perform "lead-hopping", in which you define a signature (in gene expression and cell morphology space) of an active lead compound you're interested in, discovered through some other assay, then run a similarity search for other compounds that yield similar signatures. If you find a novel, structurally unrelated compound with a similar signature, then you run it through the original assay again. This is useful if your original compound has a desired activity but also has some other liability, such as difficulty or expense of synthesis, poor pharmacokinetics, or off-target toxicity.

It is also possible to use these gene expression and morphology signatures to explore structure-activity relationships, asking which chemical moieties are correlated with a given signature [[Wawer 2014a]]. And you can quickly check whether a novel compound has a novel activity or a known activity [[Wawer 2014b]]. 

Another resource is the [cancer therapeutics response portal](https://www.broadinstitute.org/ctrp/), a collaboration between Broad and Novartis [[Basu 2013]]. It is a richer genomic characterization of cancer cells than was available previously. The phenotype of interest in studying cancer cells is cell death. Cells were characterized in terms of genetic mutations, gene expression, phosphoproteome, etc, and then dose-response kill curves were measured for each cell type for hundreds of compounds.

[Lamb 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17008526 "Lamb J, Crawford ED, Peck D, Modell JW, Blat IC, Wrobel MJ, Lerner J, Brunet JP, Subramanian A, Ross KN, Reich M, Hieronymus H, Wei G, Armstrong SA, Haggarty  SJ, Clemons PA, Wei R, Carr SA, Lander ES, Golub TR. The Connectivity Map: using gene-expression signatures to connect small molecules, genes, and disease. Science. 2006 Sep 29;313(5795):1929-35. PubMed PMID: 17008526."

[Wei 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17010674 "Wei G, Twomey D, Lamb J, Schlis K, Agarwal J, Stam RW, Opferman JT, Sallan SE, den Boer ML, Pieters R, Golub TR, Armstrong SA. Gene expression-based chemical genomics identifies rapamycin as a modulator of MCL1 and glucocorticoid resistance. Cancer Cell. 2006 Oct;10(4):331-42. Epub 2006 Sep 28. PubMed PMID: 17010674."

[Rieck 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19574445 "Rieck S, White P, Schug J, Fox AJ, Smirnova O, Gao N, Gupta RK, Wang ZV, Scherer PE, Keller MP, Attie AD, Kaestner KH. The transcriptional response of the islet to pregnancy in mice. Mol Endocrinol. 2009 Oct;23(10):1702-12. doi: 10.1210/me.2009-0144. Epub 2009 Jul 2. PubMed PMID: 19574445; PubMed Central PMCID: PMC2754894."

[Gustafsdottir & Ljosa 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24312513/ "Gustafsdottir SM, Ljosa V, Sokolnicki KL, Anthony Wilson J, Walpita D, Kemp MM, Petri Seiler K, Carrel HA, Golub TR, Schreiber SL, Clemons PA, Carpenter AE,  Shamji AF. Multiplex cytological profiling assay to measure diverse cellular states. PLoS One. 2013 Dec 2;8(12):e80999. doi: 10.1371/journal.pone.0080999. eCollection 2013. PubMed PMID: 24312513; PubMed Central PMCID: PMC3847047."

[Wawer 2014a]: http://www.ncbi.nlm.nih.gov/pubmed/24710340 "Wawer MJ, Jaramillo DE, Dančík V, Fass DM, Haggarty SJ, Shamji AF, Wagner BK, Schreiber SL, Clemons PA. Automated Structure-Activity Relationship Mining: Connecting Chemical Structure to Biological Profiles. J Biomol Screen. 2014 Apr 7;19(5):738-748. [Epub ahead of print] PubMed PMID: 24710340."

[Wawer 2014b]: http://www.ncbi.nlm.nih.gov/pubmed/25024206 "Wawer MJ, Li K, Gustafsdottir SM, Ljosa V, Bodycombe NE, Marton MA, Sokolnicki KL, Bray MA, Kemp MM, Winchester E, Taylor B, Grant GB, Hon CS, Duvall JR, Wilson JA, Bittker JA, Dančík V, Narayan R, Subramanian A, Winckler W, Golub TR, Carpenter AE, Shamji AF, Schreiber SL, Clemons PA. Toward performance-diverse small-molecule libraries for cell-based phenotypic screening using multiplexed high-dimensional profiling. Proc Natl Acad Sci U S A. 2014 Jul 29;111(30):10911-6. doi: 10.1073/pnas.1410933111. Epub 2014 Jul 14. PubMed PMID:  25024206; PubMed Central PMCID: PMC4121832."

[Basu 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23993102 "Basu A, Bodycombe NE, Cheah JH, Price EV, Liu K, Schaefer GI, Ebright RY, Stewart ML, Ito D, Wang S, Bracha AL, Liefeld T, Wawer M, Gilbert JC, Wilson AJ, Stransky N, Kryukov GV, Dancik V, Barretina J, Garraway LA, Hon CS, Munoz B, Bittker JA, Stockwell BR, Khabele D, Stern AM, Clemons PA, Shamji AF, Schreiber SL. An interactive resource to identify cancer genetic and lineage dependencies targeted by small molecules. Cell. 2013 Aug 29;154(5):1151-61. doi: 10.1016/j.cell.2013.08.003. PubMed PMID: 23993102; PubMed Central PMCID: PMC3954635."


