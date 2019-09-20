---
layout: post
title:  "Roland Herzog: de-immunizing AAV"
date:   2019-09-20 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2019/09/roland-herzog-lecture-thumbnail.png
summary200: "How does AAV trigger host immune response, and how can we evade this response for effective gene therapy?"
---

![](/media/2019/09/roland-herzog-lecture.png)

*These are my notes from Dr. Roland Herzog's lecture at the Broad Institute's New Therapeutic Modalities Workshop series on September 20, 2019.*

AAV is a preferred gene therapy vector for several reasons including its safety profile. AAV as produced in the lab and for drugs is produced without helper virus and is devoid of viral coding sequences, so that it would be replication-incompetent even in the presence of helper virus. There are now a variety of capsids with tropisms for different tissues of interest for treatment of genetic diseases. AAV is used in [two approved gene therapy drugs](/2019/07/23/what-gene-therapy-can-and-cant-do-today/), voretigene neparvovec for *RPE65* loss of function and onasemnogene abeparvovec for *SMN1* loss of function. Therapies are under development for *MTM1* loss of function (X-linked myotobular myopathy) and for *F8* and *F9* loss of function (hemophilia A and B respectively).

Blood coagulation is driven ultimately by fibrin polymerization, but to trigger fibrin polymerization you first need a whole cascade called the blood coagulation cascade. Key steps in this process are mediated by Factor IX (*F9*) and its co-factor Factor IIX (*F8*). Both of these are X-linked, and worldwide about 1 in 5,000 males born has hemophila. Purified clotting factor (either from human donors or recombinant protein) is standard of care but has short duration of action and has to be administered 3x per week, at a cost of $300,000 per year. 

A longstanding dream is to have a one-time therapy for hemophilia using viral expression of the missing coagulation factor in the liver. There is a clear dose-response from the genetics of the disease &mdash; for *F9*, &lt;1% wild-type clotting activity corresponds to severe disease, 1-5% to moderate disease, and &gt;5% to mild disease [[George 2017]]. Early trials achieved just 5% wild-type clotting activity, but have now demonstrated duration of that expression up to 8 years post-treatment. A more recent trials have achived 33% wild-type activity [[George 2017]].

Although AAV are less immunogenic than many viruses, their immunogenicity continues to be a major hurdle in a few ways. First, immune responses have been obseved in trials. Second, treated patients develop seropositivity against the AAV and so might not be able to receive a second treatment if a limit to single-treatment AAV durability is ever encountered. Third, patients with pre-existing seropositivity against the AAV type of interest are always excluded from clinical trials. 

How does the body recognize and respond to AAV? The protein capsid is the obvious source of immunogenicity and we know that the different AAV serotypes correspond to different changes in the capsid. But there are at least three other possible sources of immune response: the viral DNA genome, the therapeutic transgene being packaged, or the dsRNA that is generated upon transcription of the viral genome. 

The viral genome itself can be immunogenic through stimulation of innate immunity via TLR9 [[Martino 2011]]. TLR9 responds to unmethylated CpG content in DNA, which is higher in pathogens than in human DNA, and depleting CpG content from the AAV vector can reduce this response [[Faust 2013]]. And George Church's lab has a spinout, [Ally Therapeutics](http://arep.med.harvard.edu/gmc/blurbs_2018.html), employing another approach to reduce innate immune response to viral vector DNA.

Immune response to the therapeutic transgene is particularly a concern in individuals with null mutations, where their immune system has never seen that protein before. Antibodies against dystrophin and &alpha;-1 antitrypsin have been detected in patients with these deficiencies [[Mendell 2010], [Calcedo 2017]]. Evidence from several models suggests that the nature of the host's mutation is a major determinant of immune response to the transgene [[Cao 2009], [Rogers 2014]]. Dose (number of viral genomes) also matters a lot [[Kumar 2017]]. In a dog model of hemophilia, the introduction, into muscle, of wild-type Factor IX itself was immunogenic to dogs with a null mutation, but not to those with a missense mutation [[Herzog 1999], [Herzog 2001]]. This immune reaction could be avoided by directing the gene therapy to the liver instead of muscle [[Mount 2002]]. There is now evidence that gene transfer to the liver may be a viable strategy, more broadly, for encouraging immune tolerance to a therapeutic transgene [[Markusic 2013], [Perrin 2016]]. Treatment with rapamycin may also be able to help suppress immune response to transgenes [[Moghimi 2011]].

One recent report indicates that a dsRNA-sensing mechanism is involved in innate immune response to AAV [[Shao 2018]], apparently because dsRNA is formed when the viral genome is transcribed in transduced cells.

When the body responds to the AAV capsid, killer T cells (CTLs) may not only attack the virus, but may also destroy transduced host cells [[Manno 2006], [Mingozzi 2007], [Martino 2013]].

In Q&A, the topic came up of excluding seropositive patients from AAV gene therapy clinical trials. Dr. Herzog noted that the assays used to assess seropositivity are not at all standardized. Practically every company invents their own assay for the data they submit to FDA. In a typical format, AAV expressing a reporter gene, usually luciferase, is added to cells growing in a 96-well plate, with patient serum serum mixed in at a series of dilutions. The cells treated with saline or negative serum will light up with luciferase, but if the patient has neutralizing antibodies, then the cells where AAV was neutralized by their serum will remain dark, and the highest serum dilution at which lack of luciferase expression is observed tells you the titer. The problem is that different AAVs have different tropisms for different cultured cell lines, and so the multiplicity of infection (MOI, number of copies of AAV per cell) needs to be different in different assays. But if the MOI is 100x higher in one assay than another, then the patient antibody titer required to neutralize luciferase expression is also 100x higher, and so "titer" cannot at all be compared between assays. If a physician wanted to make an informed decision of whether to treat a seropositive patient with an approved AAV therapy based on whether there existed good safety and efficacy data for patients with that titer of seropositivity, they would have a difficult task in front of them.

To what extent would/does seropositivity impact on the safety and efficacy of the drug? Some investigators have viewed seropositivity as mostly an efficacy issue. In fact, there have even been efforts to spike active AAV with a large amount of empty AAV capsid, on the theory that the empty virus sops up the immune response, allowing more of the active AAV to evade neutralization and transduce the desired cells. However, there have also been some reports of complement activation in AAV-treated patients in clinical trials, suggesting that immune response could potentially rise to the level of a safety issue.






[Herzog 1999]: https://www.ncbi.nlm.nih.gov/pubmed/9883840 "Herzog RW, Yang EY, Couto LB, Hagstrom JN, Elwell D, Fields PA, Burton M, Bellinger DA, Read MS, Brinkhous KM, Podsakoff GM, Nichols TC, Kurtzman GJ, High  KA. Long-term correction of canine hemophilia B by gene transfer of blood coagulation factor IX mediated by adeno-associated viral vector. Nat Med. 1999 Jan;5(1):56-63. PubMed PMID: 9883840."

[Herzog 2001]: https://www.ncbi.nlm.nih.gov/pubmed/11545609 "Herzog RW, Mount JD, Arruda VR, High KA, Lothrop CD Jr. Muscle-directed gene transfer and transient immune suppression result in sustained partial correction  of canine hemophilia B caused by a null mutation. Mol Ther. 2001 Sep;4(3):192-200. PubMed PMID: 11545609."

[Mount 2002]: https://www.ncbi.nlm.nih.gov/pubmed/11929752 "Mount JD, Herzog RW, Tillson DM, Goodman SA, Robinson N, McCleland ML, Bellinger D, Nichols TC, Arruda VR, Lothrop CD Jr, High KA. Sustained phenotypic  correction of hemophilia B dogs with a factor IX null mutation by liver-directed  gene therapy. Blood. 2002 Apr 15;99(8):2670-6. PubMed PMID: 11929752."

[Manno 2006]: https://www.ncbi.nlm.nih.gov/pubmed/16474400 "Manno CS, Pierce GF, Arruda VR, Glader B, Ragni M, Rasko JJ, Ozelo MC, Hoots K, Blatt P, Konkle B, Dake M, Kaye R, Razavi M, Zajko A, Zehnder J, Rustagi PK, Nakai H, Chew A, Leonard D, Wright JF, Lessard RR, Sommer JM, Tigges M, Sabatino  D, Luk A, Jiang H, Mingozzi F, Couto L, Ertl HC, High KA, Kay MA. Successful transduction of liver in hemophilia by AAV-Factor IX and limitations imposed by the host immune response. Nat Med. 2006 Mar;12(3):342-7. Epub 2006 Feb 12. Erratum in: Nat Med. 2006 May;12(5):592. Rasko, John [corrected to Rasko, John JE]; Rustagi, Pradip K [added]. PubMed PMID: 16474400."

[Mingozzi 2007]: https://www.ncbi.nlm.nih.gov/pubmed/17369837 "Mingozzi F, Maus MV, Hui DJ, Sabatino DE, Murphy SL, Rasko JE, Ragni MV, Manno CS, Sommer J, Jiang H, Pierce GF, Ertl HC, High KA. CD8(+) T-cell responses to adeno-associated virus capsid in humans. Nat Med. 2007 Apr;13(4):419-22. Epub 2007 Mar 18. PubMed PMID: 17369837."

[Cao 2009]: https://www.ncbi.nlm.nih.gov/pubmed/19603001 "Cao O, Hoffman BE, Moghimi B, Nayak S, Cooper M, Zhou S, Ertl HC, High KA, Herzog RW. Impact of the underlying mutation and the route of vector administration on immune responses to factor IX in gene therapy for hemophilia B. Mol Ther. 2009 Oct;17(10):1733-42. doi: 10.1038/mt.2009.159. Epub 2009 Jul 14. PubMed PMID: 19603001; PubMed Central PMCID: PMC2835008."

[Mendell 2010]: https://www.ncbi.nlm.nih.gov/pubmed/20925545 "Mendell JR, Campbell K, Rodino-Klapac L, Sahenk Z, Shilling C, Lewis S, Bowles D, Gray S, Li C, Galloway G, Malik V, Coley B, Clark KR, Li J, Xiao X, Samulski J, McPhee SW, Samulski RJ, Walker CM. Dystrophin immunity in Duchenne's muscular  dystrophy. N Engl J Med. 2010 Oct 7;363(15):1429-37. doi: 10.1056/NEJMoa1000228.  PubMed PMID: 20925545; PubMed Central PMCID: PMC3014106."

[Moghimi 2011]: https://www.ncbi.nlm.nih.gov/pubmed/21585650 "Moghimi B, Sack BK, Nayak S, Markusic DM, Mah CS, Herzog RW. Induction of tolerance to factor VIII by transient co-administration with rapamycin. J Thromb  Haemost. 2011 Aug;9(8):1524-33. doi: 10.1111/j.1538-7836.2011.04351.x. PubMed PMID: 21585650; PubMed Central PMCID: PMC3154987."

[Martino 2011]: https://www.ncbi.nlm.nih.gov/pubmed/21474674 "Martino AT, Suzuki M, Markusic DM, Zolotukhin I, Ryals RC, Moghimi B, Ertl HC, Muruve DA, Lee B, Herzog RW. The genome of self-complementary adeno-associated viral vectors increases Toll-like receptor 9-dependent innate immune responses in the liver. Blood. 2011 Jun 16;117(24):6459-68. doi: 10.1182/blood-2010-10-314518. Epub 2011 Apr 7. PubMed PMID: 21474674; PubMed Central PMCID: PMC3123017."

[Martino 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23325831 "Martino AT, Basner-Tschakarjan E, Markusic DM, Finn JD, Hinderer C, Zhou S, Ostrov DA, Srivastava A, Ertl HC, Terhorst C, High KA, Mingozzi F, Herzog RW. Engineered AAV vector minimizes in vivo targeting of transduced hepatocytes by capsid-specific CD8+ T cells. Blood. 2013 Mar 21;121(12):2224-33. doi: 10.1182/blood-2012-10-460733. Epub 2013 Jan 16. PubMed PMID: 23325831; PubMed Central PMCID: PMC3606062."

[Markusic 2013]: https://www.ncbi.nlm.nih.gov/pubmed/24106230 "Markusic DM, Hoffman BE, Perrin GQ, Nayak S, Wang X, LoDuca PA, High KA, Herzog RW. Effective gene therapy for haemophilic mice with pathogenic factor IX  antibodies. EMBO Mol Med. 2013 Nov;5(11):1698-709. doi: 10.1002/emmm.201302859. Epub 2013 Sep 16. PubMed PMID: 24106230; PubMed Central PMCID: PMC3840486."

[Faust 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23778142 "Faust SM, Bell P, Cutler BJ, Ashley SN, Zhu Y, Rabinowitz JE, Wilson JM. CpG-depleted adeno-associated virus vectors evade immune detection. J Clin Invest. 2013 Jul;123(7):2994-3001. doi: 10.1172/JCI68205. Epub 2013 Jun 17. PubMed PMID: 23778142; PubMed Central PMCID: PMC3696560."

[Rogers 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24460861 "Rogers GL, Martino AT, Zolotukhin I, Ertl HC, Herzog RW. Role of the vector genome and underlying factor IX mutation in immune responses to AAV gene therapy  for hemophilia B. J Transl Med. 2014 Jan 25;12:25. doi: 10.1186/1479-5876-12-25.  PubMed PMID: 24460861; PubMed Central PMCID: PMC3904690."

[Hui 2015]: https://www.ncbi.nlm.nih.gov/pubmed/26445723 "Hui DJ, Edmonson SC, Podsakoff GM, Pien GC, Ivanciu L, Camire RM, Ertl H, Mingozzi F, High KA, Basner-Tschakarjan E. AAV capsid CD8+ T-cell epitopes are highly conserved across AAV serotypes. Mol Ther Methods Clin Dev. 2015 Sep 30;2:15029. doi: 10.1038/mtm.2015.29. eCollection 2015. PubMed PMID: 26445723; PubMed Central PMCID: PMC4588448."

[Perrin 2016]: https://www.ncbi.nlm.nih.gov/pubmed/27933310/ "Perrin GQ, Zolotukhin I, Sherman A, Biswas M, de Jong YP, Terhorst C, Davidoff AM, Herzog RW. Dynamics of antigen presentation to transgene product-specific CD4(+) T cells and of Treg induction upon hepatic AAV gene transfer. Mol Ther Methods Clin Dev. 2016 Dec 7;3:16083. eCollection 2016. PubMed PMID: 27933310; PubMed Central PMCID: PMC5142511."

[Calcedo 2017]: https://www.ncbi.nlm.nih.gov/pubmed/28137880 "Calcedo R, Somanathan S, Qin Q, Betts MR, Rech AJ, Vonderheide RH, Mueller C,  Flotte TR, Wilson JM. Class I-restricted T-cell responses to a polymorphic peptide in a gene therapy clinical trial for α-1-antitrypsin deficiency. Proc Natl Acad Sci U S A. 2017 Feb 14;114(7):1655-1659. doi: 10.1073/pnas.1617726114.  Epub 2017 Jan 30. PubMed PMID: 28137880; PubMed Central PMCID: PMC5320988."

[George 2017]: https://www.ncbi.nlm.nih.gov/pubmed/29211678 "George LA, Sullivan SK, Giermasz A, Rasko JEJ, Samelson-Jones BJ, Ducore J, Cuker A, Sullivan LM, Majumdar S, Teitel J, McGuinn CE, Ragni MV, Luk AY, Hui D,  Wright JF, Chen Y, Liu Y, Wachtel K, Winters A, Tiefenbacher S, Arruda VR, van der Loo JCM, Zelenaia O, Takefman D, Carr ME, Couto LB, Anguela XM, High KA. Hemophilia B Gene Therapy with a High-Specific-Activity Factor IX Variant. N Engl J Med. 2017 Dec 7;377(23):2215-2227. doi: 10.1056/NEJMoa1708538. PubMed PMID: 29211678; PubMed Central PMCID: PMC6029626."

[Kumar 2017]: https://www.ncbi.nlm.nih.gov/pubmed/28284982 "Kumar SRP, Hoffman BE, Terhorst C, de Jong YP, Herzog RW. The Balance between  CD8(+) T Cell-Mediated Clearance of AAV-Encoded Antigen in the Liver and Tolerance Is Dependent on the Vector Dose. Mol Ther. 2017 Apr 5;25(4):880-891. doi: 10.1016/j.ymthe.2017.02.014. Epub 2017 Mar 9. PubMed PMID: 28284982; PubMed  Central PMCID: PMC5383644."

[Shao 2018]: https://www.ncbi.nlm.nih.gov/pubmed/29925692/ "Shao W, Earley LF, Chai Z, Chen X, Sun J, He T, Deng M, Hirsch ML, Ting J, Samulski RJ, Li C. Double-stranded RNA innate immune response activation from long-term adeno-associated virus vector transduction. JCI Insight. 2018 Jun 21;3(12). pii: 120474. doi: 10.1172/jci.insight.120474. eCollection 2018 Jun 21.  PubMed PMID: 29925692; PubMed Central PMCID: PMC6124417."



