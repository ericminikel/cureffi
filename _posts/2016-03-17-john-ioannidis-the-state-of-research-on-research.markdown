---
layout: post
title:  "John Ioannidis: the state of research on research"
date:   2016-03-17 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2016/03/ioannidis-talk-at-broad-thumbnail.png
summary200: "Notes from a guest lecture at the Broad Institute by Dr. John Ioannidis, who champions the idea that most research findings reported today are false, but that the system can and should be fixed."
---

*Today [John Ioannidis](https://med.stanford.edu/profiles/john-ioannidis) visited the Broad Institute and gave a talk entitled "Meta-research: where do we stand in research on research?" Dr. Ioannidis is most famous for his paper "Why most published research findings are false" [[Ioannidis 2005b]] and he directs the Meta-Research Innovation Center at Stanford (METRICS). With his permission, I am sharing my notes from the talk in this blog post.*

![](/media/2016/03/ioannidis-talk-at-broad.png)

**Meta-research** is "research on how to perform, communicate, verify, evaluate, and reward science," including theoretical and empirical approaches. Dr. Ioannidis wrote a recent review on the subject [[Ioannidis 2015a]]. Although replication has been important since the beginning of research, there has been a particular rise in interest in replication and reproducibility over the past few years. In a recent effort to text-mine *P* values out of papers, Dr. Ioannidis found that 96% of biomedical research papers do report significant results [[Chavalarias 2016]]. And while some of these are replications, the majority are novel findings, so we're being asked to believe that 96% of new alternative hypotheses that get tested and reported are true. The proportion of claims that are statistically significant is higher in social sciences than in physical sciences, with the highest proportion being seen in psychology [[Fanelli 2010]]. 

What are some underlying drivers of the high false positive rate in clinical medicine and biomedical research?

+ Solo, siloed investigator limited to small sample sizes
+ No pre-registration of hypotheses being tested
+ Post-hoc cherry picking of hypotheses with best *P* values
+ Only requiring *P* < .05
+ No replication
+ No data sharing

There are large differences between fields in research practices, standards, culture, and so on &mdash; these were covered in detail in *Why most published research findings are false* [[Ioannidis 2005b]].

Here are some empirical findings demonstrating the false positive rate in science, its causes, and its consequences:

+ Virtually all environmental exposures are significantly correlated with all other environmental exposures, so there is pervasive confounding in studies of risk factors [[Ioannidis 2009], [Patel & Ioannidis 2014]].
+ Although many journals have adopted nominal policies requiring deposition of data and methods and so on, vanishingly few articles actually comply. In a random sample of 441 papers published since 2000, 0 articles shared 100% of the underlying data, and only 1 article shared the full details of the experimental methods [[Iqbal 2016]]. In a study of 18 microarray gene expression articles published in *Nature Genetics*, they found that they were able to fully repeat (get same result using same data and same methods) only 2 out of 18 studies [[Ioannidis 2009]]. 
+ The average neuroscience research paper has only 20% statistical power to test the hypothesis it is testing [[Button 2013]]. There are similar findings in economics.
+ There is an enormous lag time in acceptance of new hypotheses that impact patients. Of the most highly cited (>1000 citations) research papers in translational science, on average, the first published claim of the same hypothesis occurred 24 years before that most highly cited paper, and about a third of the highly cited papers (13/32) were later refuted [[Contopoulos-Ioannidis 2008]].
+ The replication rate for candidate gene studies is estimated to be just 1.2% [[Ioannidis 2011]].
+ Outright fraud appears to be uncommon. Obviously this is hard to estimate, and depends on how you ask the question, for instance, do you ask people if they themselves have committed fraud, or do you ask them if they know others who have committed fraud. Overall, research led by Dan Finelli has estimated that only 1-2% of scientists have committed fraud. However, they believe that more like 80% of scientists have committed "questionable research practices".
+ Depending on the field, somewhere from one third to two thirds of reported results are reproduced in large-scale replication efforts (e.g. the Open Science Collaborative's effort in psychology research) [[Open Science Collaboration 2015]]. Even when research findings do end up being reproduced, the effect size is, on average, lower in larger replication studies than in initial, highly cited studies &mdash; see for instance a study of biomarkers [[Ioannidis & Panagiotou 2011]].

There are currently countervailing forces in biomedicine. On one hand, there is a movement towards greater openness and emphasis on reproducibility, leading to these sorts of large collaborative efforts and more requirements for openness. On the other hand, there is also a movement towards more research occurring in the private sector, with findings ending up as trade secrets that are never disclosed to the public [[Ioannidis 2015b]].

Several different approaches are needed to reduce the false positive rate in published research [[Ioannidis 2014]].

+ Establish a culture of large-scale collaboration, as has been done in genomics
+ Require pre-registration not just of *studies*, but of observational datasets. See discussion in [[Ioannidis 2012]]. The idea is that to interpret a scientist's published research you need to know how much data they had sitting around and how many possible hypotheses they might therefore have chosen to test, and with what power.
+ Better and stricter guidelines for statistical methods and for blinding of researchers.

There are different possible levels of registration requirements for studies:

+ Level 0: no registration
+ Level 1: registration of dataset
+ Level 2: registration of protocol
+ Level 3: registration of analysis plan
+ Level 4: registration of analysis plan and raw data
+ Level 5: open live streaming

The open live streaming option has actually been implemented, for instance when Dr. Rosie Redfield of UBC [live blogged](http://old.ubyssey.ca/news/arsenic-and-new-media778/) her refutation of the claim that there were alien bacteria on earth that used arsenic instead of phosphorous in their DNA backbone.

Bias due to conflict of interest may also still be an issue. In published non-inferiority trials for clinical interventions, 55/57 studies found that the sponsor's product was not inferior [[Flacco 2015]].

Finally, it is necessary to reform the incentives of biomedical research &mdash; Dr. Ioannidis has published a proposal for the "PQRST" system [[Ioannidis & Khoury 2014]], and specific "points" that should be awarded for different achievements [[Ioannidis 2014]].

#### Q&A at trainee luncheon

Q. (me) I think we've all developed certain defense mechanisms when we read the literature to make sure that we don't end up believing reported findings that are actually false. I want to tell you my heuristics and hear your thoughts on whether these are sensitive and specific. My process is that I am more likely to believe a paper the more of the following criteria it meets:

+ High prior (hypothesis seems likely to be true)
+ *P* < .001
+ Effect size > 50%
+ Done by an investigator who I trust
+ Research is from a feld with bulletproof methods and standards (e.g. GWAS)
+ Many orthogonal approaches are used to support the same conclusion

A. Overall these sound pretty good, however, I distrust large effects, because most real biological effects are small or tiny, whereas large effects are more likely to reflect bias. The Bradford Hill criteria for epidemiology are used to decide if things are credibly causal, and one of the original criteria was strong effect size. I am now working to eliminate this criterion, as it actually seems to be the reverse. We've also seen that reported effect sizes are larger in less reliable fields. In GWAS, for instance, which are highly reproducible, effect sizes by and large are tiny.

As for the other criteria: *P* values are meaningful in some fields, but not in others. In data science, all *P* values are small, but it doesn't tell you if an effect is causal or not. Prior is a good heuristic but can be hard to judge. Orthogonal approaches are useful, though it is not always clear how to triangulate between them.

My heuristic is, I think of what is the universe of potential analyses that might have been done? Could other teams have addressed it? For instance, for association of diabetes with cancer, there are about 10 published studies per type of cancer. But the denominator is enormous - there are thousands of investigators who have access to datasets in which they could have tested for an association. Similarly, in evaluating a clinical trial, I look up the number of registered trials with the same or similar hypothesis. If there are many trials and most are ongoing (whereas they'd have been forced to stop early if they had seen a clear benefit) then that rules out any large effect.

Q. Would it help if we can do a better job of making negative results widely known, for instance, by requiring that investigators disclose negative results from specific aims of funded grants, or by making it easier or more appealing to publish in journals specifically devoted to negative results?

A. Getting a better idea of the denominator, of how many people have tested the same hypothesis and gotten a negative result, would be huge. I'm not a fan of segregating negative results into separate journals because it implies that they are second-class citizens. There are instances where a negative result, especially early on when a hypothesis has not yet been widely tested, can have very large information entropy.

Q. How can we identify fraud and/or questionable research practices?

A. We did one study where we looked for extreme homogeneity between research studies on the same topic. A lot of people have done tests of heterogeneity, looking at the extreme right side of the distribution. We looked at the far left side, at studies whose results were suspiciously almost identical to each other. The most extreme example was 5 studies by the same PI, supposedly reporting beneficial effects of using hydroxyethyl starch in resuscitation in patient cohorts from different years (1990, 1992, etc.), and the studies had outcomes that were far more similar than would be expected even if the underlying hypothesis were true. They called the PI and asked him whether these were really different patient cohorts, and he insisted they were. A few years later, he was caught in a scandal and ended up retracting 50 papers, including these 5. So that was one instance where we used a statisical method to detect what turned out to be fraud. But fraud is quite rare in science. There are a few ways to identify questionable research practices, but most are limited by what information is presented. For instance, in some cases a paper will report an *F* statistic and a number of degrees of freedom, and you can determine that they do not match the reported *P* value.

Q. How could our system for funding science be reformed to improve incentives?

A. I think of it in three categories:

1. Blue sky science should be funded by government, because no entrepreneur would ever do that.
2. Applied and translational science &mdash; developing drugs &mdash; should be funded by entrepreneurs because they have the right incentives to reduce to practice and make sure they get to a therapeutic that actually works.
3. But then *testing* the drug that is developed by the entrepreneurs should be funded by the government, because at this stage, entrepreneurs have incentives to make their drug look effective no matter what, whereas the public interest is in making sure that only truly effective drugs get approved. 

Right now, government funds (1) and (2), and the private sector funds (3). Incentives are currently warped in stages (2) and (3).


[Ioannidis 2005b]: http://www.ncbi.nlm.nih.gov/pubmed/16060722/ "Ioannidis JP. Why most published research findings are false. PLoS Med. 2005 Aug;2(8):e124. Epub 2005 Aug 30. PubMed PMID: 16060722; PubMed Central PMCID: PMC1182327."

[Ioannidis 2005a]: http://www.ncbi.nlm.nih.gov/pubmed/16014596 "Ioannidis JP. Contradicted and initially stronger effects in highly cited clinical research. JAMA. 2005 Jul 13;294(2):218-28. PubMed PMID: 16014596."

[Ioannidis 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11600885 "Ioannidis JP, Ntzani EE, Trikalinos TA, Contopoulos-Ioannidis DG. Replication validity of genetic association studies. Nat Genet. 2001 Nov;29(3):306-9. PubMed  PMID: 11600885."

[Ioannidis 2015a]: http://www.ncbi.nlm.nih.gov/pubmed/26431313/ "Ioannidis JP, Fanelli D, Dunne DD, Goodman SN. Meta-research: Evaluation and Improvement of Research Methods and Practices. PLoS Biol. 2015 Oct 2;13(10):e1002264. doi: 10.1371/journal.pbio.1002264. eCollection 2015 Oct. PubMed PMID: 26431313; PubMed Central PMCID: PMC4592065."

[Chavalarias 2016]: http://www.ncbi.nlm.nih.gov/pubmed/26978209 "Chavalarias D, Wallach JD, Li AH, Ioannidis JP. Evolution of Reporting P Values in the Biomedical Literature, 1990-2015. JAMA. 2016 Mar 15;315(11):1141-8. doi: 10.1001/jama.2016.1952. PubMed PMID: 26978209."

[Fanelli 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20383332 "Fanelli D. "Positive" results increase down the Hierarchy of the Sciences. PLoS One. 2010 Apr 7;5(4):e10068. doi: 10.1371/journal.pone.0010068. PubMed PMID: 20383332; PubMed Central PMCID: PMC2850928."

[Ioannidis 2009]: http://www.ncbi.nlm.nih.gov/pubmed/20368180 "Ioannidis JP, Loy EY, Poulton R, Chia KS. Researching genetic versus nongenetic determinants of disease: a comparison and proposed unification. Sci Transl Med. 2009 Nov 18;1(7):7ps8. doi: 10.1126/scitranslmed.3000247. PubMed PMID: 20368180."

[Patel & Ioannidis 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24893084/ "Patel CJ, Ioannidis JP. Studying the elusive environment in large scale. JAMA. 2014 Jun 4;311(21):2173-4. doi: 10.1001/jama.2014.4129. PubMed PMID: 24893084; PubMed Central PMCID: PMC4110965."

[Iqbal 2016]: http://www.ncbi.nlm.nih.gov/pubmed/26726926 "Iqbal SA, Wallach JD, Khoury MJ, Schully SD, Ioannidis JP. Reproducible Research Practices and Transparency across the Biomedical Literature. PLoS Biol.  2016 Jan 4;14(1):e1002333. doi: 10.1371/journal.pbio.1002333. eCollection 2016 Jan. PubMed PMID: 26726926; PubMed Central PMCID: PMC4699702."

[Contopoulos-Ioannidis 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18772421 "Contopoulos-Ioannidis DG, Alexiou GA, Gouvias TC, Ioannidis JP. Medicine. Life cycle of translational research for medical interventions. Science. 2008 Sep 5;321(5894):1298-9. doi: 10.1126/science.1160622. PubMed PMID: 18772421."

[Ioannidis 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24656991 "Ioannidis JP, Munafò MR, Fusar-Poli P, Nosek BA, David SP. Publication and other reporting biases in cognitive sciences: detection, prevalence, and prevention. Trends Cogn Sci. 2014 May;18(5):235-41. doi: 10.1016/j.tics.2014.02.010. Epub 2014 Mar 18. Review. PubMed PMID: 24656991; PubMed Central PMCID: PMC4078993."

[Button 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23571845 "Button KS, Ioannidis JP, Mokrysz C, Nosek BA, Flint J, Robinson ES, Munafò MR. Power failure: why small sample size undermines the reliability of neuroscience.  Nat Rev Neurosci. 2013 May;14(5):365-76. doi: 10.1038/nrn3475. Epub 2013 Apr 10.  Erratum in: Nat Rev Neurosci. 2013 Jun;14(6):451. PubMed PMID: 23571845."

[Ioannidis 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21490505 "Ioannidis JP, Tarone R, McLaughlin JK. The false-positive to false-negative ratio in epidemiologic studies. Epidemiology. 2011 Jul;22(4):450-6. doi: 10.1097/EDE.0b013e31821b506e. PubMed PMID: 21490505."

[Ioannidis & Panagiotou 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21632484 "Ioannidis JP, Panagiotou OA. Comparison of effect sizes associated with biomarkers reported in highly cited individual articles and in subsequent meta-analyses. JAMA. 2011 Jun 1;305(21):2200-10. doi: 10.1001/jama.2011.713. PubMed PMID: 21632484."

[Open Science Collaboration 2015]: http://www.ncbi.nlm.nih.gov/pubmed/26315443 "Open Science Collaboration. PSYCHOLOGY. Estimating the reproducibility of psychological science. Science. 2015 Aug 28;349(6251):aac4716. doi: 10.1126/science.aac4716. PubMed PMID: 26315443."

[Ioannidis 2015b]: http://www.ncbi.nlm.nih.gov/pubmed/25688775 "Ioannidis JP. Stealth research: is biomedical innovation happening outside the peer-reviewed literature? JAMA. 2015 Feb 17;313(7):663-4. doi: 10.1001/jama.2014.17662. PubMed PMID: 25688775."

[Ioannidis 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22871867 "Ioannidis JP. The importance of potential studies that have not existed and registration of observational data sets. JAMA. 2012 Aug 8;308(6):575-6. doi: 10.1001/jama.2012.8144. PubMed PMID: 22871867."

[Ioannidis 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19174838 "Ioannidis JP, Allison DB, Ball CA, Coulibaly I, Cui X, Culhane AC, Falchi M, Furlanello C, Game L, Jurman G, Mangion J, Mehta T, Nitzberg M, Page GP, Petretto E, van Noort V. Repeatability of published microarray gene expression analyses. Nat Genet. 2009 Feb;41(2):149-55. doi: 10.1038/ng.295. Epub 2008 Jan 28. PubMed PMID: 19174838."

[Ebrahim 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25203082 "Ebrahim S, Sohani ZN, Montoya L, Agarwal A, Thorlund K, Mills EJ, Ioannidis JP. Reanalyses of randomized clinical trial data. JAMA. 2014 Sep 10;312(10):1024-32. doi: 10.1001/jama.2014.9646. Review. PubMed PMID: 25203082."

[Flacco 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25748073 "Flacco ME, Manzoli L, Boccia S, Capasso L, Aleksovska K, Rosso A, Scaioli G, De Vito C, Siliquini R, Villari P, Ioannidis JP. Head-to-head randomized trials are mostly industry sponsored and almost always favor the industry sponsor. J Clin Epidemiol. 2015 Jul;68(7):811-20. doi: 10.1016/j.jclinepi.2014.12.016. Epub  2015 Feb 7. Review. PubMed PMID: 25748073."

[Ioannidis & Khoury 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24911291/ "Ioannidis JP, Khoury MJ. Assessing value in biomedical research: the PQRST of  appraisal and reward. JAMA. 2014 Aug 6;312(5):483-4. doi: 10.1001/jama.2014.6932. PubMed PMID: 24911291; PubMed Central PMCID: PMC4687964."

[Ioannidis 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25334033 "Ioannidis JP. How to make more published research true. PLoS Med. 2014 Oct 21;11(10):e1001747. doi: 10.1371/journal.pmed.1001747. eCollection 2014 Oct. PubMed PMID: 25334033; PubMed Central PMCID: PMC4204808."

