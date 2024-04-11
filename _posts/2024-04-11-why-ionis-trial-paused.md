---
layout: post
title:  "Why the ION717 trial is paused"
date:   2024-04-11
author: ericminikel
location: Cambridge, MA
thumb120: https://www.cureffi.org/media/2024/04/trial-pause-thumbnail.png
summary200: "Probably because they filled the lowest dose group and need to analyze the safety and pharmacology data before escalating to a higher dose."
---

Over the weekend, Ionis Pharmaceuticals [announced](https://cjdisa.com/clinical-trial-update-for-prion-diseases/) that it is pausing recruitment in its Phase 1/2a trial of ION717, a PrP-lowering ASO for prion disease ([NCT06153966](https://clinicaltrials.gov/study/NCT06153966)). The ClinicalTrials.gov posting, updated Tuesday to status "Active, not recruiting" simply states that:

> As of April 2024, study recruitment is paused because capacity has been reached for the current stage of the study. Recruitment is anticipated to resume later in 2024.

While a [letter to the community](https://cjdfoundation.org/wp-content/uploads/2024/04/MED-US-PRNP-2400001-Community-statement-on-PrProfile-clinical-trial-recruitment-pause.pdf) gives a bit more detail:

> Due to exceptionally fast enrollment, we have reached capacity at the current stage of the trial, and we will, per the study’s design, be pausing recruitment to complete this stage of the trial. The pause does not impact any participants who are currently enrolled or undergoing screening. Individuals who are currently enrolled will continue with all regularly scheduled trial-related visits, and individuals who have already been accepted by a site for screening will continue to advance through that process and be enrolled if they meet the study’s eligibility requirements.

> Per the study design, and as is common in first-in-human clinical trials like this one, data from people enrolled early in the trial must be collected and reviewed prior to enrolling additional people into PrProfile. When we initiated this clinical trial, we anticipated recruitment would be slow, which would allow us more time to complete the required data collection and review prior to reaching enrollment capacity for this stage of the trial. Our assumptions were incorrect; recruitment has been rapid. As a result, we have reached capacity at the current stage of the trial and therefore recruitment will be paused at all trial sites.

> For clarity, the pause does not mean that enrollment in PrProfile has been completed or that the trial is ending. It is not the result of observations or data collected in the study to date, nor has this pause been requested by any regulator or monitoring body.

The purpose of this blog post is to figure out what exactly this means. Full disclosure: my lab collaborates with Ionis and has received funding from them. But the clinical team doesn't tell me anything and I don't know anything the public doesn't know, so don't come here looking for inside secrets. All you'll find is inferences from publicly disclosed information plus a little knowledge of how the industry typically works.

People trying to parse the community statement may be at a bit of a loss because many key details of the trial were never actually disclosed in the first place, so people don't even know what "the current stage of the trial" means. I broke down the information in the ClinicalTrials.gov posting in [a blog post](/2023/12/04/first-details-of-ionis-trial-disclosed/) back in December. Ionis has never disclosed what the arms of the randomized trial even are (only that it's crossover, where all participants eventually get both drug and placebo if they live long enough), what the molecular structure of the drug is, what the dose level is, and what the dosing regimen is (how many doses, how frequently). 

The bad news is, for people just getting diagnosed and hoping to enroll, the trial isn't accepting new participants right at this moment.

The good news is, this is not a "clinical hold", which is when FDA or another regulatory agency says that dosing has to pause while a safety event is investigated. This pause is not the result of any safety issue, and the trial will continue again after a pause &mdash; indeed, even now, people who've already passed screening will still be dosed.

What exactly _does_ this pause mean then? The key points here are that "we have reached capacity at the current stage of the trial" and "data from people enrolled early in the trial must be collected and reviewed prior to enrolling additional people into PrProfile."

First-in-human trials, of which this is one, usually do a dose escalation. They may be either single ascending dose (SAD), where each participant gets just one dose of drug, but the first people get, say, 25 mg, the next batch of people get 50 mg, and the third batch get 100 mg. Or it may be multiple ascending dose (MAD), where each participant gets two or more doses of drug, so that the first people might get 25 mg twice, then some other people get 50 mg twice, then yet a third group of people get 100 mg twice. 

Example: Ionis/Biogen's first-in-human trial of tofersen, the ASO for _SOD1_ ALS, was a MAD where 10 people got 5 doses of 20 mg each, 9 people got 5 doses of 40 mg each, 9 people got 5 doses of 60 mg each, and 10 people got 5 doses of 100 mg each [[Miller 2020]]. In that trial:

> Participants were assigned to one of four dose cohorts (20, 40, 60, or 100 mg), which were assessed sequentially. Progression of the trial to the next dose-level cohort was based on a blinded review of safety and pharmacokinetic data from the preceding cohorts by the sponsor and the investigators.

In other words, you needed to see some (if not all) data on safety and pharmacokinetic (drug concentration in blood and maybe CSF) from the 20 mg cohort before you could start giving people 40 mg. This way, if the analysis reveals that 20 mg is already causing safety issues, or, if the 20 mg already yielding a drug concentration as high as is expected to be necessary based on animal studies, then they can hold off before exposing people to the unnecessary risk of double that dose level.

My guess is that what happened with ION717 is that they already enrolled the maximum number of people for the lowest dose level. Now they need to administer all those doses and then wait for a certain number of weeks to pass to monitor people's safety and collect blood and CSF for pharmacokinetic analysis. Only once those data are complete will they know whether it's safe to move to the next dose level.

That's just my speculation, though. It's worth noting a couple other reasons why trials could potentially be paused. 

One is to balance enrollment between sites. I once heard a physician who worked in clinical drug development state that "most sites never enroll a patient," which sounds like a bit of an exaggeration, but it points to a real problem. Say you want to enroll 100 patients, so you plan for 10 clinical trial sites, hoping each will enroll 10 patients. But one hospital is efficient about signing the contracts and approving the IRB protocol, and enrolls 25 patients before the last hospital even launches. That might be fine. Or it might be a big problem, if you had scientific or regulatory reasons that you needed to get a balanced mix of patients from each site, for instance if different sites have patients with a different mix of mutations, or if regulators from one country want to see data from their own people. In such cases, a company might want to pause enrollment to give the later-launching sites a chance to enroll patients before the trial is full.

Another potential reason for a pause (I think) is a transition between trial phases. Ionis's trial is a Phase 1/2a meaning that in the beginning, it's a Phase 1 with a primary goal of assessing safety and secondary goals of assessing pharmacology and PrP lowering. Eventually it is going to turn into a Phase 2 where the goal shifts towards a primary goal of assessing survival or cognitive decline or some other clinical endpoint. What exactly that transition looks like, I don't know. I didn't find precedents in a Google search, but it seems to me that if you had already enrolled the Phase 1, one might need a pause to analyze all those data before pivoting towards Phase 2. This is definitely not what's going on in the trial today, because it's still way too early; there is no way they would have already completed the dose escalations and have all the Phase 1 participants enrolled so soon.

All this is to say, there are a number of possible reasons why a sponsor would pause enrollment in a clinical trial, even though everything is going to plan and there is nothing to be worried about. Right now, the most likely is that they've filled the one dose group and need time before esclating the dose level.

By the way: although this is terrible news for patients who are sick right now who really want to enroll, there is embedded in this announcement a piece of fantastic news in terms of the long-term prospects for an effective treatment for prion disease. The fantastic news is that **recruitment has been much faster than anticipated**. We're a rare disease, and in any rare disease, one thing that people worry about is whether you can find enough patients to do meaningful trials, and do them quickly enough. We don't have that problem. Ionis "anticipated recruitment would be slow" but "our assumptions were incorrect; recruitment has been rapid". As we always suspected: yes, we're rare, but we're an incredibly highly motivated community, with well-organized central diagnosis and referral through surveillance centers, and a committed group of physician-scientists running trial sites who really want to see an effective drug. We can do this! We can easily find the patients for this trial and many more. Any other pharma companies interested in developing a drug for prion disease, take note: we have the patients.

[Miller 2020]: https://pubmed.ncbi.nlm.nih.gov/32640130/ "Miller T, Cudkowicz M, Shaw PJ, Andersen PM, Atassi N, Bucelli RC, Genge A, Glass J, Ladha S, Ludolph AL, Maragakis NJ, McDermott CJ, Pestronk A, Ravits J, Salachas F, Trudell R, Van Damme P, Zinman L, Bennett CF, Lane R, Sandrock A, Runz H, Graham D, Houshyar H, McCampbell A, Nestorov I, Chang I, McNeill M, Fanning L, Fradette S, Ferguson TA. Phase 1-2 Trial of Antisense Oligonucleotide Tofersen for SOD1 ALS. N Engl J Med. 2020 Jul 9;383(2):109-119. doi: 10.1056/NEJMoa2003715. PMID: 32640130."

