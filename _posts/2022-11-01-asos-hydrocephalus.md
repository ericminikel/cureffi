---
layout: post
title:  "ASOs and hydrocephalus"
date:   2022-11-01 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2022/11/hydrocephalus-thumbnail.png
summary200: "An ASO for a rare form of epilepsy caused a severe fluid buildup in the brain of two patients, but this side effect appears much less common for other ASOs."
---

Last week, Erika Check Hayden [reported](https://www.nytimes.com/2022/10/26/health/gene-treatment-epilepsy-antisense-brain.html) in _The New York Times_ about a severe adverse event associated with an experimental antisense oligonucleotide (ASO) drug. The adverse event was hydrocephalus: excess fluid in the brain. The drug was valeriasen, an ASO against the _KCNT1_ gene. Valeriasen was developed by Tim Yu's lab at Boston Children's Hospital as a "N of few" or "nano-rare" treatment for pediatric patients with _KCNT1_-related epilepsy. Just tens of such patients are known worldwide [[Borlot 2020]]. The drug was given to two patients, and apparently was remarkably effective, dramatically reducing the number of seizures per day. But one patient developed severe hydrocephalus, withdrew from the trial, and passed away. The other developed symptoms that appeared related to fluid buildup; she had fluid drained with a shunt and stopped ASO treatment.

The article raises the question of whether hydrocephalus is associated with ASO therapies more generally:

> In 2021, the pharmaceutical company Roche said that three patients who received an experimental antisense drug in a Huntington’s disease clinical trial had hydrocephalus, raising the possibility that the problem could plague many applications of such therapies. Some patients on nusinersen have also developed hydrocephalus. But the fluid buildup is not uncommon in people with neurological diseases, and it can often be difficult to determine whether the complication was caused by a drug or the underlying illness.

Of course, this question is of great interest to me and Sonia, because we are working to develop an ASO against _PRNP_ as a therapy for prion disease. (_Full disclosure for those who are not regular readers of this blog: we collaborate with Ionis Pharmaceuticals, and they have given charitable gifts to our lab at the Broad Institute. I did not consult Ionis when writing this post._)

The Huntington's drug candidate referenced in the above quote is tominersen, whose Phase III failure I blogged about in detail [last April](/2021/04/28/details-tominersen-trial-halt/). Dr. Scott Schobel from Roche noted that there had been 5 symptomatic and 16 asymptomatic cases of hydrocephalus across the hundreds of patients who received tominersen in clinical trials. In addition, the Phase III trial results showed increase in brain ventricle volume among tominersen-treated patients. In Huntington's and some other neurodegenerative diseases, enlargement of ventricles can be due to shrinkage of brain tissue itself. But brain tissue volume did not decrease in tandem with ventricular enlargement in the tominersen patients. If ventricle volume went up but brain tissue volume did not go down, then one interpretation would be that tominersen caused some degree of fluid buildup on the average. This might in turn have risen to the level of "hydrocephalus" per se in just a handful of patients. (Hydrocephalus apparently does not have exact diagnostic criteria and can be something of a subjective determination by a radiologist).

In that same presentation on tominersen, the host, Dr. Robert Pacifici of CHDI, noted there have also been case reports of hydrocephalus in spinal muscular atrophy (SMA) patients treated with nusinersen. Nusinersen, approved in 2016, is the first FDA-approved intrathecal ASO drug. As of 2021, Biogen [reported](https://investors.biogen.com/news-releases/news-release-details/new-data-cure-sma-2021-highlight-long-term-efficacy-spinrazar) that there were 11,000 patients on drug worldwide. This means we have far, far more data on nusinersen than on any experimental ASO that is still in trials. This made me curious to learn more about whether there is really an association between nusinersen and hydrocephalus. 

FDA did [add a warning](https://www.accessdata.fda.gov/scripts/cder/safetylabelingchanges/index.cfm?event=searchdetail.page&DrugNameID=1373) about potential hydrocephalus to the label of nusinersen beginning in 2018:

![](/media/2021/04/nusinersen-hydrocephalus-label-change-2018-05-14.png)

FDA noted that "because these reactions are reported voluntarily from a population of uncertain size, it is not always possible to reliably estimate their frequency or establish a causal relationship to drug exposure." This is because the data come from FDA's Adverse Event Reporting System (AERS), a mechanism by which patients and doctors can voluntarily report adverse events that they may suspect are drug side effects. It is by no means exhaustive, nor controlled &mdash; there is no way to know for sure if events are drug related.

At the time of the tominersen presentation last year, I got curious about how strong the data were supporting this putative association. But at that time, mining any insights from AERS meant a ton of work downloading and parsing raw data files. In the time since then, FDA has added a [user-friendly browser](https://www.fda.gov/drugs/questions-and-answers-fdas-adverse-event-reporting-system-faers/fda-adverse-event-reporting-system-faers-public-dashboard) that allows people to query the AERS database for adverse event reports. Over the past couple days I spent some time querying this database to see what insights I could glean. The data from the query, and my code for the subsequent analyses, are available in [this git repository](https://github.com/ericminikel/hydrocephalus).

Since 2017, there have been 16 cases reported to FDA of hydrocephalus in a patient receiving nusinersen (brand name Spinraza). Here is a full list:

| year | case_id | sex | age | adverse events | outcomes | other meds |
| ---- | ---- | ---- | ---- | ---- |  ---- | ---- |
| 2022 | 20855354 | M | ? | **Hydrocephalus**<br>Off Label Use<br>Hypotonia<br>Cerebral Haemorrhage<br>Pneumonia<br>Apnoea<br>Neurological Procedural Complication<br>Salivary Hypersecretion<br>Malaise<br>Lung Disorder<br>Cardio-Respiratory Arrest<br>Seizure<br>Pyrexia | Hospitalized<br>Other Outcomes | - |
| 2022 | 19805067 | M | ? | Device Dislocation<br>Heart Rate Increased<br>Lower Limb Fracture<br>Skin Swelling<br>Pneumonia<br>Hepatic Rupture<br>Post Procedural Oedema<br>Sputum Increased<br>**Hydrocephalus**<br>Road Traffic Accident<br>Respiratory Disorder | Hospitalized | - |
| 2021 | 20141070 | ? | ? | Respiratory Failure<br>Kidney Infection<br>**Hydrocephalus** | Hospitalized<br>Other Outcomes | - |
| 2021 | 15618912 | M | 7 y | **Hydrocephalus**<br>Drug Ineffective<br>Papilloedema | Hospitalized | Omeprazole |
| 2021 | 15630736 | M | ? | Shunt Infection<br>Respiratory Failure<br>Pneumonia<br>**Hydrocephalus** | Hospitalized | - |
| 2020 | 16077459 | M | 3 mo | Hypoalbuminaemia<br>Diarrhoea<br>Hypoproteinaemia<br>Generalised Oedema<br>Protein-Losing Gastroenteropathy<br>Hyponatraemia<br>**Hydrocephalus**<br>Tachycardia | Other Outcomes<br>Hospitalized<br>Disabled | Midazolam |
| 2020 | 13565474 | F | 4 mo | **Hydrocephalus** | Hospitalized | Carnitor<br>Glycerin<br>Albuterol<br>Duphalac<br>Roxicodone<br>Tylenol<br>Bacitracin<br>Cholecalciferol<br>Sodium Chloride<br>Proventil<br>Xopenex<br>Zantac |
| 2019 | 17044806 | F | 5 mo | Intracranial Pressure Increased<br>**Hydrocephalus** | Hospitalized<br>Other Outcomes | - |
| 2019 | 16104214 | M | 3 y | Metabolic Disorder<br>Sepsis<br>Meningitis Pneumococcal<br>Urine Output Decreased<br>Catheter Site Thrombosis<br>Adenovirus Infection<br>Pneumonia Escherichia<br>Paroxysmal Sympathetic Hyperactivity<br>Medical Device Site Haemorrhage<br>Myocarditis Septic<br>**Hydrocephalus**<br>Vasculitis<br>Streptococcal Bacteraemia<br>Inappropriate Antidiuretic Hormone Secretion<br>Serratia Infection<br>Vomiting<br>Joint Dislocation<br>Endotracheal Intubation Complication<br>Refeeding Syndrome<br>Cerebral Ventricle Dilatation<br>Infective Thrombosis<br>Anaemia<br>Respiratory Syncytial Virus Bronchiolitis<br>Irritability<br>Fatigue<br>Enterovirus Infection<br>Bradycardia<br>Device Malfunction<br>Bacteraemia<br>Rhinovirus Infection<br>Pyrexia<br>Acute Respiratory Failure<br>Scoliosis<br>Hyperlactacidaemia<br>Thyroid Function Test Abnormal<br>Status Epilepticus<br>Otitis Media Acute<br>Thrombocytosis<br>Corneal Abrasion<br>Weight Decreased<br>Vertebral Artery Stenosis<br>Stenotrophomonas Infection<br>Thyroid Disorder | Hospitalized<br>Other Outcomes | Simethicone (Dimethicone)<br>Melatonin<br>Miralax |
| 2019 | 16826094 | F | ? | **Hydrocephalus** | Hospitalized | Zolgensma |
| 2019 | 16810455 | F | ? | **Hydrocephalus**<br>Autism Spectrum Disorder | Other Outcomes | - |
| 2019 | 15252426 | F | 6 mo | **Hydrocephalus** | Hospitalized | - |
| 2019 | 13792631 | M | 4 mo | Scoliosis<br>Bronchiolitis<br>Upper Respiratory Tract Infection<br>Foot Deformity<br>Joint Contracture<br>Staphylococcal Infection<br>Bacillus Infection<br>**Hydrocephalus**<br>Escherichia Infection | Other Outcomes<br>Hospitalized | Vitamin D Nos |
| 2018 | 15737581 | F | ? | Encephalitis<br>**Hydrocephalus** | Hospitalized | - |
| 2018 | 14845172 | M | 4 mo | Prescribed Overdose<br>Respiratory Failure<br>Enterovirus Infection<br>Rhinovirus Infection<br>Malnutrition<br>Chronic Respiratory Failure<br>**Hydrocephalus**<br>Pneumonia | Hospitalized<br>Other Outcomes | Albuterol<br>Glycopyrrolate<br>Pulmozyme<br>Xopenex<br>Sodium Chloride<br>Vitamin D Nos |
| 2018 | 14657721 | F | ? | **Hydrocephalus** | Other Outcomes | - |

Looking over this table, a few things that I noticed:

+ Many reports include more than one adverse event. 7 cases also had a viral or bacterial infection, 1 had encephalitis, 1 had a device dislocation, and 1 had been in a car accident. There is no information here to tell us whether the hydrocephalus was secondary to one of these factors.
+ All 16 cases were classified as "serious" (a column not shown in the above table), 14 were hospitalized, and 1 patient became disabled, though again, there is nothing to tell us whether the hospitalization, disability, or "serious" determination was due to the hydrocephalus or one of the other adverse events listed in each case.
+ One case had a "prescribed overdose" and another was using the drug off label.
+ One case was in a patient receiving both Zolgensma (onasemnogene abeparvovec, a gene therapy for SMA) and nusinersen. That case was reported by Novartis, the maker of Zolgensma. All other cases were reported by Biogen, the maker of nusinersen.

Two questions we can attempt to ask, but can't answer perfectly using AERS data, are what absolute frequency of hydrocephalus does this reflect, and does it imply an increase in hydrocephalus in patients on drug?

As noted earlier, an estimated 11,000 patients were now on nusinersen worldwide as of last year. Despite being a U.S. FDA database, AERS does capture worldwide events &mdash; of the 16 events in the table above, 7 were from the U.S., 2 were from Portugal, and 1 each from the U.K., China, Germany, Spain, France, Italy, and Japan. That's decent global reach, but again, we have no idea what proportion of physicians anywhere would have the inclination to report to AERS an adverse event that occurred in their patient. The denominator is probably less than 11,000 patients, but it's hard to know how much less. Nonetheless, just 16 reported cases for a drug that 11,000 people take, does seem like probably a very low frequency.

Does this represent a significant association between nusinersen and hydrocephalus? Again, it's virtually impossible to make any definitive determination when you're not in a controlled trial and there's no obligatory reporting mechanism. As one approach to this question, we can consider the criteria that the European Medicines Agency (EMA)'s Eudravigilance Expert Working Group laid out in their [guidelines](https://www.ema.europa.eu/en/documents/regulatory-procedural-guideline/draft-guideline-use-statistical-signal-detection-methods-eudravigilance-data-analysis-system_en.pdf) for analyzing post-approval event reports. They define a metric called proportional reporting ratio (PRR), which is the ratio of a particular adverse event's frequency among people on a particular drug, compared to its frequency among all other adverse event reports. Using AERS queries for hydrocephalus and for nusinersen, plus the AERS summary stats for all event reports since 2017, I constructed the following contingency table (comparable to what Eudravigilance defines in Table 1):

| | **hydrocephalus** | **all other events** |
| ---- | ---- | ---- |
| **nusinersen** | 16 | 4,808 |
| **all other drugs** | 1,857 | 11,807,996 |

Per Eudravigilance's formula (which is a [relative risk or risk ratio](/2014/05/15/the-difference-between-odds-ratio-and-risk-ratio/)), the PRR = 21.1 (95% confidence interval, 12.9 - 34.5). Because the number of cases is greater than 3 and the lower bound of the 95% confidence interval is greater than 1, Eudravigilance would define this as a Signal of Disproportionate Reporting (SDR). But disproportionate reporting doesn't necessarily mean a significant association between the drug and the adverse event. Sometimes a signal just reflects the increased incidence of a specific adverse event among patients who have the original disease for which they are being prescribed the drug. In a medical records study published last year, scientists at Biogen looked at the incidence of hydrocephalus among SMA patients in the era before nusinersen's approval, with a dataset spanning 2007 - 2016. They found that patients with SMA experienced hydrocephalus at a rate 4.7 times higher than matched controls [[Viscidi 2021]]. Controlling for this would knock that 21.1x effect size down to 4.5. And the disease is just one factor &mdash; there is also potentially the clinical care picture. We don't know whether a patient being on an intrathecal drug means they are more likely to be monitored or to experience lumbar puncture related events, such as headaches, that would lead a doctor to check for hydrocephalus. Considering this, and the difficulty of knowing how many of the cases reported were secondary to a different problem, it's hard to know whether there is any significant signal here. One study using a more controlled dataset from 323 children in 7 clinical trials of nusinersen did not report any association [[Darras 2019]]. 

Overall, it's hard to know whether there exists an association between nusinersen and hydrocephalus; if there is, the effect size is not huge and the frequency appears low. No patients appear to have died from it.

How, then, do we make sense of the fact that 2/2 valeriasen patients developed a serious fluid buildup? Everyone who works with ASOs, including us in our studies of prion disease [[Minikel 2020]], finds that individual ASOs can be dramatically different from one another in toxicological profiles, even if they differ in nothing but sequence. One possibility is that valeriasen has a problematic sequence. ASOs can also differ not only in sequence but in backbone chemistry and mechanism of action. Nusinersen, designed to modify splicing, is a fully 2'MOE-modified ASO, whereas tominersen is a 5-10-5 gapmer ASO designed to lower a target RNA. (For what any of that means, see my [ASO chemistry](/2018/08/28/antisense-part-iii-chemistries/) and [ASO mechanism of action](/2018/07/25/antisense-part-ii-mechanisms-of-action/) posts.) According to [Valeria Association](https://www.valeria-association.com/en/mission/), valeriasen was designed to lower _KCNT1_ RNA, implying it is a gapmer like tominersen and unlike nusinersen. But the hydrocephalus that occurred with valeriasen is probably not representative of all gapmers either. Even if you believe that the ventricular enlargement with tominersen reflected some kind of subclinical hydrocephalus, it certainly wasn't nearly as severe. Moreover, tofersen, another gamper ASO for _SOD1_ ALS, was not reported to be associated with hydrocephalus or ventricular enlargement, though it is not clear how much they would have looked for it [[Miller 2022]]. Of course, there are likely differences in dose level, dosing frequency, or manufacturing and formulation parameters between any of these ASOs as well.

I was really touched by two quotes in the article. The father who lost his daughter said that "neurologists shouldn’t be scared of being bold and trying these kinds of drugs and helping patients with rare diseases", and the father of the other child, who stopped treatment, said that they were considering putting her back on drug, despite the risk, given the severity of her disease. The courage and grace of these parents amid their loss and struggle is really profound. It's a reminder that the reason we develop these drugs is to treat terrible, incurable diseases. Indeed, Tim Yu shared with me that with the FDA has given the go-ahead to resume valeriasen therapy for patient 2 at a lower dose, with plans to recommence underway.

Prion disease is another such terrible, incurable disease. After everything I read in researching this blog post, hydrocephalus appears dramatically less common and less severe for other ASOs tested so far. It could be one potential side effect of an ASO and it would be worth monitoring for it; if it does occur it may be treatable by draining excess spinal fluid or pausing drug. I don't believe that the tragic results reported for valeriasen should hold us back from bringing a prion disease ASO into trials. But, this is one more reminder that clinical trials are experiments, and the first-in-human dose of a drug is really the starting line and not the finish line.


[Darras 2019]: https://pubmed.ncbi.nlm.nih.gov/31420846/ "Darras BT, Farrar MA, Mercuri E, Finkel RS, Foster R, Hughes SG, Bhan I, Farwell W, Gheuens S. An Integrated Safety Analysis of Infants and Children with Symptomatic Spinal Muscular Atrophy (SMA) Treated with Nusinersen in Seven Clinical Trials. CNS Drugs. 2019 Sep;33(9):919-932. doi: 10.1007/s40263-019-00656-w. PMID: 31420846; PMCID: PMC6776494."

[Borlot 2020]: https://pubmed.ncbi.nlm.nih.gov/32167590/ "Borlot F, Abushama A, Morrison-Levy N, Jain P, Puthenveettil Vinayan K, Abukhalid M, Aldhalaan HM, Almuzaini HS, Gulati S, Hershkovitz T, Konanki R, Lingappa L, Luat AF, Shafi S, Tabarki B, Thomas M, Yoganathan S, Alfadhel M, Arya R, Donner EJ, Ehaideb SN, Gowda VK, Jain V, Madaan P, Myers KA, Otsubo H, Panda P, Sahu JK, Sampaio LPB, Sharma S, Simard-Tremblay E, Zak M, Whitney R. KCNT1-related epilepsy: An international multicenter cohort of 27 pediatric cases. Epilepsia. 2020 Apr;61(4):679-692. doi: 10.1111/epi.16480. Epub 2020 Mar 13. PMID: 32167590."

[Minikel 2020]: https://pubmed.ncbi.nlm.nih.gov/32776089/ "Minikel EV, Zhao HT, Le J, O'Moore J, Pitstick R, Graffam S, Carlson GA, Kavanaugh MP, Kriz J, Kim JB, Ma J, Wille H, Aiken J, McKenzie D, Doh-Ura K, Beck M, O'Keefe R, Stathopoulos J, Caron T, Schreiber SL, Carroll JB, Kordasiewicz HB, Cabin DE, Vallabh SM. Prion protein lowering is a disease-modifying therapy across prion disease stages, strains and endpoints. Nucleic Acids Res. 2020 Nov 4;48(19):10615-10631. doi: 10.1093/nar/gkaa616. PMID: 32776089; PMCID: PMC7641729."

[Viscidi 2021]: https://pubmed.ncbi.nlm.nih.gov/33962637/ "Viscidi E, Wang N, Juneja M, Bhan I, Prada C, James D, Lallier S, Makepeace C, Laird K, Eaton S, Dilley A, Hall S. The incidence of hydrocephalus among patients with and without spinal muscular atrophy (SMA): Results from a US electronic health records study. Orphanet J Rare Dis. 2021 May 7;16(1):207. doi: 10.1186/s13023-021-01822-4. PMID: 33962637; PMCID: PMC8105953."

[Miller 2022]: https://pubmed.ncbi.nlm.nih.gov/36129998/ "Miller TM, Cudkowicz ME, Genge A, Shaw PJ, Sobue G, Bucelli RC, Chiò A, Van Damme P, Ludolph AC, Glass JD, Andrews JA, Babu S, Benatar M, McDermott CJ, Cochrane T, Chary S, Chew S, Zhu H, Wu F, Nestorov I, Graham D, Sun P, McNeill M, Fanning L, Ferguson TA, Fradette S; VALOR and OLE Working Group. Trial of Antisense Oligonucleotide Tofersen for SOD1 ALS. N Engl J Med. 2022 Sep 22;387(12):1099-1110. doi: 10.1056/NEJMoa2204705. PMID: 36129998."


