---
layout: post
title:  "Molecular Biology 14: 'Research seminar: mechanisms of interstrand cross-link (ICL) repair'"
date:   2014-10-08 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 14 in Harvard's BCMP 200: Molecular Biology course, delivered by Johannes Walter on October 8, 2014.*

Today is a research seminar covering background and Dr. Walter's work on interstrand cross-link repair [e.g. [Raschle 2008], [Knipscheer 2009], [Long 2011], reviewed in [Zhang & Walter 2014]].

### What are ICLs?

Interstrand cross-link (ICL) refers to the formation of covalent bonds between opposing strands of a dsDNA duplex. Several chemotherapy drugs have the mechanism that they cause ICLs, including chlorambucil, cisplatin, and mitomycin C, but cancers often develop resistance to these drugs. Some endogenous metabolites such as malondialdehyde also cause ICLs. 

### Background

Genetic approaches have been used to identify genes whose knockout results in increased or decreased lethality of ICL-inducing agents in cultured cells. Cells deficient in *RAD51*, *BRCA2*, *REV1*, *ERCC4* (XPF protein), or any of 16 "FANC" genes are hypersensitive to ICLs. Deficiency in any of these 16 FANC genes results in Fanconi anemia [e.g. FANCA is [OMIM #227650](http://www.omim.org/entry/227650)]. The pathway was worked out in part by [[Taniguchi 2002]]. FANCI and FANCD2 form a heterodimer which is ubiquitylated by eight other FANCs and forms foci on chromatin. The pathway is only activated upon DNA replication.

### Johannes Walter's work on ICL repair

Walter's group used cisplatin to create an ICL within a SapI restriction site on a plasmid, which prevents the restriction enzyme from cutting unless the ICL is repaired [Raschle 2008]. When they incubated this plasmid in *Xenopus* egg extracts, they found that over time 10-35% of the plasmid would become cuttable, but only if DNA replication was allowed to proceed. By placing AflIII restriction sites on either side of the ICL they were able to monitor the formation of leading strand intermediates pointed into the cross-link. They determined that double-strand breaks are created on either side of the ICL, and a TLS polymerase (we still don't know which one) performs translesion synthesis, inserting new bases across the bulky adduct on the parent strand, and then another TLS polymerase performs extension on the other side. The DSB is then repaired via homologous recombination [[Long 2011], see also [Klein Douwel 2014]]. The translesion polymerase adds the correct base at the position of the bulky adduct about 98% of the time, which is low compared to replicative polymerases but is much greater than the 25% expected by chance, implying that the translesion polymerase has information about what base is supposed to be there.

They next wanted to apply this understanding to Fanconi anemia [[Knipscheer 2009]]. First they confirmed that the Fanconi pathway is active in *Xenopus* egg extracts, by showing that ubiquitylated species of FANCD2 and FANCI appear upon DNA synthesis in these extracts. Using the same assay used by [[Raschle 2008]], they found that immunodepletion of FANCD2 prevents ICL repair, and addition of recombinant FANCI-FANCD2 rescues this. The FANCD2-FANCI complex was thought *not* to act as a nuclease. It turns out that mutations in *ERCC4* (XPF) also cause Fanconi anemia, that XPF and MUS81 are 3' flap endonucleases and FAN1 and SLX1 are 5' flap endonucleases, that SLX4 (causal for FANCP) is a scaffold protein which brings these flap endonucleases together. Immunodepleting XPF co-depletes SLX4, and prevents ICL repair; this can only be rescued by adding in *both* recombinant SLX4 and XPF [[Klein Douwel 2014]].

It is now thought that the ubiquitylated FANCI-FANCD2 complex may act to recruit SLX4 and associated flap endonucleases to the ICL site. This means there is an 8-protein complex that ubiquitylates FANCI-FANCD2, then FANCI-FANCD2 themselves, then about 5 other proteins they recruit. Why would such a complex pathway be required to repair just a single cross-link? It appears that correct repair occurs only if incision is performed simultaneously on both sides of the ICL on the same side of the X, whereas one could imagine many ways to get the repair wrong.

The current model does a good job of explaining why mutations in the FANC genes could cause chromosomal abnormalities and cancer, but we still don't have a clear picture of why they cause anemia and developmental defects.

### Epilogue: DNA repair and cancer therapy

Most hereditary cancers in humans are caused by mutations in DNA repair pathways:

| genes | pathway |
| ----- | ------- |
| *BRCA1*, *BRCA2* | homologous recombination |
| XP genees | nucleotide excision repair |
| MutS, MutL genes | mismatch repair |
| FANC genes | interstrand cross-link repair |
| DNA pol &delta; exonuclease | proofreading | 

The experimental compound [NU1025](http://www.drugbank.ca/drugs/DB02690) inhibits poly-ADP ribose polymerase (PARP), and is especially lethal to *BRCA1<sup>-/-</sup>* cells. It appears that PARP inhibition prevents base excision repair (BER), which can be compensated by homologous recombination *only* in the presence of functional Brca1 [[Bryant 2005]].


[Taniguchi 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12086603 "Taniguchi T, Garcia-Higuera I, Xu B, Andreassen PR, Gregory RC, Kim ST, Lane WS, Kastan MB, D'Andrea AD. Convergence of the fanconi anemia and ataxia telangiectasia signaling pathways. Cell. 2002 May 17;109(4):459-72. PubMed PMID:  12086603."

[Raschle 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18805090 "Räschle M, Knipscheer P, Enoiu M, Angelov T, Sun J, Griffith JD, Ellenberger TE, Schärer OD, Walter JC. Mechanism of replication-coupled DNA interstrand crosslink repair. Cell. 2008 Sep 19;134(6):969-80. doi: 10.1016/j.cell.2008.08.030. Erratum in: Cell.2009 May 29;137(5):972. Knipsheer, Puck [corrected to Knipscheer, Puck]. PubMed PMID: 18805090; PubMed Central PMCID: PMC2748255."

[Knipscheer 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19965384 "Knipscheer P, Räschle M, Smogorzewska A, Enoiu M, Ho TV, Schärer OD, Elledge SJ, Walter JC. The Fanconi anemia pathway promotes replication-dependent DNA interstrand cross-link repair. Science. 2009 Dec 18;326(5960):1698-701. doi: 10.1126/science.1182372. Epub 2009 Nov 12. PubMed PMID: 19965384; PubMed Central  PMCID: PMC2909596."

[Long 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21719678 "Long DT, Räschle M, Joukov V, Walter JC. Mechanism of RAD51-dependent DNA interstrand cross-link repair. Science. 2011 Jul 1;333(6038):84-7. doi: 10.1126/science.1204258. PubMed PMID: 21719678; PubMed Central PMCID: PMC4068331."

[Klein Douwel 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24726325 "Klein Douwel D, Boonen RA, Long DT, Szypowska AA, Räschle M, Walter JC, Knipscheer P. XPF-ERCC1 acts in Unhooking DNA interstrand crosslinks in cooperation with FANCD2 and FANCP/SLX4. Mol Cell. 2014 May 8;54(3):460-71. doi: 10.1016/j.molcel.2014.03.015. Epub 2014 Apr 10. PubMed PMID: 24726325."

[Zhang & Walter 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24768452 "Zhang J, Walter JC. Mechanism and regulation of incisions during DNA interstrand cross-link repair. DNA Repair (Amst). 2014 Jul;19:135-42. doi: 10.1016/j.dnarep.2014.03.018. Epub 2014 Apr 24. PubMed PMID: 24768452; PubMed Central PMCID: PMC4076290."

[Bryant 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15829966 "Bryant HE, Schultz N, Thomas HD, Parker KM, Flower D, Lopez E, Kyle S, Meuth M, Curtin NJ, Helleday T. Specific killing of BRCA2-deficient tumours with inhibitors of poly(ADP-ribose) polymerase. Nature. 2005 Apr 14;434(7035):913-7. Erratum in: Nature. 2007 May 17;447(7142):346. PubMed PMID: 15829966."