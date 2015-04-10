---
layout: post
title:  "Genetics in medicine 10: Lung cancer"
date:   2015-04-10 12:01:00
author: ericminikel
tag: genetics-228
location: Cambridge, MA
summary200: "A. John Iafrate and Alice Shaw discuss lung cancer and ALK inhibitors."
---

*These are my notes from week 10 of Harvard's [Genetics 228: Genetics in Medicine from Bench to Bedside](http://www2.massgeneral.org/bbs/gen228/gen228_syllabus_material.asp) course, held on April 10, 2015. Lectures by [Dr. A. John Iafrate](http://www.massgeneral.org/pathology/research/researchlab.aspx?id=1304) and [Dr. Alice Shaw](http://www.massgeneral.org/doctors/doctor.aspx?ID=17279).*

### Reading

The paper for this week is *Anaplastic lymphoma kinase inhibition in non-small-cell lung cancer* [[Kwak 2010]], which reports positive results from an early phase clinical trial of crizotinib for tumors with *ALK* translocations. Crizotinib later [received FDA approval in 2013](http://www.cancer.gov/cancertopics/druginfo/fda-crizotinib). The drug is often rightly held up as an example of genomic precision medicine - a drug targeted to a specific driver mutation in cancer. I have previously blogged about crizotinib's success in [this post](/2014/11/24/we-can-and-should-do-clinical-trials-in-rare-diseases/).

### [Dr. Alice Shaw](http://www.massgeneral.org/doctors/doctor.aspx?ID=17279) part 1 - intro to lung cancer

Lung cancer is the leading cause of cancer deaths worldwide, causing ~1.6 million deaths per year worldwide \[WHO IARC January 2014\]. Prostate and breast cancer are more common than lung cancer in men and women respectively, but are less lethal than lung cancer. Lung cancer is highly lethal in part because it is less likely to be diagnosed until a more advanced stage. 

Lung cancer deaths occur in smokers at a rate of 9 deaths per 100,000 individuals per year, while in never-smokers it is about 3 deaths per 100,000 individuals per year. Thus, risk of lung cancer is high even if you do not smoke.

Histological subtypes of lung cancer are small cell, and then non-small cell including large cell, squamous cell, and adenocarcinoma. Today, about half of lung cancers can be reclassified based on oncogenic driver mutations, where the most common are *KRAS* (almost 25%), *EGFR*, and *ALK*. The distribution is slightly different depending on smoking status - for instance among never-smokers, *EGFR* is more common (almost 50%).

A decade ago, it was discovered that the efficacy of the EGFR inhibitor gefitinib depended on whether a patient had an *EGFR* driver mutation [[Lynch 2004]]. This discovery re-framed the way we think about targeting therapies to individual patients. When it was subsequently discovered that translocations creating an *EML4*-*ALK* fusion gene are a common driver of non-small-cell lung cancer [[Soda 2007]], it became possible to target ALK inhibitors to patients with *ALK* driver mutations, motivating the clinical trial that we read about for today [[Kwak 2010]].

### [Dr. A. John Iafrate](http://www.massgeneral.org/pathology/research/researchlab.aspx?id=1304)

Genetic damage contributing to cancer can be divided into two categories:

+ Proto-oncogenes, which dominantly promote cell growth
+ Tumor suppressors, which inhibit cell growth and whose loss-of-function is usually recessive, though a few are haploinsufficient

When analyzing tumor genomes, one must separate two categories of mutation:

+ **Driver mutations** are directly responsible for tumor growth, either activating oncogenes or inactivating tumor suppressors. It is thought there are ~10 per tumor.
+ **Passenger mutations** are random mutations in tumor cells that do not contribute to cell proliferation. There are thousands per tumor.

There are about 1000 genes for which there is some evidence of involvement in cancer. Of these there are maybe 10 for which there exists a drug that is standard of care, whose adminstration depends on that status of that gene (e.g. *HER2*, *EGFR*). 

Crizotinib is a "potent and selective ATP competitive oral inhibitor of MET, ALK, and ROS1 kinases and their oncogenic variants". To quickly screen for tumors with *EML4*-*ALK* mutations, Dr. Iafrate's clinic uses a FISH assay where they have a red-labeled probe mapping a few hundred kb upstream of *ALK*, and a green-labeled probe mapping to the *ALK* gene itself. In a wild-type genome, the red and green colocalize, yielding yellow dots; in *ALK* translocation-positive tumors, the two regions are separated and so you get separate green and red dots. This is currently the only test of its kind that is FDA-approved as a diagnostic tool.

The challenges in running such a diagnostic assay are considerable. For instance, many biopsies that pathology receives only contain a small fraction of tumor and are mostly normal tissue surrounding the tumor. Thus, the test needs analytical sensitivity down to 5% tumor content. And this has to be done on FFPE tissue, in a 2-week turnaround time in a CLIA lab in a way that can be recorded in the patient's medical record. And then the clinical utility of all this has to be proven, because at present insurance companies almost categorically refuse to pay for it. There are a handful of specific instances where targeted sequencing of an individual gene has been demonstrated to be of clinical utility, but the relevance of sequencing to treatment has never been firmly established on a genome- or exome-wide scale, so it is still not possible to do a tumor exome and bill it to insurance.

We now know that many of the same oncogenes act as drivers in a lot of different histological tumor types [[Dias-Santagata 2010]]. This has motivated a large effort called NCI-MATCH which is testing the possibility of doing sequencing to match patients to therapies. The regulatory challenges involved in trying to establish a new test to guide therapy are considerable and include:

+ FDA - does the test work?
+ CMS - is there clinical utility? should insurance pay for it?
+ AMA - do doctors know how to use the test?
+ CLIA - do labs know how to run the test?

They have now launched a targeted sequencing platform which includes coverage of all exons of about 50 genes, plus specific domains of some other genes (e.g. only the kinase domain of *ALK*). So far it has been possible to detect at least one driver mutation in >85% of samples.

Tumors are genetically heterogeneous. Among SNVs, an *initiating* driver mutation is usually fixed among tumor cells, but there are also *progression* driver mutations which are mosaic across the tumor. Among gene amplifications, the **tandem duplications** (called "HSR amplicons") are often fixed, whereas plasmid-like mini chromosomes called **double minutes** are *always* mosaic. These double minutes include *EGFR* in glioblastoma, and *NMYC* in neuroblastoma. These often appear in extreme copy number - one glioblastoma cell might have a double minute containing thousands of copies of *EGFR*.

Structural variants in tumor genomes can be detected via a few methods:

+ Immunohistochemistry is sometimes possible, depending on the availability of antibodies with sufficient specificity. It is a qualitative analysis.
+ FISH is technically challenging and requires experts to review the data. It is not very scalable or multiplexable.
+ RT-PCR is easy to do, but requires that you know the sequences on either side of the proposed translocation. This is a problem because there are tens of different partners that can fuse with *ALK* to create an oncogenic driver.

In addition to *ALK*, other rearrangements have been demonstrated as important in lung cancer: *ROS1* [[Rikova 2007]], *NTRK1* [[Vaishnavi 2013]], *FGFR* [[Wu 2013]]. In some cases, the genes being fused are already pretty near to each other in the genome, such that FISH cannot discrmininate translocated and wild-type genomes. Therefore they've developed an anchored multiplex PCR method that is basically the same thing as 5'RACE. It lets you PCR-amplify with only 1 primer (for instance, if you know it's *ALK* but you don't know what gene it fused with) to prep a library ready for Illumina sequencing. Using this method, they can find translocations. Before considering them as candidate driver mutations, they first check whether they are in-frame (as frameshift translocations could not be oncogenic drivers). Other labs have done similar things, and the list of translocations involved in cancer is growing rapidly [[Stransky 2014]].

When you use this method and identify a novel translocation whose role in cancer has not yet been established, how do you convince yourself that the mutation is a driver and not a passenger? This is a remaining question that they are still working on answering.

How do fusions arise? Some of it is clearly just bad luck. Environmental exposure to radiation increases double-strand breaks and can also contribute to risk - they recently saw a novel fusion protein in an individual who had been exposed to radiation at Chernobyl.

An ongoing challenge is managing the large volume of genomic data required in order to make genomically informed decisions on patient care. This requires:

+ a core competency in bioinformatics
+ a knowledge base of known associations / published data.
+ a way of efficiently feeding data from the lab into the bioinformatics team, and feeding the knowledge base back into the lab
+ a way of communicating the results to the physician/patient. Currently this is done as a static report.

They are currently building a hierarchy of actionability in their cancer knowledge base. 

#### Q&A

Q. In this class we've met many Mendelian disease patients who have germline mutations and were able to undergo diagnostic sequencing even though their disease is untreatable. Why is cancer any different, such that insurance companies can refuse to pay for sequencing on the basis that there is no clinical utility?

A. In fact, the problem is not unique to cancer - insurance companies often refuse to pay for germline sequencing too.

Q. You said that initaiting driver mutations are often fixed within a tumor. Isn't that just the same as saying that when we see a mutation that's fixed, we assume that it was involved in initiating the tumor and so we call it an "initiating driver mutation"?

A. Yes and no; that sounds like you're applying this rule to the analysis of new data, which is perfectly valid - but when we say "initiating driver mutation" we are particularly referring to mutations that have *already* been seen in thousands of other patients and thus are well-established to be drivers.

Q. Once you have identified a driver mutation and you have a drug for that, how comfortable can you feel in prescribing that drug to patients who also have that driver mutation but in a different histological tumor type?

A. That's an area of ongoing research. We would definitely test that out in the context of a clinical trial, but we wouldn't feel comfortable enough to just prescribe it off-label. For instance there is a trial going on to treat patients with *ALK* with crizotinib.

Q. You mentioned a patient with an unusual translocation who had been exposed to radiation at Chernobyl. Is there any evidence that  the levels of radiation that people encounter as, say, flight attendants, are clinically relevant?

A. No, there is no evidence that those levels of radiation exposure are clinically relevant. There have been some studies of radon exposure in youth in mining country, but those are heavily confounded by the fact that those youth are almost always smokers.

### Journal club: [Kwak 2010]

Non-small cell lung cancer (NSCLC) is about 85% of all lung cancer. About 2-7% of NSCLC have an *ALK* translocation. Pfizer's crizotinib was first established as being effective against *ALK*-positive cancer cell lines in culture [[Christensen 2007], [McDermott 2008]]. It then moved on to a phase 1 clinical trial. They used FISH (as described above) to identify patients whose tumors had *ALK* translocations. They then began with a dose escalation study from 50 mg/day to 300 mg/day. The people at 300 mg/day had fatigue, so they backed off to 250 mg/day as the tolerated dose. They then treated 82 patients and about 60% had >30% tumor shrinkage. Under the previous standard of care - single agent chemotherapy - only 5-10% of patients would be expected to have >30% tumor shrinkage. So the result in this trial was quite remarkable.

#### Some notes

This was an expanded cohort study with no control group. They later published a retrospective study compared the treated individuals in this study to untreated individuals with *ALK* translocations at different sites [[Shaw 2011]]. And it was not until after Phase 3 trials [[Shaw 2013], [Solomon 2014]] that this drug received FDA approval.

There have been more recent trials of crizotinib for other translocations such as *ROS1* [[Shaw 2014b]].

#### Q&A

Q. This was an "expanded cohort study" tacked onto a Phase 1. How does one get approval to start such a study? And how are the results in this trial looked upon by drug companies and by FDA? 

At the time, this mechanism was relatively rare, but it is very common practice now. An expanded cohort study is a way to move directly from phase 1 into getting preliminary data on the drug's efficacy in a patient population of interest before moving on to a phase 2/3.

### [Dr. Alice Shaw](http://www.massgeneral.org/doctors/doctor.aspx?ID=17279) part 2 - drug resistance

#### Drug resistance

Lung cancer patients with *ALK* rearrangements tend to be never-smokers and are younger, typically in their 50s, whereas non-*ALK* lung cancer patients are usually 65+. Crizotinib has proven to be incredibly effective in these patients. However, patients who have a dramatic response 8 months after crizotinib often have regression by, say, 34 months, and the new tumors at that time are crizotinib-resistant.

We therefore try to study these patients to figure out what has changed in the tumor to make it resistant to crizotinib. This has led to idenfification of an L1196M "gatekeeper" mutation, and another C1156Y mutation, in *ALK* which block binding of crizotinib [[Choi 2010]]. The "gatekeeper" is the most common, but several others have now been identified [[Lovly & Pao 2012]]. Only about 1/3 of patients develop resistance mutations. A next generation of chemically distinct ALK inhibitors have now entered clinical trials, and some are even FDA-approved for crizotinib-resistant tumors. The new drug ceritinib is about 10x more potent than crizotinib and has shown very impressive results, including in crizotinib-resistant patients, in an expanded cohort study [[Shaw 2014a]]. In fact, it is effective against crizotinib-resistant tumors even in cases where they were unable to identify a resistance mutation in *ALK*. Such second generation ALK inhibitors are now a standard of care after patients develop crizotinib resistance. Ceritinib received FDA approval [in April 2014](http://www.fda.gov/NewsEvents/Newsroom/PressAnnouncements/ucm395299.htm).

People are now beginning to identify tumors that have developed mutations that confer resistance to ceritinib - such as *ALK*  G1202R [[Friboulet 2014]]. G1202R seems to make tumors resistant to all known ALK inhibitors, except for a new Pfizer experimental compound currently in phase 1 [[NCT01970865](https://clinicaltrials.gov/ct2/show/NCT01970865)] called PF-06463922. That compound is blood brain barrier permeable, which is promising for treating metastases in the brain, though it also poses a potential liability of cognitive or psychiatric side effects [[Awad & Shaw 2014], [Zou 2015]].

In fact, it is turning out that each ALK inhibitor is associated with its own unique constellation of resistance mutations that develop [[Katayama 2012], [Katayama 2014]]. It is now becoming possible to choose the right ALK inhibitor for the right patient based on their *ALK* genotype, and to use multiple different ALK inhibitors in serial as different mutations develop. In a subset of cases, EGFR expression also appears to compensate for ALK inhibition, so combination therapy with EGFR inhibitors and ALK inhibitors can be effective. Recent work with screening molecules in different combinations in cell culture has helped to identify "bypass mechanisms" by which tumors become resistant, and how to overcome this resistance [[Crystal 2014]]. For instance, sometimes MAPK or SRC pathways are activated in order to achieve resistance to ALK inhibitors. Thus it is becoming possible to design targeted combination therapies for individual patients based on their genotypes.

#### Q&A

Q. Is surgery ever indicated?

A. Only in a minority of NSCLC patients. NSCLC is more often diagnosed after metastasis, at which point surgery is no longer an option; all of the drugs and studies we've discussed today are focused on this group of metastatic patients.

[Kwak 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20979469 "Kwak EL, Bang YJ, Camidge DR, Shaw AT, Solomon B, Maki RG, Ou SH, Dezube BJ, Jänne PA, Costa DB, Varella-Garcia M, Kim WH, Lynch TJ, Fidias P, Stubbs H, Engelman JA, Sequist LV, Tan W, Gandhi L, Mino-Kenudson M, Wei GC, Shreeve SM, Ratain MJ, Settleman J, Christensen JG, Haber DA, Wilner K, Salgia R, Shapiro GI, Clark JW, Iafrate AJ. Anaplastic lymphoma kinase inhibition in non-small-cell lung cancer. N Engl J Med. 2010 Oct 28;363(18):1693-703. doi: 10.1056/NEJMoa1006448. Erratum in: N Engl J Med. 2011 Feb 10;364(6):588. PubMed PMID: 20979469; PubMed Central PMCID: PMC3014291."

[Lynch 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15118073 "Lynch TJ, Bell DW, Sordella R, Gurubhagavatula S, Okimoto RA, Brannigan BW, Harris PL, Haserlat SM, Supko JG, Haluska FG, Louis DN, Christiani DC, Settleman  J, Haber DA. Activating mutations in the epidermal growth factor receptor underlying responsiveness of non-small-cell lung cancer to gefitinib. N Engl J Med. 2004 May 20;350(21):2129-39. Epub 2004 Apr 29. PubMed PMID: 15118073."

[Soda 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17625570 "Soda M, Choi YL, Enomoto M, Takada S, Yamashita Y, Ishikawa S, Fujiwara S, Watanabe H, Kurashina K, Hatanaka H, Bando M, Ohno S, Ishikawa Y, Aburatani H, Niki T, Sohara Y, Sugiyama Y, Mano H. Identification of the transforming EML4-ALK fusion gene in non-small-cell lung cancer. Nature. 2007 Aug 2;448(7153):561-6. Epub 2007 Jul 11. PubMed PMID: 17625570."

[Dias-Santagata 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20432502 "Dias-Santagata D, Akhavanfard S, David SS, Vernovsky K, Kuhlmann G, Boisvert SL, Stubbs H, McDermott U, Settleman J, Kwak EL, Clark JW, Isakoff SJ, Sequist LV, Engelman JA, Lynch TJ, Haber DA, Louis DN, Ellisen LW, Borger DR, Iafrate AJ. Rapid targeted mutational analysis of human tumours: a clinical platform to guide personalized cancer medicine. EMBO Mol Med. 2010 May;2(5):146-58. doi: 10.1002/emmm.201000070. PubMed PMID: 20432502; PubMed Central PMCID: PMC3377316."

[Rikova 2007]: http://www.ncbi.nlm.nih.gov/pubmed/18083107 "Rikova K, Guo A, Zeng Q, Possemato A, Yu J, Haack H, Nardone J, Lee K, Reeves  C, Li Y, Hu Y, Tan Z, Stokes M, Sullivan L, Mitchell J, Wetzel R, Macneill J, Ren JM, Yuan J, Bakalarski CE, Villen J, Kornhauser JM, Smith B, Li D, Zhou X, Gygi SP, Gu TL, Polakiewicz RD, Rush J, Comb MJ. Global survey of phosphotyrosine signaling identifies oncogenic kinases in lung cancer. Cell. 2007 Dec 14;131(6):1190-203. PubMed PMID: 18083107."

[Wu 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23558953 "Wu YM, Su F, Kalyana-Sundaram S, Khazanov N, Ateeq B, Cao X, Lonigro RJ, Vats  P, Wang R, Lin SF, Cheng AJ, Kunju LP, Siddiqui J, Tomlins SA, Wyngaard P, Sadis  S, Roychowdhury S, Hussain MH, Feng FY, Zalupski MM, Talpaz M, Pienta KJ, Rhodes  DR, Robinson DR, Chinnaiyan AM. Identification of targetable FGFR gene fusions in diverse cancers. Cancer Discov. 2013 Jun;3(6):636-47. doi: 10.1158/2159-8290.CD-13-0050. Epub 2013 Apr 4. PubMed PMID: 23558953; PubMed Central PMCID: PMC3694764."

[Vaishnavi 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24162815 "Vaishnavi A, Capelletti M, Le AT, Kako S, Butaney M, Ercan D, Mahale S, Davies KD, Aisner DL, Pilling AB, Berge EM, Kim J, Sasaki H, Park SI, Kryukov G, Garraway LA, Hammerman PS, Haas J, Andrews SW, Lipson D, Stephens PJ, Miller VA,  Varella-Garcia M, Jänne PA, Doebele RC. Oncogenic and drug-sensitive NTRK1 rearrangements in lung cancer. Nat Med. 2013 Nov;19(11):1469-72. doi: 10.1038/nm.3352. Epub 2013 Oct 27. PubMed PMID: 24162815; PubMed Central PMCID: PMC3823836."

[Stransky 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25204415 "Stransky N, Cerami E, Schalm S, Kim JL, Lengauer C. The landscape of kinase fusions in cancer. Nat Commun. 2014 Sep 10;5:4846. doi: 10.1038/ncomms5846. PubMed PMID: 25204415; PubMed Central PMCID: PMC4175590."

[Christensen 2007]: http://www.ncbi.nlm.nih.gov/pubmed/18089725 "Christensen JG, Zou HY, Arango ME, Li Q, Lee JH, McDonnell SR, Yamazaki S, Alton GR, Mroczkowski B, Los G. Cytoreductive antitumor activity of PF-2341066, a novel inhibitor of anaplastic lymphoma kinase and c-Met, in experimental models of anaplastic large-cell lymphoma. Mol Cancer Ther. 2007 Dec;6(12 Pt 1):3314-22.  PubMed PMID: 18089725."

[McDermott 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18451166 "McDermott U, Iafrate AJ, Gray NS, Shioda T, Classon M, Maheswaran S, Zhou W, Choi HG, Smith SL, Dowell L, Ulkus LE, Kuhlmann G, Greninger P, Christensen JG, Haber DA, Settleman J. Genomic alterations of anaplastic lymphoma kinase may sensitize tumors to anaplastic lymphoma kinase inhibitors. Cancer Res. 2008 May 1;68(9):3389-95. doi: 10.1158/0008-5472.CAN-07-6186. PubMed PMID: 18451166."

[Shaw 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21933749/ "Shaw AT, Yeap BY, Solomon BJ, Riely GJ, Gainor J, Engelman JA, Shapiro GI, Costa DB, Ou SH, Butaney M, Salgia R, Maki RG, Varella-Garcia M, Doebele RC, Bang YJ, Kulig K, Selaru P, Tang Y, Wilner KD, Kwak EL, Clark JW, Iafrate AJ, Camidge  DR. Effect of crizotinib on overall survival in patients with advanced non-small-cell lung cancer harbouring ALK gene rearrangement: a retrospective analysis. Lancet Oncol. 2011 Oct;12(11):1004-12. doi: 10.1016/S1470-2045(11)70232-7. Epub 2011 Sep 18. PubMed PMID: 21933749; PubMed Central PMCID: PMC3328296."

[Shaw 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23724913 "Shaw AT, Kim DW, Nakagawa K, Seto T, Crinó L, Ahn MJ, De Pas T, Besse B, Solomon BJ, Blackhall F, Wu YL, Thomas M, O'Byrne KJ, Moro-Sibilot D, Camidge DR, Mok T, Hirsh V, Riely GJ, Iyer S, Tassell V, Polli A, Wilner KD, Jänne PA. Crizotinib versus chemotherapy in advanced ALK-positive lung cancer. N Engl J Med. 2013 Jun 20;368(25):2385-94. doi: 10.1056/NEJMoa1214886. Epub 2013 Jun 1. PubMed PMID: 23724913."

[Shaw 2014b]: http://www.ncbi.nlm.nih.gov/pubmed/25264305 "Shaw AT, Ou SH, Bang YJ, Camidge DR, Solomon BJ, Salgia R, Riely GJ, Varella-Garcia M, Shapiro GI, Costa DB, Doebele RC, Le LP, Zheng Z, Tan W, Stephenson P, Shreeve SM, Tye LM, Christensen JG, Wilner KD, Clark JW, Iafrate AJ. Crizotinib in ROS1-rearranged non-small-cell lung cancer. N Engl J Med. 2014  Nov 20;371(21):1963-71. doi: 10.1056/NEJMoa1406766. Epub 2014 Sep 27. PubMed PMID: 25264305; PubMed Central PMCID: PMC4264527."

[Solomon 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25470694 "Solomon BJ, Mok T, Kim DW, Wu YL, Nakagawa K, Mekhail T, Felip E, Cappuzzo F,  Paolini J, Usari T, Iyer S, Reisman A, Wilner KD, Tursi J, Blackhall F; PROFILE 1014 Investigators. First-line crizotinib versus chemotherapy in ALK-positive lung cancer. N Engl J Med. 2014 Dec 4;371(23):2167-77. doi: 10.1056/NEJMoa1408440. PubMed PMID: 25470694."

[Choi 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20979473 "Choi YL, Soda M, Yamashita Y, Ueno T, Takashima J, Nakajima T, Yatabe Y, Takeuchi K, Hamada T, Haruta H, Ishikawa Y, Kimura H, Mitsudomi T, Tanio Y, Mano  H; ALK Lung Cancer Study Group. EML4-ALK mutations in lung cancer that confer resistance to ALK inhibitors. N Engl J Med. 2010 Oct 28;363(18):1734-9. doi: 10.1056/NEJMoa1007478. PubMed PMID: 20979473."

[Lovly & Pao 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22323827 "Lovly CM, Pao W. Escaping ALK inhibition: mechanisms of and strategies to overcome resistance. Sci Transl Med. 2012 Feb 8;4(120):120ps2. doi: 10.1126/scitranslmed.3003728. PubMed PMID: 22323827."

[Shaw 2014a]: http://www.ncbi.nlm.nih.gov/pubmed/24670165 "Shaw AT, Kim DW, Mehra R, Tan DS, Felip E, Chow LQ, Camidge DR, Vansteenkiste  J, Sharma S, De Pas T, Riely GJ, Solomon BJ, Wolf J, Thomas M, Schuler M, Liu G,  Santoro A, Lau YY, Goldwasser M, Boral AL, Engelman JA. Ceritinib in ALK-rearranged non-small-cell lung cancer. N Engl J Med. 2014 Mar 27;370(13):1189-97. doi: 10.1056/NEJMoa1311107. PubMed PMID: 24670165; PubMed Central PMCID: PMC4079055."

[Friboulet 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24675041 "Friboulet L, Li N, Katayama R, Lee CC, Gainor JF, Crystal AS, Michellys PY, Awad MM, Yanagitani N, Kim S, Pferdekamper AC, Li J, Kasibhatla S, Sun F, Sun X,  Hua S, McNamara P, Mahmood S, Lockerman EL, Fujita N, Nishio M, Harris JL, Shaw AT, Engelman JA. The ALK inhibitor ceritinib overcomes crizotinib resistance in non-small cell lung cancer. Cancer Discov. 2014 Jun;4(6):662-73. doi: 10.1158/2159-8290.CD-13-0846. Epub 2014 Mar 27. PubMed PMID: 24675041; PubMed Central PMCID: PMC4068971."

[Katayama 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22277784 "Katayama R, Shaw AT, Khan TM, Mino-Kenudson M, Solomon BJ, Halmos B, Jessop NA, Wain JC, Yeo AT, Benes C, Drew L, Saeh JC, Crosby K, Sequist LV, Iafrate AJ,  Engelman JA. Mechanisms of acquired crizotinib resistance in ALK-rearranged lung  Cancers. Sci Transl Med. 2012 Feb 8;4(120):120ra17. doi: 10.1126/scitranslmed.3003316. Epub 2012 Jan 25. PubMed PMID: 22277784; PubMed Central PMCID: PMC3385512."

[Katayama 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25228534 "Katayama R, Friboulet L, Koike S, Lockerman EL, Khan TM, Gainor JF, Iafrate AJ, Takeuchi K, Taiji M, Okuno Y, Fujita N, Engelman JA, Shaw AT. Two novel ALK mutations mediate acquired resistance to the next-generation ALK inhibitor alectinib. Clin Cancer Res. 2014 Nov 15;20(22):5686-96. doi: 10.1158/1078-0432.CCR-14-1511. Epub 2014 Sep 16. PubMed PMID: 25228534; PubMed Central PMCID: PMC4233168."

[Crystal 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25394791 "Crystal AS, Shaw AT, Sequist LV, Friboulet L, Niederst MJ, Lockerman EL, Frias RL, Gainor JF, Amzallag A, Greninger P, Lee D, Kalsy A, Gomez-Caraballo M, Elamine L, Howe E, Hur W, Lifshits E, Robinson HE, Katayama R, Faber AC, Awad MM, Ramaswamy S, Mino-Kenudson M, Iafrate AJ, Benes CH, Engelman JA. Patient-derived  models of acquired resistance can identify effective drug combinations for cancer. Science. 2014 Dec 19;346(6216):1480-6. doi: 10.1126/science.1254721. Epub 2014 Nov 13. PubMed PMID: 25394791; PubMed Central PMCID: PMC4388482."

[Awad & Shaw 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25322323/ "Awad MM, Shaw AT. ALK inhibitors in non-small cell lung cancer: crizotinib and beyond. Clin Adv Hematol Oncol. 2014 Jul;12(7):429-39. PubMed PMID: 25322323; PubMed Central PMCID: PMC4215402."

[Zou 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25733882 "Zou HY, Li Q, Engstrom LD, West M, Appleman V, Wong KA, McTigue M, Deng YL, Liu W, Brooun A, Timofeevski S, McDonnell SR, Jiang P, Falk MD, Lappin PB, Affolter T, Nichols T, Hu W, Lam J, Johnson TW, Smeal T, Charest A, Fantin VR. PF-06463922 is a potent and selective next-generation ROS1/ALK inhibitor capable  of blocking crizotinib-resistant ROS1 mutations. Proc Natl Acad Sci U S A. 2015 Mar 17;112(11):3493-8. doi: 10.1073/pnas.1420785112. Epub 2015 Mar 2. PubMed PMID: 25733882; PubMed Central PMCID: PMC4371934."


