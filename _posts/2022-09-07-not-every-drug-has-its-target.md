---
layout: post
title:  "Not every drug has its target"
date:   2022-09-07 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2022/09/quinine.png
summary200: "Nine examples of drugs and chemical probes that achieve bioactivity without binding a target."
---

![](/media/2022/09/non-binding-moa-compounds.png)

There are many approved drugs and even more molecular probes for which the mechanism of action (MoA) is unknown or at least controversial. Identifying the MoA of a biologically active compound is one of the principal challenges in phenotypic drug discovery [[Vincent 2022]]. Yet people often assume that the MoA boils down to one target, one specific biomolecule that can be expressed as a UniProt ID or a gene symbol. That may not always be the case. My goal in this post is to give several examples of drugs or probes whose activity may _not_ be mediated by binding to any specific macromolecule. 

This is a subject I approach with a lot of humility. It is amazing just how hard it can be to confidently determine a drug's mechanism of action &mdash; even after well over a century in the case of general anesthetics. Add to that, none of this is even my area of expertise, so whatever level of uncertainty exists in the minds of scientists who are actually experts in this stuff, there's yet a lot more uncertainty in my mind, trying to read enough papers to piece together what's accepted and what's refuted, what's known and what's mysterious. But I wanted to try to write this post anyway, because I think this topic is so important. If some molecules can be bioactive without even binding a target, then this opens up a whole new space of possible answers to the question "how does this molecule work", and that's a space I suspect we may need to consider more often than we do.

Here are the examples that I think I found.

### zinc oxide: reflector

![](/media/2022/09/zinc-oxide.png)

![](/media/2022/09/mineral-sunscreen.png)

_Above: a mineral sunscreen with active ingredients titanium dioxide and zinc oxide._

Mineral sunscreens, such as zinc oxide, have a mechanism of action that's dead simple: they reflect UV light [[Geoffrey 2019]]. They also reflect a fair amount of visible light, which is why they appear white and don't fully rub into the skin. Perhaps for this reason, today they mostly enjoy a niche market for people with sensitive skin, thanks to their low allergenicity. The market is more dominated by so-called chemical sunscreens, which also make our list &mdash; see next item.

### oxybenzone: absorber

![](/media/2022/09/oxybenzone.png)

![](/media/2022/09/chemical-sunscreen.png)

_Above: a "chemical" sunscreen with active ingredients avobenzone, homosalate, and octocrylene._

Most active ingredients in "chemical sunscreens", such as oxybenzone, work simply by absorbing UV radiation [[Latha 2013]]. That's right, it's just a molecule that's very opaque in UV wavelengths. Some are more opaque in UVB (280-315 nm) or UVA (315-400 nm), some are super opaque across the whole range. Would any-old opaque molecule work? Of course, besides absorbing UV light, these molecules also need to have the right pharmacokinetic properties, if you want to call them that: the ability to stick to skin even in the presence of sweat and seawater. Add to that, they shouldn't be irritating to the skin, and people generally prefer if they are fairly transparent in the visible spectrum.

### calcium carbonate: neutralizer

![](/media/2022/09/calcium-carbonate.png)

![](/media/2022/09/antacid.png)

_Above: a generic antacid formulation of calcium carbonate._

[Antacids](https://www.ncbi.nlm.nih.gov/books/NBK526049/) such as calcium carbonate, used for heartburn or indigestion, are simply alkaline substances that raise pH in the gut. They are sometimes called neutalizers, and some but not all have substantial buffering capacity. I call them neutralizers here to distinguish them from the class of alkalinizers discussed further below.

### simethicone: surfactant

![](/media/2022/09/simethicone.png)

![](/media/2022/09/simethicone-bottle.png)

_Above: a liquid formulation of simethicone for infants._

[Simethicone](https://www.ncbi.nlm.nih.gov/books/NBK555997/) is an over-the-counter drug that, in my personal experience raising two kids, is _extremely_ effective at reducing fussiness in infants. It is simply a surfactant, nothing more, and you can _see_ it work. Shake a baby bottle full of milk, add a few drops of simethicone, and poof, no more bubbles. By dispersing foam, it presumably makes babies' stomaches feel less bloated and achy. It isn't systemically absorbed, but does everything it needs to do right in the gut.

### polyethylene glycol: osmotic

![](/media/2022/09/peg.png)

![](/media/2022/09/peg3350.png)

_Above: a generic formulation of PEG with average molecular weight 3,350 Da._

[Polyethylene glycol](https://www.ncbi.nlm.nih.gov/books/NBK557652/), or PEG, is an over-the-counter drug for constipation. It's a large polymer and so one molecule of PEG binds, say, 100 water molecules, effectively increasing the osmolarity of the digestive tract, thus drawing more water out of the circulation and into the gut, or conversely, preventing water in the gut from being absorbed into the circulation. Like simethicone, it's not systemically absorbed and just acts in the gut. The typical dose is massive: 17 grams.

### quinine: alkalinizer

![](/media/2022/09/quinine.png)

![](/media/2022/09/cinchona.png)

_Above: cinchona bark, a natural source of quinine._

The natural product quinine and all of its synthetic analogs &mdash; quinacrine, chloroquine, mefloquine and so on &mdash; all share the mechanism of alkalinizing lysosomes. I dove into this mechanism in much greater detail in [this blog post](/2016/05/08/a-mechanism-of-action-hypothesis/), but here's a quick summary. These compounds are membrane-permeable as bases, but not as their conjugate acids. They can bounce around randomly around between different cellular compartments until they hit a low pH and get protonated. Once that happens, they’re stuck. As a result, they accumulate in whichever membrane-bound compartment has the lowest pH, and they soak up those protons until the pH rises [[Yayon 1984], [Yayon 1985]]. In the malaria parasite _P. falciparum_, they accumulate in the vacuole, which prevents the parasite from sequestering toxic heme from its blood meals into a crystalline form. Thus, these compounds found early use as antimalarials. The chief resistance mechanism that the parasite has developed is to upregulate a transporter that kicks the compounds back out of the vacuole [[Fidock 2000]]. In mammalian cells, quinine and its analogs accumulate in lysosomes (they're often described as lysosomotropic) and are sometimes used as tool compounds to block lysosomal/autophagic degradation of proteins.

### DNP: ionophore

![](/media/2022/09/dnp.png)

[2,4-dinitrophenol](https://en.wikipedia.org/wiki/2,4-Dinitrophenol), or DNP for short, is an ionophore, more specifically a protonophore, meaning it can bind protons and shuttle them across membranes to which they would otherwise be impermeable. In this sense, its mechanism of action is the inverse of quinine. Alkalinizers move _to_ the protons, ionophores move the protons. The electron transport chain, where we get our energy, relies upon creating an electrochemical proton gradient across the mitochondrial inner membrane (see [this](https://www.ncbi.nlm.nih.gov/books/NBK26894/), or my [old notes](/2013/11/08/biochemistry-08-the-citric-acid-cycle-and-the-electron-transport-chain/) for a refresher). It uses energy from our food to pump protons out of the mitochondrial matrix across the inner membrane, and then to get back in, the protons have to go through ATP synthase, thus generating ATP. DNP short-circuits that process by allowing protons to cross the membrane with impunity. Thus, food energy is converted to heat instead of ATP. In other words, the electron transport chain is "uncoupled" from ATP production, so some call these compounds "uncouplers". This dissipation of food energy as heat is what brown fat is actually supposed to do and is thus a key part of how hibernating bears and human infants stay warm. But uncoupling by DNP is unregulated and is systemic throughout all different cells and tissues, and is thus really dangerous. DNP was used clinically as a weight loss pill in the 1930s, and is still taken illegally for the same purpose, but it's got an incredibly narrow therapeutic window and has led to dozens of deaths [[Grundlingh 2011]]. Multiple times in recent years, FDA has [cracked down](https://www.fda.gov/news-events/press-announcements/fda-targets-unlawful-internet-sales-illegal-prescription-medicines-during-international-operation) on websites that sell it.

### edaravone: scavenger

![](/media/2022/09/edaravone.png)

Edaravone is a free radical scavenger approved in the U.S. for ALS (though it only helps in a certain subset of patients, for reasons unknown) [[Writing Group 2017]] and also approved in Japan for stroke. It has been shown to scavenge various free radicals [[Watanabe 1994]], though exactly which ones are relevant in ALS (or stroke) was not obvious to me from a quick read of the literature, and may be an unknown at this point.

### ether: lipid interactor (controversial)

![](/media/2022/09/ether.png)

![](/media/2022/09/ether-monument.png)

_Above: monument to the discovery of ether as an anesthetic, in Boston's Public Garden._

There has been extensive study of the mechanism of action that might be shared between (diethyl) ether, newer anesthetics such as isoflurane and propofol, and probably that oldest anesthetic of all: ethanol. Plenty of evidence points to GABA receptors as ultimately mediating their activity [[Davies 2003], [Hemmings 2005], [Garcia 2010], [Pavel 2020]] &mdash; but how exactly they modulate GABA receptors is less clear and, though this is controversial, it might involve an indirect mechanism.

If anesthetics directly bound GABA receptors, then you might expect they ought to have a structure-activity relationship consistent with a specific binding pocket, like benzodiazepenes do [[Hadjipavlou-Litina 1994]]. Instead, an early observation was the [Meyer-Overton correlation](https://www.openanesthesia.org/meyer-overton-correlation/), that lipophilicity is a or the major predictor of a compound's anesthetic potency. It was long hypothesized that by interacting with the lipid bilayer of neurons, these compounds must somehow change biophysical properties of the membrane, which might in turn change how GABA receptors behave. But what, exactly, anesthetics might do to membranes may not be simple and is a subject of ongoing investigation and controversy [[Herold 2017], [Weinrich & Worcester 2018], [Pavel 2020]]. At clinically relevant concentrations, anesthetics don't actually seem to change bulk membrane properties much [[Herold 2017]], though one recent report suggests they may indeed change the behavior of lipid rafts [[Pavel 2020]]. 

Admittedly, in opposition, there exists a large body of evidence arguing that anesthetics may actually directly interact with GABA receptors and other ion channels. There is a size limit on anesthetic alcohols, which is hypothesized to reflect the maximum capacity of some binding pocket [[Davies 2003]]. On one hand, the idea of a binding pocket may seem inconsistent with the bizarre SAR of anesthetics, although on the other hand, their effective doses are fairly high (example: a blood alcohol content of 0.1% means 1 g/L ethanol, divided by MW 46.1 g/mol, equals 22 mM), so they needn't be tight binders. One of the strongest arguments for direct interactions with receptors is that some specific mutations in GABA receptors have been shown to confer resistance to some anesthetics [[Mihic 1997]]. But it's not clear to me that this proves that the anesthetics directly bind the receptor &mdash; couldn't that mutation also serve to abolish the receptor's response to some kind of altered membrane condition? Moreover, some mutations have dramatic effects on the sensitivity to one anesthetic and little effect on the sensitivity to other anesthetics [[Jurd 2003]], which makes it appear that direct GABA receptor binding may not provide a satisfying, unifying explanation for all anesthetics.

Overall, my read of the literature &mdash; admittedly as quite an outsider &mdash; seemed to suggest a lot of residual controversy, and a possible role for a non-protein-binding MoA for anesthetics.

### reflections

I suspect there are many other examples out there, and I would love if readers of this blog point me to those examples. I considered including examples such as antibiotics that target the cell wall, or chemotherapies that target DNA by intercalation or alkylation. But these _do_ bind a biological macromolecule, even if they're not specific to one gene or protein symbol. I also considered several examples that I suspect might have non-target-binding MoAs, but where I ultimately felt like not enough is yet known: dimethyl fumarate, guaifenesin, and lithium. To be sure, there are theories of mechanistic targets, for instance, lithium may act through GSK3&beta;, dimethyl fumarate might acts through Nrf2 [[Mills 2018]], but that doesn't necessarily mean direct binding, and sometimes not all the evidence agrees [[Schulze-Topphoff 2016]].

The examples I found above are generally either very small or very simple (e.g. repetitive polymers). Sometimes the dose requried is enormous. Their structure-activity relationships might provide some hint as to their unique MoA, for instance, general biophysical or biochemical properties &mdash; things like pKa, cLogP &mdash; may be more important for activity than any particular structural motif like you would see with a protein-binding MoA. But beyond that, I don't see any recipe as to how to identify an MoA of this nature. Clearly, many of the cutting-edge techniques for identifying target proteins, like seeing if the target is pulled down by a conjugated analog [[Ong 2009]], gains thermal stability upon binding [[Reinhard 2015]], or is mutated when you select for resistance [[Kato & Comer 2016]] won't be useful in these cases.

If nothing else, the above examples illustrate that there are a variety of MoAs not mediated by binding a specific biomolecular target. This is one possibility that should be considered when one is hunting for the mechanism of action of drug or probe. 

[Yayon 1984]: https://pubmed.ncbi.nlm.nih.gov/6391917/ "Yayon A, Cabantchik ZI, Ginsburg H. Identification of the acidic compartment of Plasmodium falciparum-infected human erythrocytes as the target of the antimalarial drug chloroquine. EMBO J. 1984 Nov;3(11):2695-700. doi: 10.1002/j.1460-2075.1984.tb02195.x. PMID: 6391917; PMCID: PMC557751."

[Yayon 1985]: https://pubmed.ncbi.nlm.nih.gov/3887411/ "Yayon A, Cabantchik ZI, Ginsburg H. Susceptibility of human malaria parasites to chloroquine is pH dependent. Proc Natl Acad Sci U S A. 1985 May;82(9):2784-8. doi: 10.1073/pnas.82.9.2784. PMID: 3887411; PMCID: PMC397650."

[Watanabe 1994]: https://pubmed.ncbi.nlm.nih.gov/8138971/ "Watanabe T, Yuki S, Egawa M, Nishi H. Protective effects of MCI-186 on cerebral ischemia: possible involvement of free radical scavenging and antioxidant actions. J Pharmacol Exp Ther. 1994 Mar;268(3):1597-604. PMID: 8138971."

[Hadjipavlou-Litina 1994]: https://pubs.acs.org/doi/pdf/10.1021/cr00030a002? "Hadjipavlou-Litina, D., Garg, R., & Hansch, C. (2004). Comparative Quantitative Structure− Activity Relationship Studies (QSAR) on Non-Benzodiazepine Compounds Binding to Benzodiazepine Receptor (BzR). Chemical reviews, 104(9), 3751-3794."

[Mihic 1997]: https://pubmed.ncbi.nlm.nih.gov/9311780/ "Mihic SJ, Ye Q, Wick MJ, Koltchine VV, Krasowski MD, Finn SE, Mascia MP, Valenzuela CF, Hanson KK, Greenblatt EP, Harris RA, Harrison NL. Sites of alcohol and volatile anaesthetic action on GABA(A) and glycine receptors. Nature. 1997 Sep 25;389(6649):385-9. doi: 10.1038/38738. PMID: 9311780."

[Fidock 2000]: https://pubmed.ncbi.nlm.nih.gov/11090624/ "Fidock DA, Nomura T, Talley AK, Cooper RA, Dzekunov SM, Ferdig MT, Ursos LM, Sidhu AB, Naudé B, Deitsch KW, Su XZ, Wootton JC, Roepe PD, Wellems TE. Mutations in the P. falciparum digestive vacuole transmembrane protein PfCRT and evidence for their role in chloroquine resistance. Mol Cell. 2000 Oct;6(4):861-71. doi: 10.1016/s1097-2765(05)00077-8. PMID: 11090624; PMCID: PMC2944663."

[Jurd 2003]: https://pubmed.ncbi.nlm.nih.gov/12475885/ "Jurd R, Arras M, Lambert S, Drexler B, Siegwart R, Crestani F, Zaugg M, Vogt KE, Ledermann B, Antkowiak B, Rudolph U. General anesthetic actions in vivo strongly attenuated by a point mutation in the GABA(A) receptor beta3 subunit. FASEB J. 2003 Feb;17(2):250-2. doi: 10.1096/fj.02-0611fje. Epub 2002 Dec 3. PMID: 12475885."

[Davies 2003]: https://pubmed.ncbi.nlm.nih.gov/12921221/ "Davies M. The role of GABAA receptors in mediating the effects of alcohol in the central nervous system. J Psychiatry Neurosci. 2003 Jul;28(4):263-74. PMID: 12921221; PMCID: PMC165791."

[Hemmings 2005]: https://pubmed.ncbi.nlm.nih.gov/16126282/ "Hemmings HC Jr, Akabas MH, Goldstein PA, Trudell JR, Orser BA, Harrison NL. Emerging molecular mechanisms of general anesthetic action. Trends Pharmacol Sci. 2005 Oct;26(10):503-10. doi: 10.1016/j.tips.2005.08.006. PMID: 16126282."

[Ong 2009]: https://pubmed.ncbi.nlm.nih.gov/19255428/ "Ong SE, Schenone M, Margolin AA, Li X, Do K, Doud MK, Mani DR, Kuai L, Wang X, Wood JL, Tolliday NJ, Koehler AN, Marcaurelle LA, Golub TR, Gould RJ, Schreiber SL, Carr SA. Identifying the proteins to which small-molecule probes and drugs bind in cells. Proc Natl Acad Sci U S A. 2009 Mar 24;106(12):4617-22. doi: 10.1073/pnas.0900191106. Epub 2009 Mar 2. PMID: 19255428; PMCID: PMC2649954."

[Garcia 2010]: https://pubmed.ncbi.nlm.nih.gov/20808541/ "Garcia PS, Kolesky SE, Jenkins A. General anesthetic actions on GABA(A) receptors. Curr Neuropharmacol. 2010 Mar;8(1):2-9. doi: 10.2174/157015910790909502. PMID: 20808541; PMCID: PMC2866459."

[Grundlingh 2011]: https://pubmed.ncbi.nlm.nih.gov/21739343/ "Grundlingh J, Dargan PI, El-Zanfaly M, Wood DM. 2,4-dinitrophenol (DNP): a weight loss agent with significant acute toxicity and risk of death. J Med Toxicol. 2011 Sep;7(3):205-12. doi: 10.1007/s13181-011-0162-6. PMID: 21739343; PMCID: PMC3550200."

[Latha 2013]: https://pubmed.ncbi.nlm.nih.gov/23320122/ "Latha MS, Martis J, Shobha V, Sham Shinde R, Bangera S, Krishnankutty B, Bellary S, Varughese S, Rao P, Naveen Kumar BR. Sunscreening agents: a review. J Clin Aesthet Dermatol. 2013 Jan;6(1):16-26. PMID: 23320122; PMCID: PMC3543289."

[Reinhard 2015]: https://pubmed.ncbi.nlm.nih.gov/26524241/ "Reinhard FB, Eberhard D, Werner T, Franken H, Childs D, Doce C, Savitski MF, Huber W, Bantscheff M, Savitski MM, Drewes G. Thermal proteome profiling monitors ligand interactions with cellular membrane proteins. Nat Methods. 2015 Dec;12(12):1129-31. doi: 10.1038/nmeth.3652. Epub 2015 Nov 2. PMID: 26524241."

[Kato & Comer 2016]: https://pubmed.ncbi.nlm.nih.gov/27602946/ "Kato N, Comer E, Sakata-Kato T, Sharma A, Sharma M, Maetani M, Bastien J, Brancucci NM, Bittker JA, Corey V, Clarke D, Derbyshire ER, Dornan GL, Duffy S, Eckley S, Itoe MA, Koolen KM, Lewis TA, Lui PS, Lukens AK, Lund E, March S, Meibalan E, Meier BC, McPhail JA, Mitasev B, Moss EL, Sayes M, Van Gessel Y, Wawer MJ, Yoshinaga T, Zeeman AM, Avery VM, Bhatia SN, Burke JE, Catteruccia F, Clardy JC, Clemons PA, Dechering KJ, Duvall JR, Foley MA, Gusovsky F, Kocken CH, Marti M, Morningstar ML, Munoz B, Neafsey DE, Sharma A, Winzeler EA, Wirth DF, Scherer CA, Schreiber SL. Diversity-oriented synthesis yields novel multistage antimalarial inhibitors. Nature. 2016 Oct 20;538(7625):344-349. doi: 10.1038/nature19804. Epub 2016 Sep 7. PMID: 27602946; PMCID: PMC5515376."

[Schulze-Topphoff 2016]: https://pubmed.ncbi.nlm.nih.gov/27078105/ "Schulze-Topphoff U, Varrin-Doyer M, Pekarek K, Spencer CM, Shetty A, Sagan SA, Cree BA, Sobel RA, Wipke BT, Steinman L, Scannevin RH, Zamvil SS. Dimethyl fumarate treatment induces adaptive and innate immune modulation independent of Nrf2. Proc Natl Acad Sci U S A. 2016 Apr 26;113(17):4777-82. doi: 10.1073/pnas.1603907113. Epub 2016 Apr 13. PMID: 27078105; PMCID: PMC4855599."

[Writing Group 2017]: https://pubmed.ncbi.nlm.nih.gov/28522181/ "Writing Group; Edaravone (MCI-186) ALS 19 Study Group. Safety and efficacy of edaravone in well defined patients with amyotrophic lateral sclerosis: a randomised, double-blind, placebo-controlled trial. Lancet Neurol. 2017 Jul;16(7):505-512. doi: 10.1016/S1474-4422(17)30115-1. Epub 2017 May 15. PMID: 28522181."

[Herold 2017]: https://pubmed.ncbi.nlm.nih.gov/28265069/ "Herold KF, Sanford RL, Lee W, Andersen OS, Hemmings HC Jr. Clinical concentrations of chemically diverse general anesthetics minimally affect lipid bilayer properties. Proc Natl Acad Sci U S A. 2017 Mar 21;114(12):3109-3114. doi: 10.1073/pnas.1611717114. Epub 2017 Mar 6. PMID: 28265069; PMCID: PMC5373365."

[Weinrich & Worcester 2018]: https://pubmed.ncbi.nlm.nih.gov/30605131/ "Weinrich M, Worcester DL. The actions of volatile anesthetics: a new perspective. Acta Crystallogr D Struct Biol. 2018 Dec 1;74(Pt 12):1169-1177. doi: 10.1107/S2059798318004771. Epub 2018 Nov 30. PMID: 30605131; PMCID: PMC6317591."

[Mills 2018]: https://pubmed.ncbi.nlm.nih.gov/29410647/ "Mills EA, Ogrodnik MA, Plave A, Mao-Draayer Y. Emerging Understanding of the Mechanism of Action for Dimethyl Fumarate in the Treatment of Multiple Sclerosis. Front Neurol. 2018 Jan 23;9:5. doi: 10.3389/fneur.2018.00005. PMID: 29410647; PMCID: PMC5787128."

[Geoffrey 2019]: https://pubmed.ncbi.nlm.nih.gov/31997908/ "Geoffrey K, Mwangi AN, Maru SM. Sunscreen products: Rationale for use, formulation development and regulatory considerations. Saudi Pharm J. 2019 Nov;27(7):1009-1018. doi: 10.1016/j.jsps.2019.08.003. Epub 2019 Aug 16. PMID: 31997908; PMCID: PMC6978633."

[Pavel 2020]: https://pubmed.ncbi.nlm.nih.gov/32467161/ "Pavel MA, Petersen EN, Wang H, Lerner RA, Hansen SB. Studies on the mechanism of general anesthesia. Proc Natl Acad Sci U S A. 2020 Jun 16;117(24):13757-13766. doi: 10.1073/pnas.2004259117. Epub 2020 May 28. PMID: 32467161; PMCID: PMC7306821."

[Voepel-Lewis 1998]: https://pubmed.ncbi.nlm.nih.gov/9524891/ "Voepel-Lewis TD, Malviya S, Burke C, D'Agostino R, Hadden SM, Siewert M, Tait AR. Evaluation of simethicone for the treatment of postoperative abdominal discomfort in infants. J Clin Anesth. 1998 Mar;10(2):91-4. doi: 10.1016/s0952-8180(97)00249-3. PMID: 9524891."

[Vincent 2022]: https://pubmed.ncbi.nlm.nih.gov/35637317/ "Vincent F, Nueda A, Lee J, Schenone M, Prunotto M, Mercola M. Phenotypic drug discovery: recent successes, lessons learned and new directions. Nat Rev Drug Discov. 2022 May 30. doi: 10.1038/s41573-022-00472-w. Epub ahead of print. Erratum in: Nat Rev Drug Discov. 2022 Jul;21(7):541. PMID: 35637317."



