---
layout: post
title:  "Protein folding 11: Etiology of disease and the beta helix model of amyloid"
date:   2015-04-23 12:00:00
author: ericminikel
tag: mit-7.88j
location: Cambridge, MA
thumb120: 
summary200: ""
---

*These are my notes from week 11 of MIT course 7.88j: Protein Folding and Human Disease, held by Dr. Jonathan King on April 23, 2015.*

The first half of today's lecture is intended as a view onto the very big picture of the human disease context in which most protein-folding research is conducted. The second half is a brief talk about the beta helix model of amyloid.

### A brief history of human disease

Historically much human mortality and morbidity has been due to malnutrition. Some diseases of malnutrition were solved through social, rather than scientific, advances. Here are a few discussed in lecture:

+ Scurvy - vitamin C deficiency leading to collagen melting, see [week 7](/2015/03/19/protein-folding-07/)
+ Ricketts - vitamin D deficiency. This became a problem during the industrial revolution when children would spend all daylight hours in the factory, thus not getting enough sunshine to synthesize the minimum amount of vitamin D. It was largely solved by passage of child labor laws, years before vitamin D started to be added to milk.
+ pellagra - niacin (vitamin B3) deficiency. In the U.S. this was problem particularly among poor people in the South, who got most of their calories from one or a few carbohydrate sources. It was solved largely through social welfare programs such as food stamps and WIC.

Infectious disease has also been a major cause of mortality and morbidity for millenia. Again, some of these diseases have been eradicated or nearly eradicated without a drug or vaccine ever being developed.

+ Cholera was identified as being due to water-borne *Vibrio cholera*. Despite early calls to quarantine people with cholera into sanitoriums, the disease ended up being solved largely through provision of clean water. This involved building aqueducts and sewers, convincing people to boil water, and running public sanitation programs. 
+ Variant CJD incidence has diminished to [1 case in the U.S.](http://www.cjdsurveillance.com/pdf/web_table.pdf) and [0 cases in the U.K.](http://www.cjd.ed.ac.uk/documents/figs.pdf) in 2014 thanks to rigorous surveillance efforts and legally mandated changes in agricultural practices.

![](/media/2015/04/cholera_poster.png)

*Above: a public health message about cholera from East London, 1866 - [image via Wellcome Trust](http://commons.wikimedia.org/wiki/File:Broadsheet;_Cholera_and_Water,_1866_Wellcome_L0025760.jpg)*.

Wound infections during WWII led the U.S. federal government to finance a program, contracted to Merck, to mass produce penicillin. 

Over the last couple of centuries there have been a variety of diseases due to occupational hazards in particular industries:

+ Black lung from coal dust
+ Brown lung from cotton dust
+ Silicosis from tunneling/mining
+ Lung cancer from exhaust fumes
+ Bladder cancer from aniline dyes
+ Bone cancer from radioactive isotopes
+ Mercury poisoining from various causes\*

\*"Mad hatters" who used mercury to make felt are the most famous example. In New England, where there was a large hat industry, the trembling phenotype of mercury poisoning was known as "The Danbury Shakes" after Danbury, CT. In southern Japan, methylmercury poisoning from industrial runoff caused a disease called Minamata syndrome.

See also Earl Dotter's [*The Quiet Sickness*](http://earldotter.com/exhibits-3/the-quiet-sickness/). 

[Aflatoxin](http://en.wikipedia.org/wiki/Aflatoxin), produced by fungi (*Aspergillus* genus) that grow on improperly stored peanuts, can cause liver cancer. [Streptozotocin](http://en.wikipedia.org/wiki/Streptozotocin), isolated from the bacterium [*Streptomyces achromogenes*](http://en.wikipedia.org/wiki/Streptomyces_achromogenes), was originally investigated as an antibiotic, whereupon it was noticed to have severe toxicity to pancreatic Islet cells, which led to it being used as a drug for pancreatic cancer and also to it being marketed to scientists as a way to create lesion models of type 1 diabetes.

### The beta helix model of amyloid

The parallel beta-helix was first introduced in [week 3](/2015/02/19/protein-folding-03/). Some pathogens have parallel beta helices which they use to recognize sugars on the outside of host cells. One of the most famous examples with a known structure is that of the *Salmonella* phage P22 tailspike, whose function is to recognize and bind lipopolysaccharide. It is a homotrimer [[Steinbacher 1994], [PDB# 1TSP](http://www.rcsb.org/pdb/explore/explore.do?structureId=1TSP)]:

```
fetch 1tsp
bg_color white
symexp sym,1tsp,(1tsp),3.0
hide everything
show cartoon, 1tsp or sym04000000 or sym08000000
color red, 1tsp
color green, sym04000000
color yellow, sym08000000
```

![](/media/2015/04/salmonella-phage-p22-tailspike.png)

This protein was the first protein for which it was demonstrated that inclusion bodies in bacterially expressed recombinant protein were composed of a partially folded intermediate [[Haase-Pettingell & King 1988], [Speed 1995], [Speed 1996]]. It is incredibly stable in its native state, though - in fact, it cannot be denatured by SDS alone without boiling. The parallel beta helix domain in the center is stabilized by stacking interactions among phenylalanine side chains, a structural feature which was not recognized until years after the structure was solved [[Simkovsky & King 2006]]. It was eventually realized that the folding is processive: the hydrophobic stacks inside the beta helices have to **nucleate**, after which it is easier for them to undergo **tempated elongation**, which terminates upon **capping** [[Simkovsky & King 2006]]. Until folding is complete, the hydrophobic residues that are not yet part of the beta helix are exposed, which accounts for the incredible propensity of partially folded intermediates to aggregate.

Parallel &beta;-helices have been considered as one possible model for the structure of amyloid. If true, then the processive model of P22 tailspike folding might also explain the nucleation and templated elongation of A&beta; fibrils. This would be expected to require multiple steps: first, the nascent amyloid must recognize/bind an A&beta; monomer, and then that new monomer must re-organize itself to be part of the fibril such that it is now the growing tip capable to recognizing the next monomer. Although there exists much evidence in favor of a beta-helix model for amyloids, the data we have are not sufficiently three-dimensional to allow us to ask how many beta-sheets deep the fibril is - is it a dimer, a trimer, or some higher order combination of sheets? Some proposed models contain four sheets [[Makin & Serpell 2005]] while others have three sheets more like the P22 tailspike above.




[Steinbacher 1994]: http://www.ncbi.nlm.nih.gov/pubmed/8023158 "Steinbacher S, Seckler R, Miller S, Steipe B, Huber R, Reinemer P. Crystal structure of P22 tailspike protein: interdigitated subunits in a thermostable trimer. Science. 1994 Jul 15;265(5170):383-6. PubMed PMID: 8023158."

[Haase-Pettingell & King 1988]: http://www.ncbi.nlm.nih.gov/pubmed/2965152 "Haase-Pettingell CA, King J. Formation of aggregates from a thermolabile in vivo folding intermediate in P22 tailspike maturation. A model for inclusion body formation. J Biol Chem. 1988 Apr 5;263(10):4977-83. PubMed PMID: 2965152."

[Speed 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7663345 "Speed MA, Wang DI, King J. Multimeric intermediates in the pathway to the aggregated inclusion body state for P22 tailspike polypeptide chains. Protein Sci. 1995 May;4(5):900-8. PubMed PMID: 7663345; PubMed Central PMCID: PMC2143126."

[Speed 1996]: http://www.ncbi.nlm.nih.gov/pubmed/9631094 "Speed MA, Wang DI, King J. Specific aggregation of partially folded polypeptide chains: the molecular basis of inclusion body composition. Nat Biotechnol. 1996 Oct;14(10):1283-7. PubMed PMID: 9631094."

[Mitraki 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8376364 "Mitraki A, Danner M, King J, Seckler R. Temperature-sensitive mutations and second-site suppressor substitutions affect folding of the P22 tailspike protein  in vitro. J Biol Chem. 1993 Sep 25;268(27):20071-5. PubMed PMID: 8376364."

[Simkovsky & King 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16505375/ "Simkovsky R, King J. An elongated spine of buried core residues necessary for  in vivo folding of the parallel beta-helix of P22 tailspike adhesin. Proc Natl Acad Sci U S A. 2006 Mar 7;103(10):3575-80. Epub 2006 Feb 27. PubMed PMID: 16505375; PubMed Central PMCID: PMC1383501."

[Makin & Serpell 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16302960 "Makin OS, Serpell LC. Structures for amyloid fibrils. FEBS J. 2005 Dec;272(23):5950-61. Review. PubMed PMID: 16302960."


