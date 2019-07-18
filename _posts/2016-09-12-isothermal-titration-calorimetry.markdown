---
layout: post
title:  "Isothermal titration calorimetry"
date:   2016-09-12 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2016/09/itc_thumbnail.png
summary200: "ITC measures the heat released by two molecules binding in solution in order to determine the thermodynaimc parameters of binding."
---

![](/media/2016/09/auto-itc200.png)

Last week I learned how to perform **isothermal titration calorimetry** (ITC). Here's what I learned.

### principles

ITC is a useful tool for studying direct interactions between two molecules in solution &mdash; for example, a protein and a small molecule ligand. It can not only inform on whether a binding event occurs, but also provide data on the thermodynamic parameters of the interaction.

In ITC, one of the two molecules is stored in a chamber called the **sample cell** and the other is injected into that cell from a **syringe**. For sake of example, we'll say the protein is in the sample cell and the small molecule is in the syringe, though these roles can be reversed. Next to the sample cell, a **reference cell** contains the exact same buffer but with neither protein nor small molecule in it. As the small molecule is injected into the sample cell, it and the protein may bind, releasing heat. The reference cell and sample cell have very precise thermometers, and tiny heaters working to keep them at the same temperature. By measuring the difference in how much energy has to go into the two heaters to maintain the same temperature (*isothermal*) during the injection, the instrument can determine the amount of heat energy released by the binding event (*calorimetry*). By adding the small molecule into the sample cell over a series of small injections (*titration*), the instrument can gather data sufficient to determine the thermodynamic parameters of binding.

![](/media/2016/09/itc_injection.png)

*Above: closeup of the ITC syringe engaging the cell.*

GE offers [this helpful tutorial](/media/2016/09/Auto_ITC200_training.pdf) describing both the principles of ITC and the use of this machine in particular. Here's a diagram I adapted from their tutorial depicting how the data typically look and what you can infer from them:

![](/media/2016/09/itc_diagram.png)

The x axis is time, the y axis is rate of heat release (&mu;cal/sec), and each spike represents one injection. For the first few injections, the small molecule is less abundant, so it all immediately gets bound by protein, releasing the maximum amount of heat that it is capable of releasing, per mole of small molecule. Thus, the magnitude of the early spikes tells you the &Delta;H, or enthalpy of binding. As you inject more small molecule, you begin to saturate the protein, which gives you a sigmoid shape, culminating in a flat curve at far right when the protein is all already ligand-bound. The slope of the middle of the sigmoid curve tells you the association constant, or K<sub>a</sub>. The more commonly referred-to dissociation constant is just its inverse: K<sub>d</sub> = 1/K<sub>a</sub>. The midpoint of the sigmoid curve occurs at N, the molar ratio of binding. If each copy of the protein binds one copy of the ligand, then the midpoint of the curve should occur when the two molecules are equimolar, N = 1.

As explained helpfully [in these OCW notes](http://ocw.mit.edu/courses/biology/7-51-graduate-biochemistry-fall-2001/lecture-notes/fa01lec06.pdf), the Gibbs free energy of binding is related to the association (or dissociation) constant. &Delta;G<sub>association</sub> = RTlnK<sub>a</sub> or &Delta;G<sub>dissociation</sub> = RTlnK<sub>d</sub>. And we also know that binding is driven by enthalpy and entropy: &Delta;G = &Delta;H - T&Delta;S. So having observed K<sub>d</sub> and &Delta;H, it is possible to also infer &Delta;S &mdash; the entropy of binding.

When I sat down to work through the math, I realized just how sensitive an instrument the ITC is. In our case (as will be explained more below) we performed 20 injections of 2 &mu;L each of a 1 mM solution of our small molecule. That means that each injection contained 2e-6 L at 1e-3 mol/L = 2e-9 mol = 2 nmol of small molecule. The enthalpy was determined to be on the order of -4 kcal/mol in the first full injection (before the protein was saturated with ligand) which means that the energy released in the binding event of that injection was 4e3 cal/mol &times; 2e-9 mol = 8e-6 cal = 8 microcalories. Remember that a calorie raises 1 g = 1 mL of water by 1&deg;K. So 8 microcalories would only raise the temperature of (say) a 100 &mu;L ITC cell by 8e-5 &deg;K, and even if all 20 injections released this much heat, that would still be only a .0016 &deg;K temperature increase.

### in practice

Broad has a GE MicroCal&trade; AUTO-iTC<sub>200</sub>. Experiments are set up in deep 96-well plates. Each ITC experiment takes up three wells of the plate &mdash; one each for protein (for the sample cell), compound (for the syringe), and buffer-only (for the reference cell) &mdash; and takes on the order of 2 hours, depending on exactly what settings you choose. Most of that time is spent on cleaning and liquid handling; the actual experiment is more like 40 minutes. Usually, it is a good idea to also run a control where you have only buffer in both the sample and reference cell, and inject compound into it &mdash; this can help you keep from getting tricked by artifacts where just diluting the compound releases energy. Thus, a typical setup might involve 6 wells and 4 hours total:

![](/media/2016/09/example_itc_experiment_layout.png)

Remember that the 1st, 2nd, and 3rd wells (and their respective volume requirements) just correspond to sample cell, syringe, and reference cell. Unlike what's depicted above, you can choose to put 125 &mu;L protein in the syringe and 400 &mu;L compound in the sample cell.

The ideal ITC experiment, as depicted in the example plot further up in this post, gives you a full sigmoid curve. Depending on your K<sub>d</sub>, you can tweak the protein concentration, compound concentration, and number and size of injections to try to achieve this curve. If you don't know the K<sub>d</sub> (maybe that's why you're doing ITC in the first place), a good starting point is 25 &mu;M protein in the sample cell and maybe 800 &mu;M or 1 mM compound in the syringe. The AUTO-iTC<sub>200</sub> does injections at a rate of 0.5 &mu;L/sec, and a typical protocol might be 20 injections of 4 seconds (2 &mu;L) each, with a 180 second break between injections to allow the cells to reach equilibrium.

ITC is incredibly sensitive to buffer conditions. It is essential that the buffer for the protein, the compound, and buffer-only conditons be the dialysis buffer from dialyzing the protein. Simply measuring out the same ingredients and calling it the same buffer is not good enough. Adding DMSO after the fact to match the DMSO concentration in the compound is usually a necessary evil, but one still needs to interpret data with caution. According to [that GE tutorial](/media/2016/09/Auto_ITC200_training.pdf) I mentioned earlier, even a difference of 2% DMSO vs. 1.95% DMSO can result in a weak but detectable heat release upon each injection. Also, buffers that release heat when they ionize are problematic. Luckily, phosphate and HEPES (the only two buffers we have ever used with PrP here) are both acceptable. Since PrP is extracellular, we leave our recombinant PrP oxidized, but if you need a reducing agent, apparently TCEP is permissible but DTT is not.

So when setting up the experiment, remember to dilute your protein and compound in the dialysis buffer that you'll use as the buffer-only reference, and to have the same concentration of DMSO (if applicable) in every cell. For instance, if you have a 100 mM compound stock in 100% DMSO, you could mix 2 &mu;L of your stock with another 3 &mu;L of DMSO (order of addition matters for solubility) and then add 245 &mu;L of dialysis buffer, for a final 250 &mu;L of 800 &mu;M compound in 2% DMSO &mdash; enough for both your binding experiment (125 &mu;L) and control experiment (125 &mu;L). In order to match your other solutions exactly, dilute your protein to 25 &mu;M in dialysis buffer and then add 2% DMSO, and add 2% DMSO to the reference buffer-only condition as well. You can prep all these solutions in Eppendorf tubes before transferring them to the plate.

### a pilot experiment

In order to learn ITC, I did a simple pilot experiment to see if I could replicate something that has been reported in the literature.

![](/media/2016/09/fetmpyp.png)

Four independent research groups have reported that an iron porphyrin referred to as [FeTMPyP](https://www.caymanchem.com/product/75854) (above) binds to PrP<sup>C</sup> and exhibits antiprion properties, with low micromolar potency [[Caughey 1998], [Nicoll 2010], [Massignan 2016], [Gupta 2016]]. One of these groups reported an ITC experiment for FeTMPyP binding to N-terminally truncated recombinant human PrP [[Nicoll 2010], [Figure 1](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2955083/figure/F1/)].

We ordered FeTMPyP from [Cayman Chemical](https://www.caymanchem.com/product/75854) earlier this year and made a 100 mM stock in water. (In our experience it actually dissolves more readily in water than in DMSO). For protein I used recombinant HuPrP90-231 produced [Rocky Mountain-style](http://www.cureffi.org/2014/07/30/recombinant-prion-protein-rocky-mountain-style/) and dialyzed against 20% [CSHL PBS](http://cshprotocols.cshlp.org/content/2006/1/pdb.rec8247) at pH 7.4. (This was our 13th batch of recombinant PrP, and we had a yield of 55 mg from 1L of bacterial culture &mdash; we've come a long way since [last December](/2015/12/22/our-first-recombinant-prp-prep-at-broad/)!) The protein had been frozen at -80&deg;C at 112.5 &mu;M (spec'ed on the NanoDrop).

Here's what my prep looked like:

+ 1 mM compound: dilute 3 &mu;L FeTMPyP (100 mM in water) in 297 &mu;L of the protein's dialysis buffer
+ 25 &mu;M protein: dilute 111 &mu;L of 112.5 &mu;M protein in 384 &mu;L of dialysis buffer and 5 &mu;L of water (to match the water the FeTMPyP is dissolved in &mdash; yes, I'm being that rigorous about buffer matching). Note that recombinant HuPrP90-231 weighs in at about 16 kDa, so this experiment costs about 0.5 mg of protein.
+ buffer-only: combine 1386 &mu;L of dialysis buffer with 14 &mu;L of water (again, to match the solvent of the FeTMPyP)

I added 400 &mu;L of protein to well A1, 125 &mu;L of compound to A2 and A5, and 400 &mu;L buffer to A3, A4, and A6.

The instrument's operating software is fiddly and not always intuitive, so here are a few points:

+ Your ultimate goal is to get the Experiments tab to reflect the actual physical layout of your plate. The Sample Groups tab is simply a tool to help you populate the table on the Experiments tab. The Automation Method determines the number of wells per experiment. We use Plates Prerinse Syringe Clean, which gives 3-well experiments as I've described here.
+ In the "Data File" column of the Experiments tab, be sure to specify filenames that are unique over the first 10 characters. The instrument's operating software will let you save with any length of filename with any length constant prefix, but when you later open your data in the instrument's *analysis* software (Origin Data Analysis), it will only load datasets by the first 10 characters of their filename, and it is literally unable to hold two datasets of the same 10-character name open at the same time. If you accidentally already gave your files long repetitive names, you're not out of luck, though: you can navigate to the raw .itc text files stored on disk and rename them. The filename itself is the only record of the experiment's name.
+ The number and size of injections and other parameters are stored in an "ITC Method" on the Instrument Setup tab. The list of ITC Methods displayed here is simply a list of .inj files found in a particular directory (on our instrument, C:\\ITC200\\Setup). You can use Save As to create a new ITC Method, but save it in that same directory &mdash; if you save it in, say, a subdirectory with your name, it will *not* appear in the ITC Methods list.
+ After you fill out the Experiments tab, click "Validate" and the software will predict how much water, methanol, detergent, and waste capacity will be needed. Empty or refill bottles as appropriate. Only once this is done should you click Play.

We ran the experiment under the standard protocol of 20 injections of 4 seconds (2 &mu;L) each, with 180 seconds between injections, and it was done within 4 hours.

I haven't had a chance to really work on understanding the format of these .itc raw text files yet but in case anyone wants to dig in, here they are:

+ [FeTMPyP2HuPrP902301.itc](/media/2016/09/FeTMPyP2HuPrP902301.itc) - binding experiment
+ [FeTMPyP2buffer1.itc](/media/2016/09/FeTMPyP2buffer1.itc) - buffer-only control

In principle, here's what the analysis stage consists of. The text files describe the energy released as a function of time in each injection. You integrate to obtain the total energy release per injection. You fit a sigmoid curve to these points, and the parameters of that fitted curve tell you &Delta;H (enthalpy), K<sub>a</sub> (association constant), and N (molar ratio).

I haven't dug into the raw data myself, instead relying so far on what is apparently the standard pipeline for analyzing these data in the Origin Data Analysis software that comes with the machine. This pipeline is a bit tricky, so here's a step-by-step. Go to File > New Project... and then on the background (not the menu bar) click "Read data..." and select the binding and control experiments, in that order, Add File(s) and click OK. The software will take several seconds to do a bunch of analyses in the background. You can click through the windows (Window menu) and see the raw ITC data, the tables, and the processed data. The raw curves in our case looked like this:

![](/media/2016/09/raw_curves.png)

Green is the binding experiment, where the negative spikes represent heat released at each injection, and black is control, where the positive spikes (of much smaller magnitude) apparently represent some minor endothermic property of diluting the compound into buffer. The Window > ADeltaH tab will show you the processed data, with points representing the area under the curve of each injection spike. Click on "Subtract Reference Data..." to subtract the control points from the binding experiment points, and "Remove 1st Injection..." because the ITC does a little test injection of only 0.4 &mu;L first before it starts the "real" injections, and this outlier shouldn't be used in curve fitting. Then go to Advanced > Fitting Mode > Single File Mode. Click on "One Set of Sites" under Model Fitting on the background buttons, which will take you to a Nonlinear Curve Fitting window, where you can click "1 Iter" a few times until the numbers stop changing. This is just fitting the sigmoid curve to the processed data.

I found it very easy to get confused about which buttons to click in the software, because there are many similar-looking options. Here is a quick guide:

![](/media/2016/09/itc_data_analysis.png)

At the end of all that, you'll have a curve with a fitted line and parameters. To make a nice 2-panel plot with the subtracted data as well as the model and fit, go to Analysis > Final Figure. If you want the legend with the fitted thermodynamic parameters to display, you have to copy and paste it over from the ADeltaH window where it was born. You may also want to fiddle with axis display increments as the defaults aren't always legible. Here's what my data looked like:

[![](/media/2016/09/itc_prp_fetmpyp.png)](/media/2016/09/itc_prp_fetmpyp.pdf)

Note that the first 0.4&mu;L test injection is still represented in the raw data (top panel) but has not been used in the curve fitting (bottom panel).

Here's some interpretation of these data:

+ &Delta;H = -7.5 kcal/mol. That [GE tutorial](/media/2016/09/Auto_ITC200_training.pdf) says that -5 kcal/mol is "average", and it's hard to say what they mean by that, but at least I infer we're at least on the order of magnitude that is usually seen with ITC.
+ N = 1.03. Nominally, this means that the molar ratio is ~1, so FeTMPyP has a single binding site on PrP and binds in a 1:1 stoichiometry. However, because we don't have a full sigmoid curve (it gets flat on the far right but not on the far left), the N is considered uninterpretable. To be confident that 1 is the correct answer, we would need to re-run the experiment and get more points further left on the x axis, at a molar ratio of <1.
+ K<sub>a</sub> = 4.96e4 M<sup>-1</sup>. We take the inverse (1/K<sub>a</sub>) find that K<sub>d</sub> = 2.0-5 M. So the K<sub>d</sub> of FeTMPyP for PrP in this experiment is 20 &mu;M.
+ &Delta;S = -3.5 cal/mol/&deg;K. The negative value indicates that entropy is actually fighting this binding event, which is being driven entirely-and-then-some by the negative enthalpy.

### interpretation

I am excited that this experiment worked &mdash; ITC was easy to learn, quick to set up, and should be a good way to validate any screening hits that appear to bind PrP. That said, like any technique it does have some caveats, particularly the need for binding to be enthalpically driven, the dependence on buffer conditions, and the difficulty of getting a nice full sigmoid curve for certain K<sub>d</sub> values. 

The dissociation constant (K<sub>d</sub>) that we obtained for FeTMPyP binding PrP is 20&mu;M. That's slightly higher than has been reported previously, though this could simply be a matter of the experimental details. In [[Nicoll 2010]] they did several ITC experiments, varying the PrP construct (Hu91-231 or Hu119-231), the experimental design (protein in cell and compound in syringe or vice versa), and the buffer conditions (low or physiological NaCl), and obtained several answers ranging from 3 &mu;M to 11 &mu;M. Our entropy value for FeTMPyP, -3.5 cal/mol/&deg;K, is also of a slightly a larger magnitude than reported &mdash; [[Nicoll 2010]] reported values of -0.5 and -1.5. If you figure &Delta;G = &Delta;H - T&Delta;S, and &Delta;H = -7.5 kcal/mol, T = 298&deg;K (room temperature), and &Delta;S = -3.5 cal/mol/&deg;K, then overall &Delta;G = -6.4, with the enthalpy driving it and the entropy slightly fighting it.

In spite of there being so many different groups that have reported FeTMPyP binding PrP, and in spite of our own data here validating a release of heat energy when FeTMPyP is titrated into PrP, I still can't shake a certain skepticism about whether FeTMPyP is a "real" binder in the sense of binding specifically and at a defined binding site on PrP's surface. Porphyrins are known to derive some of their bioactivities through aggregation (try a Google Scholar search for ["porphyrin stacking"](https://scholar.google.com/scholar?hl=en&q=porphyrin+stacking&)) and certain other antiprion porphyrins have been seen to aggregate [[Nicoll 2010]]. FeTMPyP apparently binds bovine serum albumin with a K<sub>d</sub> of ~10 &mu;M [[Massignan 2016]], similar to its affinity for PrP. On top of all that, FeTMPyP is also fluorescent, chelating, and NMR-quenching (because iron is ferromagnetic). It's a perfect storm of potentially assay-busting properties. Yet it undeniably does possess some genuine bioactivity, and here in ITC and in many other assays [[Massignan 2016]] it behaves beautifully, and makes for a handy positive control.

[Caughey 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9770449/ "Caughey WS, Raymond LD, Horiuchi M, Caughey B. Inhibition of protease-resistant prion protein formation by porphyrins and phthalocyanines. Proc Natl Acad Sci U S A. 1998 Oct 13;95(21):12117-22. PubMed PMID: 9770449; PubMed Central PMCID: PMC22794."

[Nicoll 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20876144 "Nicoll AJ, Trevitt CR, Tattum MH, Risse E, Quarterman E, Ibarra AA, Wright C,  Jackson GS, Sessions RB, Farrow M, Waltho JP, Clarke AR, Collinge J. Pharmacological chaperone for the structured domain of human prion protein. Proc  Natl Acad Sci U S A. 2010 Oct 12;107(41):17610-5. doi: 10.1073/pnas.1009062107. Epub 2010 Sep 27. PubMed PMID: 20876144; PubMed Central PMCID: PMC2955083."

[Massignan 2016]: http://www.ncbi.nlm.nih.gov/pubmed/26976106/ "Massignan T, Cimini S, Stincardini C, Cerovic M, Vanni I, Elezgarai SR, Moreno J, Stravalaci M, Negro A, Sangiovanni V, Restelli E, Riccardi G, Gobbi M, Castilla J, Borsello T, Nonno R, Biasini E. A cationic tetrapyrrole inhibits toxic activities of the cellular prion protein. Sci Rep. 2016 Mar 15;6:23180. doi: 10.1038/srep23180. PubMed PMID: 26976106; PubMed Central PMCID: PMC4791597."

[Gupta 2016]: http://www.ncbi.nlm.nih.gov/pubmed/27346148 "Gupta AN, Neupane K, Rezajooei N, Cortez LM, Sim VL, Woodside MT. Pharmacological chaperone reshapes the energy landscape for folding and aggregation of the prion protein. Nat Commun. 2016 Jun 27;7:12058. doi: 10.1038/ncomms12058. PubMed PMID: 27346148; PubMed Central PMCID: PMC4931252."

