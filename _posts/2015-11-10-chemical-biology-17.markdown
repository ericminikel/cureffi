---
layout: post
title:  "Chemical biology 17: psychiatric disease"
date:   2015-11-10 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 17 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on November 10, 2015.*

> The single largest reason for success in pharmaceutical drug research is knowing the importance of an underlying biochemical pathway to the pathophysiology of a given disease. The single largest reason for failure in pharmaceutical drug research is having to guess at the underlying biology and biochemistry.
> 
> &mdash; Ed Scolnick

Ed Scolnick was the president of Merck and presided over the most successful years in history in any pharmaceutical company, overseeing the approval of 29 new drugs and vaccines. After all this success, though, he came back to academia, in order to address that largest reason for failure. Merck had worked on dopamine-4-receptor antagonists for schizophrenia, and substance P antagonists for major depression, both of which were "me too" targets that many pharma companies pursued, and both of which failed spectacularly, because the therapetuic hypothesis was simply wrong. These targets were both just guesses, based on no genetic or biochemical insights whatsoever. Despite evidence that schizophrenia and bipolar are highly heritable, at that time we knew almost nothing about the underlying molecular (genetic) causes.

Here's a success story to contrast with that. There was a family in the Dominican Republic in which the males had Mendelian pseudohermaphrodism, which proved to have a genetic defect in 5-alpha-reductase resulting in small prostate glands. 5-alpha-reductase is responsible for converting testosterone to dihydro-testosterone, which is actually more active than regular testosterone. This insight led to the development of an active site 5-alpha-reductase inhibitor ([finasteride](https://en.wikipedia.org/wiki/Finasteride), which looks a lot like testosterone) as new treatment for benign prostatic hypertrophy (at a 5 mg dose), and later for male pattern baldness (at a 1 mg dose). As an aside, note that Propecia (the formulation for baldness) is more expensive than Proscar (the formulation for prostatic hypertrophy), and the choice of a 1/5 rather than 1/4 dose, plus Proscar's weird shape, makes it difficult to just cut up the Proscar pills to get a smaller dose. The main point of this story, though, is the ingenious use of human genetics to inform drug discovery.

Now consider HIV/AIDS. Realize that when AIDS was first discovered, the molecular basis was unknown. The first case was reported in 1981, and the etiologic agent HIV was not discovered until 1983. In that year, the U.S. recorded 2,304 deaths, a 90% increase from 2 years earlier, and the first heterosexual transmission was confirmed, although sadly, many people continued to view HIV/AIDS as a disease of homosexuality. In 1984, Merck's Irving Sigal had the genius idea to pursue a protease inhibitor to block HIV's entry into cells. Merck had been working on renin, an aspartyl protease, as a target for high blood pressure, and Sigal figured that because RSV has an essential aspartyl protease, HIV might have one too, and the compounds from the renin program could be tested against HIV. No one believed him because at the time, all known aspartyl proteases had a diaspartate (DD) motif, which was not found anywhere in the HIV genome. Sigal counterproposed that maybe one open reading frame encoded just a single aspartate, and that it was a homodimer that was the active protease species. That turned out to be correct.

AZT, a nucleoside analog, became the first HIV drug, approved in 1987, although it wasn't very good. By 1988, 75,000 people had died of AIDS, and another 5-10 million were believed to be infected (which is still far fewer than today, mind you) and people started getting paranoid that if it somehow became mosquito-borne, it could spell the end of humankind. Nancy Kohl, also at Merck, did a proof-of-concept experiment demonstrating a way to 'stop the AIDS virus dead in its tracks'. To demonstrate that the aspartyl protease was essential, they did two things. First, they did site-directed mutagenesis to edit the aspartate to asparagine, and showed that this abolished HIV's virulence. Second, Manuel Navia crystallized the homodimer and showed that the aspartate residues were adjacent. Turns out that the entire HIV genome is translated into a polyprotein, which then dimerizes, and then the aspartyl protease starts cleaving out the other finished proteins, *in cis*, removing the peptide linkers. Sadly, Irving Sigal was killed on the infamous [Pan Am 103](https://en.wikipedia.org/wiki/Pan_Am_Flight_103) flight over Lockerbie immediately after announcing their discoveries.

In 1990, Merck's aspartyl protease inhibitor lead proved highly toxic in animals, and in 1992, two non-nucleoside analog HIV drug candidates failed in Phase 2 - it was a series of major setbacks for HIV/AIDS drug discovery. AIDS patients responded with a massive advocacy campaign. Bruce Dorsey eventually modified the aspartyl protease inhibitor to make it more specific for the viral protease, eliminating host toxicity, and resulting in the approved drug indinavir. In a pilot study in 1993, indinavir proved phenomally effective both in biomarkers - 42% drop in viral load after 2 days (compared to 1% for AZT), and a 70% drop in viral load after 12 days (compared to 58% for AZT) - and in clincial outcomes, increasing CD4+ cell counts. However, in 1994, there was another major setback, when it was revealed that HIV developed resistance to indinavir. The response was an increased dose and triple combination therapy. The dose required was enormous - about 1kg of drug per year - and Merck had to build facilities furiously to scale up manufacturing of this drug. After a furious advocacy effort, especially by Linda Grinberg, indinavir was approved in 1996, and the annual number of HIV/AIDS deaths in the U.S. immediately began falling.

Yet still, HIV/AIDS remains an enormous cause of morbidity and mortality worldwide, with >15% of people in South Africa infected. While some groups, especially the Gates Foundation, have made heroic investments in HIV/AIDS therapy in Africa, the problem is far from solved, and groups such as the Ragon Institute are bent on developing a vaccine.

So, with that whole story in mind, consider the challenge of psychiatric disease. For nice backgrounder, see [these lectures by Roy Perlis and Ben Neale](/2015/04/17/genetics-in-medicine-11/). Drugs currently prescribed for schizophrenia are very old and not very selective: for instance, clozapine, the most widely used drug, appears to interact with a large number of different GPCRs. Some of these drugs also require frequent monitoring of drug levels in the blood, and have horrifying adverse effects.

Ed Scolnick's big inspiration for returning to academia was the family and twin studies showing that bipolar disorder and schizophrenia are highly heritable. New genomic technologies now offered a way to discover the genetic factors that underlie this heritability. Note that for arbitrary historical reasons, the term "genome-wide association study" is generally reserved for the study of common genetic variants by genotyping chips, even though sequencing-based studies of rare variants are also genome-wide and are also studies of association. Beginning around 2009, these methods started discovering genetic variants associated with risk of schizophrenia and bipolar. 

It was long hypothezied that schizophrenia onset in one's twenties might be triggered by some combination of genetic factors, stressful life events, and an infection. Many of the schizophrenia-associated loci that have been found are involved in neurotransmission, but there are also many loci that have immune roles, providing some support for the idea that immunity is involved [[PGC 2014]].

To date, we have no new medicines to show for all this effort - but for the first time, we have a road forward.


[PGC 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25056061 "Schizophrenia Working Group of the Psychiatric Genomics Consortium. Biological insights from 108 schizophrenia-associated genetic loci. Nature. 2014 Jul 24;511(7510):421-7. doi: 10.1038/nature13595. Epub 2014 Jul 22. PubMed PMID: 25056061; PubMed Central PMCID: PMC4112379."







