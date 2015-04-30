---
layout: post
title:  "Protein folding 12: Trigger factor and SOD1"
date:   2015-04-30 12:02:00
author: ericminikel
tag: mit-7.88j
location: Cambridge, MA
thumb120: 
summary200: "Student presentations part 1. Truc Do: trigger factor. Eric Minikel: SOD1"
---

*These are my notes from week 12 of MIT course 7.88j: Protein Folding and Human Disease, held by Dr. Jonathan King on April 30, 2015.*

Today was the first week of student final project presentations. Truc Do presented on trigger factor. I presented on SOD1.

### Trigger factor

Protein folding machinery and the protein quality control network are highly conserved across many domains of life [[Doyle 2013]]. *E. coli* have a protein quality control network fairly analogous to that in eukaryotes. Nascent polypeptides coming from ribosomes can get help folding from DnaK/JE and GroEL/ES. Proteins from stalled ribosomes get tagged with ssrA for degradation.

In eubacteria there is a protein called trigger factor (TF) that is the first point of contact for many new polypeptides coming off the ribosome. It holds the polypeptide in a state that allows folding. This is an alternate folding pathway for proteins that do not use DnaK/JE or GroEL/ES.

The discovery of trigger factor [[Crooke & Wickner 1987]] arose from a search for chaperones that allow proteins to insert into the membrane. They used an inverted membrane system wherein only membrane-bound proteins would be spared from protease digestion, and they found that a protein called pro-OmpA had to be co-incubated with trigger factor prior to exposure to membranes in order to insert correctly. They therefore thought trigger factor acted specifically to help with membrane insertion. However, they later found that depletion of trigger factor causes defects in cell division (the bacteria undergo filamentation) but does not prevent export of proteins [[Guthrie & Wickner 1990]]. This forced a re-thinking of trigger factor's role.

It eventually turned out that trigger factor is a prolyl isomerase [[Stoller 1995], [Hesterkamp 1996]], meaning that it controls whether prolines in nascent polypeptides end up in a *cis* or *trans* configuration, which would be critical for correct folding. It does also, however, have the activity of holding onto proteins while they fold [[Scholz 1997]]. Evidently it has two separate domains responsible for the "holding" function and the prolyl isomerase function, and you can mutagenize one domain while leaving the other's activity intact [[Li 2001]]. It is now understood that trigger factor is a multi-domain protein that essentially covers the ribosome exit site and "cradles" the nascent polypeptide [[Ferbitz 2004]].

Trigger factor binds to folding intermediates, not finished proteins. One study introduced new disulfide bonds into lactalbumin to create conformations resembling intermediates thought to be present its folding process, and found that trigger factor only bound to the early, "pre-molten globule" intermediates [[Huang 2000]]. 

It turns out that the first 118 N-terminal amino acids contain the entire domain responsible for binding new polypeptides coming off the ribosome [[Hesterkamp 1997]]. This was later narrowed down to a smaller substring of amino acids, and the site on the ribosome that they associate with was identified [[Kramer 2002]].

Deletion of trigger factor (&Delta;tig) gives no growth phenotype and appears to be compensated by a heat shock response, but in combination with DnaK deletion it is synthetic lethal [reviewed in [Hoffmann 2010]]. Indeed, it has been recognized for some time that trigger factor and DnaK cooperate in protein-folding [[Deuerling 1999]]. DnaK is inessential for bacterial growth at 37&deg;C but is essential at lower or higher temperatures. Some of the same proteins rely on both trigger factor and DnaK for their folding [[Deuerling 2003]].

#### Q&A

Q. What about signal peptides?

A. Those are handled by the SecB chaperone, which as far as we know does not interact at all with trigger factor. So if trigger factor is bound to the ribosome and it sees a signal peptide emerge from the exit channel, it must let go.

### SOD1

I basically just presented the stuff I wrote in [today's blog post](/2015/04/30/how-do-sod1-mutations-cause-als/).

[Doyle 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24061228 "Doyle SM, Genest O, Wickner S. Protein rescue from aggregates by powerful molecular chaperone machines. Nat Rev Mol Cell Biol. 2013 Oct;14(10):617-29. doi: 10.1038/nrm3660. Review. PubMed PMID: 24061228."

[Crooke & Wickner 1987]: http://www.ncbi.nlm.nih.gov/pubmed/3299381 "Crooke E, Wickner W. Trigger factor: a soluble protein that folds pro-OmpA into a membrane-assembly-competent form. Proc Natl Acad Sci U S A. 1987 Aug;84(15):5216-20. PubMed PMID: 3299381; PubMed Central PMCID: PMC298825."

[Guthrie & Wickner 1990]: http://www.ncbi.nlm.nih.gov/pubmed/2211496 "Guthrie B, Wickner W. Trigger factor depletion or overproduction causes defective cell division but does not block protein export. J Bacteriol. 1990 Oct;172(10):5555-62. PubMed PMID: 2211496; PubMed Central PMCID: PMC526866."

[Hesterkamp 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8633085 "Hesterkamp T, Hauser S, Lütcke H, Bukau B. Escherichia coli trigger factor is  a prolyl isomerase that associates with nascent polypeptide chains. Proc Natl Acad Sci U S A. 1996 Apr 30;93(9):4437-41. PubMed PMID: 8633085; PubMed Central PMCID: PMC39556."

[Stoller 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7588623/ "Stoller G, Rücknagel KP, Nierhaus KH, Schmid FX, Fischer G, Rahfeld JU. A ribosome-associated peptidyl-prolyl cis/trans isomerase identified as the trigger factor. EMBO J. 1995 Oct 16;14(20):4939-48. PubMed PMID: 7588623; PubMed Central  PMCID: PMC394597."

[Scholz 1997]: http://www.ncbi.nlm.nih.gov/pubmed/9009267/ "Scholz C, Stoller G, Zarnt T, Fischer G, Schmid FX. Cooperation of enzymatic and chaperone functions of trigger factor in the catalysis of protein folding. EMBO J. 1997 Jan 2;16(1):54-8. PubMed PMID: 9009267; PubMed Central PMCID: PMC1169613."

[Li 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11591381 "Li ZY, Liu CP, Zhu LQ, Jing GZ, Zhou JM. The chaperone activity of trigger factor is distinct from its isomerase activity during co-expression with adenylate kinase in Escherichia coli. FEBS Lett. 2001 Oct 5;506(2):108-12. PubMed PMID: 11591381."

[Huang 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10899610 "Huang G, Li ZY, Zhou JM. Conformational specificity of trigger factor for the  folding intermediates of alpha-lactalbumin. Biochim Biophys Acta. 2000 Jul 14;1480(1-2):77-82. PubMed PMID: 10899610."

[Hesterkamp 1997]: http://www.ncbi.nlm.nih.gov/pubmed/9268318 "Hesterkamp T, Deuerling E, Bukau B. The amino-terminal 118 amino acids of Escherichia coli trigger factor constitute a domain that is necessary and sufficient for binding to ribosomes. J Biol Chem. 1997 Aug 29;272(35):21865-71. PubMed PMID: 9268318."

[Kramer 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12226666 "Kramer G, Rauch T, Rist W, Vorderwülbecke S, Patzelt H, Schulze-Specking A, Ban N, Deuerling E, Bukau B. L23 protein functions as a chaperone docking site on the ribosome. Nature. 2002 Sep 12;419(6903):171-4. PubMed PMID: 12226666."

[Hoffmann 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20132842 "Hoffmann A, Bukau B, Kramer G. Structure and function of the molecular chaperone Trigger Factor. Biochim Biophys Acta. 2010 Jun;1803(6):650-61. doi: 10.1016/j.bbamcr.2010.01.017. Epub 2010 Feb 2. Review. PubMed PMID: 20132842."

[Deuerling 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10458167 "Deuerling E, Schulze-Specking A, Tomoyasu T, Mogk A, Bukau B. Trigger factor and DnaK cooperate in folding of newly synthesized proteins. Nature. 1999 Aug 12;400(6745):693-6. PubMed PMID: 10458167."

[Deuerling 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12603737 "Deuerling E, Patzelt H, Vorderwülbecke S, Rauch T, Kramer G, Schaffitzel E, Mogk A, Schulze-Specking A, Langen H, Bukau B. Trigger Factor and DnaK possess overlapping substrate pools and binding specificities. Mol Microbiol. 2003 Mar;47(5):1317-28. PubMed PMID: 12603737."

[Ferbitz 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15334087 "Ferbitz L, Maier T, Patzelt H, Bukau B, Deuerling E, Ban N. Trigger factor in  complex with the ribosome forms a molecular cradle for nascent proteins. Nature.  2004 Sep 30;431(7008):590-6. Epub 2004 Aug 29. PubMed PMID: 15334087."

