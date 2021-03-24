---
layout: post
title:  "The NIH/KOMP workshop on gene essentiality"
date:   2021-01-07 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: 
summary200: "Notes from the IMPC-hosted virtual workshop on Jan 7, 2021."
---

_These are my notes from the International Mouse Phenotyping Consortium (IMPC)'s virtual NIH / Knockout Mouse Project (KOMP) workshop on gene essentiality, Jan 7, 2021. The symposium's policy is that unpublished findings are not shared on social media, so these notes are limited to backgrounders, project overviews, and published data described by the presenters._

### Steve Brown, MRC Harwell, UK - Introduction to IMPC resources and research findings

The IMPC's aim is to build the first comprehensive functional catalogue of a mammalian genome &mdash; by making knockouts for every gene in the mouse genome and employing high throughput phenotyping approaches. The IMPC's 10th anniversary will be this year. One goal is to illuminate the "dark genome": genes for which we currently have no idea about their function. As of today they have confirmed knockouts for 9,719 genes, of which 7,455 have been phenotyped and appear in [data release](https://www.mousephenotype.org/data/release) No. 13 which came out Dec 2020. In addition to knockouts they are also beginning scaled production of point mutants. Recent areas of progress include automated annotation of 3D mouse embryo images, phenotyping of haploessential F0s (founders that die), and phenotyping of aged animals. Landmark publications include [[Dickinson 2016], [Cacheiro 2020]]. Their [strategy for the coming decade](https://www.mousephenotype.org/wp-content/uploads/2019/05/IMPC_Strategy_2021-30.pdf) calls for finishing the remaining half of mouse genes &mdash; about 1,000 genes per year &mdash; as well as doing 500 non-coding deletions per year. 

### Henrik Westerberg, MRC Harwell, UK - Embryonic phenotyping of homozygous lethal mouse lines in the IMPC

[Impress](https://www.mousephenotype.org/impress/index) is the standardized phenotyping pipeline for IMPC mouse lines. Lines where the homozygous phenotype is embryonic lethal, with a focus on late embryonic lethal lines, go into automated embryo phenotyping at days E14.5, E15.5, and E18.5. The phenotyping pipeline is described [here](https://www.mousephenotype.org/impress/PipelineInfo?id=7). They currently aren't doing early embryonic lethal lines, but Jesse Mager at UMass has an NIH-funded project to characterize [early embryonic lines](https://blogs.umass.edu/jmager/) (where all homozygote embryos die by E9.5).

### Pilar Cacheiro, Queen Mary University of London, UK - A catalogue of variation resulting in human lethality

Last year [[Cacheiro 2020]] IMPC published a study integrating essentiality screens in mouse (knockout animals) and human (CRISPR knockout in cultured cell lines). There was good concordance in the sense that of genes with lethal mouse knockouts, 35% were also essential in human cell culture; of mouse knockouts without a clear phenotype, <1% were essential in human cell culture. The rest of the talk focused on characterization of the 65% of genes that were lethal in mice but non-essential in human cell culture.

### Q&A

Q. For the genes that are mouse lethal but human cell culture non-essential or vice versa, can we point to any reasons such as poor sequence homology, presence of paralogs etc.?

A. The gene set compared here was limited to clear unambiguous homologues, so that's not a likely explanation. But, there are lots of other possible explanations we are looking into.

Q. Are embryonic lethals being phenotyped for ability to implant?

A. Jesse Mager is working on that.

### Aleksandar Rajkovic, Chief Genomics Officer, UCSF Health Center for Clinical Genetics and Genomics - The continuum of lethality from infertility to implantation and beyond.

Dr. Rajkovic works in reproductive genetics at UCSF. In the U.S. at present, about 46% of couples seeking a pregnancy pursue carrier genetic testing, which currently encompasses about 200 genes, mostly recessive childhood disorders. 20-60% of people are a carrier for at least one pathogenic mutation, and the probability of a couple having mutations in the same gene ranges 0.2 - 2.5% depending on both partners' ancestral background. A future vision is to include in these testing panels a set of embryonic lethal genes and infertility genes, so that couples likely to have difficulty conceiving can learn that sooner rather than later. He reviewed a lot of what is known about infertility genes in various pathways, most of which were identified in mouse knockout studies. But there are surely a far larger number of genes contributing to both infertility and embryo inviability, and there have been efforts to bioinformatically predict which genes these are [[Dawes 2019]]. 

### Igna Van den Veyver, Director for Prenatal Genetics, Maternal Fetal Medicine/Genetics, Texas Children’s Hospital & Baylor College of Medicine - Current and future impact of genome-wide sequencing on fetal precision medicine

New tools have become availabel for prenatal genetic diagnosis over the years, from karyotype to microarray to exome to whole genome sequencing. Karyotype plus microarray detect genetic defects in just ~40% of fetuses with anomalies. Several recent studies have looked at the diagnostic yield from exome sequencing [[Normand 2018], [Petrovski 2019], [Lord 2019]]. The types of anomalies ascertained in these studies are of course enriched for certain categories that you could discover e.g. by imaging, such as structural anomalies, nuchal translucency, and so on.

### Ron Wapner, Columbia University Medical Center, New York, NY, USA - WES in evaluation of fetal structure anomalies and identification of causal genetic variants in stillbirth

Studies have shown that exome sequencing for fetal anomalies only gets an additional ~10% diagnostic yield if karyotype and microarray are negative [[Petrovski 2019], [Lord 2019]]. They have also looked at exome sequencing for stillbirths, with a surprisingly low yield [[Stanley 2020]]. Only 9 (3.7%) of 246 stillbirths had a known genetic cause of stillbirth; another 6 (2.4%) had a potential candidate for "phenotype expansion", such as, for example, a gene or mutation known to be associated to early childhood Mendelian disease but not yet known to have a severity spectrum stretching into embryonic lethality. They also asked whether the 246 stillbirth cases had an overall elevated burden of LoFs in constrained genes compared to 7,239 healthy controls. They found a significant enrichment (OR=2.15) of ultra-rare, high-confidence pLoF variants in the most constrained genes, suggesting that at least another 7% or so of stillbirths had a genetic cause, though we can't pinpoint with confidence which of these variants are causal. Of the genes where a stillbirth had a rare high-confidence LoF, half had a lethal phenotype in the orthologous mouse knockout.

### Esther Dempsey, St George’ University Hospital, UK - The clinical utility of exome sequencing in prenatal diagnostics

Dr. Dempsey's recent work has expanded on the diagnostic yield and clinical utility of exome sequencing in prenatal diagnosis [[Dempsey 2020]]. Of 43 ongoing pregnancies with structural abnormalities, they were able to make a diagnosis in 18 (43%), out of which 8 (44%) had a significant clinical implication. For example, in one case, they identified two hits in _ALPL_, encoding alkaline phosphatase. These were variants of uncertain significance (VUS), but measurement of low alkaline phoshpatase levels in the father confirmed that there was a functional impact, so they were able to start the baby on enzyme replacement therapy (asfotase alfa) right after birth.

### David Van Heel, Barts and The London School of Medicine and Dentistry, Chief Investigator and Joint Lead, Genes and Health - Health and population effects of rare gene knockouts in adult humans with related parents

The East London [[Finer 2020]], Manchester, and Bradford Genes & Health cohorts have a goal of recruiting 100,000 volunteers, of which about half have been recruited to date. These individuals are consented for recontact and are selected to be enriched for percent of their genome in runs of autozygosity. This study is positioned to address the phenotypic and health effects of gene knockout without ascertaining on disease phenotypes, so that one can find the effects of mild or even phenotypically silent knockouts. To date they have been able to characterize, for example, knockout of _PRDM9_ [[Narasimhan 2016]] and _HAO1_ [[McGregor 2020]], as well as contributing to the [COVID-19 host genetics initiative](https://www.covid19hg.org/). He then talked about several unpublished findings.

### Eric Minikel, Broad Institute, gnomAD team - Leveraging loss-of-function variation from large-scale population sequencing to inform drug target evaluation

I spoke about my paper last year on using LoF variants to evaluate drug targets [[Minikel 2020]], which I previously blogged about [here](/2020/05/27/variants-you-see-and-dont/).

_I missed part/all of the Robinson, Beier, and Moreira talks so no notes are included for those._

[Brookes & Robinson 2015]: https://pubmed.ncbi.nlm.nih.gov/26553330/ "Brookes AJ, Robinson PN. Human genotype-phenotype databases: aims, challenges and opportunities. Nat Rev Genet. 2015 Dec;16(12):702-15. doi: 10.1038/nrg3932. Epub 2015 Nov 10. PMID: 26553330."

[Dickinson 2016]: https://pubmed.ncbi.nlm.nih.gov/27626380/ "Dickinson ME, Flenniken AM, Ji X, Teboul L, Wong MD, White JK, Meehan TF, Weninger WJ, Westerberg H, Adissu H, Baker CN, Bower L, Brown JM, Caddle LB, Chiani F, Clary D, Cleak J, Daly MJ, Denegre JM, Doe B, Dolan ME, Edie SM, Fuchs H, Gailus-Durner V, Galli A, Gambadoro A, Gallegos J, Guo S, Horner NR, Hsu CW, Johnson SJ, Kalaga S, Keith LC, Lanoue L, Lawson TN, Lek M, Mark M, Marschall S, Mason J, McElwee ML, Newbigging S, Nutter LM, Peterson KA, Ramirez-Solis R, Rowland DJ, Ryder E, Samocha KE, Seavitt JR, Selloum M, Szoke-Kovacs Z, Tamura M, Trainor AG, Tudose I, Wakana S, Warren J, Wendling O, West DB, Wong L, Yoshiki A; International Mouse Phenotyping Consortium; Jackson Laboratory; Infrastructure Nationale PHENOMIN, Institut Clinique de la Souris (ICS); Charles River Laboratories; MRC Harwell; Toronto Centre for Phenogenomics; Wellcome Trust Sanger Institute; RIKEN BioResource Center, MacArthur DG, Tocchini-Valentini GP, Gao X, Flicek P, Bradley A, Skarnes WC, Justice MJ, Parkinson HE, Moore M, Wells S, Braun RE, Svenson KL, de Angelis MH, Herault Y, Mohun T, Mallon AM, Henkelman RM, Brown SD, Adams DJ, Lloyd KC, McKerlie C, Beaudet AL, Bućan M, Murray SA. High-throughput discovery of novel developmental phenotypes. Nature. 2016 Sep 22;537(7621):508-514. doi: 10.1038/nature19356. Epub 2016 Sep 14. Erratum in: Nature. 2017 Nov 16;551(7680):398. PMID: 27626380; PMCID: PMC5295821."

[Narasimhan 2016]: https://pubmed.ncbi.nlm.nih.gov/26940866/ "Narasimhan VM, Hunt KA, Mason D, Baker CL, Karczewski KJ, Barnes MR, Barnett AH, Bates C, Bellary S, Bockett NA, Giorda K, Griffiths CJ, Hemingway H, Jia Z, Kelly MA, Khawaja HA, Lek M, McCarthy S, McEachan R, O'Donnell-Luria A, Paigen K, Parisinos CA, Sheridan E, Southgate L, Tee L, Thomas M, Xue Y, Schnall-Levin M, Petkov PM, Tyler-Smith C, Maher ER, Trembath RC, MacArthur DG, Wright J, Durbin R, van Heel DA. Health and population effects of rare gene knockouts in adult humans with related parents. Science. 2016 Apr 22;352(6284):474-7. doi: 10.1126/science.aac8624. Epub 2016 Mar 3. PMID: 26940866; PMCID: PMC4985238."

[Normand 2018]: https://pubmed.ncbi.nlm.nih.gov/30266093/ "Normand EA, Braxton A, Nassef S, Ward PA, Vetrini F, He W, Patel V, Qu C, Westerfield LE, Stover S, Dharmadhikari AV, Muzny DM, Gibbs RA, Dai H, Meng L, Wang X, Xiao R, Liu P, Bi W, Xia F, Walkiewicz M, Van den Veyver IB, Eng CM, Yang Y. Clinical exome sequencing for fetuses with ultrasound abnormalities and a suspected Mendelian disorder. Genome Med. 2018 Sep 28;10(1):74. doi: 10.1186/s13073-018-0582-x. PMID: 30266093; PMCID: PMC6162951."

[Haendel 2018]: https://pubmed.ncbi.nlm.nih.gov/30304648/ "Haendel MA, Chute CG, Robinson PN. Classification, Ontology, and Precision Medicine. N Engl J Med. 2018 Oct 11;379(15):1452-1462. doi: 10.1056/NEJMra1615014. PMID: 30304648; PMCID: PMC6503847."

[Dawes 2019]: https://pubmed.ncbi.nlm.nih.gov/30993004/ "Dawes R, Lek M, Cooper ST. Gene discovery informatics toolkit defines candidate genes for unexplained infertility and prenatal or infantile mortality. NPJ Genom Med. 2019 Apr 15;4:8. doi: 10.1038/s41525-019-0081-z. PMID: 30993004; PMCID: PMC6465277."

[Petrovski 2019]: https://pubmed.ncbi.nlm.nih.gov/30712878/ "Petrovski S, Aggarwal V, Giordano JL, Stosic M, Wou K, Bier L, Spiegel E, Brennan K, Stong N, Jobanputra V, Ren Z, Zhu X, Mebane C, Nahum O, Wang Q, Kamalakaran S, Malone C, Anyane-Yeboa K, Miller R, Levy B, Goldstein DB, Wapner RJ. Whole-exome sequencing in the evaluation of fetal structural anomalies: a prospective cohort study. Lancet. 2019 Feb 23;393(10173):758-767. doi: 10.1016/S0140-6736(18)32042-7. Epub 2019 Jan 31. PMID: 30712878."

[Lord 2019]: https://pubmed.ncbi.nlm.nih.gov/30712880/ "Lord J, McMullan DJ, Eberhardt RY, Rinck G, Hamilton SJ, Quinlan-Jones E, Prigmore E, Keelagher R, Best SK, Carey GK, Mellis R, Robart S, Berry IR, Chandler KE, Cilliers D, Cresswell L, Edwards SL, Gardiner C, Henderson A, Holden ST, Homfray T, Lester T, Lewis RA, Newbury-Ecob R, Prescott K, Quarrell OW, Ramsden SC, Roberts E, Tapon D, Tooley MJ, Vasudevan PC, Weber AP, Wellesley DG, Westwood P, White H, Parker M, Williams D, Jenkins L, Scott RH, Kilby MD, Chitty LS, Hurles ME, Maher ER; Prenatal Assessment of Genomes and Exomes Consortium. Prenatal exome sequencing analysis in fetal structural anomalies detected by ultrasonography (PAGE): a cohort study. Lancet. 2019 Feb 23;393(10173):747-757. doi: 10.1016/S0140-6736(18)31940-8. Epub 2019 Jan 31. PMID: 30712880; PMCID: PMC6386638."

[Minikel 2020]: https://pubmed.ncbi.nlm.nih.gov/32461653/ "Minikel EV, Karczewski KJ, Martin HC, Cummings BB, Whiffin N, Rhodes D, Alföldi J, Trembath RC, van Heel DA, Daly MJ; Genome Aggregation Database Production Team; Genome Aggregation Database Consortium, Schreiber SL, MacArthur DG. Evaluating drug targets through human loss-of-function genetic variation. Nature. 2020 May;581(7809):459-464. doi: 10.1038/s41586-020-2267-z. Epub 2020 May 27. PMID: 32461653; PMCID: PMC7272226."

[Cacheiro 2020]: https://pubmed.ncbi.nlm.nih.gov/32005800/ "Cacheiro P, Muñoz-Fuentes V, Murray SA, Dickinson ME, Bucan M, Nutter LMJ, Peterson KA, Haselimashhadi H, Flenniken AM, Morgan H, Westerberg H, Konopka T, Hsu CW, Christiansen A, Lanza DG, Beaudet AL, Heaney JD, Fuchs H, Gailus-Durner V, Sorg T, Prochazka J, Novosadova V, Lelliott CJ, Wardle-Jones H, Wells S, Teboul L, Cater H, Stewart M, Hough T, Wurst W, Sedlacek R, Adams DJ, Seavitt JR, Tocchini-Valentini G, Mammano F, Braun RE, McKerlie C, Herault Y, de Angelis MH, Mallon AM, Lloyd KCK, Brown SDM, Parkinson H, Meehan TF, Smedley D; Genomics England Research Consortium; International Mouse Phenotyping Consortium. Human and mouse essentiality screens as a resource for disease gene discovery. Nat Commun. 2020 Jan 31;11(1):655. doi: 10.1038/s41467-020-14284-2. PMID: 32005800; PMCID: PMC6994715."

[Stanley 2020]: https://pubmed.ncbi.nlm.nih.gov/32786180/ "Stanley KE, Giordano J, Thorsten V, Buchovecky C, Thomas A, Ganapathi M, Liao J, Dharmadhikari AV, Revah-Politi A, Ernst M, Lippa N, Holmes H, Povysil G, Hostyk J, Parker CB, Goldenberg R, Saade GR, Dudley DJ, Pinar H, Hogue C, Reddy UM, Silver RM, Aggarwal V, Allen AS, Wapner RJ, Goldstein DB. Causal Genetic Variants in Stillbirth. N Engl J Med. 2020 Sep 17;383(12):1107-1116. doi: 10.1056/NEJMoa1908753. Epub 2020 Aug 12. PMID: 32786180; PMCID: PMC7604888."

[Dempsey 2020]: https://pubmed.ncbi.nlm.nih.gov/32981126/ "Dempsey E, Haworth A, Ive L, Dubis R, Savage H, Serra E, Kenny J, Elmslie F, Greco E, Thilaganathan B, Mansour S, Homfray T, Drury S. A report on the impact of rapid prenatal exome sequencing on the clinical management of 52 ongoing pregnancies; a retrospective review. BJOG. 2020 Sep 27. doi: 10.1111/1471-0528.16546. Epub ahead of print. PMID: 32981126."

[McGregor 2020]: https://pubmed.ncbi.nlm.nih.gov/32207686/ "McGregor TL, Hunt KA, Yee E, Mason D, Nioi P, Ticau S, Pelosi M, Loken PR, Finer S, Lawlor DA, Fauman EB, Huang QQ, Griffiths CJ, MacArthur DG, Trembath RC, Oglesbee D, Lieske JC, Erbe DV, Wright J, van Heel DA. Characterising a healthy adult with a rare HAO1 knockout to support a therapeutic strategy for primary hyperoxaluria. Elife. 2020 Mar 24;9:e54363. doi: 10.7554/eLife.54363. PMID: 32207686; PMCID: PMC7108859."

[Finer 2020]: https://pubmed.ncbi.nlm.nih.gov/31504546/ "Finer S, Martin HC, Khan A, Hunt KA, MacLaughlin B, Ahmed Z, Ashcroft R, Durham C, MacArthur DG, McCarthy MI, Robson J, Trivedi B, Griffiths C, Wright J, Trembath RC, van Heel DA. Cohort Profile: East London Genes & Health (ELGH), a community-based population genomics and health study in British Bangladeshi and British Pakistani people. Int J Epidemiol. 2020 Feb 1;49(1):20-21i. doi: 10.1093/ije/dyz174. PMID: 31504546; PMCID: PMC7124496."