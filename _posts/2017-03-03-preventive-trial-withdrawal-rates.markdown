---
layout: post
title:  "Preventive trial withdrawal rates"
date:   2017-03-03 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: 
summary200: "What's a reasonable assumption to make about what percentage of patients will not complete a preventive clinical trial?"
---

Recently I've been doing some thinking about the nuts and bolts of preventive clinical trials in genetic prion disease, and among other things, doing some power calculations. This led me to the following question: what is a reasonable withdrawal rate to assume in a clinical trial? In other words, what percent of people in a clinical trial either formally withdraw, or are lost to follow-up, or simply stop taking their assigned drugs, per year of the trial? This proved surprisingly hard to answer in either a quick Google search or a quick Google Scholar search, so I spent a few hours digging deep, and now I am reporting back.

Withdrawal rate must depend on a lot of different variables. How tolerable is the drug? How onerous are the clinical visits? What is the study population? How aggressive are the study investigators about following up? There's no doubt that different trials will have very different withdrawal rates, but I wanted at least a ballpark range to start from.

In my search for a reasonable number, I started out by looking at trials in neurodegenerative diseases. For example, the recently reported aducanumab trial in Alzheimer's saw 40 out of 165 people (24%) withdraw in the course of a 1-year trial [[Sevigny 2016]]. (Note that in this post I will use the term "withdraw" to include any reason for not completing the trial in compliance with the study regimen). But it occurred to me that symptomatic trials in neurodegeneration may not be the best comparison for what I want to model. I'm thinking about a preventive trial in healthy, completely asymptomatic people. Most Alzheimer's trials focus on people who already have dementia, which might make trial participation more onerous.

My next thought was to look specifically for preventive trials in asymptomatic people in neurological indications. I could only find two examples that were already completed and had reported results, though. One study, ADAPT, enrolled cognitively normal people age &ge;70 with a family history of Alzheimer's, and randomized them to celecoxib, naproxen, or placebo for one year [[ADAPT Research Group 2008]]. They had 411 of 2528 people (16%) withdraw. The other example I found was PRECREST, a study of creatine in pre-symptomatic people with a Huntington's disease mutation [[Rosas 2014]]. In that trial, 21 out of 64 people withdrew over only 6 months. The withdrawal rate was higher in the creatine group (13/32 withdrew) than placebo (8/32), perhaps due to tolerability issues, but any way you slice it, it's a pretty high withdrawal rate. I decided to convert everything to annual rates for comparison. If you calculate it as (21/64)/.5, that's a 65% annual withdrawal rate, but people who do biostatistics for clinical trials all use exponential models (you need to account for compounding), so the right formula is actually w = 1-exp(log(A)/t) where w is the withdrawal rate, A is the proportion of people who complete the trial, and t is the trial length. In this case, 1-exp(log(43/64)/.5) works out to a 55% annual withdrawal rate.

I couldn't find any more examples in neurology, so in a search for more data points, I cast further afield, and decided to also look at preventive trials in cardiology. Here's what I found, sorted by withdrawal rate low to high and including the above examples:

| category | trial | drug | how data are described | annual withdrawal rate | ref |
| ---- | ---- | ---- | ---- | ---- | ---- |
| cardiology | WOSCOPS | pravastatin | 6,695 randomized; cumulative withdrawal rate 25.2% (placebo) and 24.7% (drug) at year 4 | 6.9% | [Shepherd 1995] |
| cardiology | AFCAPS/TexCAPS | lovastatin | 6,605 randomized; 71% compliance in drug group, 63% in placebo group | 7.4% | [Downs 1998] |
| cardiology | OSLER | evolocumab | 4,465 randomized; 213+101 of 2976 on drug discontinued or withdrew; 59 of 1489 on standard of care discontinued or withdrew; median follow-up was 11.1 months | 9.0% | [Sabatine 2015] |
| cardiology | JUPITER | rosuvastatin | 17,802 randomized; "at the time the study was terminated, 75% of participants were taking their study pills"; median follow-up was 1.9 years | 14.1% | [Ridker 2008] |
| neurology | ADAPT | celecoxib / naproxen | 2,528 randomized, 411 did not contribute to analyses for various reasons, 1 year trial | 16.3% | [ADAPT Research Group 2008] |
| cardiology | ODYSSEY LONG TERM | alirocumab | 2,341 randomized; 1113/1553 (drug) and 595/788 (placebo) completed 78 week trial | 19.0% | [Robinson 2015] |
| cardiology | NCT00607373 | mipomersen | 51 randomized; 6/34 (drug) and 0/17 (placebo) discontinued in 26-week trial | 22.1% | [Raal 2010] |
| neurology | PRECREST | creatine | 64 randomized, 43 completed 6 months | 54.9% | [Rosas 2014] |

As you can see, most of the cardiology examples are huge trials which used cardiac event endpoints. For comparison, though, I did include one rare disease drug, mipomersen, a subcutaneously delivered antisense oligonucleotide for people with homozygous *LDLR* mutations. That trial was brief (half a year) and had a biomarker endpoint (LDL cholesterol). You could imagine that possibly people with rare diseases might be more motivated to continue a trial and so would have a lower withdrawal rate, but this trial actually had the highest withdrawal rate of any cardiology trials considered here. 4 out of those 6 withdrawals were due to adverse events.

Although there's a wide variability in withdrawal rates here, this at least gives some sort of range to start from. Statins are just about as tolerable and easy to take as any drug, so it seems like ~7% is probably the bare minimum withdrawal rate one could expect in any trial. On the high end, the PRECREST trial shows you could lose half your patients in a year. When modeling a trial, it's probably best to consider a range of scenarios.


[WOSCOPS 1992]: https://www.ncbi.nlm.nih.gov/pubmed/1624967 "A coronary primary prevention study of Scottish men aged 45-64 years: trial design. The West of Scotland Coronary Prevention Study Group. J Clin Epidemiol. 1992 Aug;45(8):849-60. PubMed PMID: 1624967."

[Shepherd 1995]: https://www.ncbi.nlm.nih.gov/pubmed/7566020 "Shepherd J, Cobbe SM, Ford I, Isles CG, Lorimer AR, MacFarlane PW, McKillop JH, Packard CJ. Prevention of coronary heart disease with pravastatin in men with hypercholesterolemia. West of Scotland Coronary Prevention Study Group. N Engl J  Med. 1995 Nov 16;333(20):1301-7. PubMed PMID: 7566020."

[Downs 1997]: https://www.ncbi.nlm.nih.gov/pubmed/9264420 "Downs JR, Beere PA, Whitney E, Clearfield M, Weis S, Rochen J, Stein EA, Shapiro DR, Langendorfer A, Gotto AM Jr. Design & rationale of the Air Force/Texas Coronary Atherosclerosis Prevention Study (AFCAPS/TexCAPS). Am J Cardiol. 1997 Aug 1;80(3):287-93. PubMed PMID: 9264420."

[Downs 1998]: https://www.ncbi.nlm.nih.gov/pubmed/9613910 "Downs JR, Clearfield M, Weis S, Whitney E, Shapiro DR, Beere PA, Langendorfer  A, Stein EA, Kruyer W, Gotto AM Jr. Primary prevention of acute coronary events with lovastatin in men and women with average cholesterol levels: results of AFCAPS/TexCAPS. Air Force/Texas Coronary Atherosclerosis Prevention Study. JAMA.  1998 May 27;279(20):1615-22. PubMed PMID: 9613910."

[Freeman 2001]: https://www.ncbi.nlm.nih.gov/pubmed/11157685 "Freeman DJ, Norrie J, Sattar N, Neely RD, Cobbe SM, Ford I, Isles C, Lorimer AR, Macfarlane PW, McKillop JH, Packard CJ, Shepherd J, Gaw A. Pravastatin and the development of diabetes mellitus: evidence for a protective treatment effect  in the West of Scotland Coronary Prevention Study. Circulation. 2001 Jan 23;103(3):357-62. PubMed PMID: 11157685."

[Sever 2003]: https://www.ncbi.nlm.nih.gov/pubmed/12686036 "Sever PS, Dahlöf B, Poulter NR, Wedel H, Beevers G, Caulfield M, Collins R, Kjeldsen SE, Kristinsson A, McInnes GT, Mehlsen J, Nieminen M, O'Brien E, Ostergren J; ASCOT investigators.. Prevention of coronary and stroke events with  atorvastatin in hypertensive patients who have average or lower-than-average cholesterol concentrations, in the Anglo-Scandinavian Cardiac Outcomes Trial--Lipid Lowering Arm (ASCOT-LLA): a multicentre randomised controlled trial. Lancet. 2003 Apr 5;361(9364):1149-58. PubMed PMID: 12686036."

[Ridker 2008]: https://www.ncbi.nlm.nih.gov/pubmed/18997196 "Ridker PM, Danielson E, Fonseca FA, Genest J, Gotto AM Jr, Kastelein JJ, Koenig W, Libby P, Lorenzatti AJ, MacFadyen JG, Nordestgaard BG, Shepherd J, Willerson JT, Glynn RJ; JUPITER Study Group.. Rosuvastatin to prevent vascular events in men and women with elevated C-reactive protein. N Engl J Med. 2008 Nov  20;359(21):2195-207. doi: 10.1056/NEJMoa0807646. PubMed PMID: 18997196."

[ADAPT Research Group 2008]: https://www.ncbi.nlm.nih.gov/pubmed/18474729/ "ADAPT Research Group., Martin BK, Szekely C, Brandt J, Piantadosi S, Breitner  JC, Craft S, Evans D, Green R, Mullan M. Cognitive function over time in the Alzheimer's Disease Anti-inflammatory Prevention Trial (ADAPT): results of a randomized, controlled trial of naproxen and celecoxib. Arch Neurol. 2008 Jul;65(7):896-905. doi: 10.1001/archneur.2008.65.7.nct70006. PubMed PMID: 18474729; PubMed Central PMCID: PMC2925195."

[Raal 2010]: https://www.ncbi.nlm.nih.gov/pubmed/20227758 "Raal FJ, Santos RD, Blom DJ, Marais AD, Charng MJ, Cromwell WC, Lachmann RH, Gaudet D, Tan JL, Chasan-Taber S, Tribble DL, Flaim JD, Crooke ST. Mipomersen, an apolipoprotein B synthesis inhibitor, for lowering of LDL cholesterol concentrations in patients with homozygous familial hypercholesterolaemia: a randomised, double-blind, placebo-controlled trial. Lancet. 2010 Mar 20;375(9719):998-1006. doi: 10.1016/S0140-6736(10)60284-X. PubMed PMID: 20227758."

[Rosas 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24510496 "Rosas HD, Doros G, Gevorkian S, Malarick K, Reuter M, Coutu JP, Triggs TD, Wilkens PJ, Matson W, Salat DH, Hersch SM. PRECREST: a phase II prevention and biomarker trial of creatine in at-risk Huntington disease. Neurology. 2014 Mar 11;82(10):850-7. doi: 10.1212/WNL.0000000000000187. PubMed PMID: 24510496; PubMed Central PMCID: PMC3959748."

[Robinson 2015]: https://www.ncbi.nlm.nih.gov/pubmed/25773378 "Robinson JG, Farnier M, Krempf M, Bergeron J, Luc G, Averna M, Stroes ES, Langslet G, Raal FJ, El Shahawy M, Koren MJ, Lepor NE, Lorenzato C, Pordy R, Chaudhari U, Kastelein JJ; ODYSSEY LONG TERM Investigators.. Efficacy and safety  of alirocumab in reducing lipids and cardiovascular events. N Engl J Med. 2015 Apr 16;372(16):1489-99. doi: 10.1056/NEJMoa1501031. PubMed PMID: 25773378."

[Sabatine 2015]: https://www.ncbi.nlm.nih.gov/pubmed/25773607 "Sabatine MS, Giugliano RP, Wiviott SD, Raal FJ, Blom DJ, Robinson J, Ballantyne CM, Somaratne R, Legg J, Wasserman SM, Scott R, Koren MJ, Stein EA; Open-Label Study of Long-Term Evaluation against LDL Cholesterol (OSLER) Investigators.. Efficacy and safety of evolocumab in reducing lipids and cardiovascular events. N Engl J Med. 2015 Apr 16;372(16):1500-9. doi: 10.1056/NEJMoa1500858. PubMed PMID: 25773607."

[Sevigny 2016]: https://www.ncbi.nlm.nih.gov/pubmed/27582220 "Sevigny J, Chiao P, Bussière T, Weinreb PH, Williams L, Maier M, Dunstan R, Salloway S, Chen T, Ling Y, O'Gorman J, Qian F, Arastu M, Li M, Chollate S, Brennan MS, Quintero-Monzon O, Scannevin RH, Arnold HM, Engber T, Rhodes K, Ferrero J, Hang Y, Mikulskis A, Grimm J, Hock C, Nitsch RM, Sandrock A. The antibody aducanumab reduces Aβ plaques in Alzheimer's disease. Nature. 2016 Sep 1;537(7618):50-6. doi: 10.1038/nature19323. PubMed PMID: 27582220."


