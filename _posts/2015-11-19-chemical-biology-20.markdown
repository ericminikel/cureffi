---
layout: post
title:  "Chemical biology 20: cancer stem cells"
date:   2015-11-19 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 20 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on November 19, 2015.*

[Last time](/2015/11/17/chemical-biology-19/) we talked mostly about oncogene addiction and the molecular view of cancer. Today's lecture is on the cancer stem cell view of cancer. Some people call these cells "tumor progenitor cells" or "persister cells". Some readings for today are [[Diamandis 2007], [Dannenberg & Berns 2010], [Hartwell 2013], [Pattabiraman & Weinberg 2014]].

The four main mechanisms of cancer resistance to drugs, and strategies for overcoming them are:

| mechanism | strategy |
| ---- | ---- |
| mutations in a drug target that prevent the drug from binding | new drug (e.g. ponatinib) that binds the mutated target |
| new pathway is upregulated (e.g. acquisition of mesenchymal state) | combination therapy with a drug that targets the upregulated pathway |
| upregulation of a drug efflux mechanism | combination therapy with a drug that blocks efflux |
| cancer stem cells | new drug targeting cancer stem cells |

Let's talk more about what we mean by "cancer stem cells" being a resistance mechanism. The theory is that in many tumors, only a subset of cells have unlimited replication potential, and they are ultimately responsible for maintaining tumor mass. These cells have stem-like properties, and are resistant to many cancer drugs.

We define stem cells on the basis of two unique properties:

1. Apparently infinite renewal capacity. This is in contrast to most cells, which can divide perhaps tens of times and then hit the [Hayflick limit](https://en.wikipedia.org/wiki/Hayflick_limit) and become senescent.
2. Ability to divide asymmetrically. Stem cells can divide such that one daughter cell is still a stem cell, while the other daughter cell begins to differentiate.

We'll discuss the example of hematologic cancers. Hematopoeitic stem cells (the origin of blood) were discovered by irradiating mice to eliminate their hematopoietic system, and then seeing which cells were able to reconstitute their hematopoeitic system. Only HSCs could do this. Leukemic stem cells were discovered by doing the analogous experiment using leukemia cells: shockingly to people at the time, who thought leukemia was purely clonal, it turned out that about 1 in 100,000 leukemia cells had the ability to reconstitute a mouse's hematopoeitic system. When these cells were characterized, they had all the markers of stemness. Once this was accepted, people started asking if the same was true of solid tumors. They tested this by labeling individual tumor cells with fluorescent markers, and were able to track how a single cancer stem cell could give rise to a huge swath of a tumor. A couple of relevant perspectives on all this are [[Abbott 2006], [Baker 2012]] and it appears that three of the original articles on lineage labeling of solid tumor stem cells are [[Driessens 2012], [Chen 2012], [Schepers 2012]].

So how do we translate this insight into therapy? You could hypothesize that if you only kill the cancer stem cells, that would be sufficient to cut off the ultimate growth potential of cancers, but the bulk of the cancer would not immediately decrease. That is a challenging hypothesis to test in a clinical trial, because without debulking the tumor it looks like there was no clinical benefit. So in practice, any drugs targeting cancer stem cells will need to be administered in combination with conventional debulking therapies. 

When cancer stem cells give rise to cancer relapse, the relapsed cancer is usually much more aggressive. Why? In one landmark experiment, human glioblastomas were transplanted into mice, and then later resected, with or without radiation. When it was resected without radiation, the relapse that eventually emerged had a low percentage of cancer stem cells. When it was resected with radiation, the relapse had a high percentage of cancer stem cells. It is obvious that radiation therapy here is increasing the *proportion* of cancer stem cells in the tumor. It may also be the case that it is actually increasing the *absolute* number of cancer stem cells, and therefore actively doing harm. That's because when the tumor is intact, the cancer stem cells are limited in growth by the need to compete with the tumor bulk for nutrients, but when the tumor bulk is killed off, the cancer stem cells are more able to proliferate. Not sure but I think this part of the lecture might be referring to [[Bao 2006]].

Leukemia stem cells (LSCs) cannot be studied in non-adherent culture. LSCs, like HSCs, have an obligate need for physical contact with bone marrow stroma. They can be grown in the lab on primary bone marrow tissue. This points to a vulnerability that might be targeted therapeutically. For instance it was recently reported that the PPAR&gamma; agonists rosiglitazone and pioglitazone, which are approved for the treatment of diabetes, induce stroma to acquire a more adipose state that is less hospitable to leukemia stem cells [[Prost 2015]]. There is a whole body of literature on the fact that lovastatin also has anti-leukemia properties, though this does not work *in vivo* because lovastatin (and all other statins currently available) are highly liver-tropic, so they don't reach high enough concentrations in bone marrow to be effective.

Of course, it is also a strategy to directly target the cancer stem cells. For instance there is new evidence from small molecule screening that neurotransmission pathways are surprisingly important in neural stem cells and that some of these pathways might be able to be targeted therapeutically in glioblastoma [[Diamandis 2007]]. Also there is the PML paper we discussed in section last week [[Ito 2008]]. Arsenic trioxide (As<sub>2</sub>O<sub>3</sub>) actually has the shape of adamantane:

![](/media/2015/11/arsenic-trioxide.png)

One last concept that is fairly new is immune therapy. Cancer cells express mutated proteins on the cell surface, and the immune system is able to recognize these neoantigens and attack the cancer cells. But tumor cells often massively overexpress PD-L1 (programmed death 1 receptor ligand), which binds to the programmed death 1 receptor (PD-1) on the T cells, shutting down the immune response. So a new therapy is to use monoclonal antibodies against either PD-1 or PD-L1 to block this interaction. There are now approved antibodies for both of these targets. One recently approved drug, the monoclonal antibody [pembrolizumab](https://en.wikipedia.org/wiki/Pembrolizumab), targeting PD-1, was [in the news recently](http://www.cbsnews.com/news/jimmy-carter-gives-update-on-his-cancer-treatment/) for its role in Jimmy Carter's so far very successful treatment regimen for metastatic melanoma of the brain.

So far, these sorts of immune therapies seem to be very effective at preventing relapse, but they are relatively new and we don't yet have many years of followup. One very hopeful note about these therapies is that, opposite to all other cancer drugs, they are actually *more* effective in more advanced, late-stage cancers. That's because the more heavily mutated cancers, which are better at evading all other therapies, have accumulated more neoantigens, and so are more readily recognizable to the immune system.



[Diamandis 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17417631 "Diamandis P, Wildenhain J, Clarke ID, Sacher AG, Graham J, Bellows DS, Ling EK, Ward RJ, Jamieson LG, Tyers M, Dirks PB. Chemical genetics reveals a complex  functional ground state of neural stem cells. Nat Chem Biol. 2007 May;3(5):268-73. Epub 2007 Apr 8. PubMed PMID: 17417631."

[Dannenberg & Berns 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20371339 "Dannenberg JH, Berns A. Drugging drug resistance. Cell. 2010 Apr 2;141(1):18-20. doi: 10.1016/j.cell.2010.03.020. PubMed PMID: 20371339."

[Hartwell 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24161946 "Hartwell KA, Miller PG, Mukherjee S, Kahn AR, Stewart AL, Logan DJ, Negri JM,  Duvet M, Järås M, Puram R, Dancik V, Al-Shahrour F, Kindler T, Tothova Z, Chattopadhyay S, Hasaka T, Narayan R, Dai M, Huang C, Shterental S, Chu LP, Haydu JE, Shieh JH, Steensma DP, Munoz B, Bittker JA, Shamji AF, Clemons PA, Tolliday NJ, Carpenter AE, Gilliland DG, Stern AM, Moore MA, Scadden DT, Schreiber SL, Ebert BL, Golub TR. Niche-based screening identifies small-molecule inhibitors of leukemia stem cells. Nat Chem Biol. 2013 Dec;9(12):840-8. doi: 10.1038/nchembio.1367. Epub 2013 Oct 27. PubMed PMID: 24161946; PubMed Central PMCID: PMC4009363."

[Pattabiraman & Weinberg 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24981363/ "Pattabiraman DR, Weinberg RA. Tackling the cancer stem cells - what challenges do they pose? Nat Rev Drug Discov. 2014 Jul;13(7):497-512. doi: 10.1038/nrd4253.  PubMed PMID: 24981363; PubMed Central PMCID: PMC4234172."

[Baker 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22859177 "Baker M. Cancer stem cells tracked. Nature. 2012 Aug 2;488(7409):13-4. doi: 10.1038/488013a. PubMed PMID: 22859177."

[Driessens 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22854777 "Driessens G, Beck B, Caauwe A, Simons BD, Blanpain C. Defining the mode of tumour growth by clonal analysis. Nature. 2012 Aug 23;488(7412):527-30. doi: 10.1038/nature11344. PubMed PMID: 22854777."

[Chen 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22854781/ "Chen J, Li Y, Yu TS, McKay RM, Burns DK, Kernie SG, Parada LF. A restricted cell population propagates glioblastoma growth after chemotherapy. Nature. 2012 Aug 23;488(7412):522-6. doi: 10.1038/nature11287. PubMed PMID: 22854781; PubMed Central PMCID: PMC3427400."

[Schepers 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22855427 "Schepers AG, Snippert HJ, Stange DE, van den Born M, van Es JH, van de Wetering M, Clevers H. Lineage tracing reveals Lgr5+ stem cell activity in mouse  intestinal adenomas. Science. 2012 Aug 10;337(6095):730-5. doi: 10.1126/science.1224676. Epub 2012 Aug 1. PubMed PMID: 22855427."

[Abbott 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16915262 "Abbott A. Cancer: the root of the problem. Nature. 2006 Aug 17;442(7104):742-3. PubMed PMID: 16915262."

[Bao 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17051156 "Bao S, Wu Q, McLendon RE, Hao Y, Shi Q, Hjelmeland AB, Dewhirst MW, Bigner DD, Rich JN. Glioma stem cells promote radioresistance by preferential activation of the DNA damage response. Nature. 2006 Dec 7;444(7120):756-60. Epub 2006 Oct 18. PubMed PMID: 17051156."

[Prost 2015]: http://www.ncbi.nlm.nih.gov/pubmed/26331539 "Prost S, Relouzat F, Spentchian M, Ouzegdouh Y, Saliba J, Massonnet G, Beressi JP, Verhoeyen E, Raggueneau V, Maneglier B, Castaigne S, Chomienne C, Chrétien S, Rousselot P, Leboulch P. Erosion of the chronic myeloid leukaemia stem cell pool  by PPARγ agonists. Nature. 2015 Sep 17;525(7569):380-3. doi: 10.1038/nature15248. Epub 2015 Sep 2. PubMed PMID: 26331539."

[Ito 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18469801 "Ito K, Bernardi R, Morotti A, Matsuoka S, Saglio G, Ikeda Y, Rosenblatt J, Avigan DE, Teruya-Feldstein J, Pandolfi PP. PML targeting eradicates quiescent leukaemia-initiating cells. Nature. 2008 Jun 19;453(7198):1072-8. doi: 10.1038/nature07016. Epub 2008 May 11. PubMed PMID: 18469801; PubMed Central PMCID: PMC2712082."








