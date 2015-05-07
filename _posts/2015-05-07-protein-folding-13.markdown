---
layout: post
title:  "Protein folding 13: SecB, light chain amyloidosis, and Parkinson disease"
date:   2015-05-07 12:02:00
author: ericminikel
tag: mit-7.88j
location: Cambridge, MA
thumb120: 
summary200: "Lecture on SecB. Student presentations part 2 - IgG light chain amyloidosis, Parkinson disease."
---

*These are my notes from week 13 of MIT course 7.88j: Protein Folding and Human Disease, held by Dr. Jonathan King on May 7, 2015.*

First, Jonathan King gave a lecture on SecB. Then, today was the second week of student final project presentations. Taylor Gill presented on IgG light chain amyloidosis and Jeremy Suhardi presented on Parkinson disease.

### Jonathan King: SecB

Eukaryotes have the [secretory pathway](/2013/02/24/cell-biology-04-the-secretory-pathway/). Prokaryotes also have proteins that are translated in cytosol but are bound for the periplasmic space (between the inner and outer membranes). Today's lecture will describe how these proteins get recognized and transported.

These proteins begin with an N-terminal **leader peptide signal** of 17-22 amino acids, believed to be generally hydrophobic and alpha helical but with no single unifying motif. This signal targets the protein to the periplasm, and is later removed by leader signal peptidase. Microbial mutagenesis screens determined that SecB, a tetramer of 16.6 kDa subunits, is involved in this pathway, along with other proteins called SecA and SecY. At first, people assumed that SecB was a mobile element that recognizes the leader signal peptide and transports it to the periplasm, but this turned out to be false.

Much of the work to elucidate SecB's true role was done by Linda Randall using an exported substrate called maltose binding protein (MBP). Pre-MBP is 43.4 kDa, and mature MBP is 40.7 kDa. The protease that cleaves it is extracellular, so the change in molecular weight of MBP tells you whether the protein made it across the membrane. Experiments have demonstrated that SecB does not recognize leader peptides at all [[Randall 1990]], but instead recognizes some feature of incompletely folded MBP, which vanishes in the mature MBP, and that SecB and the leader peptide each serve to *prevent* that mature fold from being reached until the substrate passes through a channel into the periplasm. In fact, they showed that a variety of unfolded proteins, including diverse eukaryotic proteins such as RNAse, can outcompete MBP for binding to SecB [[Hardy & Randall 1991]]. Thus, SecB has some incredibly flexible capacity to recognize unfolded proteins.

SecB alone is protease sensitive, but becomes partially proteinase K-resistant when it binds a substrate such as BPTI (bovine trypsin) [[Randall 1992]]. 

The crystal structure of SecB from *E. coli* [[PDB# 1QYN](http://www.rcsb.org/pdb/explore/explore.do?structureId=1QYN), [Dekker 2003]] reveals it to be a dimer-of-dimers. It has grooves where unfolded polypeptide chains bind. 

```
fetch 1qyn
bg_color white
hide everything
show cartoon
spectrum count, yellow_red
```

![](/media/2015/05/secb_1qyn.png)

SecY is the channel through which unfolded polypeptides must pass to reach the periplasm. In its structure [[PDB# 1RHZ](http://www.rcsb.org/pdb/explore/explore.do?structureId=1rhz), [van den Berg 2004]], whether you look in surface or cartoon mode, you surprisingly cannot see an obvious pore where the polypeptides pass through - in fact, it appears to be totally closed:

```
fetch 1rhz
bg_color white
hide everything
show surface
spectrum count, yellow_red
```

![](/media/2015/05/secy_1rhz.png)

This is incontrast to OmpA [[PDB# 1QJP](http://www.rcsb.org/pdb/explore/explore.do?structureId=1qjp), [Pautsch & Schulz 2000]], which has a permanent large hole which simply allows substrates to diffuse in and out. This hole appears filled in surface view but is immediately obvious in this cartoon view:

```
fetch 1qjp
bg_color white
hide everything
show cartoon
spectrum count, yellow_red
```

![](/media/2015/05/ompa_1qjp.png)

### Taylor Gill: IgG light chain amyloidosis

Average age of diagnosis is 67. Survival after diagnosis is 12-40 months. Incidence is 10 people per million population per year. The disease is caused by clonal expansion of plasma cells overproducing IgG light chain, which is deposited as amyloid systemically, but particularly in the kidneys, heart, liver, and nerves. Heart disease due to amyloid deposition in the heart is the most common proximate cause of death. Treatment options currently include chemotherapy and stem cell transplantation.

In case you missed it, the structure of antibodies is reviewed in [Branden & Tooze](http://amzn.com/0815323050). An antibody contains two heavy chain and two light chain subunits. The light chain consists of antiparallel beta sheets in a Greek key beta barrel, with the antigen-binding sites or complementarity-determining regions (CDRs) located in the hairpin loops in between beta strands. Diversity in CDRs is achieved by two different means: combinatoric and junctional. Combinatoric diversity comes from the fusing of 1 each of ~30 different V segments, ~5 different J segments, and ~3 C segments. Junctional diversity comes from asymmetric cleavage and non-templated nucleotides (TdT). See [[Abbas 2014]].

A few early investigators recognized that amyloidosis might be caused by mutations in light chain, and found that different missense variants in light chain reduce the stability of the protein, and the concentration of GdnHCl required for denaturation is correlated with the degree of Congo red signal observed [[Hurle 1994]]. They proposed that:

> particular mutations dispose proteins to amyloid formation by enhancing formation of a partially/completely unfolded state that is responsible for fibril formation
> 
> &mdash; [[Hurle 1994]]

At the time, this was considered controversial, but today it is well-accepted. For a pretty comprehensive survey of light chain mutations, see [[Poshusta 2009]]. Experiments have suggested that some of the mutations that most strongly predispose light chain to form amyloid are those that disrupt the dimer interface [[Peterson 2010]]. Another set of experiments examined an in-frame insertion of a second proline that changes the *cis-trans* prolyl isomerization of the protein [[Blancas-Mejia 2014]]. Other work has shown that glycosaminoglycans (GAGs) interact with light chain amyloid and that highly sulfated GAGs appear to promote fibril formation [[Martin 2011]]. Elevated GAG levels are found in cardiac tissue of affected patients, but the direction of causality is not clear. Some studies have used cell culture models to try to figure out how light chain amyloid is internalized into cells, and exactly which multimeric species is cytotoxic [[Sikkink & Ramirez-Alvarado 2010], [Levinson 2013]]. 

For a further review, see [[Blancas-Mejia & Ramirez-Alvarado 2013]].

#### Q&A

Q. Me: Last year it was reported that there is an increase in heart disease-related mortality among individuals with a somatic clone detectable by exome sequencing [[Jaiswal 2014]]. Your lecture made me wonder if some of this could be related to light chain amyloidosis or something similar.

A. It seems possible. Light chain amyloidosis is probably quite underdiagnosed, because heart disease in elderly individuals is so routine that people often don't think to ask whether amyloidosis is present.

### Jeremy Suhardi: Parkinson disease

Symptoms of Parkinson disease are divided into three main categories:

1. Movement disorders. Bradykinesia, akinesia, rigidity, tremor, dyskinesia.
2. Cognitive and behavioral disorders. Dementia, depression, hallucination.
3. Psychiatric disorders. Sensory, sleep, and emotional problems.

Reduced uptake of <sup>18</sup>F-DOPA radiotracer on a PET scan correlates with increased motor disability in Parkinson patients. Parkinson patients also show reduced PET signal for a small molecule called "ioflupane (<sup>123</sup>I)", which binds dopamine active transporter (DAT), a marker of dopaminergic neurons, which are lost in Parkinson disease.

Alpha synuclein is an intrinsically unfolded protein. It can be crystallized when bound to micelles, but in the cell, it is thought to be pretty disordered, though somewhat more compact than a random coil. Residues 1-60 contain four 11-amino acid repeats including a conserved KTKEGV motif. Residues 61-95 have a hydrophobic and amyloidogenic "NAC" region with three additional KTKEGV repeats. Residues 96-140 are acidic and proline-rich.

Lewy bodies and alpha synuclein fibrils are sometimes found on autopsy in patients who had no history or diagnosis of neurodegenerative disease. This is one observation which has led people to suggest that oligomers, rather than aggregates, may be the neurotoxic species.

There are many cellular events and environmental triggers which have been proposed as possible causes for nucleation of alpha synuclein aggregation - for instance: pesticides, heavy metals, MPTP (see [here](/2014/12/01/neurodegeneration-seminar-5/)), or any of a variety of post-translational modifications, or simply interactions with the phospholipid membrane. 

One of the theories of how alpha synuclein misfolding is neurotoxic is that it disrupts mitochondrial membranes, stimulating release of cytochrome c and/or increasing oxidative stress.

Recommended readings: [[Lashuel 2002], [Zhu 2003], [Feng 2010]].

#### Q&A

Q. Do we have any idea what causes sporadic Parkinson disease?

A. Jonathan King: the environmental risk factor with the greatest amount of evidence behind it is the pesticide paraquat [[McCormack 2002], [Costello 2009]].

[Randall 1990]: http://www.ncbi.nlm.nih.gov/pubmed/2188362 "Randall LL, Topping TB, Hardy SJ. No specific recognition of leader peptide by SecB, a chaperone involved in protein export. Science. 1990 May 18;248(4957):860-3. PubMed PMID: 2188362."

[Hardy & Randall 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1989077 "Hardy SJ, Randall LL. A kinetic partitioning model of selective binding of nonnative proteins by the bacterial chaperone SecB. Science. 1991 Jan 25;251(4992):439-43. PubMed PMID: 1989077."

[Randall 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1631545 "Randall LL. Peptide binding by chaperone SecB: implications for recognition of nonnative structure. Science. 1992 Jul 10;257(5067):241-5. PubMed PMID: 1631545."

[Dekker 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14643199 "Dekker C, de Kruijff B, Gros P. Crystal structure of SecB from Escherichia coli. J Struct Biol. 2003 Dec;144(3):313-9. PubMed PMID: 14643199."

[van den Berg 2004]: http://www.ncbi.nlm.nih.gov/pubmed/14661030 "Van den Berg B, Clemons WM Jr, Collinson I, Modis Y, Hartmann E, Harrison SC,  Rapoport TA. X-ray structure of a protein-conducting channel. Nature. 2004 Jan 1;427(6969):36-44. Epub 2003 Dec 3. PubMed PMID: 14661030."

[Pautsch & Schulz 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10764596 "Pautsch A, Schulz GE. High-resolution structure of the OmpA membrane domain. J Mol Biol. 2000 Apr 28;298(2):273-82. PubMed PMID: 10764596."

[Abbas 2014]: https://books.google.com/books?id=RWYWBAAAQBAJ&lpg=PP1&ots=ftZ7c0yAN2&dq=abbas%20lichtman&lr&pg=PA5#v=onepage&q=abbas%20lichtman&f=false "Abbas, Lichtman, & Pallai. 2014. Cellular and Molecular Immunology. Eighth Edition."

[Hurle 1994]: http://www.ncbi.nlm.nih.gov/pubmed/8202506/ "Hurle MR, Helms LR, Li L, Chan W, Wetzel R. A role for destabilizing amino acid replacements in light-chain amyloidosis. Proc Natl Acad Sci U S A. 1994 Jun  7;91(12):5446-50. PubMed PMID: 8202506; PubMed Central PMCID: PMC44012."

[Poshusta 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19365555 "Poshusta TL, Sikkink LA, Leung N, Clark RJ, Dispenzieri A, Ramirez-Alvarado M. Mutations in specific structural regions of immunoglobulin light chains are associated with free light chain levels in patients with AL amyloidosis. PLoS One. 2009;4(4):e5169. doi: 10.1371/journal.pone.0005169. Epub 2009 Apr 13. PubMed PMID: 19365555; PubMed Central PMCID: PMC2664898."

[Peterson 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20462490 "Peterson FC, Baden EM, Owen BA, Volkman BF, Ramirez-Alvarado M. A single mutation promotes amyloidogenicity through a highly promiscuous dimer interface.  Structure. 2010 May 12;18(5):563-70. doi: 10.1016/j.str.2010.02.012. PubMed PMID: 20462490; PubMed Central PMCID: PMC2872106."

[Blancas-Mejia 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24157440/ "Blancas-Mejía LM, Tischer A, Thompson JR, Tai J, Wang L, Auton M, Ramirez-Alvarado M. Kinetic control in protein folding for light chain amyloidosis and the differential effects of somatic mutations. J Mol Biol. 2014 Jan 23;426(2):347-61. doi: 10.1016/j.jmb.2013.10.016. Epub 2013 Oct 22. PubMed PMID: 24157440; PubMed Central PMCID: PMC3892967."

[Martin 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21640469/ "Martin DJ, Ramirez-Alvarado M. Glycosaminoglycans promote fibril formation by  amyloidogenic immunoglobulin light chains through a transient interaction. Biophys Chem. 2011 Sep;158(1):81-9. doi: 10.1016/j.bpc.2011.05.011. Epub 2011 May 18. PubMed PMID: 21640469; PubMed Central PMCID: PMC3133826."

[Sikkink & Ramirez-Alvarado 2010]: http://www.ncbi.nlm.nih.gov/pubmed/21368874/ "Sikkink LA, Ramirez-Alvarado M. Cytotoxicity of amyloidogenic immunoglobulin light chains in cell culture. Cell Death Dis. 2010 Nov 11;1:e98. doi: 10.1038/cddis.2010.75. PubMed PMID: 21368874; PubMed Central PMCID: PMC3032327."

[Levinson 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23417147 "Levinson RT, Olatoye OO, Randles EG, Howell KG, DiCostanzo AC, Ramirez-Alvarado M. Role of mutations in the cellular internalization of amyloidogenic light chains into cardiomyocytes. Sci Rep. 2013;3:1278. doi: 10.1038/srep01278. PubMed PMID: 23417147; PubMed Central PMCID: PMC3575045."

[Jaiswal 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25426837 "Jaiswal S, Fontanillas P, Flannick J, Manning A, Grauman PV, Mar BG, Lindsley  RC, Mermel CH, Burtt N, Chavez A, Higgins JM, Moltchanov V, Kuo FC, Kluk MJ, Henderson B, Kinnunen L, Koistinen HA, Ladenvall C, Getz G, Correa A, Banahan BF, Gabriel S, Kathiresan S, Stringham HM, McCarthy MI, Boehnke M, Tuomilehto J, Haiman C, Groop L, Atzmon G, Wilson JG, Neuberg D, Altshuler D, Ebert BL. Age-related clonal hematopoiesis associated with adverse outcomes. N Engl J Med.  2014 Dec 25;371(26):2488-98. doi: 10.1056/NEJMoa1408617. Epub 2014 Nov 26. PubMed PMID: 25426837; PubMed Central PMCID: PMC4306669."

[Blancas-Mejia & Ramirez-Alvarado 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23451869/ "Blancas-Mejía LM, Ramirez-Alvarado M. Systemic amyloidoses. Annu Rev Biochem.  2013;82:745-74. doi: 10.1146/annurev-biochem-072611-130030. Epub 2013 Feb 28. Review. PubMed PMID: 23451869; PubMed Central PMCID: PMC4044913."

[Lashuel 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12367530 "Lashuel HA, Petre BM, Wall J, Simon M, Nowak RJ, Walz T, Lansbury PT Jr. Alpha-synuclein, especially the Parkinson's disease-associated mutants, forms pore-like annular and tubular protofibrils. J Mol Biol. 2002 Oct 4;322(5):1089-102. PubMed PMID: 12367530."

[Zhu 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12885775 "Zhu M, Li J, Fink AL. The association of alpha-synuclein with membranes affects bilayer structure, stability, and fibril formation. J Biol Chem. 2003 Oct 10;278(41):40186-97. Epub 2003 Jul 28. PubMed PMID: 12885775."

[Feng 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20550572 "Feng LR, Federoff HJ, Vicini S, Maguire-Zeiss KA. Alpha-synuclein mediates alterations in membrane conductance: a potential role for alpha-synuclein oligomers in cell vulnerability. Eur J Neurosci. 2010 Jul;32(1):10-7. doi: 10.1111/j.1460-9568.2010.07266.x. Epub 2010 Jun 14. PubMed PMID: 20550572; PubMed Central PMCID: PMC2900531."

[McCormack 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12127150 "McCormack AL, Thiruchelvam M, Manning-Bog AB, Thiffault C, Langston JW, Cory-Slechta DA, Di Monte DA. Environmental risk factors and Parkinson's disease: selective degeneration of nigral dopaminergic neurons caused by the herbicide paraquat. Neurobiol Dis. 2002 Jul;10(2):119-27. PubMed PMID: 12127150."

[Costello 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19270050 "Costello S, Cockburn M, Bronstein J, Zhang X, Ritz B. Parkinson's disease and  residential exposure to maneb and paraquat from agricultural applications in the  central valley of California. Am J Epidemiol. 2009 Apr 15;169(8):919-26. doi: 10.1093/aje/kwp006. Epub 2009 Mar 6. PubMed PMID: 19270050; PubMed Central PMCID: PMC2727231."

