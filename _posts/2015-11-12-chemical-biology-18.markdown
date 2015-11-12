---
layout: post
title:  "Chemical biology 18: a new view of diabetes"
date:   2015-11-12 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 18 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on November 12, 2015.*

![](/media/2015/11/diabetes-cartoon-in-ljubljana.png)

Type 1 and Type 2 diabetes used to be considered completely different. We now understand that although they have very different causes, they have a lot more in common than we originally thought. Type 1 is an autoimmune disease, in which the immune system destroys pancreatic beta cells, usually beginning in childhood or young adulthood; it accounts for 5-10% of all diabetes right now. Type 2 is the other 90-95% of cases at present, and usually has later onset, though it is increasingly diagnosed in children and adolescents too. People with type 2 diabetes exhibit insulin resistance, and so it was long thought that insulin resistance was the *cause* of T2D. That's now changing somewhat.

We watched these classic slides about the rise in obesity in the U.S.:

<iframe width="560" height="315" src="https://www.youtube.com/embed/9ihSeSToXOw" frameborder="0" allowfullscreen></iframe>

The rise of T2D has occurred over a similar timeframe and in a similar geographic pattern, leading to a widespread belief that obesity causes diabetes. But it's not entirely that simple. For instance there are regions in Alaska and in Asia where there are very high rates of obesity but low rates of diabetes, and some obese diabetic patients who undergo gastric bypass surgery have an improvement in their diabetes almost immediately, before they lose appreciable weight.

The only therapy for T1D is insulin. Therapies for T2D are numerous and very commercially successful, though none of them address the root cause:

| drug | mechanism of action |
| ---- | ---- |
| metformin | reduces hepatic glucose output, but we don't know how |
| sulfonylureas (ex. tolbutamide) | modulates a pancreatic K+ channel (*ABCC8* & *KCNJ11*), facilitating insulin secretion |
| glitazones (ex. rosiglitazone) | PPAR&gamma; (*PPARG*) agonist |
| acarbose | slows carbohydrate absorption in intestines |
| insulin | overcomes insulin resistance |

Approaches based on human genetics and chemical biology are now elucidating the molecular basis of T2D.

One approach is "drugs &rarr; genes". The drug targets mentioned above  It turns out that some of the human genes that encode targets of the above drugs contain polymorphisms that affect diabetes risk, for instance *PPARG* P12A and *KCNJ11* E23K. *PPARG* P12A has environment-dependent effects [[Heikkinen 2009]].

The other approach is "genes &rarr; drugs", in other words, using genetics to point us to new drug targets. "SLC" in gene symbols stand for solute lipid carrier, and most of these proteins transport small molecules. There is a haplotype of *SLC16A11* that appears to have come from Neanderthals and underwent positive selection in some human populations because it confers a 'thrifty metabolism' that may have helped survive famines; today, this haplotype confers an increased risk of diabetes in Mexicans [[SIGMA T2D 2014]].

Genetic risk factors for T1D, by contrast, are dominated by immune genes [[Atkinson 2014]].

Of the T2D risk factors, *TCF7L2* has the largest odds ratio, of about 2.0 - the rest are even smaller, like 1.3 or so. Some people mistakenly assume that this means we've identified genetic risk factors that are unimportant. That's not true. The effect size of genetic variants is constrained by natural selection, but the effect size of therapeutics is not. For instance, common variants in *HGMCR* only affect LDL by ~5%, but statins, which target its product, can affect LDL by ~30%. This is a point Mark Daly has also made in [this lecture](/2015/03/27/genetics-in-medicine-08/). So identifying even very minor risk factors can provide insights enabling major therapeutic advances. Another important insight from the study of cardiovascular disease is the contrast between LDL and HDL. Mendelian randomization shows that high LDL is causally associated with heart risease risk, while low HDL is correlated but not causal &mdash; see [this lecture](/2015/04/24/genetics-in-medicine-12/) by Sekar Kathiresan.

One major insight from studying the human genetics is that pancreatic beta cell biology is crucial to both T1D and T2D. For instance, many of the most highly risk alleles for T2D decrease insulin secretion: *TCF7L2*, *KCNJ11*, *HHEX*, *SLC30A8*, *CDKAL1*. So far, human genetics has not at all implicated insulin receptor signaling as a risk factor, which throws coffee in the face of the long-held view that T2D is a disease of insulin resistance.

*SLC30A8* encodes a zinc transporter, also known as ZnT8, which moves Zn<sup>2+</sup> from the cytosol into the secretory granule lumen. This gene is particularly exciting because loss-of-function variants are protective, suggesting that a pharmacological inhibitor could reduce future T2D risk [[Flannick 2014]]. To hope that it could also treat T2D *after* onset is still another conceptual leap. Arguably, there is at least some precedent for making this leap, because inhibition of HMGCR can reverse, not just prevent, high LDL.

Chemical biology approaches are now being used to try to identify compounds that:

+ Promote beta cell replication. This happens in pregnancy, and can be recapitulated by addition of pregnant serum to cultured pancreatic cells, suggesting it could be achieved.
+ Transdifferentiate other pancreatic cell types (e.g. alpha cells) to beta cells.
+ Prevent beta cell apoptosis.

While genetics can provide useful insights, that doesn't mean genetics is destiny. People homozygous for the risk haplotype of *TCF7L2* have ~2x the T2D risk of homozygous non-risk individuals when both groups are on placebo, but treatment with metformin decreases this difference slightly, and lifestyle intervention can virtually abolish the difference in risk. 

[Heikkinen 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19117549 "Heikkinen S, Argmann C, Feige JN, Koutnikova H, Champy MF, Dali-Youcef N, Schadt EE, Laakso M, Auwerx J. The Pro12Ala PPARgamma2 variant determines metabolism at the gene-environment interface. Cell Metab. 2009 Jan 7;9(1):88-98.  doi: 10.1016/j.cmet.2008.11.007. PubMed PMID: 19117549."

[SIGMA T2D 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24390345 "SIGMA Type 2 Diabetes Consortium, Williams AL, Jacobs SB, Moreno-Macías H, Huerta-Chagoya A, Churchhouse C, Márquez-Luna C, García-Ortíz H, Gómez-Vázquez MJ, Burtt NP, Aguilar-Salinas CA, González-Villalpando C, Florez JC, Orozco L, Haiman CA, Tusié-Luna T, Altshuler D. Sequence variants in SLC16A11 are a common  risk factor for type 2 diabetes in Mexico. Nature. 2014 Feb 6;506(7486):97-101. doi: 10.1038/nature12828. Epub 2013 Dec 25. PubMed PMID: 24390345; PubMed Central PMCID: PMC4127086."

[Flannick 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24584071 "Flannick J, Thorleifsson G, Beer NL, Jacobs SB, Grarup N, Burtt NP, Mahajan A, Fuchsberger C, Atzmon G, Benediktsson R, Blangero J, Bowden DW, Brandslund I, Brosnan J, Burslem F, Chambers J, Cho YS, Christensen C, Douglas DA, Duggirala R, Dymek Z, Farjoun Y, Fennell T, Fontanillas P, Forsén T, Gabriel S, Glaser B, Gudbjartsson DF, Hanis C, Hansen T, Hreidarsson AB, Hveem K, Ingelsson E, Isomaa  B, Johansson S, Jørgensen T, Jørgensen ME, Kathiresan S, Kong A, Kooner J, Kravic J, Laakso M, Lee JY, Lind L, Lindgren CM, Linneberg A, Masson G, Meitinger T, Mohlke KL, Molven A, Morris AP, Potluri S, Rauramaa R, Ribel-Madsen R, Richard AM, Rolph T, Salomaa V, Segrè AV, Skärstrand H, Steinthorsdottir V, Stringham HM, Sulem P, Tai ES, Teo YY, Teslovich T, Thorsteinsdottir U, Trimmer JK, Tuomi T, Tuomilehto J, Vaziri-Sani F, Voight BF, Wilson JG, Boehnke M, McCarthy MI, Njølstad PR, Pedersen O; Go-T2D Consortium; T2D-GENES Consortium, Groop L, Cox DR, Stefansson K, Altshuler D. Loss-of-function mutations in SLC30A8 protect against type 2 diabetes. Nat Genet. 2014 Apr;46(4):357-63. doi: 10.1038/ng.2915.  Epub 2014 Mar 2. PubMed PMID: 24584071; PubMed Central PMCID: PMC4051628."

[Atkinson 2014]: http://www.ncbi.nlm.nih.gov/pubmed/23890997/ "Atkinson MA, Eisenbarth GS, Michels AW. Type 1 diabetes. Lancet. 2014 Jan 4;383(9911):69-82. doi: 10.1016/S0140-6736(13)60591-7. Epub 2013 Jul 26. Review.  PubMed PMID: 23890997; PubMed Central PMCID: PMC4380133."



