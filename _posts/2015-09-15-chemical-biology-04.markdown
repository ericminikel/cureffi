---
layout: post
title:  "Chemical biology 04: Gene expression"
date:   2015-09-15 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 4 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on September 15, 2015.*

I am joining this class late, in meeting 4. The previous class meetings were entitled 1) oragnic synthesis and genome biology; 2) from the origins of life to genes, genomes, and precision medicine; and 3) variations in our genomes provide clues to human disease.

Previous lectures discussed the fact that genotyping can now be done at an unprecedented throughput. To enable precision medicine, it would be great to have phenotyping scale equally well.

When Dr. Schreiber was young, a friend of his family was diagnosed with "shortness of breath", a phenotype which was then considered a disease unto itself; we now recognize it as being secondary to any of a series of underlying conditions such as heart failure, kidney failure, asthma, anemia, or pneuomonia. Precision medicine aims to achieve more precise definitions of human disease through high dimensional molecular profiling. The technology that has emerged that has this capability is measuring mRNA abundance &mdash; first through microarray and then through mRNA-seq. This lecture will put forth the idea that variation in mRNA abundance is a high throughput measurement of phenotype.

The earliest schism in hematopoietic cell lineage is between the committed lymphoid progenitor (CLP), which gives rise to lymphocytes, and the committed myeloid progenitor (CMP), which gives rise to monocytes, neutrophils, and erythrocytes. 

Sidney Farber (the namesake of the Dana Farber Cancer Institute) was the first to classify blood cancers by the lineage of the tumor cells involved. By visually phenotyping the histological appearance of the tumor cells, he defined myeloblastic (acute myeloid leukemia, AML) and lymphoblastic (acute lymphocytic leukemia, ALL) cancers, which arose respectively from CMPs and CLPs. The process of phenotyping these cells under the microscope was quite slow and labor intensive and sometimes prone to debate. He hypothesized that these different cancers would repsond to different therapies. As told beautifully by the Boston Globe's Kathleen Burge in [this story](https://www.bostonglobe.com/2011/10/13/sandler/8AOg7tC3eRqDTuG7ylCwdK/story.html), Dr. Farber hypothesized that anti-folate drugs (competitive inhibitors of dihydrofolate reductase) could treat ALL, and, by administering methotrexate, he became the first doctor to achieve a temporary remission of ALL in some patients. For this reason he is sometimes referred to as the originator of chemotherapy.

We now know that although no *single* transcript cleanly classifies blood cancers, quantifying the abundance of 50 highly expressed mRNA transcripts is sufficient to categorically distinguish ALL from AML. It is much faster than visual phenotyping, and the answer you get back is less debatable.

Gene expression can also be used to stratify cancers by prognosis. One commercial application of this technology is [Oncotype DX](http://www.oncotypedx.com/), marketed for patients with breast cancers positive for estrogen receptor mutations. Oncotype DX quantifies mRNA abundance from a panel of 21 genes in order to predict whether you will need, and whether you will respond to, further chemotherapy. Insurance companies have proven enthusiastic about paying for this test, because it allows them to avoid paying for chemotherapy in patients predicted to be of low recurrence risk.

Until recently, all gene expression profiling was done on bulk tissue, usually containing a mix of cell types. Now with Drop-seq [[Macosko 2015]] it is possible to profile mRNA levels in thousands of cells in one sequencing run.

Glioblastomas were long considered to be categorizable into four subtypes based on bulk gene expression measurements. Single cell gene expression profiling experiments later showed that in fact, all of the underlying cell types are present in all of the types, just in different ratios. (I'm not sure but I think this is referring to [[Patel 2014]]). This was considered to be bad news for therapy, since now you'd need four therapies targeting four types in order to treat a cancer. The opposing, "whack-a-mole" view, says that if one of the four types is 90% of the cancer cells, then a therapy targeting that type will still de-bulk the tumor by an order of magnitude, thus having considerable therapeutic benefit.

The connectivity map (cMAP) was born out of the idea that if you can measure gene expression profiles that are characteristic of specific human diseases, and you can measure gene expression changes induced by treatment of cells with small molecules, then you might be able to match small molecules to the molecularly defined diseases that they should be capable of treating. For a review, see [[Gullans 2006]].

If you input the gene expression profile of estrogen receptor (ER) mutant cancer cells exposed to 17&beta;-estradiol, you can get out a list of 8 other molecules whose expression effects are positively correlated with those of your input data. These are other ER agonists. And you can also get out a list of 3 molecules whose expression profiles are negatively correlated with your input. These are ER antagonists and are precisely the drugs used to treat ER+ breast cancers (raloxifene, tamoxifen, and clomifene). Thus, the identification of these agonists and antagonists, which originally took years of work, could be done computationally in the era of gene expression profiling.

Some ALL cancers are responsive to dexamethasone, and others are resistant. The gene expression profile of the sensitive lines is correlated with that of rapamycin-treated cells. Therefore, it was hypothesized that rapamycin treatment of resistant cells could restore their sensitivity to dexamethasone. This was a particularly bold hypothesis, as monotherapy with dexamethasone in these cell lines is ineffective, and monotherapy with rapamycin in these cell lines actually appears to *promote* growth. But cell culture experiments confirmed that the two drugs together do indeed dramatically reduce proliferation. This led to clinical trials of combination therapy.

Gene expression profiles have emerged as a "universal language" for annotating the activity of chemical compounds [[Wawer 2014]]. 

[Gullans 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17093257 "Gullans SR. Connecting the dots using gene-expression profiles. N Engl J Med.  2006 Nov 9;355(19):2042-4. PubMed PMID: 17093257."

[Macosko 2015]: http://www.ncbi.nlm.nih.gov/pubmed/26000488 "Macosko EZ, Basu A, Satija R, Nemesh J, Shekhar K, Goldman M, Tirosh I, Bialas AR, Kamitaki N, Martersteck EM, Trombetta JJ, Weitz DA, Sanes JR, Shalek AK, Regev A, McCarroll SA. Highly Parallel Genome-wide Expression Profiling of Individual Cells Using Nanoliter Droplets. Cell. 2015 May 21;161(5):1202-14. doi: 10.1016/j.cell.2015.05.002. PubMed PMID: 26000488; PubMed Central PMCID: PMC4481139."

[Patel 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24925914 "Patel AP, Tirosh I, Trombetta JJ, Shalek AK, Gillespie SM, Wakimoto H, Cahill  DP, Nahed BV, Curry WT, Martuza RL, Louis DN, Rozenblatt-Rosen O, Suvà ML, Regev  A, Bernstein BE. Single-cell RNA-seq highlights intratumoral heterogeneity in primary glioblastoma. Science. 2014 Jun 20;344(6190):1396-401. doi: 10.1126/science.1254257. Epub 2014 Jun 12. PubMed PMID: 24925914; PubMed Central  PMCID: PMC4123637."

[Wawer 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25024206 "Wawer MJ, Li K, Gustafsdottir SM, Ljosa V, Bodycombe NE, Marton MA, Sokolnicki KL, Bray MA, Kemp MM, Winchester E, Taylor B, Grant GB, Hon CS, Duvall JR, Wilson JA, Bittker JA, Dančík V, Narayan R, Subramanian A, Winckler W, Golub TR, Carpenter AE, Shamji AF, Schreiber SL, Clemons PA. Toward performance-diverse small-molecule libraries for cell-based phenotypic screening using multiplexed high-dimensional profiling. Proc Natl Acad Sci U S A. 2014 Jul 29;111(30):10911-6. doi: 10.1073/pnas.1410933111. Epub 2014 Jul 14. PubMed PMID:  25024206; PubMed Central PMCID: PMC4121832."
