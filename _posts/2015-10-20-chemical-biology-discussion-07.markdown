---
layout: post
title:  "Chemical biology discussion 07: diversity-oriented synthesis"
date:   2015-10-20 12:01:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from discussion section number 7 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Edward Harvey and Chris Gerry on October 20, 2015.*

### Miscellanea

Here are distinctions between a few related terms:

+ **small molecule** is the most general term, pretty much just any molecule less than an MW of say 1,000 or 1,500 Da.
+ **probe** is any small molecule with specific activity on a specific target, potentially usable in chemical biology experiments.
+ **lead** is a high throughput screening hit that has gone through at least some amount of optimization or improvement since the initial hit.
+ **drug** is an FDA-approved drug. A compound in clinical trials is still just a drug candidate, not a drug.

An R01 is intended to be ~$500,000 in funding, to support three scientists for three years. The scope of a proposal should match this level of effort.

### Does DOS work?

Q. Has diversity-oriented synthesis yielded any useful probes or drugs?

A. Yes! We discussed about 10 different examples in class. All of them have at least some interesting stereochemistry typically lacking in commercial libraries. Several also have larger (>6 member) heterocycles that are relatively rare in commercial libraries.

### Discussion of azetidine paper [[Lowe 2012]]

The authors set out to generate a library that was diverse yet optimized for likelihood of crossing the blood brain barrier. Because many known CNS-permeable molecules contain an azetidine scaffold or a phenylethylamine motif, they started with azetidine as the core of their synthesis strategy. To avoid having to do every reaction separately in separate round-bottom flasks and then purify each one after each step, they used solid supports. Each scaffold was attached to a SynPhase Lantern as a solid support. You basically just do every reaction linearly and wash out reactants after each step, then do the next step, then cleave off the lantern as the last step.

Potential project ideas based on this paper:

+ Profile biological activity of this library in cells using gene expression and cell morphology measurements, to see if the compounds have any novel mechanisms of action, or perhaps known mechanisms of action that had never previously been achieved with a BBB-permeable compound.
+ Generating new cheminformatic complexity metrics to describe the complexity of these compounds, and seeing if that correlates with performance diversity from above.
+ Pfizer once found that only 74% of its FDA-approved CNS drugs met the *a priori* criteria for CNS penetrance that are used, for instance, in this paper \[citation needed\]. Therefore there is much work to be done on improving the list of rules that people use to generate potential CNS compounds. However, it is not clear to me that there is any public dataset with sufficient *in vivo* data on CNS penetrance that you could use to train a model. Denise speculated that if you had access to all the proprietary data of every drug company, there might be in total as many as 100,000 compounds that have been tested in mice for BBB permeability &mdash; but none of those data are public.


[Lowe 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22853001 "Lowe JT, Lee MD 4th, Akella LB, Davoine E, Donckele EJ, Durak L, Duvall JR, Gerard B, Holson EB, Joliton A, Kesavan S, Lemercier BC, Liu H, Marié JC, Mulrooney CA, Muncipinto G, Welzel-O'Shea M, Panko LM, Rowley A, Suh BC, Thomas M, Wagner FF, Wei J, Foley MA, Marcaurelle LA. Synthesis and profiling of a diverse collection of azetidine-based scaffolds for the development of CNS-focused lead-like libraries. J Org Chem. 2012 Sep 7;77(17):7187-211. doi: 10.1021/jo300974j. Epub 2012 Aug 10. PubMed PMID: 22853001; PubMed Central PMCID: PMC3454511."


