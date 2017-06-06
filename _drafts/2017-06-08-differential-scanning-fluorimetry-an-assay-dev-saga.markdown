---
layout: post
title:  "Differential scanning fluorimetry for PrP: an assay development saga"
date:   2017-06-08 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2017/06/dsf-thumbnail.png
summary200: "Lessons learned from months spent trying to optimize a thermal shift assay for the human prion protein."
---

Sonia and I would like to find small molecules that bind the prion protein (PrP). The hope is that such molecules could be therapeutic, by either stabilizing PrP against misfolding, preventing prions from binding PrP, or maybe by targeting PrP for degradation. A first step would be to just find any chemical matter that binds PrP. So here's the story of an effort that Sonia, myself, and our MIT intern Rishi Shah, undertook on and off over the course of several months, to try to develop a high throughput thermal shift assay for PrP.

Differential scanning fluorimetry (DSF) is a fluorescence-based assay for finding compounds that change the melting temperature (T<sub>m</sub>) of a protein. For a good review and introduction, see [[Niesen 2007]]. Basically, the assay principle is this. You combine your purified recombinant protein with a hydrophobic dye in solution. The dye has some amount of intrinsic fluorescence, but its fluorescence greatly increases when it binds to hydrophobic patches on a protein. Most proteins when properly folded have their hydrophobic parts hidden &mdash; indeed, it's thought to be the entropy gains from releasing "caged water" around these parts that drives protein folding in the first place &mdash; so these hydrophobic surfaces are only exposed when the protein melts, meaning, when it unfolds, loses its structure. Thus, as you gradually heat the protein from (say) 25&deg;C to 95&deg;C, at some point you see an increase in fluorescence, and from this you can infer the melting point of your protein.

![](/media/2017/06/dsf-assay-principle.png)

If you add a compound that binds and thermally stabilizes the protein, you should see a shift in that melting point. Thus, by screening thousands of compounds and quantifying the melting point, you can find a binder of your protein of interest. One reason why DSF is often preferred for target-based screening is that it is eminently scalable. It can be done in 384-well plates and even smaller scales, often with as little as 10 &mu;L of a 1 &mu;M protein solution per well. One liter of bacterial culture could yield enough protein to screen tens of thousands of compounds.

Here's what the assay setup looked like in our hands. We used recombinant PrP purified by [this method](/2014/07/30/recombinant-prion-protein-rocky-mountain-style/), focusing on HuPrP23-230 and HuPrP90-231. We used SYPRO&reg; Orange dye, which is a proprietary dye with [this structure](https://commons.wikimedia.org/wiki/File:SYPRO_Orange_IS.svg):

![](/media/2017/06/sypro_orange.png)

The manufacturer doesn't disclose the true concentration in terms of molarity. Instead, the concentrations are given in terms of "X", i.e. the dye is purchased as a 5,000X concentrate which can be diluted to, say, 1X or 5X or 10X for the assay. We used Roche Lightcycler 480 II instruments and their [corresponding plates](https://shop.roche.com/shop/products/lightcycler14301-480-multiwell-plate-384-white). Here's the setup:

![](/media/2017/06/dsf-setup.png)

Early on, a colleague who was training us how to use the lightcyclers suggested that we begin by trying a range of protein concentrations from, say, 0.1 mg/mL to 0.5 mg/mL. We did so, and lo and behold, the higher the protein concentration, the cleaner and more reproducible the melting curves were. In the initial search for good conditions, we pushed the protein concentration even higher, and found that at 0.8 mg/mL we got beautiful curves &mdash; here is one example, from HuPrP90-231 in 20 mM HEPES, 25 mM NaCl, 1 mM EDTA at 50 &mu;M in 10 &mu;L final volume, melted in a 384-well white lightcycler plate in a Roche Lightcycler 480 on the protein melt program, with 10X Sypro Orange dye and 2% DMSO:

![](/media/2017/06/ts00027-b6-example-curve.png)

The curves at this concentration looked smooth and reasonably consistent between wells, so using these conditions, we set out to determine the [Z'](https://en.wikipedia.org/wiki/Z-factor) [[Zhang 1999]] of our assay &mdash; a measure of the separation between negative control and positive control wells, and thus of the statistical power of the assay to detect true novel hits. We tested 30 replicates each of DMSO-only and [FeTMPyP](https://www.caymanchem.com/product/75854), a reported positive control for PrP [[Caughey 1998], [Nicoll 2010], [Gupta 2016], [Massignan 2016]] and compared the distributions of their melting temperatures, called using a 4-point dose-response curve fit with the R [`drc`](https://cran.r-project.org/web/packages/drc/index.html) package. Here's what we got:

![](/media/2017/06/dsf_z_factor_ts00027.png)

The Z' was 0.71, within the range considered to be an "excellent" assay. For a minute it seemed like we were almost ready to start screening. But there was a catch. PrP is a small protein, so seemingly innocent mg/mL values correspond to huge concentrations in molar terms. The HuPrP90-231 construct used here weighs in at just 16 kDa, so the 0.8 mg/mL in the experiments above is actually about 50 &mu;M protein. That's a problem because in order to see a shift in a protein's melting curve, you need to saturate most of the protein with ligand. An assay that requires 50 &mu;M protein might be usable if your goal was, say, to screen for different buffer conditions that promote PrP stability, or maybe if you wanted to screen a compound deck of ultra-soluble fragments at, say, 1 mM. But we wanted to screen a deck of small molecules more in the 350-550 Da molecular weight range, where one doesn't expect most compounds to be soluble above 10 &mu;M in aqueous solution in 2% DMSO. The protocol I cited earlier [[Niesen 2007]] recommends that for small molecule screening, one wants a 10:1 ratio of ligand to protein to drive the interaction and saturate the protein, and that 10 &mu;M small molecule and 1 &mu;M protein is a good starting point. We were off by 50-fold. (As argued [here](/2016/11/14/thermodynamics-in-binding-assays/), I've come to think that it's hazardous to even speak of protein concentration in mg/mL terms when what you're talking about is a binding assay. I assume the reason people do still talk this way is that the dyes used in DSF bind to hydrophobic patches generally, rather than proteins in a 1:1 manner, so mg/mL may actually better reflect the amount of protein needed to get a good signal.

So the core problem was to get the assay working with a protein concentration more amenable to screening. When we scaled back the protein concentration, the results looked much less promising. Here, for example, is a melt curve for 5 &mu;M HuPrP23-230:

![](/media/2017/06/rishi-ts0008-e1-example-curve.png)

The signal to baseline (S:B) ratio is terrible &mdash; the highest point on the curve (~1.7) is only about 1.4x higher than the baseline (~1.2). And you can see from the jaggedness of the curve that we're really scraping the bottom of the instrument's lower limit of quantification. I tried various computational ways of dealing with this jaggedness, such as smoothing out the curve with a 1D Gaussian filter, but no matter what I did, the T<sub>m</sub> varied dramatically from one well to the next. And even 5 &mu;M, mind you, is a higher protein concentration than we'd ideally like to use. If we had 5 &mu;M protein and 10 &mu;M small molecules in a screen, then per [these calculations](/2016/11/14/thermodynamics-in-binding-assays/) a hypothetical 5 &mu;M Kd binder would only put 58% of the protein in a bound state, not necessarily enough to be called as a hit.

Indeed, once we realized that our original curve had been with 50 &mu;M protein, it became apparent that our positive control results didn't even make any sense. That curve up top was obtained with 50 &mu;M protein and only 20 &mu;M of our positive control, FeTMPyP. If the Kd is ~20 &mu;M (as we've [estimated by ITC](/2016/09/12/isothermal-titration-calorimetry/)), then only about 20% of the protein should be bound to the ligand at these concentrations, presumably not enough to shift the melting curve by 2.5&deg;C. So this "positive control" shouldn't have worked! Yet it did. Examination of the raw melt curves from the above beeswarm plot revealed that FeTMPyP lowered the overall fluorescence by quite a bit:

![](/media/2017/06/ts00027-compare-all-curves.png)

It may well be the case that the temperature "shift" we saw was somehow just an artifact of FeTMPyP's interference with the fluorescence of the assay, and FeTMPyP wasn't a real positive control in this case.

There is one published paper that we're aware of that used DSF on PrP [[Poncet-Montange 2011]], and nominally their Z' values were pretty good (~0.5 - 0.9) but they hadn't really solved the problems we were struggling with here either. The conditions they ultimately settled on and used for a small screen (2,160 drugs and natural products) were 10 &mu;M protein, 100 &mu;M compound, and a 150 &mu;L reaction volume (in 96-well plates). So they maintained the recommended 10:1 protein:ligand ratio only by pushing the compound concentration very high. It is not clear how many of the compounds in their library were actually soluble at 100 &mu;M, and in any case, most of the compounds we wanted to screen were not soluble at such a high concentration. And the good Z' values in that paper were calculated using 200 mM trimethylamine *N*-oxide (TMAO or TMANO) as a positive control. TMAO apparently acts as sort of a universal positive control, increasing the melting temperature of almost any protein, presumably by some sort of solvent effect on the energetics of protein folding, not by actually binding the protein. So the +3&deg;C change in T<sub>m</sub> that gave rise to those good Z' values may not actually be any sort of predictor of what magnitude of effect a true small molecule binder would have on PrP's melting temperature. As a final consideration, the 150 &mu;L reaction volume used in that study wouldn't be scalable to the format (384-well) and scale (10^4 - 10^5 compounds) that we wanted for our screen.

Having failed to find an answer in the literature, we set out to vary all the different parameters of the assay to see if there was a combination that would give us a sufficiently reproducible T<sub>m</sub> as to be worth scaling for a screen. And at this point, we decided to drop Z' as our metric of assay quality. We reasoned that the melting temperature shift given by millimolar concentrations of TMAO, or a fluorescence artifact of FeTMPyP, may be no predictor at all of the melting temperature shift that you might get from a *real* binder. Therefore, for a protein like PrP with no true small molecule binder to the structured domain, we decided it's reasonable to just focus on minimzing the variance in T<sub>m</sub> among DMSO-only wells, thus maximizing power to detect small T<sub>m</sub> shifts from hypothetical hits, without worrying too much about the Z' per se.

In an effort to get the T<sub>m</sub> variance down, we tried keeping protein at 5 &mu;M or so but varying all the other properties of the assay: total volume, dye concentration, buffer, metals, and protein construct. Spoiler alert: nothing worked.

Increasing the assay volume seemed like a promising route, because a high assay volume had been reported to work well in [[Poncet-Montange 2011]], and because intuitively, the fluorescence ought to be proportional to the total amount of protein in the well, rather than the concentration of protein. But no dice:

![](/media/2017/06/dsf_volume_vs_sdtm.png)

The wells in the 384-well lightcycler plates are only 40 &mu;L in volume, so we couldn't go any higher.

We also tried increasing the dye concentration, which helped up to a point, but the returns diminished past about 15X, and we couldn't get below a floor of an SD of about 0.3&deg;C:

![](/media/2017/06/dsf_dyex_vs_sdtm.png)

We did one experiment comparing HuPrP23-230 in a HEPES buffer versus one batch in phosphate buffer, and we briefly got excited when the phosphate buffer gave us a nominally lower SD (0.12&deg;C), than the HEPES (0.46&deg;C), but this proved to be merely a fluke &mdash; later experiments with PrP in phosphate buffer gave us an SD of 0.3&deg;C or higher, just like we'd been seeing all along.

After a [holler](https://twitter.com/prion_disease/status/833116252595900417) from Glenn Millhauser on Twitter we also decided to see if copper or zinc would give us better results. After all, these metals are reported to modulate how PrP's N terminus folds and docks on the face of the C terminus [[Spevacek 2013]], and it might be more physiologically relevant to screen metallated PrP anyway. But copper, it turns out, quenches the fluorescence of Sypro Orange. When we added 1 equivalent of copper to our PrP, we got a much weaker melting curve, and when we added 4 equivalents, we got no melting curve at all:

![](/media/2017/06/dsf_copper_dose_response.png)

Zinc, in contrast, was tolerated but didn't help any:

![](/media/2017/06/dsf_zinc_dose_response.png)

For all the experimental variables that failed to impact the distribution of melting temperatures, one unwanted and unexpected variable did prove to matter: the runtime of the melt curve. The "protein melt" program on the lightcyclers was nominally scheduled to take about 25 minutes to ramp from 25&deg;C to 95&deg;C, but in practice it took anywhere from 6 to 28 minutes, with no apparent rhyme or reason. The shorter runs, meaning the more rapid heat ramps, tended to give us more variability in melting temperature within the same plate. That kind of makes sense because a more rapid heat ramp might create more opportunity for edge effects and so on. To prove to myself that this was the case, I ran five experiments identical except for the number of data acquisitions per minute (which allows the user to indirectly specify the runtime, though this unfortunately doesn't override whatever bug is at work):

![](/media/2017/06/dsf-runtime-variance.png)

But through all these experiments, the *best* distribution we could ever reliably get was an SD of about 0.3 &deg;C. And that's just not good enough. The [68-95-99.7 rule](https://en.wikipedia.org/wiki/68%E2%80%9395%E2%80%9399.7_rule) means that if our SD was 0.3&deg;C, then out of 1000 compounds we would hypothetically screen, 997 of them would fall within a 1.8&deg;C range. This would mean that even if we were willing to tolerate a 0.15% false discovery rate and call everything above this range a hit, there was still no guarantee that a compound giving a true 1.5&deg;C T<sub>m</sub> shift would even be called as a hit. And all this was with manual plate loading, whereas whenever we tried to load plates in a scalable way, with an electronic multichannel or a CombiNano, we got even more variability.

The core problem, we realized, was that we simply had very little signal to work with. The DSF protocol I mentioned earlier [[Niesen 2007]] gives the example of a ~500% increase in Sypro Orange fluorescence upon melting a protein, i.e. an S:B ratio of 5. Our S:B ratio at any remotely realistic protein concentration was only about 1.4. A colleague at Broad who had done a few DSF screens said you really need an S:B of about 5, and a SD of T<sub>m</sub> down around 0.1 &deg;C, before it's worth screening. Niesen suggests that different dyes work for different proteins and that it's worth experimenting with other dyes. But it turns out that the other dyes mentioned in that paper, such as 1,8-ANS, have excitation and emission wavelengths that are not compatible with the Roche lightcyclers, which are hardwired to do only a few wavelengths &mdash; you can't even buy your own filter and put it in there, or at least not without a lot of hacking. I wrote to Roche to ask whether there was some way around this constraint, or anything else I should try. A helpful Tech Service representative got back to me, and after exchanging a few emails about our experimental details amd what we'd tried so far, I said it sounded like DSF for our protein was not worth pursuing further, and the representative replied: "Unfortunately, I would agree with your conclusion."

Is DSF for PrP a dead end? I'm not sure. As often happens in science, we never got to the point of definitively proving to ourselves that DSF could never work. We tried a large battery of different conditions, failed to find any that worked, and gradually the prospects for success came to seem remote enough that the DSF project was subsumed by more urgent priorities. Sonia and I are unlikely to pick this up again ourselves, but I don't rule out the possibility that someone could get it to work, and if anyone out there is trying, I'll be very interested to hear how it goes.



[Caughey 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9770449/ "Caughey WS, Raymond LD, Horiuchi M, Caughey B. Inhibition of protease-resistant prion protein formation by porphyrins and phthalocyanines. Proc Natl Acad Sci U S A. 1998 Oct 13;95(21):12117-22. PubMed PMID: 9770449; PubMed Central PMCID: PMC22794."

[Zhang 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10838414 "Zhang JH, Chung TD, Oldenburg KR. A Simple Statistical Parameter for Use in Evaluation and Validation of High Throughput Screening Assays. J Biomol Screen. 1999;4(2):67-73. PubMed PMID: 10838414."

[Nicoll 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20876144 "Nicoll AJ, Trevitt CR, Tattum MH, Risse E, Quarterman E, Ibarra AA, Wright C,  Jackson GS, Sessions RB, Farrow M, Waltho JP, Clarke AR, Collinge J. Pharmacological chaperone for the structured domain of human prion protein. Proc  Natl Acad Sci U S A. 2010 Oct 12;107(41):17610-5. doi: 10.1073/pnas.1009062107. Epub 2010 Sep 27. PubMed PMID: 20876144; PubMed Central PMCID: PMC2955083."

[Niesen 2007]: https://www.ncbi.nlm.nih.gov/pubmed/17853878 "Niesen FH, Berglund H, Vedadi M. The use of differential scanning fluorimetry to detect ligand interactions that promote protein stability. Nat Protoc. 2007;2(9):2212-21. PubMed PMID: 17853878."

[Poncet-Montange 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21610081/ "Poncet-Montange G, St Martin SJ, Bogatova OV, Prusiner SB, Shoichet BK, Ghaemmaghami S. A survey of antiprion compounds reveals the prevalence of non-PrP molecular targets. J Biol Chem. 2011 Aug 5;286(31):27718-28. doi: 10.1074/jbc.M111.234393. Epub 2011 May 24. PubMed PMID: 21610081; PubMed Central  PMCID: PMC3149362."

[Spevacek 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23290724 "Spevacek AR, Evans EG, Miller JL, Meyer HC, Pelton JG, Millhauser GL. Zinc drives a tertiary fold in the prion protein with familial disease mutation sites  at the interface. Structure. 2013 Feb 5;21(2):236-46. doi: 10.1016/j.str.2012.12.002. Epub 2013 Jan 3. PubMed PMID: 23290724; PubMed Central PMCID: PMC3570608."

[Massignan 2016]: http://www.ncbi.nlm.nih.gov/pubmed/26976106/ "Massignan T, Cimini S, Stincardini C, Cerovic M, Vanni I, Elezgarai SR, Moreno J, Stravalaci M, Negro A, Sangiovanni V, Restelli E, Riccardi G, Gobbi M, Castilla J, Borsello T, Nonno R, Biasini E. A cationic tetrapyrrole inhibits toxic activities of the cellular prion protein. Sci Rep. 2016 Mar 15;6:23180. doi: 10.1038/srep23180. PubMed PMID: 26976106; PubMed Central PMCID: PMC4791597."

[Gupta 2016]: http://www.ncbi.nlm.nih.gov/pubmed/27346148 "Gupta AN, Neupane K, Rezajooei N, Cortez LM, Sim VL, Woodside MT. Pharmacological chaperone reshapes the energy landscape for folding and aggregation of the prion protein. Nat Commun. 2016 Jun 27;7:12058. doi: 10.1038/ncomms12058. PubMed PMID: 27346148; PubMed Central PMCID: PMC4931252."




