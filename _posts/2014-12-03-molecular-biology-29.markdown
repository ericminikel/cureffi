---
layout: post
title:  "Molecular Biology 29: 'Paul Anderson\'s research seminar"
date:   2014-12-03 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
summary200: "A research seminar on angiogenin, tRNA and amyotrophic lateral sclerosis by Harvard Medical School's Paul Anderson"
---

*These are my notes from lecture 29 in Harvard's BCMP 200: Molecular Biology course, delivered by [Paul Anderson](http://dms.hms.harvard.edu/immunology/fac/Anderson.php) on December 3, 2014.*

Today's research seminar will cover angiogenin, tRNA and amyotrophic lateral sclerosis.

Angiogenin is a secreted ribonuclease which specifically targets tRNAs.

### Background: translation and stress

Under normal conditions, the eIF2 complex is important for allowing the 40S translation initiation complex to mature into a full 48S initiation complex which is ready to begin scanning in search of a start codon. When the 48S complex finds a start codon, GTP is hydrolyzed to GDP, the early initiation factors are ejected, and translation begins. However, environmental stress - heat, oxidation, UV irradiation, etc. - leads to activation of a variety of factors (PKR, PERK, HRI and GCN2) which phosphorylate residue S51 of eIF2&alpha;. Under these conditions, a protein called TIA-1, which contains a prion domain, is also incorporated into initiation complexes and causes them to aggregate into **stress granules**. The initiation complexes during stress are called 48S\* complexes because they are broadly similar to canonical 48S but are non-canonical in that they lack initiation factors 2 and 5, and contain TIA-1. The translational downregulation caused by this stress response selectively targets transcripts with a 5' cap, while sparing both IRES-mediated translation initiation and transcripts with upstream ORFs. Therefore these IRES- or uORF-containing transcripts are preferentially translated under stress conditions, and these encode proteins that help cells survive stress. 

Stress also increases the formation of aggregates called **P-bodies**, which are composed of different constituents, and control degradation of mRNAs. These also effectively reprogram gene expression in order to help cells survive stress conditions.

### Paul Anderson's work: tRNAs, tiRNAs and angiogenin

miRNA usually binds to sites in the 3'UTR of targeted mRNAs and reduces translation by interfering with initiation complexes. This led to the hypothesis that miRNA might also be involved in stress granule formation and/or that some miRNAs might be induced by stress. Dr. Anderson's lab tested this hypothesis by exposing U2OS cells to a variety of stresses. They found that under a variety of stress conditions, new small RNA bands appeared on gels. However, these bands turned out not to be miRNA but rather to consist of cleaved tRNA fragments. They named these fragments tiRNAs, and then set about figuring out what cleaves the tRNAs to generate them.

A strong candidate was angiogenin, encoded by the *ANG* gene. It is a 14kDa RNAse A known both as an oncogene - it induces vascularization in tumors - and as a familial ALS gene. It is secreted under hypoxic conditions and known to enhance survival of cultured motor neurons and to cleave tRNAs *in vitro*. Sure enough: when they mutated angiogenin, the tiRNA bands disappeared. And when they stressed cells with sodium arsenite, the reduction in translation could be partially rescued by siRNA against angiogenin. Conversely, when they added angiogenin to unstressed cells, they found that this reduced protein synthesis by a small (20%) but statistically significant amount, and this reduction required the catalytic activity of angiogenin (a mutant had no activity). This effect proved to be mediated by tiRNAs - transfecting just the tiRNAs was enough to reproduce the translational repression. It is specifically the 5'tiRNAs and not the 3'tiRNAs which cause this. They were even able to reproduce the effect by adding synthetic tiRNA oligos to *in vitro* translation reactions in rabbit reticulocyte lysates. By screening a panel of tiRNAs in this system, they found that a key structural element was that the tiRNAs had to have a series of five guanines at the 5' end, and another two invariant guanines in the loop structure. Such a 5' end sequence is found only in alanine and cysteine tRNAs, across (almost?) all eukaryotes. Mutating or removing one or more Gs reduces the activity of the tiRNAs.

Stress also leads to inhibition of PI3K and, consequently, inhibition of mTOR. This causes a cascade of downstream changes affecting translation, including hypophosphorylation of 4E-BP [reviewed in [Tee & Blenis 2005]]. They next asked where in this pathway the tiRNAs act. To interrogate this, they used a construct with a CMV promoter, then firefly luciferase, then an IRES domain, then *Renilla* luciferase. The tiRNAs caused a reduction in firefly luciferase but not in *Renilla* luciferase, indicating that the tiRNAs affected canonical initiation but did not impact translation from IRES, which is independent of eukaryotic initiation factors. Through immunoprecipitation experiments they were able to determine that the tiRNAs target eIF4F. They prevent formation of a complex containing eIF4G and eIF4A, and reduce the eIF4E content by about 50%, without affecting 4E-BP. Thus, the tiRNAs cause a non-functional initiation complex to be formed in lieu of a functional one.

A protein called YB-1 turns out to be required to mediate the effect of the tiRNAs. YB-1 is called a "cold shock" protein. It has a G/R-rich N terminus, a "cold shock" DNA-binding middle domain, and a "charged zipper" C terminal domain. It is known to inhibit translation initiation, prevent eIF4G from binding mRNA, and to displace eIF4F from 5' caps via its cold shock domain. They showed that 5'tiRNAs bind to YB-1 in a dose-dependent manner.

A **G-quadruplex** is a nucleic acid secondary/tertiary structure consisting of a stack of planar "G-quartets", each of which consists of four guanines. G-quadruplexes are incredibly stable and resist RNAse degradation. They are found in the untranslated regions of some important mRNAs such as c-Myc. tiRNAs turn out to assemble G-quadruplexes. In fact, even if you make the same sequence out of DNA instead of RNA, it also assembles G-quadruplexes and is also capable of disrupting translation in the same manner. This is useful because tiRNAs can be degraded relatively easily but "tiDNAs" are more stable and are able to enter cells on their own without transfection. They found that dumping tiDNAs on cells elicited a modest but significant effect on cellular survival of various stresses (AMPA, sodium arsenite and H<sub>2</sub>O<sub>2</sub>). This observation has led them to an interest in tiDNAs (specifically 5'-tiDNA<sup>Ala</sup>) as potential therapeutic agents to promote motor neuron survival in the treatment of ALS [see discussion in [Ivanov & O'Day 2014]]. 

All of this work is reported in a series of papers from the Anderson lab over the past 5 years [[Yamasaki & Ivanov 2009], [Ivanov 2011], [Ivanov & O'Day 2014]]. Their current model is that angiogenin is a ribonuclease that can be secreted by one cell and taken up into another cell to transmit a stress signal between the cells, by cleaving tRNA in the destination cell to create tiRNAs which bind YB-1 and thereby induce stress granule formation [reviewed in [Anderson & Ivanov 2014]].


[Yamasaki & Ivanov 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19332886 "Yamasaki S, Ivanov P, Hu GF, Anderson P. Angiogenin cleaves tRNA and promotes  stress-induced translational repression. J Cell Biol. 2009 Apr 6;185(1):35-42. doi: 10.1083/jcb.200811106. Epub 2009 Mar 30. PubMed PMID: 19332886; PubMed Central PMCID: PMC2700517."

[Ivanov 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21855800 "Ivanov P, Emara MM, Villen J, Gygi SP, Anderson P. Angiogenin-induced tRNA fragments inhibit translation initiation. Mol Cell. 2011 Aug 19;43(4):613-23. doi: 10.1016/j.molcel.2011.06.022. PubMed PMID: 21855800; PubMed Central PMCID: PMC3160621."

[Ivanov & O'Day 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25404306 "Ivanov P, O'Day E, Emara MM, Wagner G, Lieberman J, Anderson P. G-quadruplex structures contribute to the neuroprotective effects of angiogenin-induced tRNA fragments. Proc Natl Acad Sci U S A. 2014 Nov 17. pii: 201407361. [Epub ahead of  print] PubMed PMID: 25404306."

[Anderson & Ivanov 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25220675 "Anderson P, Ivanov P. tRNA fragments in human health and disease. FEBS Lett. 2014 Nov 28;588(23):4297-4304. doi: 10.1016/j.febslet.2014.09.001. Epub 2014 Sep  16. Review. PubMed PMID: 25220675."

[Tee & Blenis 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15659337 "Tee AR, Blenis J. mTOR, translational control and human disease. Semin Cell Dev Biol. 2005 Feb;16(1):29-37. Epub 2004 Dec 31. Review. PubMed PMID: 15659337."