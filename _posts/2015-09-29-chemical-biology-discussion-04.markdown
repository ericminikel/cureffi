---
layout: post
title:  "Chemical biology discussion 04: FTO discussion"
date:   2015-09-29 12:01:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from discussion section number 4 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Edward Harvey and Chris Gerry on September 29, 2015.*

### *FTO* paper

The paper for this week's discussion is [[Claussnitzer 2015]]. The background here is that a linkage peak in intron 1 of *FTO* was the first and largest GWAS hit for obesity (for a backgrounder on GWAS methods, see [Genetics in Medicine lecture 8](/2015/03/27/genetics-in-medicine-08/)). In Europeans, each copy of the risk allele in *FTO* increases body mass index by about 0.4, which means for someone of average height, it increases weight by 1.13 kg (2.5 lbs) [[Loos & Yeo 2014]]. Though the association has been known for eight years [[Frayling 2007], [Scuteri 2007], [Dina 2007]], up to now the causal variant had not been identified. 

In the new paper [[Claussnitzer 2015]], they used a computational approach to narrow down what they thought was a likely candidate to be the causal region. They then did a series of functional studies in mouse and human tissues to identify the causal variant and its functional consequences. Turns out the risk haplotype is associated with higher expression of two genes downstream of *FTO*: *IRX3* and *IRX5*. They found that the risk haplotype was also associated with several phenotypes in adipocytes: larger adipocyte size, lower mitochondrial DNA copy number (indicating fewer mitochondria), and lower oxygen consumption. These phenotypes could be recapitulated by overexpression of *IRX3* or *IRX5*, and could be rescued by knockdown of *IRX3* or *IRX5*. They used CRISPR/Cas9 genome editing to knock in the predicted causal variant from their computational model into the otherwise nonrisk haplotype (and vice versa), and found that this was sufficient to recapitulate the cellular phenotypes. The risk allele appears to disrupt a binding site for the repressor ARID5B, thus allowing the region to act as an enhancer, promoting transcription of *IRX3* and *IRX5*. *IRX3* and *IRX5* both encode homeobox transcription factors, and apparently they activate a program of adipocyte "whitening", wherein adipocytes shift toward energy storage rather than generating heat. In the absence of *IRX3* and *IRX5* the adipocytes have a more "browning"-oriented program, wherein they act more like brown fat, filling up with mitochondria, consuming oxygen, and generating heat while keeping the organism lean.

The paper forgoes the usual discussion of translational implications, but one might speculate that this will trigger interest in IRX3 and IRX5 as potential drug targets for treating obesity. As transcription factors, they would traditionally be considered "undruggable", thus posing an exciting new challenge for chemical biologists.

Here are some ideas we discussed in section for translational research you could propose to do based on this new knowledge:

+ Molecular screens for IRX3 or IRX5 binders
+ Molecular screens for molecules that stabilize the interaction between the risk allele DNA and the ARID5B repressor
+ Phenotypic screens for molecules that affect transcript levels (e.g. downregulating IRX3 or IRX5, or their downstream targets)
+ Phenotypic screens for molecules that induce "browning" phenotypes such as increased oxygen consumption, increased mitochondrial copy number, or reduced adipocyte size
+ Reporter (e.g. luciferase) screens for molecules that reduce enhancer activity in cells with the risk haplotype
+ Characterization of epigenetic marks in the enhancer region and tests for whether epigenetic modulators such as HDAC or bromodomain inhibitors can affect these
+ Transcriptional profiling of isogenic cells with or without the risk allele, and search for similar differential gene expression profiles of any molecules in cMAP
+ As a proof of concept, fusing IRX3 and/or 5 to a domain for which you already have a good ligand, and then treating cells with that ligand conjugated to a phthalimide or other E3 ubiquitin ligase ligand, to establish feasibility of targeting IRX3/5 for degradation
+ Test whether 2,4-dinitrophenol (DNP), a molecule known to short circuit the electron transfer chain, induces similar cellular phenotypes as the nonrisk allele in *FTO* (not sure why this would be informative, since DNP acts downstream of the circuitry discovered in this paper)



[Claussnitzer 2015]: http://www.ncbi.nlm.nih.gov/pubmed/26287746 "Claussnitzer M, Dankel SN, Kim KH, Quon G, Meuleman W, Haugen C, Glunk V, Sousa IS, Beaudry JL, Puviindran V, Abdennur NA, Liu J, Svensson PA, Hsu YH, Drucker DJ, Mellgren G, Hui CC, Hauner H, Kellis M. FTO Obesity Variant Circuitry and Adipocyte Browning in Humans. N Engl J Med. 2015 Sep 3;373(10):895-907. doi:  10.1056/NEJMoa1502214. Epub 2015 Aug 19. PubMed PMID: 26287746."

[Loos & Yeo 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24247219/ "Loos RJ, Yeo GS. The bigger picture of FTO: the first GWAS-identified obesity gene. Nat Rev Endocrinol. 2014 Jan;10(1):51-61. doi: 10.1038/nrendo.2013.227. Epub 2013 Nov 19. Review. PubMed PMID: 24247219; PubMed Central PMCID: PMC4188449."

[Frayling 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17434869/ "Frayling TM, Timpson NJ, Weedon MN, Zeggini E, Freathy RM, Lindgren CM, Perry JR, Elliott KS, Lango H, Rayner NW, Shields B, Harries LW, Barrett JC, Ellard S, Groves CJ, Knight B, Patch AM, Ness AR, Ebrahim S, Lawlor DA, Ring SM, Ben-Shlomo Y, Jarvelin MR, Sovio U, Bennett AJ, Melzer D, Ferrucci L, Loos RJ, Barroso I, Wareham NJ, Karpe F, Owen KR, Cardon LR, Walker M, Hitman GA, Palmer CN, Doney AS, Morris AD, Smith GD, Hattersley AT, McCarthy MI. A common variant in the FTO gene is associated with body mass index and predisposes to childhood and adult obesity. Science. 2007 May 11;316(5826):889-94. Epub 2007 Apr 12. PubMed PMID: 17434869; PubMed Central PMCID: PMC2646098."

[Scuteri 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17658951 "Scuteri A, Sanna S, Chen WM, Uda M, Albai G, Strait J, Najjar S, Nagaraja R, Orrú M, Usala G, Dei M, Lai S, Maschio A, Busonero F, Mulas A, Ehret GB, Fink AA, Weder AB, Cooper RS, Galan P, Chakravarti A, Schlessinger D, Cao A, Lakatta E, Abecasis GR. Genome-wide association scan shows genetic variants in the FTO gene are associated with obesity-related traits. PLoS Genet. 2007 Jul;3(7):e115. PubMed PMID: 17658951; PubMed Central PMCID: PMC1934391."

[Dina 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17496892 "Dina C, Meyre D, Gallina S, Durand E, Körner A, Jacobson P, Carlsson LM, Kiess W, Vatin V, Lecoeur C, Delplanque J, Vaillant E, Pattou F, Ruiz J, Weill J, Levy-Marchal C, Horber F, Potoczna N, Hercberg S, Le Stunff C, Bougnères P, Kovacs P, Marre M, Balkau B, Cauchi S, Chèvre JC, Froguel P. Variation in FTO contributes to childhood obesity and severe adult obesity. Nat Genet. 2007 Jun;39(6):724-6. Epub 2007 May 13. PubMed PMID: 17496892."

