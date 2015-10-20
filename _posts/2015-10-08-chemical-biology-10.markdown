---
layout: post
title:  "Chemical biology 10: Chromatin and small-molecule modulators"
date:   2015-10-08 12:00:00
author: ericminikel
tag: chem-101
location: Baltimore, MD
summary200: ""
---

*These are my notes on lecture 10 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on October 8, 2015. I missed this lecture while away at a conference, so these notes are based on the slides and reading materials.*

![](/media/2015/10/trapoxin.png)

*Above: trapoxin*

Histone modifications were first noticed by Vincent Allfrey in 1964, who speculated they might be important, but it was years before we gained any understanding of how they regulate gene expression. The mammalian proteins that are responsible for reading and writing histone modifications did not start to be known until the 1990s.Trapoxin (above) is a fungal natural product that has anticancer properties &mdash; it can change the morphology of cells and make transformed cell lines behave more line normal cells. Trapoxin was known to prevent the de-acetylation of histones [[Kijima 1993]] but the putative histone deacetylase protein had not been identified. It was believed to be a covalent, irreversible inhibitor, and hypothesized to be an active site substrate mimetic. By conjugating it to a solid support, it was possible to pull down the protein and perform amino acid sequencing to characterize it [[Taunton 1996]]. This was the first histone deacetylase (HDAC), and it proved to be homologous to an already-characterized yeast protein.

How exactly did histones regulate gene expression? The **histone code hypothesis** held that:

> Multiple histone modifications, acting in a combinatorial or sequential fashion on one or multiple histone tails, specify unique downstream functions.
>
> &mdash; [[Strahl & Allis 2000]]

The competing **signaling network model of chromatin** held that there was no unique specification of function, but rather that histone modifications worked simply through **effective molarity**. Two proteins that bound to histones with two particular modifications would come into proximity with one another when both modifications were present, proximity thus allowing those two proteins to interact. This is analogous to how cell signaling works, for instance, how phosphorylation of receptor tyrosine kinases creates a docking site for multiple proteins to interact and form a complex.

The development ChIP-seq made it possible to study histone marks genome-wide, helping to elucidate the ways that chromatin state specifies cell state. H3K27 methylation is found in inactive genes, while H3K4 methylation is found in active genes; famously, it was discovered that undifferentiated embryonic stem cells have many genes with *both* H3K27 and H3K4 methylated, a "bivalent" state which makes the genes "poised" to turn on as the cell differentiates [[Bernstein 2006]].

A challenge of precision medicine is to use small molecules that modulate chromatin to achieve transdifferentiation of cells *in vivo*. There have been some proofs of principle, for instance, in reversing HIV-1 latency so that dormant HIV becomes sensitive to antiretroviral drugs [[Archin 2012]]. And it's been proposed that one could turn on fetal hemoglobin expression to treat sickle cell disease through HDAC modulation [[Bradner 2010]], and that HDAC3 inhibition can protect pancreatic beta cells from cytokine-induced apoptosis in a model of type 1 diabetes [[Chou 2012]]. What everyone wants for a drug is a molecule that turns non-insulin-secreting pancreatic cells into insulin-secreting beta cells. 


[Kijima 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8226751 "Kijima M, Yoshida M, Sugita K, Horinouchi S, Beppu T. Trapoxin, an antitumor cyclic tetrapeptide, is an irreversible inhibitor of mammalian histone deacetylase. J Biol Chem. 1993 Oct 25;268(30):22429-35. PubMed PMID: 8226751."

[Taunton 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8602529 "Taunton J, Hassig CA, Schreiber SL. A mammalian histone deacetylase related to the yeast transcriptional regulator Rpd3p. Science. 1996 Apr 19;272(5260):408-11. PubMed PMID: 8602529."

[Strahl & Allis 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10638745 "Strahl BD, Allis CD. The language of covalent histone modifications. Nature. 2000 Jan 6;403(6765):41-5. PubMed PMID: 10638745."

[Schreiber 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12526804 "Schreiber SL, Bernstein BE. Signaling network model of chromatin. Cell. 2002 Dec 13;111(6):771-8. Review. PubMed PMID: 12526804."

[Bernstein 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16630819 "Bernstein BE, Mikkelsen TS, Xie X, Kamal M, Huebert DJ, Cuff J, Fry B, Meissner A, Wernig M, Plath K, Jaenisch R, Wagschal A, Feil R, Schreiber SL, Lander ES. A bivalent chromatin structure marks key developmental genes in embryonic stem cells. Cell. 2006 Apr 21;125(2):315-26. PubMed PMID: 16630819."

[Archin 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22837004 "Archin NM, Liberty AL, Kashuba AD, Choudhary SK, Kuruc JD, Crooks AM, Parker DC, Anderson EM, Kearney MF, Strain MC, Richman DD, Hudgens MG, Bosch RJ, Coffin  JM, Eron JJ, Hazuda DJ, Margolis DM. Administration of vorinostat disrupts HIV-1  latency in patients on antiretroviral therapy. Nature. 2012 Jul 25;487(7408):482-5. doi: 10.1038/nature11286. Erratum in: Nature. 2012 Sep 20;489(7416):460. PubMed PMID: 22837004; PubMed Central PMCID: PMC3704185."

[Bradner 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20616024 "Bradner JE, Mak R, Tanguturi SK, Mazitschek R, Haggarty SJ, Ross K, Chang CY,  Bosco J, West N, Morse E, Lin K, Shen JP, Kwiatkowski NP, Gheldof N, Dekker J, DeAngelo DJ, Carr SA, Schreiber SL, Golub TR, Ebert BL. Chemical genetic strategy identifies histone deacetylase 1 (HDAC1) and HDAC2 as therapeutic targets in sickle cell disease. Proc Natl Acad Sci U S A. 2010 Jul 13;107(28):12617-22. doi: 10.1073/pnas.1006774107. Epub 2010 Jun 28. PubMed PMID: 20616024; PubMed Central  PMCID: PMC2906581."

[Chou 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22726680 "Chou DH, Holson EB, Wagner FF, Tang AJ, Maglathlin RL, Lewis TA, Schreiber SL, Wagner BK. Inhibition of histone deacetylase 3 protects beta cells from cytokine-induced apoptosis. Chem Biol. 2012 Jun 22;19(6):669-73. doi: 10.1016/j.chembiol.2012.05.010. PubMed PMID: 22726680; PubMed Central PMCID: PMC3383610."


