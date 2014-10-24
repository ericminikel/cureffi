---
layout: post
title:  "Molecular Biology 18: 'Gene regulation IV - transcription initiation'"
date:   2014-10-24 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 18 in Harvard's BCMP 200: Molecular Biology course, delivered by Timur Yusufzai on October 24, 2014.*

### Intro to transcription factors

*In vitro*, a combination of RNA polymerase, a DNA template, NTPs, and Mg<sup>2+</sup> is sufficient to cause transcription to start at arbitrary sites. So how is transcription started specifically at promoters in cells? Fractionation experiments showed that specific transcription requires a series of transcription factors named "transcription factor [for RNA polymerase] II" - such as TFIIB, TFIID, TFIIE, and so on, pronounced "TF two B", etc. [[Sawadogo & Roeder 1985]]. These are huge complexes (1.5 MDa), even larger than RNA pol II itself (0.5 MDa). These complexes must recognie a promoter sequence, recruit RNA pol II, unwind DNA to load RNA pol II, and then cause RNA pol II to start transcribing.

You can remember the functions of the TF complexes based on the first initial of what they do, as follows:

+ TFIID: DNA-binding
+ TFIIH(K): Helicase / Kinase
+ TFIIF: Facilitates RNA pol II loading
+ TFIIE: Entry onto DNA
+ TFIIA: Activator, or Anti-repressor
+ TFIIB: Bridges TFIID and pol II

### Some facts about how they work

TFIIB can bind DNA upstream or downstream of the 90&deg; bend.

TFIIB and TFIIA help stabilize the binding of TBP to DNA.

TFIIH is a helicase of 0.5 MDa [[Gibbons 2012]] which helps recruit RNA pol II.

TFIIE and TFIIH create a transcription "bubble" of unwound DNA.

A non-hydrolyzable ATP analogue, AMP-PNP, prevents transcription initiation and elongation. Thus, ATP is required for those things. Three separate activities require ATP: helicase, kinase and polymerase activity.

In mammals, RNA pol II contains a C-terminal domain with 52 repeats of the sequence YSPTSPS. S2 and S5 are phosphorylatable. Their phosphorylation is invovled in elongation. This was first characterized in [[Meinhart & Cramer 2004]] and was the subject of [BBS 230 week 05](/2014/10/02/biolit-05/) [[Kwon 2013]].

The structure of the pre-initiation complex (PIC) is a subject of controversy between two famous scientists, Eva Nogales [[He 2013]] and Roger Kornberg [[Murakami 2013]]. Nogales visualized the process of transcription initiation via cryo-electron microscopy (cryo-EM) of the pre-initiation complex (PIC) [[He 2013]] as shown in this video:

<iframe width="420" height="315" src="//www.youtube.com/embed/KOfxp5apORQ" frameborder="0" allowfullscreen></iframe>

Kornberg used a combination of cryo-EM and cross-linking mass spec and did not make a video. The two groups' structures differ considerably. We still don't know which, if either, is correct.

### Polymerase at promoters

The presence of RNA pol II at a promoter does not guarantee transcription. ChIP-seq has found RNA pol II, for instance, to be present at promoters of non-expressed genes, and also in non-promoter regions that do not act as transcription start sites [[Adelman & Lis 2012]]. The nomenclature for this is confusing. RNA pol II is said to be "paused" if there is a peak of RNA pol II bound at a transcription start site indicating it has piled up there, pausing. Thus,

+ a "paused, expressed" gene is one with a pol II peak at the start site but some pol II signal throughout
+ a "paused, non-expressed" gene is one with a pol II peak at the start site and no pol II signal elsewhere (and also no evidence for expression from RNA-seq)
+ a "non-paused, expressed" gene is one with pol II signal evenly distributed throughout the gene, consistent with active transcription
+ a "non-paused, non-expressed" gene is simply one with no pol II signal at all (and also no evidence for expression from RNA-seq)

Pausing usually occurs at early elongation, after initiation. Early elongation is a very tightly regulated step in gene expression.

### More facts

Within the promoter, the **core promoter** is &plusmn;40bp from the transcription start site. DNA sequence in the core promoter is important for recruiting TFIID.

TBP is part of TFIID.

TFIID makes multiple contacts with DNA at the core promoter, including but not limited to the TATA box.

People still use DNAse I and hydroxyl radical footprinting to study TFIID [[Cianfrocco 2013]].

<25% of mammalian promoters have a consensus TATA box. Instead, most mammalian genes are transcribed starting from CpG islands with multiple start sites. This somehow relates to SAGA, a complex that Fred Winston studied - see commentary in [[Timmers & Tora 2005]]. CpGs at promoters must be unmethylated for transcription to occur.


[Sawadogo & Roeder 1985]: http://www.ncbi.nlm.nih.gov/pubmed/3925456/ "Sawadogo M, Roeder RG. Factors involved in specific transcription by human RNA polymerase II: analysis by a rapid and quantitative in vitro assay. Proc Natl Acad Sci U S A. 1985 Jul;82(13):4394-8. PubMed PMID: 3925456; PubMed Central PMCID: PMC390420."

[Gibbons 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22308316 "Gibbons BJ, Brignole EJ, Azubel M, Murakami K, Voss NR, Bushnell DA, Asturias  FJ, Kornberg RD. Subunit architecture of general transcription factor TFIIH. Proc Natl Acad Sci U S A. 2012 Feb 7;109(6):1949-54. doi: 10.1073/pnas.1105266109. Epub 2012 Jan 20. PubMed PMID: 22308316; PubMed Central PMCID: PMC3277522."

[Meinhart & Cramer 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15241417 "Meinhart A, Cramer P. Recognition of RNA polymerase II carboxy-terminal domain by 3'-RNA-processing factors. Nature. 2004 Jul 8;430(6996):223-6. PubMed PMID: 15241417."

[Kwon 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24267890 "Kwon I, Kato M, Xiang S, Wu L, Theodoropoulos P, Mirzaei H, Han T, Xie S, Corden JL, McKnight SL. Phosphorylation-regulated binding of RNA polymerase II to fibrous polymers of low-complexity domains. Cell. 2013 Nov 21;155(5):1049-60. doi: 10.1016/j.cell.2013.10.033. Erratum in: Cell. 2014 Jan 16;156(1-2):374. PubMed PMID: 24267890; PubMed Central PMCID: PMC4010232."

[He 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23446344 "He Y, Fang J, Taatjes DJ, Nogales E. Structural visualization of key steps in  human transcription initiation. Nature. 2013 Mar 28;495(7442):481-6. doi: 10.1038/nature11991. Epub 2013 Feb 27. PubMed PMID: 23446344; PubMed Central PMCID: PMC3612373."

[Murakami 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24072820 "Murakami K, Elmlund H, Kalisman N, Bushnell DA, Adams CM, Azubel M, Elmlund D, Levi-Kalisman Y, Liu X, Gibbons BJ, Levitt M, Kornberg RD. Architecture of an RNA polymerase II transcription pre-initiation complex. Science. 2013 Nov 8;342(6159):1238724. doi: 10.1126/science.1238724. Epub 2013 Sep 26. PubMed PMID: 24072820; PubMed Central PMCID: PMC4039082."

[Adelman & Lis 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22986266 "Adelman K, Lis JT. Promoter-proximal pausing of RNA polymerase II: emerging roles in metazoans. Nat Rev Genet. 2012 Oct;13(10):720-31. doi: 10.1038/nrg3293.  Review. PubMed PMID: 22986266; PubMed Central PMCID: PMC3552498."

[Cianfrocco 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23332750 "Cianfrocco MA, Kassavetis GA, Grob P, Fang J, Juven-Gershon T, Kadonaga JT, Nogales E. Human TFIID binds to core promoter DNA in a reorganized structural state. Cell. 2013 Jan 17;152(1-2):120-31. doi: 10.1016/j.cell.2012.12.005. PubMed PMID: 23332750; PubMed Central PMCID: PMC3552382."

[Timmers & Tora 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15653319 "Timmers HT, Tora L. SAGA unveiled. Trends Biochem Sci. 2005 Jan;30(1):7-10. Review. PubMed PMID: 15653319."