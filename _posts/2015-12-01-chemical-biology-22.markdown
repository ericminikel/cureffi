---
layout: post
title:  "Chemical biology 22: aging"
date:   2015-12-01 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 22 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on December 1, 2015.*

Today's story about aging is a simple one, with its roots in evolutionary biology. But our goal is to move the study of aging into a new realm of small molecule science, informed by the lessons from evolutionary biology. A warning is that although the study of aging is fundamentally a sound scientific discipline, it is currently in a life stage of a very high hype:fact ratio.

Main topics for today:

1. Evolutionary theory of aging
2. The disposable soma concept
3. Caloric restriction

[Benjamin Gompertz](https://en.wikipedia.org/wiki/Benjamin_Gompertz) (1799-1865) was a mathematician who collected data from gravestones in cemeteries and compiled a database of birth and death years. He plotted a survival curve (percent surviving vs. time) and became the first to observe that the curve is non-linear. In other words, the rate of death is not constant, but increasing. Every eight years, our probability of death approximately doubles.

As explained in a review of the evolutionary biology theory of aging [[Kirkwood & Austad 2000]], animals die in the wild due mostly to extrinsic factors &mdash; predation, cold, disease, etc. &mdash; and only very rarely due to old age. A correlary of this observation is that factors contributing to mortality at older ages are under almost negligible natural selection compared to factors that cause earlier mortality. Indeed, a genetic variant that improves fitness at young ages at the expense of decreasing fitness at older ages would be expected to undergo positive selection. This situation is known as **antagonistic pleiotropy** (pleiotropy just means more than one effect). Antagonistic pleiotropy is actually incredibly common. Many of the most striking visual features in the animal kingdom &mdash; the long necks of giraffes, the antlers of elk, and the feathers of peacocks are all believed to have undergone positive selection because they improve an individual's success in mating, even though they are otherwise burdensome.

The **disposable soma** theory holds that our somatic cells exist solely to protect our germ cells. Consider salmon, which swim upriver exhausting all of their energy until they can mate and then immediately die. Under this theory, an organism prioritizes reproduction over repair of somatic tissues, however, this process is regulated, providing an opportunity for intervention.

Many of the fundamentals of metabolism were first worked out in yeast. In rich media (in the lab), yeast rely primarily on glycolysis, generating 2 ATP per glucose, with ethanol as a product. In the wild, where nutrients are more scarce, yeast rely more on O<sub>2</sub>-dependent oxidative phosphorylation. Interestingly, human cancer cells and stem cells are also more likely to use anaerobic metabolism, whereas differentiated human cells rely more on aerobic respiration. Across organisms, there is some trend whereby greater focus on reproduction or cell division is correlated with greater reliance on anaerobic metabolism. In *C. elegans*, nutrient deprivation triggers a transition into the dauer life phase (see [genetics 12](/2014/10/15/genetics-12/)). This change is mediated by small molecule pheromones [[Golden & Riddle 1982], [Horvitz 1982], [Butcher 2007]]. Some molecules (serotonin) switch on a "feed and breed" mode, while others (octopamine) switch on a "hunker down" mode. These discoveries opened up a new area of thought that maybe small molecule drugs could be used to regulate aging. 

While humans' median lifespan (life expectancy) has increased dramatically in the past century, maximum lifespan has barely budged.

The first report of caloric restriction increasing lifespan in rats was eighty years ago [[McCay 1935], [full text here](http://www.wealthandhealth.ltd.uk/over100/C.%20M.%20McCAY%201935.pdf)]. This was considered a weird anomaly at the time and was largely ignored. Many decades later, it began to be recognized that this result might correspond to what had been observed in worms, where the unlimited diet yields a "feed and breed" mode while caloric restriction yields a "hunker down" mode. The experiment was later repeated in mice, and the effect size was estimated to correspond to an increase in human lifespan from 100 years to 150 years upon 65% caloric restriction. People initiated two very long-term studies of caloric restriction in monkeys, one at University of Wisconsin and one at the NIH, which yielded a lot of buzz in the popular press (see for instance the story of rhesus monkeys Canto and Owen in the [New York Times, 2006](http://www.nytimes.com/2006/10/31/health/nutrition/31agin.html?pagewanted=all)). Despite the buzz, though, there is currently no evidence that caloric restriction actually increased life span in these monkeys. A few humans are experimenting with caloric restriction anyway - see for instance Mike Linksvayer in that NYT article - but it is assumed that a pill that simulates the effect would appeal to a greater number of individuals.

In yeast, deletion of the *sir2.1* gene abolishes the benefits of caloric restriciton. It was eventually determined that this gene's product represented a new class of NAD-dependent histone deacetylases. NAD is a product of oxidative phosphorylation and thus an indicator of "hunker down" mode, so this signaling pathway seems to be regulating gene expression to facilitate the "hunker down" metabolic state. Sirtuins positively regulate this pathway, so if you can activate a sirtuin, that would be expected to simulate the addition of more NAD. A chemical screen identified resveratrol as an activator of sirtuins. A highly cited paper reported an increase in survival in mice treated with resveratrol [[Baur 2006]], but this experiment was only carried out to the point where ~50% of mice had died, so they never examined *maximum* lifespan. This work received a lot of attention in the press, because resveratrol is present in red wine. However, resveratrol is not very potent and has poor medicinal chemistry properties. In order to consume an effective dose of resveratrol by drinking red wine, you would need to consume on the order of 1600 bottles of red wine per day. In addition, the original chemical screen relied on a fluorescent reporter, and the effects of resveratrol were never validated on the endogenous substrate of sirtuins. An independent group later reported that under a system with endogenous substrates, resveratrol does not activate SIRT1 [[Pacholec 2010]].

In *Drosophila*, half of the lifespan extension effect of caloric restriction is abolished by letting the flies smell (but not eat) additional food [[Libert 2007]]. So don't bother living on a calorie-restricted diet if you live next to a bakery!

Another idea that's out there is that clearing senescent cells may delay aging, though so far results have only been reported in a particular mouse model [[Baker 2011]]. I critiqued that study in my [BBS 230 final paper](/media/2014/12/eric-minikel-bbs-230-final-with-comments.pdf).




[Kirkwood & Austad 2000]: http://www.ncbi.nlm.nih.gov/pubmed/11089980 "Kirkwood TB, Austad SN. Why do we age? Nature. 2000 Nov 9;408(6809):233-8. Review. PubMed PMID: 11089980."

[Schwarz & Springer 2015]: http://dx.doi.org/10.1073/pnas.1517951112 "Human-specific derived alleles of CD33 and other genes protect against postreproductive cognitive decline"

[Golden & Riddle 1982]: http://www.ncbi.nlm.nih.gov/pubmed/6896933 "Golden JW, Riddle DL. A pheromone influences larval development in the nematode Caenorhabditis elegans. Science. 1982 Nov 5;218(4572):578-80. PubMed PMID: 6896933."

[Horvitz 1982]: http://www.ncbi.nlm.nih.gov/pubmed/6805073 "Horvitz HR, Chalfie M, Trent C, Sulston JE, Evans PD. Serotonin and octopamine in the nematode Caenorhabditis elegans. Science. 1982 May 28;216(4549):1012-4. PubMed PMID: 6805073."

[Butcher 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17558398 "Butcher RA, Fujita M, Schroeder FC, Clardy J. Small-molecule pheromones that control dauer development in Caenorhabditis elegans. Nat Chem Biol. 2007 Jul;3(7):420-2. Epub 2007 Jun 10. PubMed PMID: 17558398."

[McCay 1935]: http://www.ncbi.nlm.nih.gov/pubmed/2520283 "McCay CM, Crowell MF, Maynard LA. The effect of retarded growth upon the length of life span and upon the ultimate body size. 1935. Nutrition. 1989 May-Jun;5(3):155-71; discussion 172. PubMed PMID: 2520283."

[Baur 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17086191 "Baur JA, Pearson KJ, Price NL, Jamieson HA, Lerin C, Kalra A, Prabhu VV, Allard JS, Lopez-Lluch G, Lewis K, Pistell PJ, Poosala S, Becker KG, Boss O, Gwinn D, Wang M, Ramaswamy S, Fishbein KW, Spencer RG, Lakatta EG, Le Couteur D,  Shaw RJ, Navas P, Puigserver P, Ingram DK, de Cabo R, Sinclair DA. Resveratrol improves health and survival of mice on a high-calorie diet. Nature. 2006 Nov 16;444(7117):337-42. Epub 2006 Nov 1. PubMed PMID: 17086191."

[Pacholec 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20061378 "Pacholec M, Bleasdale JE, Chrunyk B, Cunningham D, Flynn D, Garofalo RS, Griffith D, Griffor M, Loulakis P, Pabst B, Qiu X, Stockman B, Thanabal V, Varghese A, Ward J, Withka J, Ahn K. SRT1720, SRT2183, SRT1460, and resveratrol are not direct activators of SIRT1. J Biol Chem. 2010 Mar 12;285(11):8340-51. doi: 10.1074/jbc.M109.088682. Epub 2010 Jan 8. PubMed PMID: 20061378; PubMed Central PMCID: PMC2832984."

[Libert 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17272684 "Libert S, Zwiener J, Chu X, Vanvoorhies W, Roman G, Pletcher SD. Regulation of Drosophila life span by olfaction and food-derived odors. Science. 2007 Feb 23;315(5815):1133-7. Epub 2007 Feb 1. PubMed PMID: 17272684."

[Baker 2011]: http://www.ncbi.nlm.nih.gov/pubmed/22048312/ "Baker DJ, Wijshake T, Tchkonia T, LeBrasseur NK, Childs BG, van de Sluis B, Kirkland JL, van Deursen JM. Clearance of p16Ink4a-positive senescent cells delays ageing-associated disorders. Nature. 2011 Nov 2;479(7372):232-6. doi: 10.1038/nature10600. PubMed PMID: 22048312; PubMed Central PMCID: PMC3468323."


