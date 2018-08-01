---
layout: post
title:  "Antisense part I: the basics"
date:   2018-07-10 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2018/07/aso-mechanism-thumbnail.png
summary200: "We're working on antisense oligonucleotides (ASOs) as potential drugs for prion disease. What are ASOs and how do they work?"
---

![](/media/2018/07/visit-to-ionis.png)

### antisense for prion disease is in the pipeline

Yesterday [Sonia announced](http://www.prionalliance.org/2018/07/09/developing-an-antisense-drug-for-prion-disease/) that we are working with Ionis Pharmaceuticals in an effort to develop an antisense drug for prion disease. While it is still early, and any human trials are years away, antisense is a rational therapeutic modality for this disease, with sound precedent for safety and potency in humans. That makes this collaboration the most exciting development so far in our quest for prion disease therapeutic.

Over the past few years I have spent a lot of time reading about antisense oligonucleotides (ASOs) and trying to understand as much as I can about what is known about this class of drugs. This blog post will kick off a series of posts in which I talk through what I've learned. But I'm still far from being an expert on this subject, so please forgive any errors, and feel free to leave me a comment below.

### what are ASOs, and how do they work?

ASOs are short sequences of nucleotides, often 15 - 30 bases long, similar to DNA or RNA but chemically modified for pharmacokinetic stability [[Bennett 2017]]. They can be designed to have sequences that are antisense (reverse complement) to the sequence of an RNA molecule from a gene of interest. The ASO binds to the target RNA molecule according to Watson-Crick base pairing: C-G, A-T. The ASO can then affect that RNA molecule in a number of different ways, which I will discuss in more detail in the next post in this series, Antisense part II: mechanism of action. Which mechanism an ASO has is a function of both its chemistry (see Antisense part III: chemistries) and the sequence to which it is targeted.

For now, the most important point is that the ASO can cause the RNA to be cleaved by the enzyme RNAse H and degraded, lowering RNA levels and thereby lowering protein levels. This is the mechanism we are interested in for prion disease. It's also worth noting that ASOs can be designed to modulate splicing of the RNA, causing an exon to be preferentially included or excluded &mdash; this is the mechanism of an approved ASO drug described further below.

![](/media/2017/12/how-asos-reduce-target-rna.png)

*ASOs can reduce the amount of a target RNA by bringing about RNAse H cleavage. Sequences of RNA and ASO are from [[Kordasiewicz 2012]]*

In prion disease, the mechanism we are interested in is bringing about cleavage of the target RNA, which is *PRNP* RNA, in order to lower prion protein (PrP) levels. For reasons explained below, we are interested in non-allele-specific lowering of *PRNP* RNA, meaning we simply want to reduce all prion protein in the brain, and develop one drug suitable for all prion disease patients. We're not targeting a particular genetic mutation.

Unlike CRISPR or siRNA, ASOs do not require a viral vector for delivery. Naked ASOs can enter cells *in vivo* and are active in the cytoplasm and in the nucleus, as explained more in Antisense part IV: cell biology. But as of today, there is no known chemistry or delivery method for enabling ASOs to cross the blood-brain barrier. So, we expect that a prion disease ASO would be dosed intrathecally, meaning via a lumbar puncture. If that sounds scary, it's not &mdash; as Sonia will tell you, she's undergone four lumbar punctures for research and found it to be no big deal.

### the case for lowering PrP

Our interest in ASOs stems from the excellent proofs of concept that lowering PrP should be both a safe and effective strategy against prion disease.

It is known for certain that PrP is the cause of prion disease. This knowledge is the culmination of decades of research and every line of evidence is in agreement &mdash; below is a table Sonia and I have put together summarizing just a fraction of the data.

| category | evidence |
| ---- | ---- |
| biochemical | &bull; Prions, the infectious agent in prion disease, are composed of PrP [[Prusiner 1984], [Prusiner 1998]]. <br> &bull; Prion "strains" are encoded in distinct conformations of PrP [[Bessen 1995], [Telling 1996], [Safar 1998]]. <br> &bull; Prion infectivity can be generated in vitro from bacterially expressed recombinant PrP [[Legname 2004], [Wang 2010]]. |
| animal genetics | &bull; PrP is required for prion neurotoxicity [[Brandner 1996]]. <br> &bull; PrP is required for prion propagation [[Bueler 1993], [Prusiner 1993], [Manson 1994], [Sakaguchi 1995]]. <br> &bull; PrP dosage and incubation time are inversely correlated [[Bueler 1994], [Fischer 1996]]. <br> &bull; PrP amino acid sequence governs the "species barrier" [[Scott 1989], [Telling 1994]]. |
| human genetics | &bull; Protein-altering variants in *PRNP* segregate with genetic prion disease [[Hsiao 1989], [Hsiao 1991]]. <br> &bull; Some missense variants in PRNP [confer protection](/2017/12/18/protective-prp-missense-variants/) against prion disease [[Palmer 1991], [Shibuya 1998], [Mead 2009]]. <br> &bull; *PRNP* is the primary or only locus to exhibit genome-wide significant association to prion disease risk [[Mead 2012]]. |

<i><b>Evidence that PrP causes prion disease.</b></i>

Particularly compelling is the dose-responsive curve relating PrP abundance to the pace of disease in mice. When mice are intracerebrally infected with prions, they develop prion disease after a very predictable number of days that is tightly related to how much PrP they produce. Below I have re-plotted a classic set of data from [[Fischer 1996]] showing this relationship.

![](/media/2018/07/expression-level-incubation-time.png)

<i><b>The less PrP, the better, and the more PrP, the worse.</b> Time to disease and terminal illness in mice intracerebrally infected with RML prions, adapted from Table 1 of [[Fischer 1996]]. Homozygous PrP knockout mice can neither propagate prions nor suffer from prion disease, heterozygous knockouts take &gt;2x as long as wild-type mice to get sick, and transgenic overexpressers get sick faster. [Code to produce this plot](/media/2018/07/expression-level-incubation-time.R).</i>

This curve is important because it shows that the benefits of PrP lowering are dose-dependent. You don't need to lower PrP to zero in order to delay prion disease &mdash; every bit helps.

The mice in the above curve are constitutively genetically modified to produce more or less PrP for their whole lives. But the benefits of PrP lowering are not exclusive to lifelong reduction. Two compelling proof-of-concept studies have shown that lowering PrP even after prion disease begins can be highly beneficial. In one study, Cre recombinase was used to excise a *Prnp* transgene in neurons several weeks after mice were infected with prions, and the mice were protected from disease out to at least 400 days [[Mallucci 2003]]. In another study, a Tet-off switch was used to turn PrP expression down to 20% of normal levels 100 days after mice were infected with prions, and the mice lived nearly 3 times as long as untreated controls [[Safar 2005]]. In addition, a clever experiment grafting wild-type (PrP-expressing) tissue into a PrP knockout mouse showed that even when prions are all around, PrP knockout neurons are unaffected [[Brandner 1996]]. In other words, prion neurotoxicity is cell autonomous and requires PrP expression. This, together with the conditional knockout/knockdown studies, makes it conceivable that a PrP lowering drug might be able to slow down progression of prion disease even in the neurotoxic phase of disease.

![](/media/2018/07/prp-knockout-animals.png)

<i><b>PrP knockout animals.</b> From left to right: a mouse [from Wikipedia](https://en.wikipedia.org/wiki/Mouse#/media/File:%D0%9C%D1%8B%D1%88%D1%8C_2.jpg) (I couldn't find a photo of an actual PrP knockout mouse); PrP knockout cow from [[Richt 2007]]; naturally occurring PrP knockout goat from [[Reiten 2017]; and hypothetical human. We haven't found any homozygous knockout humans, but individuals with heterozygous loss-of-function mutaitons are healthy.</i>

Meanwhile, as Sonia explained in her post, we have ample evidence to suggest that PrP lowering should be safe. The only confidently identified phenotype of PrP knockout mice is an age-dependent defect in myelin maintenance on peripheral nerves, resulting in a mild peripheral neuropathy [[Bremer 2010]]. It's not seen the central nervous system (CNS), and the receptor, *Adgrg6*, involved in this pathway is not even expressed in the CNS [[Kuffer & Lakkaraju 2016]]. And the myelin maintenance defect is not seen in heterozygous knockout mice, only complete knockouts [[Bremer 2010]]. Consider that a PrP-lowering drug might lower PrP by half if we are lucky &mdash; no currently available technology is going to lower PrP to zero. Knockout cows and goats are also reported to be healthy [[Richt 2007], [Yu 2009], [Benestad 2012]], and the few humans we have been able to identify with heterozygous loss-of-function mutations in *PRNP* are healthy as well [[Minikel 2016]]. All together, this is a compelling body of evidence that lowering PrP should be safe, though of course, safety can never be assumed &mdash; any new drug will always be tested first in a Phase I clinical trial where a small number of individuals start receiving small doses of the drug under very close medical monitoring.

If you're still worried about knockout phenotypes, remember that almost every drug that humans take targets one protein or another in the body, and many of those targets have important native functions and are highly essential and strongly conserved across evolution. For example, cholesterol-lowering [statin](https://www.drugbank.ca/drugs/DB01076) drugs are inhibitors of HMG CoA reductase and have saved millions of lives, even though knockout of that enzyme is embryonic lethal in mice [[Ohashi 2003]]. Even [aspirin](https://www.drugbank.ca/drugs/DB00945) targets the product of a gene, [*PTGS2*](http://exac.broadinstitute.org/gene/ENSG00000073756), where loss-of-function mutations are strongly selected-against in the human populaton. In general, there is a big difference between targeting a gene with a drug versus with a genetic manipulation. Constitutive genetic knockout means total lack of the protein in every cell of the body for the organism's entire life. Most drugs achieve only incomplete inhibition, are reversible and adjustable based on dose, might reach only some tissues and not others, and might be taken only by people for whom the risk-benefit calculus is favorable.

For prion disease, a non-allele-specific knockdown strategy makes sense. As the above data show, lowering all PrP should be beneficial, and there is not much reason to be worried about on-target side effects. Non-allele-specific means it should be possible to develop one drug for all types of prion disease including the [>60 different mutations](/2015/01/13/list-of-reportedly-pathogenic-prnp-variants/), as well as sporadic and iatrogenic disease, where there is no mutation. Even in individuals who do have a mutation, sometimes the [wild-type allele can also form prions](/2013/08/15/allelic-origin-of-prpsc-in-heterozygotes/) and presumably contribute to disease. Finally, it should be possible to design safer and more potent ASO sequences without the constraint of needing to overlap a mutation site.

### the promise of antisense oligonucleotides

ASOs have been around for decades, and from the beginning, there were people saying that they "promise to open up a new era of drug research with the possibility of rational drug design based on the nucleotide sequences of the genes causing the disease" [[Uhlmann & Peyman 1990]]. But realizing this promise has taken time. The past few decades have witnessed a tremendous breadth and depth of basic research into how ASOs work and how to make them work better. This series of blog posts will cover only a tiny fraction of this body of literature. Even just a few years ago, when the Prusiner lab published the first study of antisense oligos as potential therapeutics for prion disease [[Nazor Friberg 2012]], it wasn't yet clear how promising this area was, and many questions remained unanswered. There exist ASO drugs approved or in human trials for a range of different conditions including muscle disease, liver disease, and cancer, but I will focus this post on brain diseases, because developing drugs for the brain is a special challenge.

There are, in principle, multiple ways you could try to lower the levels of one target protein in the brain, and many of these methods have been attempted for prion disease. Small molecules are exciting because with careful medicinal chemistry they can sometimes be made to cross the blood-brain barrier, and there has been some interesting [early-stage work on this front](/2015/11/18/a-look-at-prp-knockdown-screen-data/) [[Silber 2014]]. But discovering safe and bioactive small molecules is a long road, and it is especially [difficult](/2015/10/21/is-there-anything-special-about-prps-expression/) to find ones that very specifically lower one protein and don't just throw a wrench into the biosynthesis of a whole swath of different proteins. RNA interference is a more targeted approach, but it has the disadvantage that it needs to be "vectored" &mdash; the siRNA has to be packaged in a virus to reach brain cells, and the viruses do not distribute well throughout the brain. A study of virally vectored RNAi therapy in prion-infected mice found that the virus was only able to reach a small region of the brain around the injection site [[White 2008]]. 

As recently as a few years ago, ASOs were still being delivered to the brain, both in mice and in humans, by intracerebral pumps to provide a continuous infusion of drug [[Smith 2006], [Miller 2013]]. A critical turning point in the development of ASOs for neurological disease came in what appears at first glance as a routine pharmacology study [[Rigo 2014]]. Ionis Pharmaceuticals was characterizing the pharmacokinetics and pharmacodynamics of a drug candidate for spinal muscular atrophy, and they discovered that the compound was actually more potent in rodents when it was given in bolus dosing &mdash; one big single injection &mdash; as opposed to continuous infusion pump-based dosing. They then went on to do bolus doses intrathecally (via lumbar puncture) in monkeys, and found that the ASO reached not only the spinal cord but distributed widely throughout the brain. The ASO's half life was more than 2 months in the brain and several months in the spinal cord, offering the prospect that occasional lumbar punctures might be enough to provide a sustained therapeutic benefit in a human.

In December 2016, that ASO, now known as nusinersen, became an [FDA-approved](https://www.fda.gov/NewsEvents/Newsroom/PressAnnouncements/ucm534611.htm) drug for spinal muscular atrophy, and the first disease-modifying therapeutic for any neurodegenerative disease. It has proven remarkably safe and effective at arresting disease progression in affected children [[Chiriboga 2016], [Finkel 2016], [Finkel 2017]], and the [preliminary reports](http://media.biogen.com/news-releases/news-release-details/new-data-reaffirm-clinically-meaningful-benefit-spinrazar) from prevention trials are that children who get the drug before symptoms are developing normally. It's a remarkable result for a disease that was so deadly and so utterly without any treatment for the underlying disease process just a few years ago.

On the heels of that success, several other ASO drug candidates for brain disease now in clinical trials, including against tau (*MAPT*) for Alzheimer's and frontotemporal dementia, against *SOD1* for ALS, and against huntingtin (*HTT*) for Huntington's disease (see [Ionis's pipeline](http://www.ionispharma.com/pipeline/)).

As discussed in [this post](/2017/12/11/huntingtin-becomes-the-huntingted/), nusinersen is actually a splice-modulating ASO that needs to do its work mostly in the spinal cord, so it is not a perfect proof of principle for prion disease, where we would want an RNA-lowering ASO to work in the brain. But nusinersen does reach the brain [[Finkel 2016]], and data from non-human primate studies also demonstrate that ASOs can distribute broadly throughout the brain and lower their targets potently [[Kordasiewicz 2012], [Devos 2017]].

The Phase I/II data from the Huntington's disease trial were announced a few months ago &mdash; I have reviewed them in detail [here](/2017/12/11/huntingtin-becomes-the-huntingted/). Like prion disease, Huntington's disease is a monogenic, adult onset neurodegenerative disease of the brain. While we still don't know if the *HTT* ASO was effective at slowing disease progression &mdash; testing that will take a years-long pivotal trial &mdash; what we know is that the ASO was well-tolerated, with no serious adverse events in the treatment group, and it lowered mutant huntingtin in cerebrospinal fluid by 40%.

As explained above, there is ample reason to believe that if we could lower prion protein by 40%, that would have a huge impact on prion disease. And ASO drugs are modular: plus or minus a few chemical modifications, they are all basically the same four building blocks &mdash; the same A, C, G, and T nucleotides that make up our DNA &mdash; stitched together in a different order to target a different gene sequence. So if a 40% knockdown can be achieved for huntingtin, there is no reason in principle why it couldn't be achieved for prion protein. That doesn't mean that success is by any means guaranteed &mdash; drug development is always difficult, without exception. But it does mean that ASOs are a very promising place to look for a prion disease drug.

### conclusion

As Sonia explained in her post, there is a lot of science that we need to do in the lab, and also a lot that we as a prion disease community need to do to get ready for clinical trials of ASOs down the road. We've been incredibly busy with all this, hence my radio silence on this blog for the past six months. But for me, it's also important to make time to read papers, sift through the science and make sure I understand the principles behind what we're doing. So over the coming weeks, you can look forward to seeing the rest of this blog post series on the science of ASOs.

[Prusiner 1982]: http://www.ncbi.nlm.nih.gov/pubmed/6801762 "Prusiner SB. Novel proteinaceous infectious particles cause scrapie. Science.  1982 Apr 9;216(4542):136-44. PubMed PMID: 6801762."

[Prusiner 1984]: http://www.ncbi.nlm.nih.gov/pubmed/6432339 "Prusiner SB, Groth DF, Bolton DC, Kent SB, Hood LE. Purification and structural studies of a major scrapie prion protein. Cell. 1984 Aug;38(1):127-34. PubMed PMID: 6432339."

[Scott 1989]: http://www.ncbi.nlm.nih.gov/pubmed/2574076 "Scott M, Foster D, Mirenda C, Serban D, Coufal F, Wälchli M, Torchia M, Groth  D, Carlson G, DeArmond SJ, Westaway D, Prusiner SB. Transgenic mice expressing hamster prion protein produce species-specific scrapie infectivity and amyloid plaques. Cell. 1989 Dec 1;59(5):847-57. PubMed PMID: 2574076."

[Hsiao 1989]: http://www.ncbi.nlm.nih.gov/pubmed/2564168 "Hsiao K, Baker HF, Crow TJ, Poulter M, Owen F, Terwilliger JD, Westaway D, Ott J, Prusiner SB. Linkage of a prion protein missense variant to Gerstmann-Sträussler syndrome. Nature. 1989 Mar 23;338(6213):342-5. PubMed PMID:  2564168."

[Uhlmann & Peyman 1990]: https://dx.doi.org/10.1021/cr00102a001 "Eugen Uhlmann, and Anusch Peyman. Antisense oligonucleotides: a new therapeutic principle. Chem. Rev., 1990, 90 (4), pp 543–584 DOI: 10.1021/cr00102a001 Publication Date: June 1990"

[Hsiao 1991]: https://www.ncbi.nlm.nih.gov/pubmed/2008182 "Hsiao K, Meiner Z, Kahana E, Cass C, Kahana I, Avrahami D, Scarlato G, Abramsky O, Prusiner SB, Gabizon R. Mutation of the prion protein in Libyan Jews  with Creutzfeldt-Jakob disease. N Engl J Med. 1991 Apr 18;324(16):1091-7. PubMed  PMID: 2008182."

[Palmer 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1677164 "Palmer MS, Dryden AJ, Hughes JT, Collinge J. Homozygous prion protein genotype predisposes to sporadic Creutzfeldt-Jakob disease. Nature. 1991 Jul 25;352(6333):340-2. Erratum in: Nature 1991 Aug 8;352(6335):547. PubMed PMID: 1677164."

[Bueler 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1373228 "Büeler H, Fischer M, Lang Y, Bluethmann H, Lipp HP, DeArmond SJ, Prusiner SB,  Aguet M, Weissmann C. Normal development and behaviour of mice lacking the neuronal cell-surface PrP protein. Nature. 1992 Apr 16;356(6370):577-82. PubMed PMID: 1373228."

[Bueler 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8100741 "Büeler H, Aguzzi A, Sailer A, Greiner RA, Autenried P, Aguet M, Weissmann C. Mice devoid of PrP are resistant to scrapie. Cell. 1993 Jul 2;73(7):1339-47. PubMed PMID: 8100741."

[Prusiner 1993]: https://www.ncbi.nlm.nih.gov/pubmed/7902565 "Prusiner SB, Groth D, Serban A, Koehler R, Foster D, Torchia M, Burton D, Yang SL, DeArmond SJ. Ablation of the prion protein (PrP) gene in mice prevents scrapie and facilitates production of anti-PrP antibodies. Proc Natl Acad Sci U S A. 1993 Nov 15;90(22):10608-12. PubMed PMID: 7902565; PubMed Central PMCID: PMC47826."

[Bueler 1994]: http://www.ncbi.nlm.nih.gov/pubmed/8790598 "Büeler H, Raeber A, Sailer A, Fischer M, Aguzzi A, Weissmann C. High prion and PrPSc levels but delayed onset of disease in scrapie-inoculated mice heterozygous for a disrupted PrP gene. Mol Med. 1994 Nov;1(1):19-30. PubMed PMID: 8790598; PubMed Central PMCID: PMC2229922."

[Manson 1994]: http://www.ncbi.nlm.nih.gov/pubmed/7999308 "Manson JC, Clarke AR, Hooper ML, Aitchison L, McConnell I, Hope J. 129/Ola mice carrying a null mutation in PrP that abolishes mRNA production are developmentally normal. Mol Neurobiol. 1994 Apr-Jun;8(2-3):121-7. PubMed PMID: 7999308."

[Telling 1994]: https://www.ncbi.nlm.nih.gov/pubmed/7937921/ "Telling GC, Scott M, Hsiao KK, Foster D, Yang SL, Torchia M, Sidle KC, Collinge J, DeArmond SJ, Prusiner SB. Transmission of Creutzfeldt-Jakob disease from humans to transgenic mice expressing chimeric human-mouse prion protein. Proc Natl Acad Sci U S A. 1994 Oct 11;91(21):9936-40. PubMed PMID: 7937921; PubMed Central PMCID: PMC44932."

[Bessen 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7791905 "Bessen RA, Kocisko DA, Raymond GJ, Nandan S, Lansbury PT, Caughey B. Non-genetic propagation of strain-specific properties of scrapie prion protein. Nature. 1995 Jun 22;375(6533):698-700. PubMed PMID: 7791905."

[Sakaguchi 1995]: https://www.ncbi.nlm.nih.gov/pubmed/7494265 "Sakaguchi S, Katamine S, Shigematsu K, Nakatani A, Moriuchi R, Nishida N, Kurokawa K, Nakaoke R, Sato H, Jishage K, et al. Accumulation of proteinase K-resistant prion protein (PrP) is restricted by the expression level of normal PrP in mice inoculated with a mouse-adapted strain of the Creutzfeldt-Jakob disease agent. J Virol. 1995 Dec;69(12):7586-92. PubMed PMID: 7494265; PubMed Central PMCID: PMC189697."

[Telling 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8953038 "Telling GC, Parchi P, DeArmond SJ, Cortelli P, Montagna P, Gabizon R, Mastrianni J, Lugaresi E, Gambetti P, Prusiner SB. Evidence for the conformation  of the pathologic isoform of the prion protein enciphering and propagating prion  diversity. Science. 1996 Dec 20;274(5295):2079-82. PubMed PMID: 8953038."

[Brandner 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8552188 "Brandner S, Isenmann S, Raeber A, Fischer M, Sailer A, Kobayashi Y, Marino S,  Weissmann C, Aguzzi A. Normal host prion protein necessary for scrapie-induced neurotoxicity. Nature. 1996 Jan 25;379(6563):339-43. PubMed PMID: 8552188."

[Fischer 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8635458/ "Fischer M, Rülicke T, Raeber A, Sailer A, Moser M, Oesch B, Brandner S, Aguzzi A, Weissmann C. Prion protein (PrP) with amino-proximal deletions restoring susceptibility of PrP knockout mice to scrapie. EMBO J. 1996 Mar 15;15(6):1255-64. PubMed PMID: 8635458; PubMed Central PMCID: PMC450028."

[Shibuya 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9629853 "Shibuya S, Higuchi J, Shin RW, Tateishi J, Kitamoto T. Codon 219 Lys allele of PRNP is not found in sporadic Creutzfeldt-Jakob disease. Ann Neurol. 1998 Jun;43(6):826-8. PubMed PMID: 9629853."

[Safar 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9771749 "Safar J, Wille H, Itri V, Groth D, Serban H, Torchia M, Cohen FE, Prusiner SB. Eight prion strains have PrP(Sc) molecules with different conformations. Nat Med. 1998 Oct;4(10):1157-65. PubMed PMID: 9771749."

[Prusiner 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9811807 "Prusiner SB. Prions. Proc Natl Acad Sci U S A. 1998 Nov 10;95(23):13363-83. Review. PubMed PMID: 9811807; PubMed Central PMCID: PMC33918."

[Mallucci 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14593181 "Mallucci G, Dickinson A, Linehan J, Klöhn PC, Brandner S, Collinge J. Depleting neuronal PrP in prion infection prevents disease and reverses spongiosis. Science. 2003 Oct 31;302(5646):871-4. PubMed PMID: 14593181."

[Ohashi 2003]: https://www.ncbi.nlm.nih.gov/pubmed/12920113 "Ohashi K, Osuga J, Tozawa R, Kitamine T, Yagyu H, Sekiya M, Tomita S, Okazaki  H, Tamura Y, Yahagi N, Iizuka Y, Harada K, Gotoda T, Shimano H, Yamada N, Ishibashi S. Early embryonic lethality caused by targeted disruption of the 3-hydroxy-3-methylglutaryl-CoA reductase gene. J Biol Chem. 2003 Oct 31;278(44):42936-41. Epub 2003 Aug 14. PubMed PMID: 12920113."

[Legname 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15286374 "Legname G, Baskakov IV, Nguyen HO, Riesner D, Cohen FE, DeArmond SJ, Prusiner  SB. Synthetic mammalian prions. Science. 2004 Jul 30;305(5684):673-6. PubMed PMID: 15286374."

[Safar 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16186247 "Safar JG, DeArmond SJ, Kociuba K, Deering C, Didorenko S, Bouzamondo-Bernstein E, Prusiner SB, Tremblay P. Prion clearance in bigenic mice. J Gen Virol. 2005 Oct;86(Pt 10):2913-23. PubMed PMID: 16186247."

[Smith 2006]: https://www.ncbi.nlm.nih.gov/pubmed/16878173/ "Smith RA, Miller TM, Yamanaka K, Monia BP, Condon TP, Hung G, Lobsiger CS, Ward CM, McAlonis-Downes M, Wei H, Wancewicz EV, Bennett CF, Cleveland DW. Antisense oligonucleotide therapy for neurodegenerative disease. J Clin Invest. 2006 Aug;116(8):2290-6. Epub 2006 Jul 27. PubMed PMID: 16878173; PubMed Central PMCID: PMC1518790."

[Kocisko 2006]: https://www.ncbi.nlm.nih.gov/pubmed/16495266/ "Kocisko DA, Vaillant A, Lee KS, Arnold KM, Bertholet N, Race RE, Olsen EA, Juteau JM, Caughey B. Potent antiscrapie activities of degenerate phosphorothioate oligonucleotides. Antimicrob Agents Chemother. 2006 Mar;50(3):1034-44. PubMed PMID: 16495266; PubMed Central PMCID: PMC1426446."

[Karpuj 2007]: https://www.ncbi.nlm.nih.gov/pubmed/17592554/ "Karpuj MV, Giles K, Gelibter-Niv S, Scott MR, Lingappa VR, Szoka FC, Peretz D, Denetclaw W, Prusiner SB. Phosphorothioate oligonucleotides reduce PrP levels and prion infectivity in cultured cells. Mol Med. 2007 Mar-Apr;13(3-4):190-8. PubMed PMID: 17592554; PubMed Central PMCID: PMC1892763."

[Richt 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17195841/ "Richt JA, Kasinathan P, Hamir AN, Castilla J, Sathiyaseelan T, Vargas F, Sathiyaseelan J, Wu H, Matsushita H, Koster J, Kato S, Ishida I, Soto C, Robl JM, Kuroiwa Y. Production of cattle lacking prion protein. Nat Biotechnol. 2007 Jan;25(1):132-8. Epub 2006 Dec 31. PubMed PMID: 17195841; PubMed Central PMCID: PMC2813193."

[White 2008]: https://www.ncbi.nlm.nih.gov/pubmed/18632556 "White MD, Farmer M, Mirabile I, Brandner S, Collinge J, Mallucci GR. Single treatment with RNAi against prion protein rescues early neuronal dysfunction and  prolongs survival in mice with prion disease. Proc Natl Acad Sci U S A. 2008 Jul  22;105(29):10238-43. doi: 10.1073/pnas.0802759105. Epub 2008 Jul 16. PubMed PMID: 18632556; PubMed Central PMCID: PMC2474561."

[Yu 2009]: http://www.ncbi.nlm.nih.gov/pubmed/18951376 "Yu G, Chen J, Xu Y, Zhu C, Yu H, Liu S, Sha H, Chen J, Xu X, Wu Y, Zhang A, Ma J, Cheng G. Generation of goats lacking prion protein. Mol Reprod Dev. 2009 Jan;76(1):3. doi: 10.1002/mrd.20960. PubMed PMID: 18951376."

[Mead 2009]: https://www.ncbi.nlm.nih.gov/pubmed/19923577 "Mead S, Whitfield J, Poulter M, Shah P, Uphill J, Campbell T, Al-Dujaily H, Hummerich H, Beck J, Mein CA, Verzilli C, Whittaker J, Alpers MP, Collinge J. A novel protective prion protein variant that colocalizes with kuru exposure. N Engl J Med. 2009 Nov 19;361(21):2056-65. doi: 10.1056/NEJMoa0809716. PubMed PMID: 19923577."

[Bremer 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20098419 "Bremer J, Baumann F, Tiberi C, Wessig C, Fischer H, Black P, Steele AD, Toyka KV, Nave KA, Weis J, Aguzzi A. Axonal prion protein is required for peripheral myelin maintenance. Nat Neurosci. 2010 Mar, 13 (3): 310-8. doi: 10.1038 / nn.2483. Epub 2010 Jan 24 PubMed PMID: 20098419"

[Wang 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20110469 "Wang F, Wang X, Yuan CG, Ma J. Generating a prion with bacterially expressed recombinant prion protein. Science. 2010 Feb 26;327(5969):1132-5. doi: 10.1126/science.1183748. Epub 2010 Jan 28. PubMed PMID: 20110469; PubMed Central  PMCID: PMC2893558."

[Benestad 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23249298 "Benestad SL, Austbø L, Tranulis MA, Espenes A, Olsaker I. Healthy goats naturally devoid of prion protein. Vet Res. 2012 Dec 18;43:87. doi: 10.1186/1297-9716-43-87. PubMed PMID: 23249298; PubMed Central PMCID: PMC3542104."

[Nazor Friberg 2012]: https://www.ncbi.nlm.nih.gov/pubmed/23344724 "Nazor Friberg K, Hung G, Wancewicz E, Giles K, Black C, Freier S, Bennett F, Dearmond SJ, Freyman Y, Lessard P, Ghaemmaghami S, Prusiner SB. Intracerebral Infusion of Antisense Oligonucleotides Into Prion-infected Mice. Mol Ther Nucleic Acids. 2012 Feb 7;1:e9. doi: 10.1038/mtna.2011.6. PubMed PMID: 23344724; PubMed Central PMCID: PMC3381600."

[Kordasiewicz 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22726834 "Kordasiewicz HB, Stanek LM, Wancewicz EV, Mazur C, McAlonis MM, Pytel KA, Artates JW, Weiss A, Cheng SH, Shihabuddin LS, Hung G, Bennett CF, Cleveland DW.  Sustained therapeutic reversal of Huntington's disease by transient repression of huntingtin synthesis. Neuron. 2012 Jun 21;74(6):1031-44. doi: 10.1016/j.neuron.2012.05.009. PubMed PMID: 22726834; PubMed Central PMCID: PMC3383626."

[Mead 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22210626 "Mead S, Uphill J, Beck J, Poulter M, Campbell T, Lowe J, Adamson G, Hummerich  H, Klopp N, Rückert IM, Wichmann HE, Azazi D, Plagnol V, Pako WH, Whitfield J, Alpers MP, Whittaker J, Balding DJ, Zerr I, Kretzschmar H, Collinge J. Genome-wide association study in multiple human prion diseases suggests genetic risk factors additional to PRNP. Hum Mol Genet. 2012 Apr 15;21(8):1897-906. doi:  10.1093/hmg/ddr607. Epub 2011 Dec 30. PubMed PMID: 22210626; PubMed Central PMCID: PMC3313791."

[Miller 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23541756 "Miller TM, Pestronk A, David W, Rothstein J, Simpson E, Appel SH, Andres PL, Mahoney K, Allred P, Alexander K, Ostrow LW, Schoenfeld D, Macklin EA, Norris DA, Manousakis G, Crisp M, Smith R, Bennett CF, Bishop KM, Cudkowicz ME. An antisense oligonucleotide against SOD1 delivered intrathecally for patients with SOD1 familial amyotrophic lateral sclerosis: a phase 1, randomised, first-in-man study. Lancet Neurol. 2013 May;12(5):435-42. doi: 10.1016/S1474-4422(13)70061-9.  Epub 2013 Mar 29. Erratum in: Lancet Neurol. 2013 May;12(5):423. PubMed PMID: 23541756; PubMed Central PMCID: PMC3712285."

[Silber 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24530226 "Silber BM, Gever JR, Rao S, Li Z, Renslo AR, Widjaja K, Wong C, Giles K, Freyman Y, Elepano M, Irwin JJ, Jacobson MP, Prusiner SB. Novel compounds lowering the cellular isoform of the human prion protein in cultured human cells. Bioorg Med Chem. 2014 Mar 15;22(6):1960-72. doi: 10.1016/j.bmc.2014.01.001. Epub  2014 Jan 9. PubMed PMID: 24530226; PubMed Central PMCID: PMC3984052."

[Rigo 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24784568 "Rigo F, Chun SJ, Norris DA, Hung G, Lee S, Matson J, Fey RA, Gaus H, Hua Y, Grundy JS, Krainer AR, Henry SP, Bennett CF. Pharmacology of a central nervous system delivered 2'-O-methoxyethyl-modified survival of motor neuron splicing oligonucleotide in mice and nonhuman primates. J Pharmacol Exp Ther. 2014 Jul;350(1):46-55. doi: 10.1124/jpet.113.212407. Epub 2014 Apr 30. PubMed PMID: 24784568; PubMed Central PMCID: PMC4056267."

[Minikel 2016]: http://www.ncbi.nlm.nih.gov/pubmed/26791950 "Minikel EV, Vallabh SM, Lek M, Estrada K, Samocha KE, Sathirapongsasuti JF, McLean CY, Tung JY, Yu LP, Gambetti P, Blevins J, Zhang S, Cohen Y, Chen W, Yamada M, Hamaguchi T, Sanjo N, Mizusawa H, Nakamura Y, Kitamoto T, Collins SJ, Boyd A, Will RG, Knight R, Ponto C, Zerr I, Kraus TF, Eigenbrod S, Giese A, Calero M, de Pedro-Cuesta J, Haïk S, Laplanche JL, Bouaziz-Amar E, Brandel JP, Capellari S, Parchi P, Poleggi A, Ladogana A, O'Donnell-Luria AH, Karczewski KJ,  Marshall JL, Boehnke M, Laakso M, Mohlke KL, Kähler A, Chambert K, McCarroll S, Sullivan PF, Hultman CM, Purcell SM, Sklar P, van der Lee SJ, Rozemuller A, Jansen C, Hofman A, Kraaij R, van Rooij JG, Ikram MA, Uitterlinden AG, van Duijn  CM; Exome Aggregation Consortium (ExAC), Daly MJ, MacArthur DG. Quantifying prion disease penetrance using large population control cohorts. Sci Transl Med. 2016 Jan 20;8(322):322ra9. doi: 10.1126/scitranslmed.aad5169. PubMed PMID: 26791950."

[Kuffer & Lakkaraju 2016]: https://www.ncbi.nlm.nih.gov/pubmed/27501152 "Küffer A, Lakkaraju AK, Mogha A, Petersen SC, Airich K, Doucerain C, Marpakwar R, Bakirci P, Senatore A, Monnard A, Schiavi C, Nuvolone M, Grosshans B, Hornemann S, Bassilana F, Monk KR, Aguzzi A. The prion protein is an agonistic ligand of the G protein-coupled receptor Adgrg6. Nature. 2016 Aug 8. doi: 10.1038/nature19312. [Epub ahead of print] PubMed PMID: 27501152."

[Chiriboga 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26865511/ "Chiriboga CA, Swoboda KJ, Darras BT, Iannaccone ST, Montes J, De Vivo DC, Norris DA, Bennett CF, Bishop KM. Results from a phase 1 study of nusinersen (ISIS-SMN(Rx)) in children with spinal muscular atrophy. Neurology. 2016 Mar 8;86(10):890-7. doi: 10.1212/WNL.0000000000002445. Epub 2016 Feb 10. PubMed PMID: 26865511; PubMed Central PMCID: PMC4782111."

[Finkel 2016]: https://www.ncbi.nlm.nih.gov/pubmed/27939059/ "Finkel RS, Chiriboga CA, Vajsar J, Day JW, Montes J, De Vivo DC, Yamashita M, Rigo F, Hung G, Schneider E, Norris DA, Xia S, Bennett CF, Bishop KM. Treatment of infantile-onset spinal muscular atrophy with nusinersen: a phase 2, open-label, dose-escalation study. Lancet. 2016 Dec 17;388(10063):3017-3026. doi: 10.1016/S0140-6736(16)31408-8. Epub 2016 Dec 7. PubMed PMID: 27939059."

[Reiten 2017]: http://hdl.handle.net/11250/2497993 "Non-neuronal functions of the prion protein : insights from a unique animal model. Reiten, Malin Rokseth. Doctoral thesis, Norweigian University of Life Sciences. 2017."

[Finkel 2017]: https://www.ncbi.nlm.nih.gov/pubmed/29091570/ "Finkel RS, Mercuri E, Darras BT, Connolly AM, Kuntz NL, Kirschner J, Chiriboga CA, Saito K, Servais L, Tizzano E, Topaloglu H, Tulinius M, Montes J, Glanzman AM, Bishop K, Zhong ZJ, Gheuens S, Bennett CF, Schneider E, Farwell W, De Vivo DC; ENDEAR Study Group. Nusinersen versus Sham Control in Infantile-Onset Spinal Muscular Atrophy. N Engl J Med. 2017 Nov 2;377(18):1723-1732. doi: 10.1056/NEJMoa1702752. PubMed PMID: 29091570."

[DeVos 2017]: https://www.ncbi.nlm.nih.gov/pubmed/28123067/ "DeVos SL, Miller RL, Schoch KM, Holmes BB, Kebodeaux CS, Wegener AJ, Chen G, Shen T, Tran H, Nichols B, Zanardi TA, Kordasiewicz HB, Swayze EE, Bennett CF, Diamond MI, Miller TM. Tau reduction prevents neuronal loss and reverses pathological tau deposition and seeding in mice with tauopathy. Sci Transl Med. 2017 Jan 25;9(374). pii: eaag0481. doi: 10.1126/scitranslmed.aag0481. PubMed PMID: 28123067; PubMed Central PMCID: PMC5792300."

[Bennett 2017]: https://www.ncbi.nlm.nih.gov/pubmed/27732800/ "Bennett CF, Baker BF, Pham N, Swayze E, Geary RS. Pharmacology of Antisense Drugs. Annu Rev Pharmacol Toxicol. 2017 Jan 6;57:81-105. doi: 10.1146/annurev-pharmtox-010716-104846. Epub 2016 Oct 10. Review. PubMed PMID: 27732800."


