---
layout: post
title:  "Chemical biology 19: oncogene addiction in cancer"
date:   2015-11-17 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 19 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on November 17, 2015.*

Today's lecture is about the molecular origins of cancer, and Thursday's lecture will be about the cellular origins of cancer. In each case, we will discuss the therapeutic implications of each.

Dr. Schreiber recommends this TED talk about a "financial engineering" solution for de-risking drug development:

<iframe width="560" height="315" src="https://www.youtube.com/embed/xu86bYKVmRE" frameborder="0" allowfullscreen></iframe>

Cancer is the second leading cause of death in the U.S., resulting in &ge;600,000 deaths/year. About half of men and one third of women will develop cancer during their lifetimes. The Physician's Desk Reference says that cancer is "340 diseases", 339 of which come from specific tissues and cell types, and 1 of which is "cancer of unknown origin". Amazingly, even today, there are cancers whose tissue of origin we cannot determine.

While there are germline factors that affect cancer susceptibility, some of which are highly penetrant, it is appropriate to think of cancer as a disease of somatic mutation. Somatic cells progressively acquire loss-of-function mutations or deletions of tumor suppressors, and gain-of-function mutations or duplications of oncogenes, and it usually takes several mutations to bring cells to the point of being malignant. That's the molecular view of cancer.

The cellular view of cancer [[Luo 2009], [Hanahan & Weinberg 2011]] is that cells have to develop several core competencies in order to become malignant, such as:

+ Evasion of apoptosis
+ Evasion of immune response
+ Giving itself growth signals and ignoring anti-growth signals
+ Invading other tissues
+ Inducing angiogenesis to ensure its blood supply

Another version of this view is that cancer cells have altered developmental states. In normal development, cells start out pluripotent, when they are proliferative but not very differentiated, and they eventually become less proliferative as they become more differentiated. Some of the more aggressive cancers involve a reversion to the more proliferative, less differentiated state. But they are not totally undifferentiated, and often you can see signs of them sort of trying to form the original organ if you look within the tumor.

An example of the molecular differences in cancer is the very different prognosis depending on the particular driver mutation present in leukemia. As of a few years ago, a patient with a translocation between chromosomes 12 and 21 resulting in a TEL/AML1 fusion protein would have acyte myeloid leukemia (AML), with a 90% survival rate. A patient with a translocation between chromosomes 9 and 22 ("Philadelphia chromosome") resulting in an BCR/ABL fusion protein would have chronic myelogenous leukemia (CML) with a 10% survival rate. Treatment for CML has improved in the last several years however - see below.

Another view of cancer is the **oncogene addiction** view. Most cancer driver mutations actually create a survival *disadvantage* for most cells, and can only be advantageous in the presence of another oncogene mutation. These cells are said to be 'addicted' to the latter oncogene. We once thought of cancer cells as being really hard to kill, but the oncogene addiction hypothesis holds that they are actually a house of cards, and can be readily killed if you target the oncogenes they are addicted to. 

An example of the success of the oncogene addiction strategy is the progress in treatment of CML. The Philadelphia chromosome was first identifed in 1964 and was determined to be a t(9;22) translocation in 1973. The resulting BCR/ABL fusion protein was characterized in 1986. CML was notoriously unresponsive to chemotherapy cocktails. Brian Druker had the idea that maybe targeting the ABL kinase which is activated in the BCR/ABL fusion protein would kill these CML cells. He partnered with Novartis to test an ABL inhibitor that they had sitting on the shelf. The drug proved to raise 5-year survival rate from 40% to 90%. The drug was imatinib. It was orally delivered and had very minimal adverse effects. It was approved in 2001.

A second success story is that of gefitinib in lung cancer. Gefitinib, an EGFR inhibitor, was approved on the basis of a very minute difference in survival in a clinical trial, even though it made patients quite sick. Its clinical benefits were so minimal it later had its approval restricted to patients who had previously responded to it. Indeed, there was a lot of variability - most patients had no benefit from gefitinib, while a handful of patients had a huge improvement. The people with the huge improvement were enriched for non-smokers, Asians, and women, and especially for non-smoking Asian women. Sequencing of 50 candidate kinases revealed that most or all patients who responded well to gefitinib had the same or similar EGFR activating mutations. Two relevant citations are [[Paez 2004], [Lynch 2004]].

A third success story is crizotinib, which was developed as an inhibitor of the kinase MET. It didn't work that well and had a lot of side effects, which seemed to arise from off-target inhibition of ALK. People therefore tried crizotinib as a treatment for cancers with ALK driver mutations, and it worked really well.

Now, those are three stories about targeted therapies for mutated driver proteins. But this isn't the whole story. For instance, in testicular cancer, cisplatin, which is not targeted at all, it's just a chemotherapy drug targeting DNA, is shockingly effective - for instance, Lance Armstrong was cured with this therapy. One interpretation is that some testicular cancers may have a dependency on the DNA damage repair pathway.

Early studies of cancer genomes focused on "naive" cancers that had never seen chemotherapy drugs, and usually in the original tissue, trying to focus on the earliest mutations that drove tumor formation. One of the first studies to challenge this paradigm was [[Gerlinger 2012]]. This study of renal cell (kidney) cancers revealed that although *VHL* mutations are often the earliest driver within the kidney, metastasis seems to require also acquiring *SETD2* mutations.

The newest approach is single cell sequencing of tumors. See for instance [[Wang 2014]]. Tumors were long thought of as being clonal, but we are now seeing a great degree of intratumoral heterogeneity. This is especially prominent in glioblastoma, which was one categorized into classes 1-5, but we now see that class 1 tumors are just 80% class 1 and the other 20% is cells of the types 2-5.

To this day, the three biggest driver mutations of cancer are KRas, p53, and Myc, and there are still no therapies targeting any of these. There are also no therapies specifically targeting the metastatic state. 

Cancer cell lines are a very imperfect model of cancer, but there is a lot you can do with them. One is to screen a battery of drugs against a battery of cancer cell lines, and test which mutations correlate with sensitivity to specific drugs. This could generate hypotheses for specific patient populations to test. See for instance the [Cancer Therapeutics Response Portal](http://www.broadinstitute.org/ctrp.v2.2/) [[Basu 2013], [Seashore-Ludlow 2015]].

Sometimes cancer therapy will kill 99.999% of cancer cells, but the 1 in 100,000 that remain are those that have acquired mesenchymal characteristics. These mesenchymal cells are essential for drug resistance and relapse. 

We don't yet know how many cancer dependencies there are, but it may prove to be a tractable number such as 20 or 40. So personalized medicine for cancer doesn't have to mean a different drug for every individual, just one for every dependency. In the future we can imagine a greater number of targeted therapies, with patients undergoing tumor genome sequencing to identify key dependencies that can be targeted therapeutically. 


[Luo 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19269363 "Luo J, Solimini NL, Elledge SJ. Principles of cancer therapy: oncogene and non-oncogene addiction. Cell. 2009 Mar 6;136(5):823-37. doi: 10.1016/j.cell.2009.02.024. Erratum in: Cell. 2009 Aug 21;138(4):807. PubMed PMID: 19269363; PubMed Central PMCID: PMC2894612."

[Hanahan & Weinberg 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21376230 "Hanahan D, Weinberg RA. Hallmarks of cancer: the next generation. Cell. 2011 Mar 4;144(5):646-74. doi: 10.1016/j.cell.2011.02.013. Review. PubMed PMID: 21376230."

[Ito 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18469801 "Ito K, Bernardi R, Morotti A, Matsuoka S, Saglio G, Ikeda Y, Rosenblatt J, Avigan DE, Teruya-Feldstein J, Pandolfi PP. PML targeting eradicates quiescent leukaemia-initiating cells. Nature. 2008 Jun 19;453(7198):1072-8. doi: 10.1038/nature07016. Epub 2008 May 11. PubMed PMID: 18469801; PubMed Central PMCID: PMC2712082."

[Paez 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15118125 "Paez JG, Jänne PA, Lee JC, Tracy S, Greulich H, Gabriel S, Herman P, Kaye FJ,  Lindeman N, Boggon TJ, Naoki K, Sasaki H, Fujii Y, Eck MJ, Sellers WR, Johnson BE, Meyerson M. EGFR mutations in lung cancer: correlation with clinical response to gefitinib therapy. Science. 2004 Jun 4;304(5676):1497-500. Epub 2004 Apr 29. PubMed PMID: 15118125."

[Lynch 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15118073 "Lynch TJ, Bell DW, Sordella R, Gurubhagavatula S, Okimoto RA, Brannigan BW, Harris PL, Haserlat SM, Supko JG, Haluska FG, Louis DN, Christiani DC, Settleman  J, Haber DA. Activating mutations in the epidermal growth factor receptor underlying responsiveness of non-small-cell lung cancer to gefitinib. N Engl J Med. 2004 May 20;350(21):2129-39. Epub 2004 Apr 29. PubMed PMID: 15118073."

[Gerlinger 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22397650 "Gerlinger M, Rowan AJ, Horswell S, Larkin J, Endesfelder D, Gronroos E, Martinez P, Matthews N, Stewart A, Tarpey P, Varela I, Phillimore B, Begum S, McDonald NQ, Butler A, Jones D, Raine K, Latimer C, Santos CR, Nohadani M, Eklund AC, Spencer-Dene B, Clark G, Pickering L, Stamp G, Gore M, Szallasi Z, Downward J, Futreal PA, Swanton C. Intratumor heterogeneity and branched evolution revealed by multiregion sequencing. N Engl J Med. 2012 Mar 8;366(10):883-92. doi: 10.1056/NEJMoa1113205. Erratum in: N Engl J Med. 2012 Sep 6;367(10):976. PubMed PMID: 22397650."

[Wang 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25079324 "Wang Y, Waters J, Leung ML, Unruh A, Roh W, Shi X, Chen K, Scheet P, Vattathil S, Liang H, Multani A, Zhang H, Zhao R, Michor F, Meric-Bernstam F, Navin NE. Clonal evolution in breast cancer revealed by single nucleus genome sequencing. Nature. 2014 Aug 14;512(7513):155-60. doi: 10.1038/nature13600. Epub 2014 Jul 30. PubMed PMID: 25079324; PubMed Central PMCID: PMC4158312."

[Basu 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23993102 "Basu A, Bodycombe NE, Cheah JH, Price EV, Liu K, Schaefer GI, Ebright RY, Stewart ML, Ito D, Wang S, Bracha AL, Liefeld T, Wawer M, Gilbert JC, Wilson AJ,  Stransky N, Kryukov GV, Dancik V, Barretina J, Garraway LA, Hon CS, Munoz B, Bittker JA, Stockwell BR, Khabele D, Stern AM, Clemons PA, Shamji AF, Schreiber SL. An interactive resource to identify cancer genetic and lineage dependencies targeted by small molecules. Cell. 2013 Aug 29;154(5):1151-61. doi: 10.1016/j.cell.2013.08.003. PubMed PMID: 23993102; PubMed Central PMCID: PMC3954635."

[Seashore-Ludlow 2015]: http://www.ncbi.nlm.nih.gov/pubmed/26482930 "Seashore-Ludlow B, Rees MG, Cheah JH, Cokol M, Price EV, Coletti ME, Jones V,  Bodycombe NE, Soule CK, Gould J, Alexander B, Li A, Montgomery P, Wawer MJ, Kuru  N, Kotz JD, Hon CS, Munoz B, Liefeld T, Dančík V, Bittker JA, Palmer M, Bradner JE, Shamji AF, Clemons PA, Schreiber SL. Harnessing Connectivity in a Large-Scale Small-Molecule Sensitivity Dataset. Cancer Discov. 2015 Nov;5(11):1210-23. doi: 10.1158/2159-8290.CD-15-0235. Epub 2015 Oct 19. PubMed PMID: 26482930; PubMed Central PMCID: PMC4631646."





