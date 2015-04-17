---
layout: post
title:  "Genetics in medicine 11: Schizophrenia and bipolar disorder"
date:   2015-04-17 12:01:00
author: ericminikel
tag: genetics-228
location: Cambridge, MA
summary200: "Roy Perlis and Ben M. Neale discuss the clinical aspects and genetics of psychiatric disease."
---

*These are my notes from week 11 of Harvard's [Genetics 228: Genetics in Medicine from Bench to Bedside](http://www2.massgeneral.org/bbs/gen228/gen228_syllabus_material.asp) course, held on April 17, 2015. Lectures by [Ben Neale](https://www.broadinstitute.org/scientific-community/science/programs/psychiatric-disease/stanley-center-psychiatric-research/benjam) of ATGU / the Stanley Center, and [Roy Perlis](http://chgr.org/index-faculty_perlis.html) of the Center for Experimental Drugs and Diagnostics at MGH.*

### Journal club: *Synaptic, transcriptional and chromatin genes disrupted in autism* [[De Rubeis 2014]]

This paper is the latest and largest in a series of autism exome sequencing studies. They combined 16 different existing datasets including standalone probands, trios, and controls. They developed a method they call TADA for assigning genes combined risk scores based on all available information from different inheritance modes or analyses. In other words, they manage to account for *de novo* mutations in trios, transmitted variants in trios, and rare variant association between cases and controls, all in one statistical model.

Using their most stringent threshold, a false discovery rate <1%, they find 22 genes, all of which have been previously reported in the literature as associated with autism. Though that isn't necessarily exciting, it's reassuring that their model is sound. Under a looser FDR of 30%, they found 107 genes, most of which were not previously associated with autism, so much of the paper is spent analyzing this set of 107. These genes are enriched for high missense constraint according to the Samocha-Daly constraint model, run on the ESP dataset [[Samocha 2014]]. They are also enriched for genes known to interact with FMRP (which might just be a proxy for "expressed in the brain"), involved in synaptic signaling or chromatin remodeling. Those are all things that were already known in the literature - and indeed, many (most?) of the underlying cases that drove those associations in previous studies are actually included in this dataset as well. Still, by combining data from so many different studies, and by combining information from different inheritance modes, this study provides important validation of these phenomena. By combining these studies, they also gained power to implicate many additional genes, most of which will probably eventually prove to be truly autism-associated, even if no single one of them can be classified with high confidence today.

#### Q&A

Q. For association studies like these, how do you identify people with a particular psychiatric disease? How leaky are the diagnostic criteria, and how confident can you be that you've ascertained people with a specific syndrome or constellation of clinical signs?

A. (Answered in the form of a debate between Ben Neale and Roy Perlis). One strategy is to use DSM-V diagnostic criteria. As much as one can criticize DSM, the DSM-V and DSM-IV have succeeded in identifying phenotypes that have proven to be highly heritable, suggesting they are measuring something that has a particular molecular basis. (This was less true of DSM-I and DSM-II which were "analytic"). In other cases, people have simply used the binary variable of whether you've been prescribed clozapine. Clozapine causes agranulocytosis in 1-3% of people, which is when it kills white blood cells, leaving you in an immune-compromised state. If run to completion, this requires a bone marrow transplant, which is life-threatening. Because this adverse effect is so severe, clozapine is a third-line choice - it is only prescribed to individuals who have very serious mental illness and have not responded to any first- or second-line therapies. Therefore being prescribed clozapine is considered to be a highly specific indicator of whether someone has severe psychiatric disease.

### [Roy Perlis](http://chgr.org/index-faculty_perlis.html): A clinical perspective on bipolar disease

Schizophrenia and bipolar disease are unique in that people can be extremely impaired and yet can still function at a very high level in their career or school.

Here is a cartoonishly brief history of psychiatric diagnosis:

+ Before the common era, for instance in ancient Greece, there were concepts of mania, melancholia, and delusions - though not of schizophrenia per se. The Greeks never put these symptoms together into a disease or syndrome definition.
+ The mid-1800s were the "age of categorization". Emil Kraepelin made a great effort to categorize his psychiatric patients. He made a perhaps false, but enduring, distinction between folks who were admitted to the hospital transiently, and those who were admitted and deteriorated progressively without ever getting better. Mood disorders versus dementias.
+ In 1905, *T. pallidum* was isolated from syphilis patients. Thus, neurosyphilis became the first psychiatric disorder with a known etiology. It was later cured. In fact, today people no longer even think of syphilis as being classified under the heading of psychiatric disease. Before 1905, there were whole textbooks about syphilis, and this shrunk gradually to a chapter in psychiatry textbooks, and then to a paragraph today.
+ In the early 1900s, Freud and the psychoanalysts said a lot of memorable things about psychology/psychiatry. One textbook from this era contains a spot-on description of bipolar disorder, and another chapter by Vigant (?) introduces the concept of overlap in diagnostic areas, for instance between schizophrenia and bipolar. That concept didn't make it back into the discourse until very recently. So those psychoanalysts did have some things figured out, though most of their constructs were not particularly useful to modern biology or genetics.

All physicians should know about schizophrenia/bipolar because:

+ Lifetime risk in the general population is ~3%
+ Lifetime suicide risk in these individuals is increased 20-fold
+ Treatment with antidepressants often makes the disease worse by increasing recurrence frequency. Thus, misdiagnosis can be deadly.

In addition to elevated risk of suicide, people with schizophrenia/bipolar have increased odds ratios for a wide variety of causes of death. Accidents are very prominent (OR &asymp; 2), and heart disease and stroke are elevated (OR &asymp; 1.3 or so). Some, but not all, of this risk is explained by smoking - half of all cigarettes in the U.S. are smoked by people with severe psychiatric illness. We still don't understand the basis for the elevated cardiovascular risk that is not explained by smoking - it might be that there are peripheral phenotypes we haven't identified yet.

Bipolar disorder involves episodic changes in mood, with manic or hypomanic symptoms, and depressive symptoms. These don't necessarily follow a sine wave - sometimes people experience manic and depressive symptoms at the exact same moment.

Mania is diagnosed based on:

+ At least 1 week&dagger; of elevated or irritable mood *and* increased energy/activity. That energy/activity needs to be objectively observable by others (usually the doctor will ask, has your partner/relative/friend mentioned that you seem to have increased energy?)
+ At least 3 of the following&Dagger;:
    + Distractability
    + Impulsivity
    + Grandiosity
    + Racing thoughts
    + Goal-directed activity, agitation
    + Decreased need for sleep
    + Talking rapidly / pressured speech
+ Exclusion of any other general medical condition that might be causing said symptoms

&dagger;Or any amount of time, if it results in hospitalization.

&Dagger;4 of these are required, if the person is only irritable and doesn't have elevated mood.

All of these should be considered as changes from baseline. For instance, reckless driving can be one indicator of impulsivity - but it depends on how reckless the person normally drives. Driving 5 mph over the speed limit is normal in most people but could be considered a change from baseline in an elderly individual who normally drives 5-10 mph under the speed limit.

Also note that these phenotypes have to be episodic in order to qualify as mania. So-called ["hyperthymic"](http://en.wikipedia.org/wiki/Hyperthymic_temperament) people who are just on all the time and never sleep much are not manic.

"Hypomania" just means a little bit of mania. That is defined as only 4 days of the above symptoms, and not causing major problems in their life. People don't often complain about hypomania. Hypomania is more likely to come to clinical attention if it is coupled with depression, a combination called "bipolar type 2".

Typical age of onset for bipolar is often considered to be 15-25. However, retrospective studies - asking adults with a diagnosis at what time their first symptoms arose - show that 1/3 of people have onset before age 13, and there are now some prospective studies to support this as well. Thus, bipolar may be in part a neurodevelopmental disorder. There are also a small number of people with first symptoms after age 40 - often, these turn out to be associated with other medical events such as strokes.

Sleep deprivation tends to trigger a manic episode in people with bipolar disorder. A subset of bipolar patients also have a strong seasonality to their illness, where early spring triggers mania or hypomania. For some patients this is highly reliable - there are people who have a manic episode reliably every February.

#### Q&A

Q. Do traumatic events ever trigger these psychiatric illnesses?

A. It is fairly common for a person to have their first episode after a traumatic event. It has long been recognized that depression is associated with trauma, and it's now increasingly recognized that bipolar is too. This can sometimes be surprising - some people become manic, not depressed, after experiencing the loss of a loved one. There also exist non-traumatic environmental triggers - for example, some people may experience a manic episode after receiving a large dose of steroids for asthma, or certain treatments for multiple sclerosis.

### [Ben Neale](https://www.broadinstitute.org/scientific-community/science/programs/psychiatric-disease/stanley-center-psychiatric-research/benjam): Progress in psychiatric genetics

#### Schizophrenia

There are basically four classes of drugs for psychiatric disease [[Hyman 2012]]:

| drug class | example | target |
| ---- | ---- | ---- |
| mood stabilizers | lithium | GSK3&beta; |
| antipsychotics | chlorpromazine | dopamine D<sub>2</sub> receptor |
| antidepressants | imipramine | monoamine oxidase, norepinephrine and serotonin transporters |
| benzodiazepine receptor antagonists | chlordiazepoxide | GABA<sub>A</sub> receptor |

Even among these, the molecular target is not always clear - there is much evidence that GSK3&beta; is the target of lithium, but it is still not certain.

In any event, there has not been any psychiatric drug with a new target since the 1960s. Psychiatric diseases, especially schizophrenia and autism, are among the most heritable complex diseases in humans [[Sullivan 2012]], and are also incredibly prevalent. They are also among the most stigmatized.

The first GWAS in schizophrenia actually found no clearly genome-wide significant hits [[International Schizophrenia Consortium 2009]]. They found, however, that if you took the most *nearly* significant hits and used them to create a polygenic risk score, it would weakly but significantly predict the presence of a psychiatric phenotypes, even across different cohorts and even across diagnostic boundaries into bipolar disorder. This suggested that schizophrenia really was highly heritable, but that there were just thousands and thousands of risk alleles, all of very small effect size. It was predicted that if enough samples were genotyped or sequence, the causal alleles could indeed be found.

The psychiatry field had historically been pretty contentious, but amazingly, Patrick Sullivan was able to organize the Psychiatric Genomics Consortium (PGC) and get over 300 investigators at 80 institutions in 20 countries to share data, with the goal of actually amassing enough samples to find those risk alleles of very small effect size. An important factor in getting everyone to collaborate was establishing a "neutral territory": Danielle Posthuma in the Netherlands starteds a compute cluster to hold all the data, and established clear criteria for data access to ensure that the data would be as open as possible and wouldn't be held hostage by partisan investigators.

PGC's first GWAS on about 9,000 cases and 12,000 controls, published in 2011, identified five genome-wide significant loci [[PGC 2011]]. It was met almost immediately by critiques from Mary Claire King et al, claiming that the results were due to population stratification. But by the next year, PGC researchers presented at a conference in Hamburg a slide showing 62 genome-wide significant loci in a study of 26,000 cases versus 28,000 controls, and the crowd burst into spontaneous applause. The large number of loci identified indicated that success in psychiatric GWAS was indeed possible, and that indeed, the genetics of schizophrenia could indeed be dissected just as surely as the genetic basis of height or diabetes. In a way, this was even a validation that the phenotype of schizophrenia was real - that this disease has its roots in real biology and not "demonic possession" or any of the other silly things that people have claimed over the years.

As of today, there are >100 loci robustly associated with schizophrenia, all with odds ratios in the range of 1.05 to 1.20, and it is believed there are probably thousands of additional loci of even smaller effect size, yet to be discovered. Such small effect sizes preclude most types of wet lab experiments, where you might need an odds ratio of 10 in order to have an effect you can observe. But note that even in Mendelian diseases, where effect sizes can be virtually infinite, there are few therapeutics. Indeed, there isn't much evidence to suggest that a high observed effect size is a requirement in order to make therapeutics possible.

One encouraging sign is that there is a GWAS hit at the *DRD2* locus. Although the causal variant is not known with certainty, it appears likely to be in *DRD2*, which encodes the dopamine D<sub>2</sub> receptor, the target of anti-psychotic drugs.

Pathway analysis of schizophrenia GWAS loci has implicated the synapse as an important area. And the immune system is also implicated, though the reason for this is not yet clear.

One exciting development in the field is the use of common genetic variation to infer heritability. The basic principle is that the more of your genome you share with someone, the more of your phenotype you should share. This has led to new tools like GCTA [[Lee 2011], [Yang 2011]]. 

The current PGC dataset has 40K controls and 33K cases, mostly in five diagnostic categories (schizophrenia, bipolar, major depression, autism spectrum, and ADHD). Now, using the new tools to explore heritability based on common variation, we can ask how much of the genetic basis is shared between these different disorders. At last, we have the ability to ask the question of whether Kraepelin was right to assign people into particular diagnostic categories - in other words, are schizophrenia cases only similar to other schizophrenia cases? Or do the diagnostic boundaries blur? The PGC's cross-disorder working group has found that the genetic correlation score between schizophrenia and bipolar is 0.7, which is enormous [[Maier 2015]]. (For perspective, before this result was reported, two major names in the field had a bet going as to whether the result would be greater than or less than 0.1). There is also significant genetic correlation between bipolar and major depression, schizophrenia and major depression, major depression and ADHD, and schizophrenia and autism.

We often think of schizophrenia in Hollywood terms - positive symptoms such as delusions. Schizophrenia is also associated with many negative symptoms, though, such as anhedonia - lack of pleasure, flattened affect, etc. Some of these symptoms are also seen in autism. So it makes sense that there would be some genetic correlation between these different phenotypes. But in spite of the surprisingly high genetic correlation, it is still the case that the genetic correlation is highest between schizophrenia and schizophrenia, as opposed to between schizophrenia and anything else. So there must also be genetic factors that are specific to each diagnostic category.

#### Autism spectrum disorder

The estimated prevalence of autism, depending on which studies you look at, has risen from about .04% in the 1960s to about 1% today. If you ask older or middle-aged people today whether they know of anyone their own age who has ADHD, they would probably say no - simply because when their generation was growing up, there was not considered to be any such thing as ADHD. But today, most everybody knows someone who has ADHD. So some of the change in perceived prevalence has to do with changes in diagnostic criteria and categories. In tandem with the rise in autism prevalence over the past 50 years, the proportion of kids with an autism diagnosis who also had intellectual disability has dropped from >70% to about 40%. So there has been a fair amount of decoupling of autism and intellectual disability into separate categories.

[Sir Francis Galton](http://en.wikipedia.org/wiki/Francis_Galton), a cousin of Charles Darwin, was an important figure in genetics who did many great things and many deplorable things. He invented regression, and twin and family studies, and weirdly, the [isobar](http://en.wikipedia.org/wiki/Contour_line#Barometric_pressure) used in meteorology, but he was also a eugenicist. In his time, so little was known about anything that it was possible to make major contributions to several unrelated areas. Those were good days to be a man about town in scienceland.

Regression and twin/family studies have shown that psychiatric diseases are highly heritable. Yet psychiatric disease is also associated with dramatically reduced fecundity [[Power 2013]] - for instance, someone with a schizophrenia diagnosis has, on average, only 1/3 as many children as their unaffected sibling does. This potentially large selection coefficient means that any genetic variants that confer psychiatric disease risk will be constrained to either be very rare, or have very small effect sizes.

*De novo* variants, however, are not constrained in this way - they haven't yet been exposed to selection, so there can be variants of large effect size that aggregate in the same gene in >1 patient in your cohort. Indeed, *de novo* varaints in kids with autism are modestly but significantly enriched for missense and loss-of-function variants, particularly in mutation-sensitive (constrained) genes [[Samocha 2014]]. In some cases, *de novo* variants have led to the identification of specific genes that confer autism risk, such as *SYNGAP1*, *DYRK1A*, *SCN2A*, *ARID1B*, and *SUV420H1*. And the variants identified in these *de novo* studies are fundamentally different from the causal variants identified in GWAS - the *de novo* variants are likely to have fairly high penetrance - some might confer an 80% risk of autism.

A useful concept is the **liability threshold model**. Suppose we had a binary phenotype, tall (>6') vs. not tall (<6') - that wouldn't be as useful as the normally distributed continuous phenotype that actual height is. In autism, we tend to use a dichotomous phenotype, but underlying that is some sort of liability based on genetics, environment, etc., where only the people who cross some threshold present with the phenotype. The male:female ratio in autism is ~4:1. The thinking is that this is because there is a higher liability threshold in females. In other words, girls can tolerate a worse genome and maybe a worse environment than boys can before crossing the line into the autism spectrum. This means that girls who *do* present with autism must have stronger genetic risk factors than the corresponding boys.

And indeed, it turns out that girls with an autism diagnosis are 2.0x as likely to have a *de novo* missense or LoF mutation in the top 20 or 30 autism-associated genes. Among the next 75 most autism-associated genes, the ratio drops to ~1.3x. This implies that the first 20 or so genes have large effect sizes with perhaps 80% risk, while the next tier of genes have more like 3 to 5% absolute risk. 

Those first 20 or 30 genes are highly constrained (intolerant of mutation), overlap with intellectual disability or other severe phenotypes, and do not contribute to the observed heritability because they are removed from the population by natural selection very rapidly. The lower tier of associated genes is less associated with intellectual disability, and may represent factors more specific to autism as opposed to general neurodevelopmental disorders.

Individuals with autism who have a *de novo* LoF mutation are more likely than other individuals with autism to also have intellectual disability. Among children who cannot complete an IQ test, about 18% of males and 30% of females have a *de novo* LoF. Among children who do complete the IQ test, there is an inverse linear correlation between IQ and the probability of a *de novo* LoF being present.

Average IQ for individuals with autism is about 80, and for individuals with schizophrenia is about 92. In both cases, there is huge variance and there are plenty of people with IQ above the population average. 

Among autism cases ascertained for genetics studies, ~5% have a *de novo* LoF, and ~8% have a *de novo* missense. The individuals ascertained for these studies tend to be slightly more severe cases than autism in the general population, so the figure in the population is probably slightly lower. But even if you take it at face value, these variants are still found in only 13% of people with autism, meaning that we still can't identify a genetic basis for most autism cases.

There is much difficult work yet to do - translating the findings from genetics into new drug targets and ultimately new drugs will be a long road.

#### Q&A

Q. Aren't there large effect size variants in psychiatric disease? What about VCFS?

A. VCFS stands for velocardiofacial syndrome. It is caused by a large chromosomal deletion, and most people with that syndrome do also present with psychiatric disease. There are other similar examples, for instance 16p11.2. Because these are large CNV deletions, it is an ongoing challenge to identify the causal gene(s) within the deleted regions. There is a lot we still don't know, including whether the genes that are causal in these syndromes also contribute to schizophrenia risk in individuals without the large deletions.

Q. Has anyone done a GWAS stratified on schizophrenia age of onset?

A. Some people have looked at this and haven't found anything interesting. Part of the problem is that the measurement of age of onset is fuzzy. In order to get a schizophrenia diagnosis, you usually need to have at least one psychotic break. Yet after you've gotten the diagnosis, if you look back and ask when the first symptoms arose, there were often early warning signs long before that break.

Q. Are polygenic risk scores predictive of individual risk?

A. No. They are population statistics. They are highly significant, and yet still very bad at predicting any one individual's risk. If you compare the top and bottom decile of people in terms of their polygenic risk score, you still only get an odds ratio of 5.

Q. Are there any diseases that are considered to be Mendelian forms of schizophrenia?

A. Not really; VCFS, discussed earlier, is probably the closest thing. But partly this is because of how we diagnose people. You need to be at least 16, probably 18 years old in order to receive a schizophrenia diagnosis. A highly penetrant Mendelian allele would probably cause people to be affected earlier in childhood, at which point the disease would tend to be classified as autism or something, rather than schizophrenia.

Q. What explains the 4:1 sex bias in autism?

A. Probably not very much of it is X-linked genetic variation. Some of it may be sex-specific biology, such as hormones or something. Some of it could be social - maybe parents encourage pro-social behavior more in girls than in boys. But the truth is, we really don't know at present.


[De Rubeis 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25363760 "De Rubeis S, He X, Goldberg AP, Poultney CS, Samocha K, Cicek AE, Kou Y, Liu L, Fromer M, Walker S, Singh T, Klei L, Kosmicki J, Shih-Chen F, Aleksic B, Biscaldi M, Bolton PF, Brownfeld JM, Cai J, Campbell NG, Carracedo A, Chahrour MH, Chiocchetti AG, Coon H, Crawford EL, Curran SR, Dawson G, Duketis E, Fernandez BA, Gallagher L, Geller E, Guter SJ, Hill RS, Ionita-Laza J, Jimenz Gonzalez P, Kilpinen H, Klauck SM, Kolevzon A, Lee I, Lei I, Lei J, Lehtimäki T,  Lin CF, Ma'ayan A, Marshall CR, McInnes AL, Neale B, Owen MJ, Ozaki N, Parellada  M, Parr JR, Purcell S, Puura K, Rajagopalan D, Rehnström K, Reichenberg A, Sabo A, Sachse M, Sanders SJ, Schafer C, Schulte-Rüther M, Skuse D, Stevens C, Szatmari P, Tammimies K, Valladares O, Voran A, Li-San W, Weiss LA, Willsey AJ, Yu TW, Yuen RK; DDD Study; Homozygosity Mapping Collaborative for Autism; UK10K Consortium, Cook EH, Freitag CM, Gill M, Hultman CM, Lehner T, Palotie A, Schellenberg GD, Sklar P, State MW, Sutcliffe JS, Walsh CA, Scherer SW, Zwick ME, Barett JC, Cutler DJ, Roeder K, Devlin B, Daly MJ, Buxbaum JD. Synaptic, transcriptional and chromatin genes disrupted in autism. Nature. 2014 Nov 13;515(7526):209-15. doi: 10.1038/nature13772. Epub 2014 Oct 29. PubMed PMID: 25363760."

[Samocha 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25086666 "Samocha KE, Robinson EB, Sanders SJ, Stevens C, Sabo A, McGrath LM, Kosmicki JA, Rehnström K, Mallick S, Kirby A, Wall DP, MacArthur DG, Gabriel SB, DePristo  M, Purcell SM, Palotie A, Boerwinkle E, Buxbaum JD, Cook EH Jr, Gibbs RA, Schellenberg GD, Sutcliffe JS, Devlin B, Roeder K, Neale BM, Daly MJ. A framework for the interpretation of de novo mutation in human disease. Nat Genet. 2014 Sep;46(9):944-50. doi: 10.1038/ng.3050. Epub 2014 Aug 3. PubMed PMID: 25086666; PubMed Central PMCID: PMC4222185."

[Hyman 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23052291 "Hyman SE. Revolution stalled. Sci Transl Med. 2012 Oct 10;4(155):155cm11. doi: 10.1126/scitranslmed.3003142. PubMed PMID: 23052291."

[Sullivan 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22777127 "Sullivan PF, Daly MJ, O'Donovan M. Genetic architectures of psychiatric disorders: the emerging picture and its implications. Nat Rev Genet. 2012 Jul 10;13(8):537-51. doi: 10.1038/nrg3240. Review. PubMed PMID: 22777127; PubMed Central PMCID: PMC4110909."

[International Schizophrenia Consortium 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19571811/ "International Schizophrenia Consortium, Purcell SM, Wray NR, Stone JL, Visscher PM, O'Donovan MC, Sullivan PF, Sklar P. Common polygenic variation contributes to risk of schizophrenia and bipolar disorder. Nature. 2009 Aug 6;460(7256):748-52. doi: 10.1038/nature08185. Epub 2009 Jul 1. PubMed PMID: 19571811; PubMed Central PMCID: PMC3912837."

[PGC 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21926974 "Schizophrenia Psychiatric Genome-Wide Association Study (GWAS) Consortium. Genome-wide association study identifies five new schizophrenia loci. Nat Genet.  2011 Sep 18;43(10):969-76. doi: 10.1038/ng.940. PubMed PMID: 21926974; PubMed Central PMCID: PMC3303194."

[Yang 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21167468/ "Yang J, Lee SH, Goddard ME, Visscher PM. GCTA: a tool for genome-wide complex  trait analysis. Am J Hum Genet. 2011 Jan 7;88(1):76-82. doi: 10.1016/j.ajhg.2010.11.011. Epub 2010 Dec 17. PubMed PMID: 21167468; PubMed Central PMCID: PMC3014363."

[Lee 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21376301 "Lee SH, Wray NR, Goddard ME, Visscher PM. Estimating missing heritability for  disease from genome-wide association studies. Am J Hum Genet. 2011 Mar 11;88(3):294-305. doi: 10.1016/j.ajhg.2011.02.002. Epub 2011 Mar 3. PubMed PMID:  21376301; PubMed Central PMCID: PMC3059431."

[Maier 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25640677 "Maier R, Moser G, Chen GB, Ripke S; Cross-Disorder Working Group of the Psychiatric Genomics Consortium, Coryell W, Potash JB, Scheftner WA, Shi J, Weissman MM, Hultman CM, Landén M, Levinson DF, Kendler KS, Smoller JW, Wray NR,  Lee SH. Joint analysis of psychiatric disorders increases accuracy of risk prediction for schizophrenia, bipolar disorder, and major depressive disorder. Am J Hum Genet. 2015 Feb 5;96(2):283-94. doi: 10.1016/j.ajhg.2014.12.006. Epub 2015  Jan 29. PubMed PMID: 25640677; PubMed Central PMCID: PMC4320268."

[Power 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23147713 "Power RA, Kyaga S, Uher R, MacCabe JH, Långström N, Landen M, McGuffin P, Lewis CM, Lichtenstein P, Svensson AC. Fecundity of patients with schizophrenia,  autism, bipolar disorder, depression, anorexia nervosa, or substance abuse vs their unaffected siblings. JAMA Psychiatry. 2013 Jan;70(1):22-30. doi: 10.1001/jamapsychiatry.2013.268. PubMed PMID: 23147713."


