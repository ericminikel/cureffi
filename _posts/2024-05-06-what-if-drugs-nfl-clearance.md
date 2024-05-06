---
layout: post
title:  "What if drugs can affect NfL by clearance?"
date:   2024-05-06
author: ericminikel
location: Cambridge, MA
thumb120: https://www.cureffi.org/media/2024/05/co-culture-thumbnail.png
summary200: "Our new pre-print presents evidence that minocycline increases plasma & CSF NfL, not by causing neurodegeneration, but perhaps by inhibiting NfL clearance."
---

Last week we posted a pre-print to medRxiv about the drug minocycline and the biomarker neurofilament light (NfL) [[Gentile 2024]]. The data are preliminary, but we think the implications are potentially important for neurology drug development.

### background

Neurofilament is a structural filament in neurons. It consists of heavy, medium, and light components abbreviated NfH, NfM, and NfL. For more background, see my [fluid biomarker post](/2018/08/07/survey-of-fluid-biomarkers-in-prion-disease/) from a few years ago. Almost any neurological disorder that damages or kills neurons causes neurofilament proteins to leak out, and these can be measured in plasma and cerebrospinal fluid (CSF). This makes NfL useful in diagnosis, and in monitoring potential conversion to disease in people at risk, and in monitoring treatment response. To get a sense of just how broadly NfL is used in neurology, one meta-analysis [[Bridel 2019]] looked at 35 neurological diagnoses and found that CSF NfL was elevated in nearly all of them.

In recent years, NfL has taken on a really important role in clinical development of new drugs in neurology. When FDA [granted Accelerated Approval to tofersen](/2023/04/25/tofersen-is-now-the-closest-thing-so-far/) for _SOD1_ ALS last year, it relied on the lowering of NfL as the surrogate biomarker endpoint. In the ongoing ATLAS trial of tofersen in pre-symptomatic people with _SOD1_ mutations at risk for ALS, an increase in NfL is being used as the sign of oncoming disease to trigger randomization to drug or placebo [[Benatar 2022]]. Conversely, when Novartis [dropped its branaplam program](https://en.hdbuzz.net/338) for Huntington's a year before that, it cited an increase in NfL as one reason. Experimental drugs for the brain, it seems, live or die by what they do to NfL.

People, including us, have generally always interpreted changes in NfL to reflect the state of neurodegeneration or brain damage. If NfL goes up, that signals things are worse in the brain; if NfL goes down, that signals things are better.

NfL is not normally distributed in the general population. The log of NfL is maybe very roughly normally distributed, but what that means is that the distribution of actual NfL has a skew whereby most people cluster at some low baseline while a small subset of people are very high. At left below is one example from the Alzheimer's Prevention Initiative Registry comparing people at risk for early onset Alzheimer's and controls. I've circled one person who has plasma NfL of almost 100, way, way, above the norm for their young age, and they're not even an at-risk mutation carrier, they're a control. And while on average, NfL does increase gradually as people age, if you look at any one person's trajectory, you may see large spikes and valleys. Below at right I've highlighted an example from the [London study](/2020/08/18/london-study-plasma-nfl/) of people at risk for prion disease. This was a _PRNP_ mutation carrier at risk, and indeed, they did eventually go on to develop disease, but years earlier, they had a big spike that actually went down again before they became sick.

![](/media/2024/05/quiroz_thompson_examples.png)

_From [[Quiroz 2020]] (left) and [[Thompson 2021]] (right)._

I always wondered, is there a story behind these high outliers and these wild spikes?

### the index case

In the [latest data freeze](/2023/12/20/second-data-freeze-from-mgh-cohort/) [[Vallabh 2023]] from [our own cohort study](https://www.prionalliance.org/2017/07/19/prion-alliance-sponsors-mgh-research-study/) at Mass General Hospital of people at risk for prion disease, we observed another such spike. Below, I've highlighted in yellow the fact that one at-risk individual has a transient 3.5x spike in plasma NfL and a 5.7x spike in CSF NfL:

![](/media/2024/05/spike_in_our_cohort.png)

_NfL spike in a participant in our clinical cohort, from [[Vallabh 2023]]._

At that one visit, that person's NfL was really high: higher than 2 people who went on to develop symptoms, higher than 1 individual who was already symptomatic. All other biomarkers remained normal &mdash; CSF T-tau never budged, RT-QuIC was negative. Afterwards, their NfL went back down and stayed down. (In the plot of CSF NfL at left, the later high pink dot is a different individual having a spike). The individual remained healthy at last follow-up 2 years later. In prion disease, there is only a [brief window](/2023/05/17/duration-prodrome-disease/) before onset, maybe 2 years tops, where you can detect prodromal NfL increase. Both from first principles and from all available data, NfL should generally keep going up as the person gets closer to onset. It didn't seem like that's what was going on here.

We learned that just prior to the spike, this individual had undergone a 6-week course of minocycline. Minocycline is an antibiotic, but it's widely used in dermatology, and this person had taken it for a dermatologic indication. This was interesting because there are two published trials in which patients with traumatic brain injury (TBI) or multiple sclerosis clinically isolated syndrome who got randomized to minocycline had 3-fold increases in plasma NfL after 3 months [[Scott 2018], [Camara-Lemarroy 2022]]. The reason people were running trials of minocycline in neurological conditions is that minocycline is known to inhibit microglial activation, and some people had hypothesized that this might be helpful in certain disorders. (So far, data from the trials generally have not supported this hypothesis). The interpretation in those papers was that NfL went up because minocycline made neurons less healthy. "Our results suggest that inhibition of CMA \[chronic microglial activation\] after TBI promotes neurodegeneration" [[Scott 2018]]; "A mild meurotoxic effect of minocycline cannot be ruled-out" [[Camara-Lemarroy 2022]]. Yet the patients who took minocycline in those trials didn't actually fare any worse on clinical outcomes, and one other biomarker that was measured (GFAP) was no worse either.

![](/media/2024/05/tbi_mscis.png)

_Highlights of studies in which NfL increased in patients randomized to minocycline [[Scott 2018], [Camara-Lemarroy 2022]]._

And now we had seen such an increase in NfL in a person on minocycline who had, as far as we can tell, no neurologic phenotype. They were living at risk for prion disease, but if we think that incipient disease onset was not the cause, then it's hard to imagine how minocycline would act on NfL hrough promoting neurodegeneration. The dose they took, 200 mg/day, is apparently widely used clinically in dermatology and decades of data support it generally being safe. A 3.5 or 5.7-fold increase in NfL is a big change. If this were caused by neurodegeneration, you wouldn't expect it to be silent. You'd expect minocycline to have really obvious neurologic side effects, which it does not seem to. Sure, there are some reports; there are reports of lots of side effects for lots of drugs. But again, this spike was high, higher than people in our cohort who did develop prion disease. 

We contacted Henrik Zetterberg, a longtime collaborator and NfL expert; he was second author on the TBI minocycline paper. He said that he had long felt a gap in our knowledge around the clearance mechanisms of NfL. The whole field was too focused on production and release from tissue; he suspected there could be mechanisms that would affect NfL through clearance. He said that in hindsight they might have gotten the conclusion of that TBI paper wrong. Maybe minocycline didn't worsen neurodegeneration after TBI; maybe it raised NfL through a different mechanism, perhaps related to clearance. He felt that our data endorsed this conclusion, particularly the fact that the washout was so fast: NfL returned to almost normal levels 5 weeks after the minocycline course ended, whereas the half-life of NfL increase from neuronal injury is believed to be a few months long.

We worked with IQ Proteomics to do proteomics (tandem mass tags, TMT) on the CSF samples from our research participant, and wow: the change in the CSF proteome after minocycline was _exquisitely_ specific to NfL and NfM. Basically nothing else budged. It certainly wasn't the cacophony of protein changes you might expect if massive neurodegeneration was occurring. The specificity seemed to provide evidence of a novel mechanism, perhaps one related to clearance.

![](/media/2024/05/tmt_specific.png)

_Proteomics on index case CSF pre/post minocycline, from Figure 1 of [[Gentile 2024]]._

### discarded plasma

Minocycline is widely used in dermatology, and dermatology patients are often young and otherwise healthy. If we could collect discarded plasma samples from dermatology patients, we could confirm whether minocycline generally increases NfL in young, healthy people &mdash; people not at risk for a deadly neurodegenerative disease. We wrote an IRB protocol and partnered with the Crimson Core at Brigham and Women's Hospital to start collecting samples. 

It turned out to be a lot harder than we thought. Dermatology patients don't generally need to get blood draws related to their care, so we were limited to opportunistic samples, whoever happened to get a blood draw for some other reason. We were able to gather plenty of samples from "well visit" controls and from dermatology patients treated with other, more commonly prescribed, drugs that we included as additional controls &mdash; doxycycline, isotretinoin, and topical clindamycin &mdash; but after accumulating hundreds of samples, we only had 1 individual who was nominally on minocycline at the time of blood collection. And in truth, we don't know whether anyone in this cohort is actually taking their medicines; we only know that they got a prescription. We decided this wasn't such a fruitful avenue. All the discarded samples we collected from Brigham turned out to have slightly higher than typical NfL, perhaps due to some pre-analytical variable we never untangled. (It wasn't just plate-to-plate variability, because we ran many of these samples alongside other samples from our lab and the other samples were normal). But this was true for both the dermatology patients and the well visit controls, whose NfL values were indistinguishable from each other. This meant we did get one helpful insight out of this sample collection: dermatological indications, in general, don't seem to raise NfL. That likely rules out one alternative explanation for the high NfL we saw in our index case.

![](/media/2024/05/derm_nfl.png)

_Plasma NfL in well visit controls and dermatology patients, from Figure 2 of [[Gentile 2024]]._

We also tried collecting plasma from inpatients treated with minocycline, which was slightly more fruitful. An advantage of this approach is that you know for sure that people are actually taking the drug &mdash; this is logged in detail in the medical record. A disadvantage is that inpatients can be hospitalized for all sorts of different reasons, often more than one reason, and one can make no assumption that the inpatients who get prescribed minocycline are sick in the same ways as inpatients who get prescribed some other drug. Instead of comparing person A to person B, we thought, let's select only people who have been prescribed minocycline, and then compare them to themselves and each other at times when they are on or off drug. Most people turned out to take only short courses of minocycline, and so we made a decision to call people "on" if they had been on drug at least 7 days. By these criteria, all in all, there was no significant difference between NfL in the "on" and "off" states (P = 0.06). At the same time, something was really eye-catching and hard to ignore: some (but not all) people on minocycline had really high plasma NfL &mdash; in some cases in the thousands. Thus, although these data didn't confirm our hypothesis, they also failed to convince us to give up. 

![](/media/2024/05/inpts_nfl.png)

_Plasma NfL in inpatients on/off minocycline, from Figure 2 of [[Gentile 2024]]._

### mouse studies

In parallel, we were also working on testing the relationship between minocycline and NfL in mice. In rodents, the pharmacokinetics of minocycline are unfortunately far poorer than humans, with a much shorter half-life. This meant that to get drug exposure similar to a 200 mg dose in a human (roughly 3 mg/kg in the average person), we needed a much higher dose of 50 mg/kg in mice [[Agwuh & MacGowan 2006], [Bowers 2015], [Zhou 2017]]. In our first mouse study, we saw a 4-fold increase in plasma NfL after just 6 days of treatment, followed by a rapid drop after drug was withdrawn. 

![](/media/2024/05/mouse_study_1.png)

_Plasma NfL in mice treated with minocycline, from Figure 4 of [[Gentile 2024]]._

This seemed like a resounding validation of what we had seen in the index case. At the same time, that 50 mg/kg dose was not so well tolerated in the mice, and caused significant weight loss. It was hard to rule out that maybe toxicity did contribute to the NfL signal. We did more mouse studies, and to our surprise, even under very similarly designed studies, we did not always see the same huge increase in NfL after minocycline treatment. NfL still went up, but not significantly so, and only by about 30%. We included all these data in the paper, because negative data are important too &mdash; you can't just show the data that support your hypothesis, you have to bring the reader along on your journey. After measuring NfL in a lot of mouse plasma samples to understand the "natural history" of NfL in mice, we realized that it was much more variable than we had realized, and that it actually takes a lot of animals to have statistical power to see a difference in NfL. When we came back with a better-powered study, with N=20 per group, we did see a large NfL increase again (2.6-fold), and the rapid kinetics again (return to baseline within 2 weeks). Whether statistical power was the only difference between the 4 mouse studies we ran in total, we still don't know, but there wasn't any other obvious variable that explained it.

In the final mouse study that reproduced the original NfL increase, we saw only minimal weight loss, but that doesn't rule out that there could be toxicity. We ran proteomics on the mouse brain samples, and while I can't tell you the biological meaning of any of the proteins that went up or down, there aren't a ton of them; it doesn't look like the profound change in proteomic profile that you would expect if you were looking at profound neurodegeneration.

![](/media/2024/05/mouse_study_4_tmt.png)

_Proteomic changes in the brains of mice treated with minocycline, from Figure 4 of [[Gentile 2024]]._

### human cell culture

Remember I mentioned earlier that minocycline is known to inhibit activation of microglia, a class of resident immune cells in the brain. This has been shown in many systems. For instance, in mice challenged with LPS (an inflammatory component of bacterial membranes), minocycline lowers the production of new microglia [[Shankaran 2007]]. Microglia don't just respond to inflammatory challenges, they also have a role in pruning neuronal synapses in the normal brain, and minocycline lessens this activity in mice too [[Schafer 2012]]. In the TBI clinical trial, they used PET imaging with a tracer called <sup>11</sup>C-PBR28, which binds a protein on activated microglia, to show that the patients randomized to minocycline had fewer activated microglia [[Scott 2018]].

So in Henrik's lab, they worked on growing co-cultures of human neurons with human microglia, both derived from induced pluripotent stem cells. In this system you've got the two cell types that might be important &mdash; the microglia where minocycline is thought to act, and the neurons where NfL is produced. They treated the co-cultures with minocycline, and there was no obvious visual change, meaning, it didn't look like the minocycline was toxic or killing the cells.

![](/media/2024/05/coculture_appearance.png)

_Human neuron/microglia cultures treated with minocycline, from Figure 5 of [[Gentile 2024]]._

They measured the NfL released from the cells, and found that it went up about 3-fold in the minocycline-treated cells.

![](/media/2024/05/coculture_nfl.png)

This, too, seems to provide support for the conclusion that minocycline increases NfL even absent any predisposition to neurodegeneration.

### conclusions

We suspect that what this all means is that minocycline inhibits the clearance of NfL from CSF and plasma, causing its level to rise. The idea that the mechanism is clearance, not production or release of NfL, is supported by a few observations. First, that a big increase in NfL can happen in a healthy person at a normally used clinical dose of minocycline, where we don't think neurodegeneration or toxicity should play much of a role. Second, that the change is so specific to NfL &mdash; we don't see a ton of other proteomic changes in the CSF. Third, that the kinetics were so rapid &mdash; both human and mouse data show a massive drop in NfL 2-5 weeks after drug is stopped, whereas if minocycline were neurotoxic, the damage should have had a much longer hangover of a few months.

There are a lot of limitations to everything we did above. 

Our index case is just one person. Our discarded plasma study didn't give a definitive answer, and we couldn't explain why there was somewhat higher than usual NfL across the board, even in controls who had a "well visit" with their doctor. The different mouse studies we did were not in perfect agreement as to the degree to which minocycline increased NfL, and anyway, the mouse studies used a higher dose than what is used clinically. And cell cultures are just cell cultures, it's not the same as in vivo data. Is it possible that the universe conspired to trick us? That the NfL spike we saw in our index case had some other explanation, the high NfL in some inpatients was a coincidence, and the high NfL in the mice ad cells was just toxicity? It starts to seem unlikely, but I can't 100% rule it out. We shared the negative data along with the positive so that you can join us on our journey of uncertainty.

There are also lots of mysteries we didn't unravel. There is plenty of existing evidence that minocycline inhibits microglia, but so what? Do microglia grab free-floating NfL molecules and digest them? Or does it relate to that role of pruning synapses in the normal brain &mdash; maybe if microglia don't do that, the synapses eventually break down and release NfL?

Given how much we don't know, it was a difficult decision to decide to stop here and tell the world about our study findings. It was always tempting to think that clearer answers were just around the corner, but in science, you never know how much deeper you have to dig before you strike gold. Our lab's mission is to develop a drug for prion disease, and at some point, we couldn't justify spending more time and money on understanding how minocycline increases NfL. We considered using the data collected so far to submit funding proposals to carry the work forward, but wise mentors of ours advised against it, because then we'd just be even more committed to chasing down something that isn't our lab's core mission.

At the same time, despite all the limitations, it didn't seem right to leave these data "in the desk drawer". If what we suspect is true, the implications could be important. Across many neurology drug development efforts, people are operating on the assumption that if a drug makes NfL go up, it killed or harmed neurons, and if a drug makes NfL go down, it saved neurons. And most of the time, this assumption is probably correct (including, I believe, for [tofersen](/2023/04/25/tofersen-is-now-the-closest-thing-so-far/), which both lowered NfL and also seems to have slowed clinical decline by a bit). But the example of minocycline suggests there could be exceptions. We should not take it for granted that changes in NfL always signal changes neuronal health; some might signal changes in clearance. This is an important possibility to keep in mind for many clinical trials, including in our disease.



[Agwuh & MacGowan 2006]: https://pubmed.ncbi.nlm.nih.gov/16816396/ "Agwuh KN, MacGowan A. Pharmacokinetics and pharmacodynamics of the tetracyclines including glycylcyclines. J Antimicrob Chemother. 2006 Aug;58(2):256-65. doi: 10.1093/jac/dkl224. Epub 2006 Jul 1. PMID: 16816396."

[Shankaran 2007]: https://pubmed.ncbi.nlm.nih.gov/17551981/ "Shankaran M, Marino ME, Busch R, Keim C, King C, Lee J, Killion S, Awada M, Hellerstein MK. Measurement of brain microglial proliferation rates in vivo in response to neuroinflammatory stimuli: application to drug discovery. J Neurosci Res. 2007 Aug 15;85(11):2374-84. doi: 10.1002/jnr.21389. PMID: 17551981."

[Schafer 2012]: https://pubmed.ncbi.nlm.nih.gov/22632727/ "Schafer DP, Lehrman EK, Kautzman AG, Koyama R, Mardinly AR, Yamasaki R, Ransohoff RM, Greenberg ME, Barres BA, Stevens B. Microglia sculpt postnatal neural circuits in an activity and complement-dependent manner. Neuron. 2012 May 24;74(4):691-705. doi: 10.1016/j.neuron.2012.03.026. PMID: 22632727; PMCID: PMC3528177."

[Bowers 2015]: https://pubmed.ncbi.nlm.nih.gov/25712362/ "Bowers DR, Cao H, Zhou J, Ledesma KR, Sun D, Lomovskaya O, Tam VH. Assessment of minocycline and polymyxin B combination against Acinetobacter baumannii. Antimicrob Agents Chemother. 2015 May;59(5):2720-5. doi: 10.1128/AAC.04110-14. Epub 2015 Feb 23. PMID: 25712362; PMCID: PMC4394818."

[Zhou 2017]: https://pubmed.ncbi.nlm.nih.gov/28264853/ "Zhou J, Ledesma KR, Chang KT, Abodakpi H, Gao S, Tam VH. Pharmacokinetics and Pharmacodynamics of Minocycline against Acinetobacter baumannii in a Neutropenic Murine Pneumonia Model. Antimicrob Agents Chemother. 2017 Apr 24;61(5):e02371-16. doi: 10.1128/AAC.02371-16. PMID: 28264853; PMCID: PMC5404596."

[Scott 2018]: https://pubmed.ncbi.nlm.nih.gov/29272357/ "Scott G, Zetterberg H, Jolly A, Cole JH, De Simoni S, Jenkins PO, Feeney C, Owen DR, Lingford-Hughes A, Howes O, Patel MC, Goldstone AP, Gunn RN, Blennow K, Matthews PM, Sharp DJ. Minocycline reduces chronic microglial activation after brain trauma but increases neurodegeneration. Brain. 2018 Feb 1;141(2):459-471. doi: 10.1093/brain/awx339. PMID: 29272357; PMCID: PMC5837493."

[Bridel 2019]: https://pubmed.ncbi.nlm.nih.gov/31206160/ "Bridel C, van Wieringen WN, Zetterberg H, Tijms BM, Teunissen CE; and the NFL Group; Alvarez-Cermeño JC, Andreasson U, Axelsson M, Bäckström DC, Bartos A, Bjerke M, Blennow K, Boxer A, Brundin L, Burman J, Christensen T, Fialová L, Forsgren L, Frederiksen JL, Gisslén M, Gray E, Gunnarsson M, Hall S, Hansson O, Herbert MK, Jakobsson J, Jessen-Krut J, Janelidze S, Johannsson G, Jonsson M, Kappos L, Khademi M, Khalil M, Kuhle J, Landén M, Leinonen V, Logroscino G, Lu CH, Lycke J, Magdalinou NK, Malaspina A, Mattsson N, Meeter LH, Mehta SR, Modvig S, Olsson T, Paterson RW, Pérez-Santiago J, Piehl F, Pijnenburg YAL, Pyykkö OT, Ragnarsson O, Rojas JC, Romme Christensen J, Sandberg L, Scherling CS, Schott JM, Sellebjerg FT, Simone IL, Skillbäck T, Stilund M, Sundström P, Svenningsson A, Tortelli R, Tortorella C, Trentini A, Troiano M, Turner MR, van Swieten JC, Vågberg M, Verbeek MM, Villar LM, Visser PJ, Wallin A, Weiss A, Wikkelsø C, Wild EJ. Diagnostic Value of Cerebrospinal Fluid Neurofilament Light Protein in Neurology: A Systematic Review and Meta-analysis. JAMA Neurol. 2019 Sep 1;76(9):1035-1048. doi: 10.1001/jamaneurol.2019.1534. PMID: 31206160; PMCID: PMC6580449."

[Quiroz 2020]: https://pubmed.ncbi.nlm.nih.gov/32470423/ "Quiroz YT, Zetterberg H, Reiman EM, Chen Y, Su Y, Fox-Fuller JT, Garcia G, Villegas A, Sepulveda-Falla D, Villada M, Arboleda-Velasquez JF, Guzmán-Vélez E, Vila-Castelar C, Gordon BA, Schultz SA, Protas HD, Ghisays V, Giraldo M, Tirado V, Baena A, Munoz C, Rios-Romenets S, Tariot PN, Blennow K, Lopera F. Plasma neurofilament light chain in the presenilin 1 E280A autosomal dominant Alzheimer's disease kindred: a cross-sectional and longitudinal cohort study. Lancet Neurol. 2020 Jun;19(6):513-521. doi: 10.1016/S1474-4422(20)30137-X. Epub 2020 May 26. PMID: 32470423; PMCID: PMC7417082."

[Thompson 2021]: https://pubmed.ncbi.nlm.nih.gov/33674752/ "Thompson AGB, Anastasiadis P, Druyeh R, Whitworth I, Nayak A, Nihat A, Mok TH, Rudge P, Wadsworth JDF, Rohrer J, Schott JM, Heslegrave A, Zetterberg H, Collinge J, Jackson GS, Mead S. Evaluation of plasma tau and neurofilament light chain biomarkers in a 12-year clinical cohort of human prion diseases. Mol Psychiatry. 2021 Oct;26(10):5955-5966. doi: 10.1038/s41380-021-01045-w. Epub 2021 Mar 5. PMID: 33674752; PMCID: PMC8758487."

[Camara-Lemarroy 2022]: https://pubmed.ncbi.nlm.nih.gov/35848622/ "Camara-Lemarroy C, Metz L, Kuhle J, Leppert D, Willemse E, Li DK, Traboulsee A, Greenfield J, Cerchiaro G, Silva C, Yong VW. Minocycline treatment in clinically isolated syndrome and serum NfL, GFAP, and metalloproteinase levels. Mult Scler. 2022 Nov;28(13):2081-2089. doi: 10.1177/13524585221109761. Epub 2022 Jul 18. PMID: 35848622; PMCID: PMC9574233."

[Benatar 2022]: https://pubmed.ncbi.nlm.nih.gov/35585374/ "Benatar M, Wuu J, Andersen PM, Bucelli RC, Andrews JA, Otto M, Farahany NA, Harrington EA, Chen W, Mitchell AA, Ferguson T, Chew S, Gedney L, Oakley S, Heo J, Chary S, Fanning L, Graham D, Sun P, Liu Y, Wong J, Fradette S. Design of a Randomized, Placebo-Controlled, Phase 3 Trial of Tofersen Initiated in Clinically Presymptomatic SOD1 Variant Carriers: the ATLAS Study. Neurotherapeutics. 2022 Jul;19(4):1248-1258. doi: 10.1007/s13311-022-01237-4. Epub 2022 May 18. Erratum in: Neurotherapeutics. 2022 Sep 29;: PMID: 35585374; PMCID: PMC9587202."

[Vallabh 2023]: https://doi.org/10.1101/2023.12.18.23300042 "Sonia M Vallabh, Meredith A Mortberg, Shona W Allen, Ashley C Kupferschmid, Pia Kivisakk, Bruno L Hammerschlag, Anna Bolling, Bianca A Trombetta, Kelli Devitte-McKee, Abaigeal M Ford, Lauren Sather, Griffin Duffy, Ashley Rivera, Jessica Gerber, Alison J McManus, Eric Vallabh Minikel, Steven E Arnold. Biomarker changes preceding symptom onset in genetic prion disease. medRxiv. 2023 Dec 18;2023.12.18.23300042."

[Gentile 2024]: https://doi.org/10.1101/2024.05.01.24306384 "Gentile JE, Heiss C, Corridon TL, Mortberg MA, Fruhwurth S, Guzman K, Chan K, Herring NC, Janicki T, Nhass R, Sarathy JM, Erickson B, Kunz R, Erickson A, Braun C, Henry K, Bry L, Arnold S, Minikel EV, Zetterberg H, Vallabh SM. Evidence that minocycline treatment confounds the interpretation of neurofilament as a biomarker. medRxiv. 2024 May 1; DOI: 10.1101/2024.05.01.24306384"