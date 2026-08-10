---
layout: post
title:  "Jeff Carroll: searching for the toxic species in Huntington's disease"
date:   2026-08-10
author: ericminikel
location: Cambridge, MA
thumb120: https://www.cureffi.org/2026/08/jbc-thumbnail.png
summary200: "Notes from a guest lecture by Dr. Jeffrey B. Carroll"
---

![](/media/2026/08/jeff-carroll-lecture.png)

_Dr. Jeffrey B. Carroll (Allen Institute Brain Health Accelerator) visited our lab today to give a guest lecture: "Searching for the toxic species in Huntington's disease."_

"Ground zero" for everyone working on HD was the discovery of the CAG repeat expansion in a gene then dubbed "IT15", for interesting transcript 15, now known as huntingtin (_HTT_) [[Huntington's Disease Collaborative Research Group 1993]]. GWAS on the residuals for age of onset, after controlling for CAG repeat length, yielded practically a unified KEGG pathway of hits surrounding mismatch repair [[Gem-HD 2015]]. It had been known for years that in the most affected brain tissues, the length of the CAG repeat in a HD patient is not a single value but a smear [[Telenius 1994]]. Single-cell data show that the somatic expansion of the CAG repeat is most severe in spiny projection neurons (SPNs), the most affected cell type, and that it becomes toxic only at a threshold of 150 CAGs in an individual cell [[Handsaker 2025]]. But that doesn't tell us what the toxic species is. In the presence of a very expanded CAG repeat, _HTT_ fails to splice properly, resulting in an mRNA dubbed _HTT1a_ reading into intron 1 [[Sathavisam 2013]]. At first people doubted this finding because it was found in mice with 150 CAG repeats, whereas human patients often have germline repeat lengths of just 40-50 CAGs. But now that we know that individual cells that are sick have 150 CAGs, it appears more plausible that _HTT1a_ could actually be the toxic species. _HTT1a_ is seen in a variety of mouse models including BAC-HD which have the full human gene. 

Some of Jeff's early work was on allele-specific silencing [[Carroll 2011]]. Later he collaborated with Wave Life Sciences to compare ASOs that knock down mutant _HTT_, including _HTT1a_ (mutASO) versus those that knock down mutant and wild-type _HTT_ but not _HTT1a_ (panASO), using Q111 HD knock-in mice [[Bragg 2026]]. MutASO completely abolished the intracellular huntingtin aggregates, while panASO made very little difference. By RNAseq, PanASO knocked down _HTT_ but had no other effect on the transcriptome, while MutASO had a huge transcriptomic impact, largely restoring a normal transcriptonal program. In human (unlike knock-in mice) it is impossible to allele-selectively target _HTT1a_ with an ASO, though, because it contains no nucleotides not present in _HTT_ pre-mRNA. An siRNA that is only active in the cytosol, however, could do this. Anastasia Khvorova's lab therefore developed an siRNA that specifically knocks down _HTT1a_ while having no effect at all on full-length _HTT_, and characterized it in Q175 mice with Gill Bates' lab [[Papadopoulou 2026]]. They found that there was benefit on transcriptomic profile and histologic readouts exclusively when _HTT1a_ was lowered.

All this being said, to date there are not many human data supporting the presence of _HTT1a_ in human brain tissue. Since _HTT1a_ is polyadenyalated and exported to cytosol, in principle, this could be examined through polyA enrichment and 3' sequencing, or through doing RNAscope and looking at localization of probes to the intronic portion. These data do not exist yet.

Jeff noticed that ASO treatment to knock down _HTT_ also reduced _HTT_ somatic instability. He briefly wondered whether huntingtin may actually control mismatch repair  in _trans_ somehow. But then Ionis published that ASOs sometimes not only cleave transcripts, but also affect transcription in _cis_ [[Lai 2020]]. If the gene is not being transcribed, the repeat will not expand. Jeff pivoted to studying zinc fingers that bind _HTT_ which had previously been developed by Sangamo and licensed to Takeda [[Zeitler 2019]]. Jeff found that as expected, _HTT1a_ was lowered by ZF-KRAB but not ZF without an effector domain. Yet when you look at somatic instability, even ZF minus any effector reduced it, albeit not as much as ZF-KRAB [[Mathews 2025]]. Apparently just by sitting on the DNA, the zinc finger prevents the CAG repeat from expanding.

Uniqure (AMT-130) and Alnylam (ALN-HTT) both target _HTT1a_ but all other things in the clinic right now do not. Neither of those would be expected to reduce somatic instability though. Only a zinc finger or epi-editor that acts at the transcriptonal level will also reduce somatic instability. A lot of zinc finger IP was held by now-bankrupt Sangamo and is being auctioned off today; there are also several academic efforts to design DNA-binding proteins [[Ichikawa 2023], [Glasscock 2025]].

#### Q&A

Q. Do you have hope for the splice modulating small molecules in the clinic?

A. Yes, they don't lower _HTT1a_ but I'd love to be wrong about the importance of _HTT1a_. It could yet turn out that _HTT1a_ is just a phenomenon that shows up in ultra long CAG repeat cells but isn't a major driver of pathogenesis. Based on what we know now it's worth testing these therapies.

Q. What are the GWAS hits that don't clearly map to mismatch repair?

A. _TCERG1_ is involved in transcriptional elongation. _MED15_, which has a polyQ domain itself, also affects transcription somehow. And a gene involved in cholesterol metabolism. There are also _cis_ variants in _HTT_ &mdash; the CAA interruption of the CAG repeat is present in most people, but those who are missing it have 10 years earlier onset.

Q. Is MSH3 a potential target for other CAG repeat disorders?

A. There aren't enough patients with SCA or any other one CAG repeat disorder to do a GWAS, so we don't have human genetic evidence, but it is plausible. We will probably only learn the answer by testing MSH3 lowering clinically. MSH3 is an excellent drug target because its knockout appears pretty phenotypically silent and does not seem to increase cancer risk.

Q. What is the biggest impact of CHDI funding in HD?

A. It's all the boring stuff that's essential for drug development but very hard to fund by any other mechanism. ENROLL-HD, which is a 21,000 person natural history study; biomarker development; tool and assay and reagent development.

[Huntington's Disease Collaborative Research Group 1993]: https://pubmed.ncbi.nlm.nih.gov/8458085/ "A novel gene containing a trinucleotide repeat that is expanded and unstable on Huntington's disease chromosomes. The Huntington's Disease Collaborative Research Group. Cell. 1993 Mar 26;72(6):971-83. doi: 10.1016/0092-8674(93)90585-e. PMID: 8458085."

[Telenius 1994]: https://pubmed.ncbi.nlm.nih.gov/8054984/ "Telenius H, Kremer B, Goldberg YP, Theilmann J, Andrew SE, Zeisler J, Adam S, Greenberg C, Ives EJ, Clarke LA, et al. Somatic and gonadal mosaicism of the Huntington disease gene CAG repeat in brain and sperm. Nat Genet. 1994 Apr;6(4):409-14. doi: 10.1038/ng0494-409. Erratum in: Nat Genet 1994 May;7(1):113. PMID: 8054984."

[Carroll 2011]: https://pubmed.ncbi.nlm.nih.gov/21971427/ "Carroll JB, Warby SC, Southwell AL, Doty CN, Greenlee S, Skotte N, Hung G, Bennett CF, Freier SM, Hayden MR. Potent and selective antisense oligonucleotides targeting single-nucleotide polymorphisms in the Huntington disease gene / allele-specific silencing of mutant huntingtin. Mol Ther. 2011 Dec;19(12):2178-85. doi: 10.1038/mt.2011.201. Epub 2011 Oct 4. PMID: 21971427; PMCID: PMC3242664."

[Sathavisam 2013]: https://pubmed.ncbi.nlm.nih.gov/23341618/ "Sathasivam K, Neueder A, Gipson TA, Landles C, Benjamin AC, Bondulich MK, Smith DL, Faull RL, Roos RA, Howland D, Detloff PJ, Housman DE, Bates GP. Aberrant splicing of HTT generates the pathogenic exon 1 protein in Huntington disease. Proc Natl Acad Sci U S A. 2013 Feb 5;110(6):2366-70. doi: 10.1073/pnas.1221891110. Epub 2013 Jan 22. PMID: 23341618; PMCID: PMC3568346."

[Gem-HD 2015]: https://pubmed.ncbi.nlm.nih.gov/26232222/ "Genetic Modifiers of Huntington’s Disease (GeM-HD) Consortium. Identification of Genetic Factors that Modify Clinical Onset of Huntington's Disease. Cell. 2015 Jul 30;162(3):516-26. doi: 10.1016/j.cell.2015.07.003. PMID: 26232222; PMCID: PMC4524551."

[Zeitler 2019]: https://pubmed.ncbi.nlm.nih.gov/31263285/ "Zeitler B, Froelich S, Marlen K, Shivak DA, Yu Q, Li D, Pearl JR, Miller JC, Zhang L, Paschon DE, Hinkley SJ, Ankoudinova I, Lam S, Guschin D, Kopan L, Cherone JM, Nguyen HB, Qiao G, Ataei Y, Mendel MC, Amora R, Surosky R, Laganiere J, Vu BJ, Narayanan A, Sedaghat Y, Tillack K, Thiede C, Gärtner A, Kwak S, Bard J, Mrzljak L, Park L, Heikkinen T, Lehtimäki KK, Svedberg MM, Häggkvist J, Tari L, Tóth M, Varrone A, Halldin C, Kudwa AE, Ramboz S, Day M, Kondapalli J, Surmeier DJ, Urnov FD, Gregory PD, Rebar EJ, Muñoz-Sanjuán I, Zhang HS. Allele-selective transcriptional repression of mutant HTT for the treatment of Huntington's disease. Nat Med. 2019 Jul;25(7):1131-1142. doi: 10.1038/s41591-019-0478-3. Epub 2019 Jul 1. PMID: 31263285."

[Lai 2020]: https://pubmed.ncbi.nlm.nih.gov/31924447/ "Lai F, Damle SS, Ling KK, Rigo F. Directed RNase H Cleavage of Nascent Transcripts Causes Transcription Termination. Mol Cell. 2020 Mar 5;77(5):1032-1043.e4. doi: 10.1016/j.molcel.2019.12.029. Epub 2020 Jan 7. PMID: 31924447."

[Ichikawa 2023]: https://pubmed.ncbi.nlm.nih.gov/36702896/ "Ichikawa DM, Abdin O, Alerasool N, Kogenaru M, Mueller AL, Wen H, Giganti DO, Goldberg GW, Adams S, Spencer JM, Razavi R, Nim S, Zheng H, Gionco C, Clark FT, Strokach A, Hughes TR, Lionnet T, Taipale M, Kim PM, Noyes MB. A universal deep-learning model for zinc finger design enables transcription factor reprogramming. Nat Biotechnol. 2023 Aug;41(8):1117-1129. doi: 10.1038/s41587-022-01624-4. Epub 2023 Jan 26. PMID: 36702896; PMCID: PMC10421740."

[Handsaker 2025]: https://pubmed.ncbi.nlm.nih.gov/39824182/ "Handsaker RE, Kashin S, Reed NM, Tan S, Lee WS, McDonald TM, Morris K, Kamitaki N, Mullally CD, Morakabati NR, Goldman M, Lind G, Kohli R, Lawton E, Hogan M, Ichihara K, Berretta S, McCarroll SA. Long somatic DNA-repeat expansion drives neurodegeneration in Huntington's disease. Cell. 2025 Feb 6;188(3):623-639.e19. doi: 10.1016/j.cell.2024.11.038. Epub 2025 Jan 16. PMID: 39824182; PMCID: PMC11822645."

[Glasscock 2025]: https://pubmed.ncbi.nlm.nih.gov/40940539/ "Glasscock CJ, Pecoraro RJ, McHugh R, Doyle LA, Chen W, Boivin O, Lonnquist B, Na E, Politanska Y, Haddox HK, Cox D, Norn C, Coventry B, Goreshnik I, Vafeados D, Lee GR, Gordân R, Stoddard BL, DiMaio F, Baker D. Computational design of sequence-specific DNA-binding proteins. Nat Struct Mol Biol. 2025 Nov;32(11):2252-2261. doi: 10.1038/s41594-025-01669-4. Epub 2025 Sep 12. PMID: 40940539; PMCID: PMC12618268."

[Mathews 2025]: https://pubmed.ncbi.nlm.nih.gov/41238535/ "Mathews EW, Coffey SR, Gärtner A, Belgrad J, Bragg RM, O'Reilly D, Cantle JP, McHugh C, Summers A, Fentz J, Schwagarus T, Cornelius A, Lingos I, Burch Z, Kovalenko M, Andrew MA, Bennett CF, Kordasiewicz HB, Marchionini DM, Wilkinson H, Vogt TF, Beuzer P, Pinto RM, Khvorova A, Howland D, Wheeler VC, Carroll JB. Suppression of Huntington's Disease Somatic Instability by Transcriptional Repression and Direct CAG Repeat Binding. Nat Commun. 2025 Nov 14;16(1):10009. doi: 10.1038/s41467-025-64936-4. PMID: 41238535; PMCID: PMC12618468."

[Bragg 2026]: https://pubmed.ncbi.nlm.nih.gov/41849580/ "Bragg RM, Landles C, Smith EJ, Osborne GF, Mathews EW, Cantle JP, Bates GP, Carroll JB. Selective targeting of mutant huntingtin intron 1 improves rescue provided by antisense oligonucleotides in Huntington's disease mice. Sci Transl Med. 2026 Mar 18;18(841):eadv0702. doi: 10.1126/scitranslmed.adv0702. Epub 2026 Mar 18. PMID: 41849580."

[Papadopoulou 2026]: https://pubmed.ncbi.nlm.nih.gov/41849583/ "Papadopoulou AS, Alterman J, Landles C, Smith EJ, Conroy F, Phillips J, Canibano-Pico M, Nita IM, Osborne GF, Iqbal A, Aldous SG, Bondulich MK, Gomez-Paredes C, Sathasivam K, O'Reilly D, Echeverria D, Bobkov K, Greene JR, Aronin N, Khvorova A, Bates GP. Lowering the HTT1a transcript as an effective therapy for Huntington's disease in a knockin mouse model. Sci Transl Med. 2026 Mar 18;18(841):eadw2495. doi: 10.1126/scitranslmed.adw2495. Epub 2026 Mar 18. PMID: 41849583."
