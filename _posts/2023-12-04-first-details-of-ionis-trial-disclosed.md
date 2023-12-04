---
layout: post
title:  "First details of Ionis trial disclosed"
date:   2023-12-04 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: 
summary200: "56 symptomatic participants, double crossover with placebo, 24 weeks, primary endpoint adverse events, secondary endpoints of pharmacokinetics & PrP lowering."
---

Two months ago, Ionis Pharmaceuticals [announced](/2023/10/04/ionis-recommits/) that it planned to launch a first-in-human trial nicknamed PrProfile (pronounced "profile") of a PrP-lowering antisense oligonucloetide (ASO) by the end of the year. Last week, it posted the trial to ClinicalTrials.gov as _A Study to Assess the Safety, Tolerability, Pharmacokinetics and Pharmacodynamics of ION717_ ([NCT06153966](https://clinicaltrials.gov/study/NCT06153966)). (The contents at that link will change over time, so [here](https://web.archive.org/web/20231203191700/https://clinicaltrials.gov/study/NCT06153966) is a snapshot of what it looked like today). Details remain limited and the trial is not yet enrolling participants. But in this post I will unpack what we can glean so far about how the trial will look.

For those just tuning in now: Sonia and I are not affiliated with Ionis Pharmaceuticals. We are patient-scientists trying to cure Sonia’s disease from our laboratory at the Broad Institute of MIT and Harvard.

### what we know

> The purpose of this study is to evaluate... intrathecal (IT) delivery of ION717.

We know that the drug candidate ION717 is an an antisense oligonucleotide, and this confirms it will be delivered intrathecally (IT), meaning via a lumbar puncture. No other details about the drug are yet disclosed &mdash; not its structure/sequence nor the dose levels to be tested in the trial, for example.

> Key Inclusion Criteria: A confirmed diagnosis of probable or definite prion disease; Early-stage prion disease at the time of Screening...

Targeted enrollment is listed as 56 people. The bullet list under "Participation Criteria" describes who is eligible. As we expected, this trial is only enrolling symptomatic patients with a "definite or probable diagnosis". In prion disease, the term "definite" is usually reserved for the deceased who have undergone autopsy. The only case in which a living patient could hvae a "definite" diagnosis is if they underwent brain biopsy, which is fairly uncommon. Therefore, most patients in the trial will have "probable" prion disease, the criteria for which are [posted by CDC](https://www.cdc.gov/prions/cjd/diagnostic-criteria.html) and have been updated more recently by [[Hermann 2021]]; most patients will probably have neurological symptoms in combination with either a positive CSF RT-QuIC test or a _PRNP_ mutation, though neither of these is strictly required &mdash; the right MRI, EEG, or CSF 14-3-3 test result could also constitute a probable diagnosis.

The phrase "early-stage prion disease" means that there will be some sort of screening to make sure the trial enrolls people whose disease stage is still early enough, but details of exactly what the cutoff is and how it will be assessed are not provided here. Still, as I [speculated](/2023/10/04/ionis-recommits/) previously, it appears that patients already in a vegetative state will not be eligible.

For now, other inclusion criteria listed simply include willingness to travel to a study site, age 18+, and presence of a caregiver who can help them complete study visits.

The "Participation Criteria" box also lists Key Exclusion Criteria. None of these are too surprising. Criteria like "clinically significant abnormalities" or "Have any other condition... unsuitable for inclusion" likely mean that people with other serious diseases co-occurring at the same time won't be included. Also excluded are "Known brain or spinal disease that would interfere with the LP process, CSF circulation or safety assessment" &mdash; obviously people need to be able to undergo an LP to receive the drug, and CSF collection is an important part of the trial outcome, as described further below.

> A Phase 1/2a Study

The trial's phase is listed as Phase 1/2a. Usually when one sees a trial whose phase number is not just a simple 1, 2, or 3, that means that the sponsor anticipates amending the protocol over time to advance through multiple phases and multiple trial designs. For a Phase 1/2a, this means it will likely start out looking a lot like a Phase 1 trial where the primary goal is to assess safety and determine the right dose level, as indicated by the endpoints listed below. If results look good, then it would transition at some future date to become phase 2 efficacy trial, meaning a trial designed to tell us whether the drug works. This would happen at the same trial sites and might involve an overlapping set of participants. 

If so, this might mirror the approach that Ionis's partner Biogen chose for tofersen, their ASO for _SOD1_ ALS. That drug was evaluated in a single "phase 1/2/3" ([NCT02623699](https://clinicaltrials.gov/study/NCT02623699)). It began with testing safety in ascending doses, then proceeded into a pivotal randomized phase. All told, that trial was posted in late 2015, and transitioned to a [long-term extension](https://clinicaltrials.gov/study/NCT03070119) phase in 2021, and ultimately provided all of the data that supported the [Accelerated Approval of tofersen](2023/04/25/tofersen-is-now-the-closest-thing-so-far/) in early 2023.

> Primary outcome measures: Incidence of treatment-emergent adverse events.

As a Phase 1 (for now) safety trial, the primary endpoint is safety, meaning adverse events that occur after treatment. These will be examined up through week 29. In parallel, several secondary endpoints will be examined:

+ Maximum Observed Plasma Concentration (C<sub>max</sub>) of ION717
+ Area Under the Plasma Concentration-time Curve (AUC) of ION717
+ Half-life (t1/2λz) of ION717 in Plasma
+ Cerebrospinal fluid (CSF) Concentration of ION717
+ Amount of ION717 Excreted in Urine
+ Percent Change from Baseline in Prion Protein (PrP) Concentration in CSF

The first five are all pharmacokinetic endpoints &mdash; they are examining how long the drug lasts, how it is excreted, and so on. The last is a pharmacodynamic endpoint, meaning it asks whether the drug does its job of lowering PrP. Notably, the CSF PrP endpoint is being measured as "Percent Change from Baseline" rather than on an absolute scale such as nanograms per milliliter. We have argued that because people have different baseline CSF PrP concentrations, percent change is the right metric here [[Mortberg 2022]].

Put together, Ionis's hope at this point is probably that all of these measurements will allow them to choose the right dose to carry forward into the next trial phase. They want a dose that is safe enough (acceptably few or acceptably non-severe adverse events), does the job well enough (lowers CSF PrP by enough percentage points), and lasts long enough (hence the pharmacokinetic endpoints).

> The study will consist of a screening period of up to 6 weeks, a 24-week double-blind treatment period and a 36-week post-treatment period.

This indicates that one patient's total journey through the trial could last up to 6+24+36 = 66 weeks, or a year and three months. How so? Patients don't show up in the clinic and get dosed on the first day. First they need to be screened for eligibility. Given how rapidly progressive prion disease is, one certainly hopes this process is completed in fewer than 6 weeks. The 6 weeks is probably listed there as a loose upper bound. Then the treatment period lasts 24 weeks. At this point it is anyone's guess how many repeat doses will be given and how these are divided up over that time &mdash; for instance, could it be 2 doses 12 weeks apart? 4 doses 6 weeks apart? These are just guesses. Then after the last dose, people will still be asked to come to the trial site, which I would speculate is for additional safety assessments, and LPs to collect CSF and look at the durability of PrP lowering. Whether every patient will be followed exactly 36 additional weeks, or up to 36 weeks as a maximum, is not clear. In past ASO trials, patients have been followed for variable amounts of time depending on when they enrolled. The earliest patients were followed the longest, while the latest-enrolling patients had a relatively short follow-up period before study data were complete enough that the sponsor resumed treating them in an open-label extension where everyone got drug. But, that precedent may be no predictor of what happens here. Ionis has not yet said anything about an open-label extension, and it would be premature to speculate given that the first-in-human dose has not happened yet.

If any one patient's journey through the trial is up to 1.25 years, remember that patients also need to accrue over time. Not all 56 patients show up at the clinical sites on day one. Thus, the total trial duration is longer. The start date is listed as December 2023 &mdash; a good sign that Ionis appears to still belive dosing is imminent. The "primary completion" date is March 2025. In ClinicalTrials.gov parlance, "primary completion" is the last participant's last study visit to collect data for the primary outcome measure (here, adverse events). The posting is clear that adverse events will be formally assessed through week 29, so my guess is that March 2025 is when they expect that the last participant will be at week 29. Working backwards, 29 weeks on study plus up-to-6-weeks of screening would mean they expect the last participant to enroll in July or August 2024. That means that if the study indeed launches this month, they're thinking they can accrue 56 eligible patients over the course of 8-9 months.

The posting also lists a "study completion" date of October 2025. Again in ClinicalTrials.gov speak, "study completion" is the last participant's last study visit to collect data for _any_ outcome measure (including secondary endpoints such as CSF PrP). So presumably, the ~30 weeks from March 2025 to October 25 correspond to the 24+36 weeks of treatment or monitoring minus the 29 weeks to the last adverse event assessment. This suggests that Ionis will still be collecting data on all the secondary endpoint measures, such as CSF PrP, through the very last participant visit. This makes sense: we'd all love to see as long term of data as possible on how long the drug is active. This is slightly contradictory with the fact that the secondary endpoints are all listed as being assessed only through week 9 or 25 post-dose, I'm not sure if that's a typo or if they're just counting the weeks in some different way.

> Eligible participants will receive ION717 and placebo. The order of doses will be randomized and blinded to participants, study sites and the Sponsor.

The study design appears to be what we call a "double crossover," meaning that it is randomized, and there is a placebo, but that all participants will be slated to receive drug and placebo at _some_ point during the trial. This is further confirmed by the table under "How is the study designed?" listing the arms of the study:

1. Experimental: ION717 + Placebo, Regimen 1
2. Experimental: ION717 + Placebo, Regimen 2

This means that every participant will undergo a series of blinded injections via lumbar puncture. No one &mdash; not the participants nor the doctors &mdash; will know which injections contain drug and which contain placebo. That information will be in top-secret "blind" held only by Ionis. But each participant will be assigned a specific series of injections, such that for example, perhaps some get drug first and placebo later, maybe some get placebo first and drug later, or it could even be the case that some get drug, then placebo, then drug again.

Of course, this is a rapidly progressive disease. It is likely that some patients will die before completing all of the series of doses. Nevertheless, the choice of double crossover on Ionis's part will surely make the trial more appealing to our patient community, where of course in this rapidly progressive fatal disease people don't want to be randomized to only placebo.

> No location data

The trial is not yet recruiting, and no trial sites are listed. This is presumably being saved for a future date, and we look forward to learning where all the sites will be. For now, the only contact info given is:

Name: Ionis Pharmaceuticals, Inc.  
Phone Number: 844-221-3587  
Email: PrionDisease@clinicaltrialmedia.com  

As with [my last post](/2023/10/04/ionis-recommits/), please do _not_ contact me or Sonia asking how to enroll or how to obtain ION717. Unfortuantely, as of today, the answer is no one can receive the drug. If you still want to ask questions, call the number above.

### what's next

Soon, we hope, Ionis will update the posting to list the trial sites and study investigators. Then there will be contact info for patients to volunteer for the trial. Until then, we keep waiting. Eagerly. Next, the trial will launch, and symptomatic patients who are deemed eligible will enroll. Then, those of us who are eager to know the outcome will keep waiting. And waiting. Eagerly.


[Miller 2020]: https://pubmed.ncbi.nlm.nih.gov/32640130/ "Miller T, Cudkowicz M, Shaw PJ, Andersen PM, Atassi N, Bucelli RC, Genge A, Glass J, Ladha S, Ludolph AL, Maragakis NJ, McDermott CJ, Pestronk A, Ravits J, Salachas F, Trudell R, Van Damme P, Zinman L, Bennett CF, Lane R, Sandrock A, Runz H, Graham D, Houshyar H, McCampbell A, Nestorov I, Chang I, McNeill M, Fanning L, Fradette S, Ferguson TA. Phase 1-2 Trial of Antisense Oligonucleotide Tofersen for SOD1 ALS. N Engl J Med. 2020 Jul 9;383(2):109-119. doi: 10.1056/NEJMoa2003715. PMID: 32640130."

[Hermann 2021]: https://pubmed.ncbi.nlm.nih.gov/33609480/ "Hermann P, Appleby B, Brandel JP, Caughey B, Collins S, Geschwind MD, Green A, Haïk S, Kovacs GG, Ladogana A, Llorens F, Mead S, Nishida N, Pal S, Parchi P, Pocchiari M, Satoh K, Zanusso G, Zerr I. Biomarkers and diagnostic guidelines for sporadic Creutzfeldt-Jakob disease. Lancet Neurol. 2021 Mar;20(3):235-246. doi: 10.1016/S1474-4422(20)30477-4. Erratum in: Lancet Neurol. 2021 Apr;20(4):e3. PMID: 33609480; PMCID: PMC8285036."

[Miller 2022]: https://pubmed.ncbi.nlm.nih.gov/36129998/ "Miller TM, Cudkowicz ME, Genge A, Shaw PJ, Sobue G, Bucelli RC, Chiò A, Van Damme P, Ludolph AC, Glass JD, Andrews JA, Babu S, Benatar M, McDermott CJ, Cochrane T, Chary S, Chew S, Zhu H, Wu F, Nestorov I, Graham D, Sun P, McNeill M, Fanning L, Ferguson TA, Fradette S; VALOR and OLE Working Group. Trial of Antisense Oligonucleotide Tofersen for SOD1 ALS. N Engl J Med. 2022 Sep 22;387(12):1099-1110. doi: 10.1056/NEJMoa2204705. PMID: 36129998."

[Mortberg 2022]: https://pubmed.ncbi.nlm.nih.gov/35133987/ "Mortberg MA, Zhao HT, Reidenbach AG, Gentile JE, Kuhn E, O'Moore J, Dooley PM, Connors TR, Mazur C, Allen SW, Trombetta BA, McManus A, Moore MR, Liu J, Cabin DE, Kordasiewicz HB, Mathews J, Arnold SE, Vallabh SM, Minikel EV. Regional variability and genotypic and pharmacodynamic effects on PrP concentration in the CNS. JCI Insight. 2022 Mar 22;7(6):e156532. doi: 10.1172/jci.insight.156532. PMID: 35133987; PMCID: PMC8986079."


