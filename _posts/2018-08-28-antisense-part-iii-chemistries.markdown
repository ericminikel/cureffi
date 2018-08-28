---
layout: post
title:  "Antisense part III: chemistries"
date:   2018-08-28 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2018/08/moe-thumbnail.png
summary200: "ASOs get many of their drug-like properties from various chemical modifications to the phosphate backbone or 2' positions of the sugar ring."
---

*This post is third in a series of posts on the science of antisense oligonucleotides as therapeutics.*

I began this series with an [introduction](/2018/07/10/antisense-part-i-the-basics/) to antisense oligonucleotides (ASOs) and their potential application to prion disease. My last post described the different [mechanisms of action](/2018/07/25/antisense-part-ii-mechanisms-of-action/) (MoA) that ASOs can have. The MoA of an ASO depends on its sequence &mdash; what position in the RNA it targets &mdash; but also on its chemistry. This post will cover in greater detail the different chemical modifications employed in ASOs, and what ends they can achieve.

First things first: for the non-chemists like me, it is important to review the structure of nucleic acid and how the positions are numbered:

![](/media/2018/08/atom-numbering.png)

As shown above, the positions are as follows:

+ **1'** is where the base (A, C, G, or T) is attached.
+ **2'** is H in *deoxy*ribonucleic acid, or OH in ribonucleic acid. The above structure contains many implicit hydrogens, including one at this very position, but I have drawn this particular hydrogen to show that it is what varies between DNA and RNA.
+ **3'** is where the backbone connects to the next base.
+ **4'** is where there is a branch off of the sugar ring to the 5' position.
+ **5'** is where the backbone connects to the previous base.

From this, you can see that the 1', 3', and 5' positions in this molecule are pretty much spoken-for. Any chemical modifications are either going to have to be at the 2' or 4' positions, to the phosphodiester bonds in between the sugars, or are going to involve different sugar rings altogether.

Below is a non-exhaustive comparison of the chemistries that seem to crop up most often in drugs and in the literature, with the differences from natural nucleic acid highlighted in blue:

![](/media/2018/08/aso-chemistries.png)

At broad strokes, most of these modifications improve either pharmacokinetics (improved nuclease resistance for a longer half-life), pharmacodynamics (improved affinity for the target RNA), or both, and some can also confer more specific special properties. But with the exception of PS, most also prevent cleavage by RNAse H, which is the desired MoA for many ASOs. Accordingly, many RNAse H ASOs are designed as **chimeras**, where the different bases are a mix of different chemistries, or as **gapmers**, where the "wings" have modifications that the central bases lack.

The sections below will explain the properties of each specific modification.

### unmodified RNA and DNA

![](/media/2018/08/rna-dna.png)

Unmodified, unformulated nucleic acids are seldom if ever used as drugs. Of the antisense and [siRNA](/2018/08/13/fda-approval-of-the-first-rnai-drug/) drug candidates in clinical trials as of last year, all were, if not chemically modified, at least formulated in some sort of lipid nanoparticle [[Bennett 2017]]. It is useful, however, to talk about the limitations of naked unmodified RNA and DNA in order to inform why all the chemical modifications below were invented.

It is difficult to find empirical data on unmodified DNA and RNA because no one thinks they have potential as drugs. But one review summarizes at least three main pharmacological problems with natural nucleic acids, any one of which might be sufficient to preclude their use as drugs [[Bennett & Swayze 2010]].

First, DNA and RNA are very quickly broken down by endogenous nucleases in the body. These include both exonucleases (which remove nucleotides from either end of a chain) and endonucleases (which cut in the middle of a chain).

Second, DNA and RNA have only minimal [plasma protein binding](https://en.wikipedia.org/wiki/Plasma_protein_binding). Most drugs bind to proteins in plasma, such as albumin, to some degree, and this is a huge determinant of the pharmacokinetics of the drug. In equilibrium, some drug is protein-bound and some is not. The protein-bound fraction of the drug circulates stably in the bloodstream, acting as a reservoir for drug to be released from the protein over time. It is the non-protein-bound fraction of the drug that's active (it can be taken up into cells and engage its target), but it is also the non-protein-bound fraction that can be removed by the kidneys. Unmodified DNA and RNA apparently are excreted quickly in urine due to too little plasma protein binding &mdash; I couldn't find any primary data for this, but a number of reviews make this claim &mdash; see for instance [[Bennett & Swayze 2010], [Geary 2015]].

Third, while unmodified oligonucleotides might bind to an *unstructured* target RNA with acceptable affinity, the reality is that most RNA molecules have internal structures &mdash; they fold back on themselves in stems and loops &mdash; and a drug can only bind if it is so affine as to be able to outcompete that internal structure. I didn't find any data on this phenomenon using natural DNA or RNA, but for one example that illustrates the problem using phosphorothiate oligos, see Table 1 of [[Monia 1993]]. In those experiments, a particular 17-base oligo could bind an unstructured target with K<sub>d</sub> = 3 &times; 10<sup>-13</sup> &mdash; that's sub-picomolar affinity &mdash; but if the target was structured, the K<sub>d</sub> rose above 1 &times; 10<sup>-5</sup>, or in other words, binding was not observed even at 10 &mu;M. Therefore, one of the goals of chemical modification of oligos must be to improve their affinity for their target sequences to the point where they can compete with endogenous RNA structures.

### phosphorothioate (PS)

![](/media/2018/08/ps.png)

The PS modification is old and rather widely used, including in almost all of Ionis Pharmaceuticals's ASOs in the clinic today. The first generation of ASOs to reach the clinic were simple, straight PS oligos &mdash; all linkages were PS and there were no other modifications. See for instance [fomivirsen](https://en.wikipedia.org/wiki/Fomivirsen), which in 1998 became the first approved ASO drug, for cytomegalovirus retinitis (a complication of AIDS) [[Perry & Balfour 1999]]. More recent ASO drugs and drug candidates incorporate PS along with other modifications described below [[Bennett 2017]].

Compared to naked DNA, PS improves nuclease resistance &mdash; early *in vitro* experiments showed that DNAse digests of PS oligos were 2 to 45 times slower than their normal DNA (PO) counterparts [[Stein 1988]]. Yet fortuitously, as noted above, PS retains RNAse H-cleavability [[Furdon 1989]]. On the downside, apparently PS reduces the melting temperature of oligonucleotide duplexes [[Stein 1988]], or in other words, it decreases the affinity for the target RNA. This can be overcome by the use of 2' modifications discussed further below, most of which improve affinity. PS also greatly increases the ASO's protein binding [[Brown 1994]], which turns out to be important for two reasons. First, at least for peripherally delivered ASOs, as for any other systemic drug, [plasma protein binding](https://en.wikipedia.org/wiki/Plasma_protein_binding) is important for allowing the drug to stay in circulation long enough to get taken up into tissue [[Geary 2015]]. Second, ASOs bind tens of different cellular proteins and many of these interactions are important for the uptake of ASOs into the cell and/or for their distribution to the right compartment within the cell [[Liang 2015], [Bailey 2017], [Crooke 2017]].

### phosphorodiamidate morpholino (PMO)

![](/media/2018/08/pmo.png)

These ASOs are known simply as morpholinos, after the six-membered morpholine ring that substitutes for the usual five-membered ribose in nucleic acid, or as phosphorodiamidate morpholino oligonucleotides (PMO), with phosphorodiamidate referring to the replacement of two oxygens with nitrogen on the phosphate group. PMOs are fairly widely used, with several drugs or drug candidates in the clinic today, all of which are splice modulators [[Bennett 2017]]. I did find also one reference on a PMO against the oncogene *MYC*, a steric blocker of translation, that made it into a Phase I human trial [[Iversen 2003], [Devi 2005]].

PMOs have improved nuclease resistance compared to normal DNA, however, they are also resistant to RNAse H [[Hudziak 1996], [Summerton 1999]], effectively precluding their use for knockdown at the RNA level &mdash; instead, PMOs are used as splice modulators or translation inhibitors. Whereas the 2' modifications listed below that confer RNAse H resistance can still be used in RNAse H oligos formulated as gapmers with cleavable bases in the middle, in a quick search, I did not find any papers or patents using a gapmer approach with PMOs. According to one review I read [[Geary 2015]], the fact that the PMO backbone is neutral (as opposed to natural nucleic acid and all other modifications discussed here, which are anionic) causes them to have lower plasma protein binding and thus quicker elimination from the body, which can make dosing more difficult. 

In terms of mechanism of action, all the PMOs that have made it to human clinical trials [[Bennett 2017]] appear to be splice modulators, delivered intravenously for muscular dystrophy. As noted in the [last post](/2018/07/25/antisense-part-ii-mechanisms-of-action/), PMOs also enjoy widespread academic research use in zebrafish as translation inhibitors, by a steric block mechanism, but this MoA has not been used much or maybe at all in rodents or humans.

The emerging clinical use in muscle disease that does not mean that intravenous PMOs are readily taken up into muscle, at least not without huge doses. The [FDA memo on eteplirsen](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488_summary%20review_Redacted.pdf), a PMO drug for *DMD* exon 51 skipping in Duchenne muscular dystrophy, noted (see p. 87 of the PDF) that the drug did not achieve appreciable exon skipping activity in monkeys until an IV dose of 320 mg/kg/week &mdash; that would mean a whopping 22 grams of drug per week in a 70 kg human. In its [letter granting Accelerated Approval](https://www.accessdata.fda.gov/drugsatfda_docs/nda/2016/206488Orig1s000Approv.pdf) to eteplirsen, FDA stipulated a confirmatory study in which patients would be randomized to either the approved dose of 30 mg/kg/week or to a much higher dose of 30 mg/kg/day (210 mg/kg/week), closer to that pharmacodynamically effective dose in monkeys.

### phosphoramidate and thiophosphoramidate

![](/media/2018/08/phosphoramidate-thiophosphoramidate.png)

Much less work has been done on these two chemistries compared to PS and PMO. In a few searches I could not find any evidence that any ASOs with these chemistries are in human trials, or even that anyone is still working on them today, so I won't spend too much time on them. Phosphoramidate oligos were reported to have good nuclease resistance and remarkably high duplex melting temperatures, suggesting excellent affinity for the target RNA in an antisense application [[Gryaznov 1995], [Gryaznov 1996]]. However, they also had low protein binding and were susceptible to acid degradation, so thiophosphoramidate oligos were explored as an alternative [[US6608036B1](https://patents.google.com/patent/US6608036B1/en), [Pongracz 1999]].

### 2'-O-methyl

![](/media/2018/08/2-o-methyl.png)

2'-O-methyl improves affinity for the target RNA, with perhaps a +0.6 to +1.2&deg;C melting temperature shift per modified base [[Monia 1993]], and also improves nuclease resistance. It is usually used in combination with a PS backbone, and has good pharmacokinetics [[Agrawal 1995], [Zhang 1995]].

This modification's nuclease resistance comes at the expense of also being RNAse H-resistant. Thus, all bases can be 2'-O-methyl modified ("uniform" modification) if the desired mechanism is, say, splice modulation. Alternatively, the 2'-O-methyl modification can be used in a gapmer design to permit RNAse H cleavage. Indeed, what we now call a "gapmer" &mdash; an ASO with a particular chemical modification on the ends but not in the middle &mdash; was first demonstrated for 2'-O-methyl oligos [[Inoue 1987], [Shibahara 1987]] and has been previously called a "chimeric splint" or an "RNAse H window".

2'-O-methyl seems to have been one of the first 2' modifications to be discovered and explored, so there are a lot of papers on it from the 1990s, but it is not too widely used today, perhaps because other 2' modifications (see below) have proven superior in one way or another. 

The only drug candidate I had heard of with the 2'-O-methyl modification was drisapersen, BioMarin's candidate for Duchenne muscular dystrophy. Drisapersen had a PS backbone and every base was 2'-O-methyl modified; like eteplirsen (mentioned above) its goal was to cause *DMD* exon 51 skipping. Drisapersen was reported to have at least some promise based on early trials [[Goemans 2011], [Voit 2014]] but ultimately failed to win FDA approval. BioMarin later [ended development](https://www.xconomy.com/san-francisco/2016/05/31/two-years-after-paying-680m-biomarin-shelves-duchenne-drug/) of drisapersen, along with follow-on ASOs in the pipeline for *DMD* exons 44, 45, and 53. I only found one example of a 2'-O-methyl gapmer with an RNAse H mechanism, an ASO against *PRKAR1A* that made it to a Phase I trial for cancer [[Goel 2006]].

### 2'-O-methoxyethyl (MOE)

![](/media/2018/08/moe.png)

2'MOE chemistry has a number of advantages over the natural -H or -OH at this position in DNA or RNA. First, 2'MOE increases affinity for the target RNA, or the melting temperature of the duplex [[Martin 1995], [Altmann 1996], [Teplova 1999]]. Second, it confers almost total resistance to nucleases [[Geary 2001]]. In fact the nuclease resistance of 2'MOE is such that not all of the backbone phosphates need to be PS. Some of the 2'MOE nucleotides can be allowed to have normal PO linkages, without inviting nuclease degradation, and this mix of PO and PS linkages can be used to fine-tune the pharmacokinetics of the ASO, in some cases allowing more rapid distribution into tissue while keeping the terminal elimination rate slow [[Geary 2001]]. Finally, 2'MOE reduces the plasma protein binding of the ASO, which seems to shift its metabolism and excretion pathway away from the liver and instead towards the kidney for excretion in urine [[Geary 2001]].

Like 2'-O-methyl, 2'MOE is RNAse H-resistant, meaning it can be used in a uniform format for splice modulators, or in a gapmer design for RNAse H oligos. MOE is basically the lead chemistry employed in almost all of Ionis Pharmaceuticals' ASOs currently in the clinic, both for CNS targets and for liver targets, and these examples include both uniform and gapmer designs.

Nusinersen, the approved splice-modulating ASO drug for spinal muscular atrophy, is uniform 2'MOE [[Rigo 2014]]. Mipomersen, the approved RNAse H oligo against *APOB* for familial hypercholesterolemia caused by homozygous *LDLR* deficiency, is 2'MOE gapmer. Specifically, it is a "5-10-5" oligo, meaning it has 5 MOE bases, 10 bases without a 2' modification, and then another 5 MOE bases (all of the bases have a PS backbone) [[Crooke & Geary 2013]]. HTTRx, the ASO against *HTT* currently in trials for Huntington's disease [[Kordasiewicz 2012]], and volanesorsen, the ASO against *APOC3* currently in regulatory review for hypertriglyceridemia, are likewise 5-10-5 MOE gapmers.

### 2'-fluoro

![](/media/2018/08/2-fluoro.png)

Of all the 2' modifications, fluorine confers the strongest affinity for target RNA and has the strongest upward effect on the duplex melting temperature [[Monia 1993], [Freier & Altmann 1997]], and thus, 2'-fluoro ASOs can be exceptionally potent. 2'-fluoro is also the most hydrophobic modification and the most intensely protein-binding [[Liang 2016]]. This modification also has the unique property, as explained in [my MoA post](/2018/07/25/antisense-part-ii-mechanisms-of-action/), that it has the ability to promote exon exclusion by recruiting the ILF2/3 complex [[Rigo 2012]]. Unfortunately it turns out that 2'-fluoro oligos are also exceptionally toxic to the liver [[Shen 2018]], which is probably why there are no ASOs with this modification in clinical trials right now [[Bennett 2017]]. 

### locked nucleic acid (LNA)

![](/media/2018/08/lna.png)

Understanding the LNA, ENA, and cEt modifications requires a bit of further background on the chemical nature of nucleic acid. The 5-membered sugar ring (ribose) is flexible and can shift dynamically back and forth between two possible conformations &mdash; one in which the 2' atom is up and the 3' is down (*S* or C<sub>2</sub>-endo), and the other in which the 3' atom is up and the 2' is down (*N* or C<sub>3</sub>-endo). This difference at the individual sugar ring level relates to the conformation of the nucleic acid chain as a whole, a topic introduced in [molecular biology 04](/2014/09/10/molecular-biology-04/). C<sub>2</sub>-endo is the conformation of each ring in B-form (the normal conformation of DNA in a double helix), whereas C<sub>3</sub>-endo is the conformation of each ring in A-form (the conformation found in a DNA-RNA duplex). These conformations have [very different geometries](https://en.wikipedia.org/wiki/Z-DNA#Comparison_geometries_of_some_DNA_forms). Because ASOs target RNA and form a duplex with it, the desired conformation for target engagement is A-form &mdash; for instance, the crystal structure of RNAse H shows it binding an A-form DNA/RNA duplex [[Nowotny 2007]]. ASOs, even with PS modifications and 2'MOE and so on, remain flexible and can adopt either the C<sub>2</sub>-endo or C<sub>3</sub>-endo conformation. This flexibility limits their affinity for the target RNA, because each sugar ring is only in the right conformation half the time.

![](/media/2018/08/conformations-and-lna.png)

*Conformational view of DNA sugar ring in the C<sub>2</sub>-endo and C<sub>3</sub>-endo conformation, compared with LNA.*

Locked nucleic acid (LNA) was the first successful effort to add a reinforcement on the underside of the sugar ring to force it to stay permanently in the C<sub>3</sub>-endo conformation [[Obika 1997], [Wengel 1999]]. The result is a profound affinity for the target RNA and thermal stability of the duplex, even stronger than the 2'-fluoro modification [[Wahlestedt 2000]]. For instance, a DNA-RNA duplex that melts at 59&deg;C has no melting observed even at 90&deg;C when the DNA is substituted for LNA [[Wahlestedt 2000]]. LNA is RNAse H-resistant but can be used in chimeric or gapmer ASOs. In keeping with the *in vitro* target affinity, some LNA ASOs were found to be much more potent *in vivo* than their 2'MOE analogs [[Swayze 2007]].

Unfortunately, LNA also turned out to have some liver toxicity issues [[Swayze 2007]]. The hepatotoxicity has been observed mostly in animal studies, but there is at least one clinical trial of an LNA that also reported liver function abnormalities [[Bianchini 2013]]. Evidently many but not all LNA oligos have this problem, and the molecular basis appears to lie in off-target degradation of some very long pre-mRNA transcripts [[Burel 2016]], an interesting story I'll explore in more detail in a future post.

There are at least a couple of chimeric LNA drug candidates still in the clinic today [[Bennett 2017]]. Some are for systemic administration, such as miravirsen, a miR-122 antagonist delivered by subcutaneous injection [[van der Ree 2016]]. Others may avoid the liver toxicity issue by targeting a very specific tissue: for instance, ISTH0036, an LNA gapmer targeting *TGFB2*, is injected directly into the vitreous humor of the eye, and recently had acceptable safety profile reported from a Phase I trial [[Pfeiffer 2017]].

### ethylene-bridged nucleic acid (ENA)

![](/media/2018/08/ena.png)

In light of the excellent target affinity and potency of LNA, chemists developed another, very similar, conformationally constrained nucleic acid analog called ethylene-bridged nucleic acid or ENA [[Morita 2003]]. It is just like LNA but with one additional carbon atom in the 2' to 4' linker. From my limited Google Scholar searching, ENA seems less extensively characterized *in vivo* than LNA at this point, but *in vitro*, its properties seem to be very similar to LNA [[Koizumi 2004]]. I found only one ENA ASO currently in clinical trials, Daiichi Sankyo's DS-5141b, a splice-modulating oligo against *DMD* exon 45 for Duchenne muscular dystrophy ([NCT02667483](https://clinicaltrials.gov/ct2/show/NCT02667483)). There are no publications on it yet, but a conference poster described its pharamcological properties in mice as "stunning", with significant exon skipping in heart muscle apparently observed even at doses as low as 3 mg/kg/week [[Takaishi 2017]]. If true, that's 100 times lower than the dose required for good exon skipping activity in muscle in primate studies of eteplirsen (see discussion under PMOs above).

### (*S*)-constrained ethyl (cEt)

![](/media/2018/08/cet.png)

cEt is pronounced as two syllables, "SEE-et". This is the most recent iteration on the concept of locking the 2' and 4' positions together to constrain the ribose ring into a C<sub>3</sub>-endo conformation [[Seth 2008], [Seth 2010], [Pallan 2012]]. Its target affinity is reported to be similar to that of LNA, while its degree of nuclease resistance is truly heroic, far outpacing both LNA and 2'MOE, which are themselves much better than normal DNA [[Seth 2010]]. Like LNA, it is RNAse H-resistant and so needs to be used in a gapmer design. The first paper on cEt made the claim that cEt oligos have a better tolerability profile than LNA, but no data were presented [[Seth 2008]]; detailed tox studies on one cEt gapmer clinical candidate reported that the tox profile was similar to 2'MOE ASOs [[Burel 2013]]. The more recent report attributing the mechanism of LNA hepatotoxicity to off-target RNA cleavage [[Burel 2016]] found that cEt oligos had similar properties as LNA, but that safe oligos could be identified through intensive preclinical screening.

A number of cEt gapmers or mixed MOE/cEt gapmers have had preclinical development reported &mdash; see for instance the one targeting *DMPK* for myotonic dystrophy [[Pandey 2015]]. And a few have made it to human clinical trials &mdash; see for instance a trial of a cEt gapmer targeting *STAT3* in cancer patients, reported to have good potency and tolerability [[Hong 2015]]. As far as I can tell, none have made it into the human CNS yet. A recent paper described two new ASO candidates for *SOD1* ALS [[McCampbell 2018]] as improvements over the original *SOD1* oligo [[Smith 2006], [Miller 2013]], but it looks like of the two new candidates, it was the MOE gapmer (ASO 1), not the mixed MOE/cEt gapmer (ASO 2), that has advanced to the clinic in [NCT02623699](https://clinicaltrials.gov/ct2/show/NCT02623699) [[McCampbell 2018]]. 

### comparison of chemical modifications

The below table summarizes the effects of each modification, compared to normal DNA. Definitions and considerations:

+ **Tm**: melting temperature, where higher is better and means stronger affinity (lower Kd).
+ **nuclease resistance**: half-life or time required for nucleolytic degradation, higher is better.
+ **protein binding**: higher means more ASO is expected to be protein-bound. higher is better, at least to a point.
+ **RNAse H**: does the modification support RNAse H cleavage at modified bases? (If not, gapmer designs are still viable.)

| modification | Tm | nuclease resistance | protein binding | RNAse H | comments |
| ---- | ---- | ---- | ---- | ---- | ---- |
| phosphorothioate (PS) | &darr; | &uarr; | &uarr; | &#x2714; | |
| phosphorodiamidate morpholino (PMO) |  | &uarr; | &darr; | &#x2718; | |
| phosphoramidate / thiophosphoramidate | &uarr; | &uarr; | &darr; | &#x2718; | susceptible to acid degradation |
| 2'-O-methyl | &uarr; | &uarr; | | &#x2718; | |
| 2'-O-methyoxyethyl (MOE) | &uarr; | &uarr; | &darr; | &#x2718; | allows mixed PO/PS backbone |
| 2'-fluoro | &uarr;&uarr; | &uarr; | &uarr; | &#x2718; | can promote exon exclusion |
| locked nucleic acid (LNA) | &uarr;&uarr;&uarr; | &uarr;&uarr; | &darr; | &#x2718; | |
| ethylene-bridged nucleic acid (ENA) | &uarr;&uarr;&uarr; | &uarr;&uarr; | &darr; | &#x2718; | |
| (*S*)-constrained ethyl (cEt) | &uarr;&uarr;&uarr; | &uarr;&uarr; |  | &#x2718; | |

### stereochemistry

In the chemical structures at top, I drew all the bonds in the phosphate backbone with plain lines. But this ignores a chemical property that emerges when backbone substitutions are made: chirality. While a normal DNA backbone is non-chiral, any base with phosphorothioate (PS) or phosphorodiamidate (PMO) substitutions has a phosphorous atom bonded to four different groups, and that means that atom is a chiral center. The two different enantiomers of PS DNA, for example, are shown below:

![](/media/2018/08/phosphorothioate-rp-sp.png)

Most ASOs in development or in use as drugs today are stereorandom &mdash; they are synthesized with no control over stereochemistry, and so the drug exists as a collection of 2<sup>n-1</sup> diastereomers, where n is the number of bases. Methods were developed long ago for synthesizing stereopure PS oligonucleotides, but only for all-Rp or all-Sp configurations [[LaPlanche 1986]]. It wasn't easy to study any specific combinations or sequences of *R* and *S* linkages because it wasn't easy to chemically synthesize them. In the past decade, and particularly the past few years, there has been an explosion of chemical synthesis methods for controlling chirality at each base of an ASO [[Oka 2008], [Nukaga 2016], [US20150211006A1](https://patents.google.com/patent/US20150211006A1/), [EP3331891A2](https://patents.google.com/patent/EP3331891A2), [Knouse & deGruyter 2018]]. Therefore, in addition to a body of literature that has looked at differences between all-Rp and all-Sp oligos [[Stec 1997], [Li 2017]], there have now been a couple of studies asking whether any specific stereoisomers have improved properties compared to stereorandom ones [[Wan 2014], [Iwamoto 2017]].

Overall from the literature, it is clear that Rp and Sp linkages differ in a few key properties, but there is not yet any agreement on whether it is possible to design stereoisomers that are clearly superior to stereorandom ASOs. 

In terms of different properties, compared to stereorandom oligos, each Rp linkage slightly increases melting temperature (meaning they improve affinity) while Sp linkages slightly decrease it [[Koziolkiewicz 1995], [Wan 2014], [Li 2017], [Iwamoto 2017]]. On the flip side, Rp linkages appear to be degraded more quickly either *in vivo* or in serum or liver homogenate, whereas Sp are more stable [[Wan 2014], [Iwamoto 2017]]. As for promoting RNAse H activity, it seems that both pure Rp and pure Sp oligos may be slightly poorer human RNAse H1 substrates than stereorandom ASOs [[Wan 2014], [Iwamoto 2017]]. So far, it's clear that there are tradeoffs: neither Rp nor Sp has all the properties you want in a drug.

If a good ASO will need a mix of some Rp and some Sp linkages, is there a particular sequence or combination that is optimal? Here, the findings have differed and there is no consensus yet. One study synthesized the same ASO nucleotide sequence with 29 different randomly selected sequences of Rp and Sp linkages, and did not find any that had better potency than the stereorandom equivalent in cell culture [[Wan 2014]]. Another study reported that a specific repeated stereochemical motif &mdash; *SSR* &mdash; improved RNAse H activity in a cell-free assay, but they found no difference in potency in cell culture [[Iwamoto 2017]]. *In vivo* experiments for a couple of ASO sequences, however, did show some evidence for longer-lasting effects with an *SSR* backbone compared to a stereorandom one [[Iwamoto 2017]]. This is a new area of research and it remains to be shown whether stereopure synthesis has any benefits that will generalize across ASO sequences.

### quick final summary

Unmodified DNA and RNA have poor pharmacokinetics: they have insufficient affinity for their targets, are quickly broken down by nucleases, and have low plasma protein binding leading to swift excretion. A variety of chemical modifications have been invented to improve these properties. Phosphorothioate (PS) or phosphorodiamidate morpholino (PMO) backbones are often used. Modifications at the 2' position of the sugar can improve affinity, protein binding, and nuclease resistance. Modifications spanning the 2' and 4' positions to conformationally constrain the sugar can give dramatic improvements in affinity. All modifications except PS prohibit RNAse H cleavage, but this can be rescued by a "gapmer" design where the modification is found only in the "wings" of the oligo, and the central bases are just PS.

[LaPlanche 1986]: https://www.ncbi.nlm.nih.gov/pubmed/3786144/ "LaPlanche LA, James TL, Powell C, Wilson WD, Uznanski B, Stec WJ, Summers MF, Zon G. Phosphorothioate-modified oligodeoxyribonucleotides. III. NMR and UV spectroscopic studies of the Rp-Rp, Sp-Sp, and Rp-Sp duplexes, [d(GGSAATTCC)]2, derived from diastereomeric O-ethyl phosphorothioates. Nucleic Acids Res. 1986 Nov 25;14(22):9081-93. PubMed PMID: 3786144; PubMed Central PMCID: PMC311930."

[Shibahara 1987]: https://www.ncbi.nlm.nih.gov/pubmed/2438655/ "Shibahara S, Mukai S, Nishihara T, Inoue H, Ohtsuka E, Morisawa H. Site-directed cleavage of RNA. Nucleic Acids Res. 1987 Jun 11;15(11):4403-15. PubMed PMID: 2438655; PubMed Central PMCID: PMC340870."

[Inoue 1987]: https://www.ncbi.nlm.nih.gov/pubmed/2438160 "Inoue H, Hayase Y, Iwai S, Ohtsuka E. Sequence-dependent hydrolysis of RNA using modified oligonucleotide splints and RNase H. FEBS Lett. 1987 May 11;215(2):327-30. PubMed PMID: 2438160."

[Stein 1988]: https://www.ncbi.nlm.nih.gov/pubmed/2836790/ "Stein CA, Subasinghe C, Shinozuka K, Cohen JS. Physicochemical properties of phosphorothioate oligodeoxynucleotides. Nucleic Acids Res. 1988 Apr 25;16(8):3209-21. PubMed PMID: 2836790; PubMed Central PMCID: PMC336489."

[Furdon 1989]: https://www.ncbi.nlm.nih.gov/pubmed/2555787 "Furdon PJ, Dominski Z, Kole R. RNase H cleavage of RNA hybridized to oligonucleotides containing methylphosphonate, phosphorothioate and phosphodiester bonds. Nucleic Acids Res. 1989 Nov 25;17(22):9193-204. PubMed PMID: 2555787; PubMed Central PMCID: PMC335124."

[Monia 1993]: https://www.ncbi.nlm.nih.gov/pubmed/8390996 "Monia BP, Lesnik EA, Gonzalez C, Lima WF, McGee D, Guinosso CJ, Kawasaki AM, Cook PD, Freier SM. Evaluation of 2'-modified oligonucleotides containing 2'-deoxy gaps as antisense inhibitors of gene expression. J Biol Chem. 1993 Jul 5;268(19):14514-22. PubMed PMID: 8390996."

[Brown 1994]: https://www.ncbi.nlm.nih.gov/pubmed/7929417/ "Brown DA, Kang SH, Gryaznov SM, DeDionisio L, Heidenreich O, Sullivan S, Xu X, Nerenberg MI. Effect of phosphorothioate modification of oligodeoxynucleotides on specific protein binding. J Biol Chem. 1994 Oct 28;269(43):26801-5. PubMed PMID:  7929417."

[Koziolkiewicz 1995]: https://www.ncbi.nlm.nih.gov/pubmed/8559657/ "Koziolkiewicz M, Krakowiak A, Kwinkowski M, Boczkowska M, Stec WJ. Stereodifferentiation--the effect of P chirality of oligo(nucleoside phosphorothioates) on the activity of bacterial RNase H. Nucleic Acids Res. 1995  Dec 25;23(24):5000-5. PubMed PMID: 8559657; PubMed Central PMCID: PMC307505."

[Martin 1995]: https://doi.org/10.1002/hlca.19950780219 "Martin P. Ein neuer Zugang zu 2-O-Alkylribonucleosiden und Eigenschaften deren Oligonucleotide. Helv. Chim. Acta. 1995;78:486–504."

[Gryaznov 1995]: https://www.ncbi.nlm.nih.gov/pubmed/7541136/ "Gryaznov SM, Lloyd DH, Chen JK, Schultz RG, DeDionisio LA, Ratmeyer L, Wilson  WD. Oligonucleotide N3'-->P5' phosphoramidates. Proc Natl Acad Sci U S A. 1995 Jun 20;92(13):5798-802. PubMed PMID: 7541136; PubMed Central PMCID: PMC41588."

[Agrawal 1995]: https://www.ncbi.nlm.nih.gov/pubmed/7646565 "Agrawal S, Zhang X, Lu Z, Zhao H, Tamburin JM, Yan J, Cai H, Diasio RB, Habus  I, Jiang Z, et al. Absorption, tissue distribution and in vivo stability in rats  of a hybrid antisense oligonucleotide following oral administration. Biochem Pharmacol. 1995 Aug 8;50(4):571-6. PubMed PMID: 7646565."

[Zhang 1995]: https://www.ncbi.nlm.nih.gov/pubmed/7646561 "Zhang R, Lu Z, Zhao H, Zhang X, Diasio RB, Habus I, Jiang Z, Iyer RP, Yu D, Agrawal S. In vivo stability, disposition and metabolism of a 'hybrid' oligonucleotide phosphorothioate in rats. Biochem Pharmacol. 1995 Aug 8;50(4):545-56. PubMed PMID: 7646561."

[Altmann 1996]: https://www.ncbi.nlm.nih.gov/pubmed/8878817 "Altmann KH, Fabbro D, Dean NM, Geiger T, Monia BP, Müller M, Nicklin P. Second-generation antisense oligonucleotides: structure-activity relationships and the design of improved signal-transduction inhibitors. Biochem Soc Trans. 1996 Aug;24(3):630-7. Review. PubMed PMID: 8878817."

[Gryaznov 1996]: https://www.ncbi.nlm.nih.gov/pubmed/8628685/ "Gryaznov S, Skorski T, Cucco C, Nieborowska-Skorska M, Chiu CY, Lloyd D, Chen  JK, Koziolkiewicz M, Calabretta B. Oligonucleotide N3'-->P5' phosphoramidates as  antisense agents. Nucleic Acids Res. 1996 Apr 15;24(8):1508-14. PubMed PMID: 8628685; PubMed Central PMCID: PMC145826."

[Crooke 1996]: https://www.ncbi.nlm.nih.gov/pubmed/8627575 "Crooke ST, Graham MJ, Zuckerman JE, Brooks D, Conklin BS, Cummins LL, Greig MJ, Guinosso CJ, Kornbrust D, Manoharan M, Sasmor HM, Schleich T, Tivel KL, Griffey RH. Pharmacokinetic properties of several novel oligonucleotide analogs in mice. J Pharmacol Exp Ther. 1996 May;277(2):923-37. PubMed PMID: 8627575."

[Hudziak 1996]: https://www.ncbi.nlm.nih.gov/pubmed/9012862 "Hudziak RM, Barofsky E, Barofsky DF, Weller DL, Huang SB, Weller DD. Resistance of morpholino phosphorodiamidate oligomers to enzymatic degradation. Antisense Nucleic Acid Drug Dev. 1996 Winter;6(4):267-72. PubMed PMID: 9012862."

[Obika 1997]: https://doi.org/10.1016/S0040-4039(97)10322-7 "Obika, S., Nanbu, D., Hari, Y., Morio, K.I., In, Y., Ishida, T. and Imanishi, T., 1997. Synthesis of 2′-O, 4′-C-methyleneuridine and-cytidine. Novel bicyclic nucleosides having a fixed C 3,-endo sugar puckering. Tetrahedron Letters, 38(50), pp.8735-8738."

[Stec 1997]: https://www.ncbi.nlm.nih.gov/pubmed/9450914/ "Stec WJ, Cierniewski CS, Okruszek A, Kobylańska A, Pawłowska Z, Koziołkiewicz  M, Pluskota E, Maciaszek A, Rebowska B, Stasiak M. Stereodependent inhibition of  plasminogen activator inhibitor type 1 by phosphorothioate oligonucleotides: proof of sequence specificity in cell culture and in vivo rat experiments. Antisense Nucleic Acid Drug Dev. 1997 Dec;7(6):567-73. PubMed PMID: 9450914."

[Freier & Altmann 1997]: https://www.ncbi.nlm.nih.gov/pubmed/9358149/ "Freier SM, Altmann KH. The ups and downs of nucleic acid duplex stability: structure-stability studies on chemically-modified DNA:RNA duplexes. Nucleic Acids Res. 1997 Nov 15;25(22):4429-43. PubMed PMID: 9358149; PubMed Central PMCID: PMC147101."

[Summerton & Weller 1997]: https://www.ncbi.nlm.nih.gov/pubmed/9212909 "Summerton J, Weller D. Morpholino antisense oligomers: design, preparation, and properties. Antisense Nucleic Acid Drug Dev. 1997 Jun;7(3):187-95. Review. PubMed PMID: 9212909."

[Nowotny 2007]: https://www.ncbi.nlm.nih.gov/pubmed/17964265 "Nowotny M, Gaidamakov SA, Ghirlando R, Cerritelli SM, Crouch RJ, Yang W. Structure of human RNase H1 complexed with an RNA/DNA hybrid: insight into HIV reverse transcription. Mol Cell. 2007 Oct 26;28(2):264-76. Erratum in: Mol Cell.  2007 Nov 9;28(3):513. PubMed PMID: 17964265."

[Wengel 1999]: https://doi.org/10.1021/ar980051p "Wengel, J., 1999. Synthesis of 3 ‘-C-and 4 ‘-C-branched oligodeoxynucleotides and the development of locked nucleic acid (LNA). Accounts of Chemical Research, 32(4), pp.301-310."

[Teplova 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10360355 "Teplova M, Minasov G, Tereshko V, Inamati GB, Cook PD, Manoharan M, Egli M. Crystal structure and improved antisense properties of 2'-O-(2-methoxyethyl)-RNA. Nat Struct Biol. 1999 Jun;6(6):535-9. PubMed PMID: 10360355."

[Pongracz 1999]: https://doi.org/10.1016/S0040-4039(99)01584-1 "Pongracz K, Gryaznov S. Oligonucleotide N3′→ P5′ thiophosphoramidates: synthesis and properties. Tetrahedron letters. 1999 Oct 22;40(43):7661-4."

[Summerton 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10807004/ "Summerton J. Morpholino antisense oligomers: the case for an RNase H-independent structural type. Biochim Biophys Acta. 1999 Dec 10;1489(1):141-58.  Review. PubMed PMID: 10807004."

[Perry & Balfour 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10193689 "Perry CM, Balfour JA. Fomivirsen. Drugs. 1999 Mar;57(3):375-80; discussion 381. Review. PubMed PMID: 10193689."

[Wahlestedt 2000]: https://www.ncbi.nlm.nih.gov/pubmed/10805816 "Wahlestedt C, Salmi P, Good L, Kela J, Johnsson T, Hökfelt T, Broberger C, Porreca F, Lai J, Ren K, Ossipov M, Koshkin A, Jakobsen N, Skouv J, Oerum H, Jacobsen MH, Wengel J. Potent and nontoxic antisense oligonucleotides containing  locked nucleic acids. Proc Natl Acad Sci U S A. 2000 May 9;97(10):5633-8. PubMed  PMID: 10805816; PubMed Central PMCID: PMC25880."

[Geary 2001]: https://www.ncbi.nlm.nih.gov/pubmed/11181921 "Geary RS, Watanabe TA, Truong L, Freier S, Lesnik EA, Sioufi NB, Sasmor H, Manoharan M, Levin AA. Pharmacokinetic properties of 2'-O-(2-methoxyethyl)-modified oligonucleotide analogs in rats. J Pharmacol Exp Ther. 2001 Mar;296(3):890-7. PubMed PMID: 11181921."

[Morita 2003]: https://www.ncbi.nlm.nih.gov/pubmed/12713831 "Morita K, Takagi M, Hasegawa C, Kaneko M, Tsutsumi S, Sone J, Ishikawa T, Imanishi T, Koizumi M. Synthesis and properties of 2'-O,4'-C-ethylene-bridged nucleic acids (ENA) as effective antisense oligonucleotides. Bioorg Med Chem. 2003 May 15;11(10):2211-26. PubMed PMID: 12713831."

[Koizumi 2004]: https://www.ncbi.nlm.nih.gov/pubmed/15056846 "Koizumi M. 2'-O,4'-C-ethylene-bridged nucleic acids (ENA) as next-generation antisense and antigene agents. Biol Pharm Bull. 2004 Apr;27(4):453-6. Review. PubMed PMID: 15056846."

[Amantana & Iversen 2005]: https://www.ncbi.nlm.nih.gov/pubmed/16087398 "Amantana A, Iversen PL. Pharmacokinetics and biodistribution of phosphorodiamidate morpholino antisense oligomers. Curr Opin Pharmacol. 2005 Oct;5(5):550-5. Review. PubMed PMID: 16087398."

[Iversen 2003]: https://www.ncbi.nlm.nih.gov/pubmed/12855625 "Iversen PL, Arora V, Acker AJ, Mason DH, Devi GR. Efficacy of antisense morpholino oligomer targeted to c-myc in prostate cancer xenograft murine model and a Phase I safety study in humans. Clin Cancer Res. 2003 Jul;9(7):2510-9. PubMed PMID: 12855625."

[Devi 2005]: https://www.ncbi.nlm.nih.gov/pubmed/15897595 "Devi GR, Beer TM, Corless CL, Arora V, Weller DL, Iversen PL. In vivo bioavailability and pharmacokinetics of a c-MYC antisense phosphorodiamidate morpholino oligomer, AVI-4126, in solid tumors. Clin Cancer Res. 2005 May 15;11(10):3930-8. PubMed PMID: 15897595."

[Goel 2006]: https://www.ncbi.nlm.nih.gov/pubmed/16683205 "Goel S, Desai K, Macapinlac M, Wadler S, Goldberg G, Fields A, Einstein M, Volterra F, Wong B, Martin R, Mani S. A phase I safety and dose escalation trial  of docetaxel combined with GEM231, a second generation antisense oligonucleotide  targeting protein kinase A R1alpha in patients with advanced solid cancers. Invest New Drugs. 2006 Mar;24(2):125-34. PubMed PMID: 16683205."

[Smith 2006]: https://www.ncbi.nlm.nih.gov/pubmed/16878173 "Smith RA, Miller TM, Yamanaka K, Monia BP, Condon TP, Hung G, Lobsiger CS, Ward CM, McAlonis-Downes M, Wei H, Wancewicz EV, Bennett CF, Cleveland DW. Antisense oligonucleotide therapy for neurodegenerative disease. J Clin Invest. 2006 Aug;116(8):2290-6. Epub 2006 Jul 27. PubMed PMID: 16878173; PubMed Central PMCID: PMC1518790."

[Swayze 2007]: https://www.ncbi.nlm.nih.gov/pubmed/17182632/ "Swayze EE, Siwkowski AM, Wancewicz EV, Migawa MT, Wyrzykiewicz TK, Hung G, Monia BP, Bennett CF. Antisense oligonucleotides containing locked nucleic acid improve potency but cause significant hepatotoxicity in animals. Nucleic Acids Res. 2007;35(2):687-700. Epub 2006 Dec 19. PubMed PMID: 17182632; PubMed Central  PMCID: PMC1802611."

[Lima 2007a]: https://www.ncbi.nlm.nih.gov/pubmed/17028157 "Lima WF, Rose JB, Nichols JG, Wu H, Migawa MT, Wyrzykiewicz TK, Vasquez G, Swayze EE, Crooke ST. The positional influence of the helical geometry of the heteroduplex substrate on human RNase H1 catalysis. Mol Pharmacol. 2007 Jan;71(1):73-82. Epub 2006 Oct 6. PubMed PMID: 17028157."

[Lima 2007b]: https://www.ncbi.nlm.nih.gov/pubmed/17028158 "Lima WF, Rose JB, Nichols JG, Wu H, Migawa MT, Wyrzykiewicz TK, Siwkowski AM,  Crooke ST. Human RNase H1 discriminates between subtle variations in the structure of the heteroduplex substrate. Mol Pharmacol. 2007 Jan;71(1):83-91. Epub 2006 Oct 6. PubMed PMID: 17028158."

[Seth 2008]: https://www.ncbi.nlm.nih.gov/pubmed/18776499 "Seth PP, Siwkowski A, Allerson CR, Vasquez G, Lee S, Prakash TP, Kinberger G,  Migawa MT, Gaus H, Bhat B, Swayze EE. Design, synthesis and evaluation of constrained methoxyethyl (cMOE) and constrained ethyl (cEt) nucleoside analogs. Nucleic Acids Symp Ser (Oxf). 2008;(52):553-4. doi: 10.1093/nass/nrn280. PubMed PMID: 18776499."

[Oka 2008]: https://www.ncbi.nlm.nih.gov/pubmed/18980312 "Oka N, Yamamoto M, Sato T, Wada T. Solid-phase synthesis of stereoregular oligodeoxyribonucleoside phosphorothioates using bicyclic oxazaphospholidine derivatives as monomer units. J Am Chem Soc. 2008 Nov 26;130(47):16031-7. doi: 10.1021/ja805780u. PubMed PMID: 18980312."

[Bennett & Swayze 2010]: https://www.ncbi.nlm.nih.gov/pubmed/20055705 "Bennett CF, Swayze EE. RNA targeting therapeutics: molecular mechanisms of antisense oligonucleotides as a therapeutic platform. Annu Rev Pharmacol Toxicol. 2010;50:259-93. doi: 10.1146/annurev.pharmtox.010909.105654. Review. PubMed PMID: 20055705."

[Seth 2010]: https://www.ncbi.nlm.nih.gov/pubmed/20136157 "Seth PP, Vasquez G, Allerson CA, Berdeja A, Gaus H, Kinberger GA, Prakash TP,  Migawa MT, Bhat B, Swayze EE. Synthesis and biophysical evaluation of 2',4'-constrained 2'O-methoxyethyl and 2',4'-constrained 2'O-ethyl nucleic acid analogues. J Org Chem. 2010 Mar 5;75(5):1569-81. doi: 10.1021/jo902560f. PubMed PMID: 20136157."

[Goemans 2011]: https://www.ncbi.nlm.nih.gov/pubmed/21428760 "Goemans NM, Tulinius M, van den Akker JT, Burm BE, Ekhart PF, Heuvelmans N, Holling T, Janson AA, Platenburg GJ, Sipkens JA, Sitsen JM, Aartsma-Rus A, van Ommen GJ, Buyse G, Darin N, Verschuuren JJ, Campion GV, de Kimpe SJ, van Deutekom JC. Systemic administration of PRO051 in Duchenne's muscular dystrophy. N Engl J  Med. 2011 Apr 21;364(16):1513-22. doi: 10.1056/NEJMoa1011367. Epub 2011 Mar 23. Erratum in: N Engl J Med. 2011 Oct 6;365(14):1361. PubMed PMID: 21428760."

[Kordasiewicz 2012]: https://www.ncbi.nlm.nih.gov/pubmed/22726834 "Kordasiewicz HB, Stanek LM, Wancewicz EV, Mazur C, McAlonis MM, Pytel KA, Artates JW, Weiss A, Cheng SH, Shihabuddin LS, Hung G, Bennett CF, Cleveland DW.  Sustained therapeutic reversal of Huntington's disease by transient repression of huntingtin synthesis. Neuron. 2012 Jun 21;74(6):1031-44. doi: 10.1016/j.neuron.2012.05.009. PubMed PMID: 22726834; PubMed Central PMCID: PMC3383626."

[Pallan 2012]: https://www.ncbi.nlm.nih.gov/pubmed/22614180 "Pallan PS, Allerson CR, Berdeja A, Seth PP, Swayze EE, Prakash TP, Egli M. Structure and nuclease resistance of 2',4'-constrained 2'-O-methoxyethyl (cMOE) and 2'-O-ethyl (cEt) modified DNAs. Chem Commun (Camb). 2012 Aug 25;48(66):8195-7. doi: 10.1039/c2cc32286b. Epub 2012 May 22. PubMed PMID: 22614180; PubMed Central PMCID: PMC3404228."

[Rigo 2012]: https://www.ncbi.nlm.nih.gov/pubmed/22504300 "Rigo F, Hua Y, Chun SJ, Prakash TP, Krainer AR, Bennett CF. Synthetic oligonucleotides recruit ILF2/3 to RNA transcripts to modulate splicing. Nat Chem Biol. 2012 Apr 15;8(6):555-61. doi: 10.1038/nchembio.939. PubMed PMID: 22504300;  PubMed Central PMCID: PMC5021312."

[Lindow 2012]: https://www.ncbi.nlm.nih.gov/pubmed/23051805 "Lindow M, Vornlocher HP, Riley D, Kornbrust DJ, Burchard J, Whiteley LO, Kamens J, Thompson JD, Nochur S, Younis H, Bartz S, Parry J, Ferrari N, Henry SP, Levin AA. Assessing unintended hybridization-induced biological effects of oligonucleotides. Nat Biotechnol. 2012 Oct;30(10):920-3. doi: 10.1038/nbt.2376. PubMed PMID: 23051805."

[Crooke & Geary 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23013161 "Crooke ST, Geary RS. Clinical pharmacological properties of mipomersen (Kynamro), a second generation antisense inhibitor of apolipoprotein B. Br J Clin Pharmacol. 2013 Aug;76(2):269-76. doi: 10.1111/j.1365-2125.2012.04469.x. Review.  PubMed PMID: 23013161; PubMed Central PMCID: PMC3731601."

[Bianchini 2013]: https://www.ncbi.nlm.nih.gov/pubmed/24169353 "Bianchini D, Omlin A, Pezaro C, Lorente D, Ferraldeschi R, Mukherji D, Crespo  M, Figueiredo I, Miranda S, Riisnaes R, Zivi A, Buchbinder A, Rathkopf DE, Attard G, Scher HI, de Bono J, Danila DC. First-in-human Phase I study of EZN-4176, a locked nucleic acid antisense oligonucleotide to exon 4 of the androgen receptor  mRNA in patients with castration-resistant prostate cancer. Br J Cancer. 2013 Nov 12;109(10):2579-86. doi: 10.1038/bjc.2013.619. Epub 2013 Oct 29. PubMed PMID: 24169353; PubMed Central PMCID: PMC3833213."

[Burel 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23692080 "Burel SA, Han SR, Lee HS, Norris DA, Lee BS, Machemer T, Park SY, Zhou T, He G, Kim Y, MacLeod AR, Monia BP, Lio S, Kim TW, Henry SP. Preclinical evaluation of the toxicological effects of a novel constrained ethyl modified antisense compound targeting signal transducer and activator of transcription 3 in mice and cynomolgus monkeys. Nucleic Acid Ther. 2013 Jun;23(3):213-27. doi: 10.1089/nat.2013.0422. PubMed PMID: 23692080."

[Ostergaard 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23963702 "Østergaard ME, Southwell AL, Kordasiewicz H, Watt AT, Skotte NH, Doty CN, Vaid K, Villanueva EB, Swayze EE, Bennett CF, Hayden MR, Seth PP. Rational design of antisense oligonucleotides targeting single nucleotide polymorphisms for potent and allele selective suppression of mutant Huntingtin in the CNS. Nucleic Acids Res. 2013 Nov;41(21):9634-50. doi: 10.1093/nar/gkt725. Epub 2013 Aug 19. PubMed PMID: 23963702; PubMed Central PMCID: PMC3834808."

[Miller 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23541756 "Miller TM, Pestronk A, David W, Rothstein J, Simpson E, Appel SH, Andres PL, Mahoney K, Allred P, Alexander K, Ostrow LW, Schoenfeld D, Macklin EA, Norris DA, Manousakis G, Crisp M, Smith R, Bennett CF, Bishop KM, Cudkowicz ME. An antisense oligonucleotide against SOD1 delivered intrathecally for patients with SOD1 familial amyotrophic lateral sclerosis: a phase 1, randomised, first-in-man study. Lancet Neurol. 2013 May;12(5):435-42. doi: 10.1016/S1474-4422(13)70061-9.  Epub 2013 Mar 29. Erratum in: Lancet Neurol. 2013 May;12(5):423. PubMed PMID: 23541756; PubMed Central PMCID: PMC3712285."

[Rigo 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24784568 "Rigo F, Chun SJ, Norris DA, Hung G, Lee S, Matson J, Fey RA, Gaus H, Hua Y, Grundy JS, Krainer AR, Henry SP, Bennett CF. Pharmacology of a central nervous system delivered 2'-O-methoxyethyl-modified survival of motor neuron splicing oligonucleotide in mice and nonhuman primates. J Pharmacol Exp Ther. 2014 Jul;350(1):46-55. doi: 10.1124/jpet.113.212407. Epub 2014 Apr 30. PubMed PMID: 24784568; PubMed Central PMCID: PMC4056267."

[Voit 2014]: https://www.ncbi.nlm.nih.gov/pubmed/25209738 "Voit T, Topaloglu H, Straub V, Muntoni F, Deconinck N, Campion G, De Kimpe SJ, Eagle M, Guglieri M, Hood S, Liefaard L, Lourbakos A, Morgan A, Nakielny J, Quarcoo N, Ricotti V, Rolfe K, Servais L, Wardell C, Wilson R, Wright P, Kraus JE. Safety and efficacy of drisapersen for the treatment of Duchenne muscular dystrophy (DEMAND II): an exploratory, randomised, placebo-controlled phase 2 study. Lancet Neurol. 2014 Oct;13(10):987-96. doi: 10.1016/S1474-4422(14)70195-4. Epub 2014 Sep 7. PubMed PMID: 25209738."

[Wan 2014]: https://www.ncbi.nlm.nih.gov/pubmed/25398895/ "Wan WB, Migawa MT, Vasquez G, Murray HM, Nichols JG, Gaus H, Berdeja A, Lee S, Hart CE, Lima WF, Swayze EE, Seth PP. Synthesis, biophysical properties and biological activity of second generation antisense oligonucleotides containing chiral phosphorothioate linkages. Nucleic Acids Res. 2014 Dec 16;42(22):13456-68. doi: 10.1093/nar/gku1115. Epub 2014 Nov 14. PubMed PMID: 25398895; PubMed Central PMCID: PMC4267618."

[Pandey 2015]: https://www.ncbi.nlm.nih.gov/pubmed/26330536 "Pandey SK, Wheeler TM, Justice SL, Kim A, Younis HS, Gattis D, Jauvin D, Puymirat J, Swayze EE, Freier SM, Bennett CF, Thornton CA, MacLeod AR. Identification and characterization of modified antisense oligonucleotides targeting DMPK in mice and nonhuman primates for the treatment of myotonic dystrophy type 1. J Pharmacol Exp Ther. 2015 Nov;355(2):329-40. doi: 10.1124/jpet.115.226969. Epub 2015 Sep 1. PubMed PMID: 26330536; PubMed Central PMCID: PMC4613955."

[Liang 2015]: https://www.ncbi.nlm.nih.gov/pubmed/25712094/ "Liang XH, Sun H, Shen W, Crooke ST. Identification and characterization of intracellular proteins that bind oligonucleotides with phosphorothioate linkages. Nucleic Acids Res. 2015 Mar 11;43(5):2927-45. doi: 10.1093/nar/gkv143. Epub 2015  Feb 20. PubMed PMID: 25712094; PubMed Central PMCID: PMC4357732."

[Geary 2015]: https://www.ncbi.nlm.nih.gov/pubmed/25666165/ "Geary RS, Norris D, Yu R, Bennett CF. Pharmacokinetics, biodistribution and cell uptake of antisense oligonucleotides. Adv Drug Deliv Rev. 2015 Jun 29;87:46-51. doi: 10.1016/j.addr.2015.01.008. Epub 2015 Feb 7. Review. PubMed PMID: 25666165."

[Hong 2015]: https://www.ncbi.nlm.nih.gov/pubmed/26582900 "Hong D, Kurzrock R, Kim Y, Woessner R, Younes A, Nemunaitis J, Fowler N, Zhou  T, Schmidt J, Jo M, Lee SJ, Yamashita M, Hughes SG, Fayad L, Piha-Paul S, Nadella MV, Mohseni M, Lawson D, Reimer C, Blakey DC, Xiao X, Hsu J, Revenko A, Monia BP, MacLeod AR. AZD9150, a next-generation antisense oligonucleotide inhibitor of STAT3 with early evidence of clinical activity in lymphoma and lung cancer. Sci Transl Med. 2015 Nov 18;7(314):314ra185. doi: 10.1126/scitranslmed.aac5272. PubMed PMID: 26582900; PubMed Central PMCID: PMC5279222."

[Liang 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26945041 "Liang XH, Shen W, Sun H, Kinberger GA, Prakash TP, Nichols JG, Crooke ST. Hsp90 protein interacts with phosphorothioate oligonucleotides containing hydrophobic 2'-modifications and enhances antisense activity. Nucleic Acids Res.  2016 May 5;44(8):3892-907. doi: 10.1093/nar/gkw144. Epub 2016 Mar 3. PubMed PMID: 26945041; PubMed Central PMCID: PMC4856991."

[Nukaga 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26939010 "Nukaga Y, Oka N, Wada T. Stereocontrolled Solid-Phase Synthesis of Phosphate/Phosphorothioate (PO/PS) Chimeric Oligodeoxyribonucleotides on an Automated Synthesizer Using an Oxazaphospholidine-Phosphoramidite Method. J Org Chem. 2016 Apr 1;81(7):2753-62. doi: 10.1021/acs.joc.5b02793. Epub 2016 Mar 14. PubMed PMID: 26939010."

[van der Ree 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26503793 "van der Ree MH, van der Meer AJ, van Nuenen AC, de Bruijne J, Ottosen S, Janssen HL, Kootstra NA, Reesink HW. Miravirsen dosing in chronic hepatitis C patients results in decreased microRNA-122 levels without affecting other microRNAs in plasma. Aliment Pharmacol Ther. 2016 Jan;43(1):102-13. doi: 10.1111/apt.13432. Epub 2015 Oct 26. PubMed PMID: 26503793."

[Burel 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26553810 "Burel SA, Hart CE, Cauntay P, Hsiao J, Machemer T, Katz M, Watt A, Bui HH, Younis H, Sabripour M, Freier SM, Hung G, Dan A, Prakash TP, Seth PP, Swayze EE,  Bennett CF, Crooke ST, Henry SP. Hepatotoxicity of high affinity gapmer antisense oligonucleotides is mediated by RNase H1 dependent promiscuous reduction of very  long pre-mRNA transcripts. Nucleic Acids Res. 2016 Mar 18;44(5):2093-109. doi: 10.1093/nar/gkv1210. Epub 2015 Nov 8. PubMed PMID: 26553810; PubMed Central PMCID: PMC4797265."

[Iwamoto 2017]: https://www.ncbi.nlm.nih.gov/pubmed/28829437 "Iwamoto N, Butler DCD, Svrzikapa N, Mohapatra S, Zlatev I, Sah DWY, Meena, Standley SM, Lu G, Apponi LH, Frank-Kamenetsky M, Zhang JJ, Vargeese C, Verdine GL. Control of phosphorothioate stereochemistry substantially increases the efficacy of antisense oligonucleotides. Nat Biotechnol. 2017 Sep;35(9):845-851. doi: 10.1038/nbt.3948. Epub 2017 Aug 21. PubMed PMID: 28829437."

[Bailey 2017]: https://www.ncbi.nlm.nih.gov/pubmed/28977508/ "Bailey JK, Shen W, Liang XH, Crooke ST. Nucleic acid binding proteins affect the subcellular distribution of phosphorothioate antisense oligonucleotides. Nucleic Acids Res. 2017 Oct 13;45(18):10649-10671. doi: 10.1093/nar/gkx709. PubMed PMID: 28977508; PubMed Central PMCID: PMC5737868."

[Bennett 2017]: https://www.ncbi.nlm.nih.gov/pubmed/27732800 "Bennett CF, Baker BF, Pham N, Swayze E, Geary RS. Pharmacology of Antisense Drugs. Annu Rev Pharmacol Toxicol. 2017 Jan 6;57:81-105. doi: 10.1146/annurev-pharmtox-010716-104846. Epub 2016 Oct 10. Review. PubMed PMID: 27732800."

[Crooke 2017]: https://www.ncbi.nlm.nih.gov/pubmed/28244996 "Crooke ST, Wang S, Vickers TA, Shen W, Liang XH. Cellular uptake and trafficking of antisense oligonucleotides. Nat Biotechnol. 2017 Mar;35(3):230-237. doi: 10.1038/nbt.3779. Epub 2017 Feb 27. Review. PubMed PMID:  28244996."

[Li 2017]: https://www.ncbi.nlm.nih.gov/pubmed/27966701 "Li M, Lightfoot HL, Halloy F, Malinowska AL, Berk C, Behera A, Schümperli D, Hall J. Synthesis and cellular activity of stereochemically-pure 2'-O-(2-methoxyethyl)-phosphorothioate oligonucleotides. Chem Commun (Camb). 2017 Jan 3;53(3):541-544. doi: 10.1039/c6cc08473g. PubMed PMID: 27966701."

[Pfeiffer 2017]: https://www.ncbi.nlm.nih.gov/pubmed/29190672/ "Pfeiffer N, Voykov B, Renieri G, Bell K, Richter P, Weigel M, Thieme H, Wilhelm B, Lorenz K, Feindor M, Wosikowski K, Janicot M, Päckert D, Römmich R, Mala C, Fettes P, Leo E. First-in-human phase I study of ISTH0036, an antisense oligonucleotide selectively targeting transforming growth factor beta 2 (TGF-β2), in subjects with open-angle glaucoma undergoing glaucoma filtration surgery. PLoS One. 2017 Nov 30;12(11):e0188899. doi: 10.1371/journal.pone.0188899. eCollection  2017. PubMed PMID: 29190672; PubMed Central PMCID: PMC5708654."

[Takaishi 2017]: https://doi.org/10.1016/j.nmd.2017.06.440 "P.400 - Stunning pharmacological properties of DS-5141b, an antisense oligonucleotide consisting of 2'-O,4'-C-ethylene-bridged nucleic acids and 2'-O-methyl RNA, on dystrophin mRNA exon skipping K.Takaishi1M.Kakuta1K.Ito1A.Kanda1H.Takakusa1H.Miida1T.Masuda1A.Nakamura1Y.Onishi1T.Onoda1Y.Kazuki2M.Oshimura3Y.Takeshima4M.Matsuo5M.Koizumi1 Neuromuscular Disorders Volume 27, Supplement 2, October 2017, Page S216"

[Shen 2018]: https://www.ncbi.nlm.nih.gov/pubmed/29390093/ "Shen W, De Hoyos CL, Sun H, Vickers TA, Liang XH, Crooke ST. Acute hepatotoxicity of 2' fluoro-modified 5-10-5 gapmer phosphorothioate oligonucleotides in mice correlates with intracellular protein binding and the loss of DBHS proteins. Nucleic Acids Res. 2018 Mar 16;46(5):2204-2217. doi: 10.1093/nar/gky060. PubMed PMID: 29390093; PubMed Central PMCID: PMC5861398."

[Knouse & deGruyter 2018]: https://www.ncbi.nlm.nih.gov/pubmed/30072577 "Knouse KW, deGruyter JN, Schmidt MA, Zheng B, Vantourout JC, Kingston C, Mercer SE, Mcdonald IM, Olson RE, Zhu Y, Hang C, Zhu J, Yuan C, Wang Q, Park P, Eastgate MD, Baran PS. Unlocking P(V): Reagents for chiral phosphorothioate synthesis. Science. 2018 Aug 2. pii: eaau3369. doi: 10.1126/science.aau3369. [Epub ahead of print] PubMed PMID: 30072577."

[McCampbell 2018]: https://www.ncbi.nlm.nih.gov/pubmed/30010620 "McCampbell A, Cole T, Wegener AJ, Tomassy GS, Setnicka A, Farley BJ, Schoch KM, Hoye ML, Shabsovich M, Sun L, Luo Y, Zhang M, Thankamony S, Salzman DW, Cudkowicz M, Graham DL, Bennett CF, Kordasiewicz HB, Swayze EE, Miller TM. Antisense oligonucleotides extend survival and reverse decrement in muscle response in ALS models. J Clin Invest. 2018 Aug 1;128(8):3558-3567. doi: 10.1172/JCI99081. Epub 2018 Jul 16. PubMed PMID: 30010620; PubMed Central PMCID:  PMC6063493."



