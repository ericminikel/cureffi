---
layout: post
title:  "How to compare clinical trial data to a natural history control?"
date:   2017-03-16 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: 
summary200: "What is the right statistical method for comparing the survival of patients in a clinical trial to historical controls from a natural history cohort?"
---

*Today I have a hard statistics question I'm posting here in the hopes that someone can help me find an answer.*

Context: I am interested in understanding how to analyze data from clinical trials with a natural history control, meaning, a clinical trial where a group of people (say, those with genetic risk for a disease) are recruited, all of them are treated with a drug, and their survival (say, age at disease onset, or death due to this disease) is compared to the survival of untreated historical controls with the same genetic risk.

Before I start, I just want to acknowledge that I've read FDA Guidance documents (e.g. [Rare Diseases: Common Issues in Drug Development](http://www.fda.gov/downloads/Drugs/GuidanceComplianceRegulatoryInformation/Guidances/UCM458485.pdf)) touching on this topic and I'm well aware that there are many types of bias that can creep into natural history comparisons and that, for this reason, FDA only rarely accepts such trials as evidence of a drug's efficacy, instead usually considering randomized trials as far stronger evidence. The question of how to determine whether a natural history cohort can fairly be compared to a prospective cohort treated with a drug is an important and complex question. But that is not the topic of my question today. Instead, I am finding that I am stumped on a yet much simpler question, the question of _if_ a natural history cohort is considered comparable and unbiased and so on, then _how_, statistically speaking, would one do the comparison?

So here's a scenario.

+ For simplicity, say my disease has a single, known, genetic cause, and people with this genotype are perfectly healthy until some age, and then they suddenly become very sick. The age of disease onset is highly variable, and hazard varies as a function of age. Everyone in every dataset described below has this disease-causing genotype.
+ In dataset A, I have data on people in a hypothetical clinical trial. They enrolled at one age (`starting_age`), were treated with a drug, and were followed a variable amount of time until a second age (`last_age`) at which they either became sick (`event == 1`) or withdrew from the trial (`event == 0`).
+ In an "ideal ideal" scenario, perhaps the natural history cohort would be a large number of people with this genotype, followed from birth until they either died of this disease or of an unrelated cause. That sort of dataset doesn't exist. Instead, consider two possible options for what the natural history cohort could be (B and C)...
+ In dataset B, I have data on people who enrolled in a prospective study at some random age (`starting_age`), were not treated with any drug, and were simply followed for some variable amount of time until a second age (`last_age`) at which they either became sick (`event == 1`) or withdrew from the study (`event == 0`). The distribution of starting ages and the number of years of followup cannot be assumed to follow the same distributions as in dataset A.
+ In dataset C, I have purely retrospective data; here there was no prospective followup. We simply observed each person once. Some people were observed to become sick at some particular age (`age`, and `event == 1`) while others were seen to still be healthy at some particular age (`age`, and `event == 0`).

If I understand the terminology correctly, the data in A and B would be considered left-truncated and right-censored; the data in C would be considered right-censored only. According to terms used in [Cain 2011](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3121224/), I believe that dataset B is a "prevalent cohort" while dataset C is an "incident cohort".

My questions are:

1. How (if at all) can one construct a survival function (or a hazard function, etc) for dataset A or B, given that the data are left-truncated at different ages for each individual?
2. What statistical test (or bootstrapping method) would be used to test whether people in dataset A survive significantly longer or have significantly lower hazard than those in B or C?
3. If all you had was dataset B or C, and you wanted to estimate the statistical power of a given clinical trial with _N_ individuals for a given hazard ratio, how would you go about it?
4. (Bonus question) if people also had, say, different genetic mutations associated with different hazards as a function of age, how would you incorporate that variable into the answers above?

Some things I've tried so far:

+ I considered Flora's Z statistic [[Flora 1978](https://www.ncbi.nlm.nih.gov/pubmed/702606)] which some have applied in similar situations, but I am concerned that it doesn't account for sampling variance in the natural history cohort being used as a reference.
+ I Googled a few different combinations of terms such as *survival analysis with different left truncation times* and found some pages that discuss similar problems, such as [Survival Analysis: Left-Truncated Data](http://math.usu.edu/jrstevens/biostat/projects2013/pres_LeftTruncation.pdf), [Surviving Left Truncation using PROC PHREG](http://www.wuss.org/proceedings08/08WUSS%20Proceedings/papers/anl/anl03.pdf), but these did not explain the underlying math of their solution.
+ I finally came upon [Cain 2011](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3121224/) which discusses the issue in detail and, helpfully, has R code for handling left-truncation in the [supplement](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3121224/bin/supp_kwq481_kwq481_Web_Appendix_1.pdf). They implemented their own function for an MLE incorporating left-truncation, but the claim is that left-truncation can already be handled in a Cox proportional hazards model using functionality built into the R `survival` library, for instance: `coxph(Surv(time=agestart,time2=x,event=cx,type='counting')~bmi)`. Here a `Surv` object is created using `time` as the starting age, and `time2` as the age where `event` either did or didn't happen. That sounds sensible, though the help file for `Surv` doesn't explain what it is actually doing here &mdash; for example it does not explain what the `counting` model entails. I turned to the [`survival` manual](https://cran.r-project.org/web/packages/survival/survival.pdf) and, as a reference for `counting`, got pointed to [Andersen & Gill 1982](http://bacbuc.hd.free.fr/WebDAV/data/DOM/StatMeths/Andersen-AS1982.pdf) which in turn was a bit over my head and does not seem to discuss left truncation, or at least not by that name. One peculiarity is the "counting" model seems built to fit cases where an individual can have multiple events in their lifetime, which is not the case in my example, but perhaps that doesn't matter.
+ Based on the above, it seemed like a Cox "counting" model might be the right way to compare dataset A to B, and I was able to do such a comparison in R (see code below) though I am still struggling to understand whether I am doing the right thing here, and I am not sure how (if at all) such an approach could be applied to compare dataset A to C.
+ Finally, I searched [Cross Validated](http://stats.stackexchange.com/) for *survival left truncation* and found a large number of instances where people had asked similar questions as I'm asking ([1](http://stats.stackexchange.com/questions/172847/handling-survival-data-where-people-join-at-various-stages/173518#173518), [2](http://stats.stackexchange.com/questions/139819/intepretation-of-kaplan-meier-with-truncated-and-right-censored-data/139993#139993), [3](http://stats.stackexchange.com/questions/259184/how-to-estimate-parameters-of-a-distribution-with-left-truncated-and-right-censo/259888#259888), [4](http://stats.stackexchange.com/questions/215399/survival-analysis-in-r-left-truncation), [4](http://stats.stackexchange.com/questions/215409/left-truncated-survival-data), [5](http://stats.stackexchange.com/questions/106271/survival-analysis-in-r-with-left-truncated-data), [6](http://stats.stackexchange.com/questions/73860/how-do-i-use-the-survival-package-and-surv-function-in-r-with-left-truncated), [7](http://stats.stackexchange.com/questions/265503/should-i-use-left-truncation-analysis)) but most were unanswered; one pointed to the Cain reference above, and another pointed to [Klein & Moeschberger 2003](http://sistemas.fciencias.unam.mx/~ediaz/Cursos/Estadistica3/Libros/0a9X.pdf) which was helpful (see e.g. p. 123 and p. 312) and seems to support the notion that A and B can be compared using a fairly simple Cox approach, though it doesn't address the comparability of A to C, nor the power calculation question (though, if the statistical test question is answered, I could presumably get to the power with some bootstrapping).

Below are some hypothetical data in R illustrating this scenario. I've included 20 rows for each dataset, though in case it matters, in the real life scenario I am imagining, datasets A and B could be perhaps on the order of 50 or 100 patients, and dataset C might be on the order of 500 or 1,000 patients.

~~~ R
# A) hypothetical data from clinical trial
data_a = read.table(sep='|',header=T,textConnection("
indiv_id|starting_age|last_age|event
1|33|42|0
2|45|49|0
3|47|52|1
4|30|34|0
5|37|44|0
6|34|37|0
7|29|34|0
8|58|66|0
9|58|60|0
10|66|75|0
11|37|41|0
12|37|46|0
13|58|62|0
14|44|48|1
15|45|50|0
16|56|65|0
17|54|63|0
18|36|41|0
19|47|55|1
20|45|55|0
"))

# B) hypothetical data from a prospective natural history study
data_b = read.table(sep='|',header=T,textConnection("
indiv_id|starting_age|last_age|event
101|19|28|0
102|39|52|0
103|38|41|1
104|18|27|0
105|20|24|0
106|16|20|0
107|39|41|0
108|48|50|0
109|40|50|0
110|38|41|1
111|40|43|1
112|26|29|0
113|37|39|0
114|21|30|0
115|36|41|1
116|46|48|0
117|27|32|0
118|26|29|0
119|29|38|0
120|47|58|0
"))


# C) hypothetical data from a retrospective natural history study
data_c = read.table(sep='|',header=T,textConnection("
indiv_id|age|event
201|43|1
202|53|1
203|64|1
204|45|1
205|88|1
206|70|1
207|66|1
208|55|1
209|51|1
210|48|1
211|63|1
212|36|0
213|61|0
214|63|1
215|63|1
216|57|1
217|74|0
218|63|1
219|59|1
220|57|1
"))


# one possible approach to compare A and B using Cox counting model
data_a$drug = TRUE
data_b$drug = FALSE
nh_compare = rbind(data_a, data_b)
m = survfit(Surv(time=starting_age,time2=last_age,event=event,type='counting')~drug, data=nh_compare)
summary(m)
coxph(Surv(time=starting_age,time2=last_age,event=event,type='counting')~drug, data=nh_compare)
~~~

I have [posted this question to Cross Validated](http://stats.stackexchange.com/questions/267936/how-to-compare-clinical-trial-data-to-a-natural-history-control) as well but was not allowed to include more than 2 links, hence the need for this post here. If you have an answer or suggestion, please leave a comment below and/or on the Cross Validated post. Thanks!
