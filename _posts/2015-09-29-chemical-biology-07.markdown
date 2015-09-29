---
layout: post
title:  "Chemical biology 07: Origins of small molecules"
date:   2015-09-29 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 7 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on September 29, 2015.*

### Natural products

**Natural products** are often bioactive in humans. They've been honed for activity by eons of evolution, which has advantages and disadvantages. The most prolific source of natural products is bacteria, particularly *Streptomyces*. Their genomes are filled with enzymes that synthesize small molecules, and often it is even the case that the genes are arranged along the bacterial genome in the same order as their protein products act in the synthesis cascade. *Streptomyces* has a trademark "woodsy" or "earthy" smell, and *Streptomyces* in the soil are the major source of the aroma one detects when walking through a forest.

There are several other species that produce natural products. Blue back frogs produce ion channel antagonists, yew trees produce paclitaxel, and photoplankton produce other chemotherapy agents. To date there are only about 3,000 natural products with known structures.

Years ago there was a contagious disease called "fire blight" that affected apple and pear trees, which was eventually traced to the bacterium *Erwinia amylovora* (strain B-1). A close relative of that bacterium, called *Erwinia herbicola* (strain B-2), often travels with B-1 but is non-causal: it appears to be an opportunistic species that preys off of the easy source of fruit in rotting fruit killed by B-1. B-2 actually inhibits B-1 growth, and this was eventually determined to be due to production of an antibiotic pantocin A. This chemical was isolated and can be used to prevent B-1 infection.

Another example is loblolly pine tree death due to Southern pine beetle (SPB; *Dendroctonus frontalis*) infestation. This is the subject of today's first reading [[Scott 2008]]. As a defense, pine trees attacked by SPB secrete a resin rich in cannabinoid (THC), the bioactive ingredient of marijuana, but this doesn't completely keep the pine beetles from attacking. The pine beetles make a volatile sex-specific pheromone. Pheromones are defined as chemicals which act on *other* species. In this instance, the pheromone specifically attracts female pine beetles, which can chemotactically navigate to the source. The females bore into the tree, and then secrete a second pheromone which attracts males, who then mate with the females. They can produce millions of offspring in days, so the infestation spreads through a forest very rapidly. When the larva hatch, they have to feed, and they don't eat trees. Turns out, the beetle tracks through the wood are lined with a fungus called *Entomocorticum sp.* which is the sole food source for the larvae. The female beetles have an organ called a mycangium, which harbors *Entomocorticum* to infect new trees. The damage to the tree, however, is mediated primarily by a competitor fungus called *Ophiostoma minus* which the beetles don't eat but which follows them around. *Ophiostoma minus* is carried by a mite (family *Tarsonemid*) that clings to the back of the beetle. There is also a bacterial strain *Streptomyces* SPB74 that lives in the mycangium of the pine beetle and produces an antifungal small molecule, polyene peroxide, that specifically targets *Ophiostoma minus* but not *Entomocorticum*. If you grow SPB74 and *Ophiostoma minus* in the same culture plate, you find that there is a zone of inhibition around the bacteria where the fungus will not grow. To identify the causal small molecule in this sort of situation, you can fraction and extract the bacterial secretions all different ways until you find a fraction that is bioactive that contains only one molecular entity.

In the next lecture we'll discuss how natural products can serve as starting points for drug discovery, using the examples of halichondrin and eribulin. The lecture after that will touch on several further examples including rapamycin, FK506, trapoxin, and lacatacystin. In some of these instances, a natural product has pointed to a target, and then a synthetic product hitting that same target has become a drug.

While natural selection has given rise to incredibly potent natural products with valuable medicinal properties, it also severely limits the space of potential targets. This is the topic of today's second reading [[Dancik 2010]]. The targets of natural products tend to be proteins that are highly connected in protein-protein interaction networks. Protein-protein interaction networks, like many natural and human-made systems, are [scale-free](https://en.wikipedia.org/wiki/Scale-free_network). In these networks, the targets of natural products tend to be "hubs": they have higher power than other nodes. Intuitively, it makes sense that a bacterium waging war on a fungus is going to evolve a chemical that targets something truly central to the fungus's biology and survival. It is hard to find natural products that target proteins that are poorly connected, as binding these proteins is less likely to disturb the fungus's biology. Yet many proteins involved in human disease have only moderate connectivity. An intuitive explanation for this is that the most essential proteins, the hubs, are so important that any mutations in them are likely to be embryonic lethal, so they are not associated with disease in living humans. Accordingly, binding these proteins (e.g. actin, tubulin) causes swift death, which makes them attractive targets for evolutionary chemical warfare &mdash; thus, these highly connected proteins are the targets of natural products. The least-connected nodes can be mutated and not cause any obvious phenotype, so they aren't associated with disease nor do natural products target them. But the mezzanine level of moderately connected nodes is where you tend to find human disease genes. And this is a level of connectivity where there are few natural product targets.

### Synthetic chemistry

The previous pargraph demonstrates that the dependence on natural selection limits what targets we can hit with natural products. In contrast to the examples mentioned earlier (such as halichondrin), where a natural product leads directly to a target, a goal of synthetic chemistry is to create compounds that are "natural product-like" in terms of their complexity and stereochemistry, while breaking the linkage to targets favored by nature.

What does it mean to create chemicals that are more natural product-like? Commercial compound collections are highly enriched for "flatlander" compounds with mostly sp<sup>2</sup> hybridization, while academic collections have more sp<sup>3</sup> hybridization. To determine if the sources of compounds affect assay performance, the Schreiber lab compared a series of commercial compounds vs. academic compounds vs. natural products in binding assays for 100 sequence-unrelated proteins [[Clemons 2010]]. The commercial compounds had a medium hit rate, but binders tended not to be very selective &mdash; in other words, many hits were shared across different assays. Some of these flat compounds may have been hitting a fairly generic flat co-factor binding site. The academic compounds from diversity-oriented synthesis had a high hit rate, and a high selectivity, meaning that most hits bound exactly one protein. Natural products had a low hit rate but high selectivity.

This study was done retrospectively, in a way, by calling up academic chemists and asking what compounds they had. In the future, how can we decide quantitatively which types of small molecules we want to synthesize going forward?

Corwin Hansch invented the idea of quantitative structure-activity relationships (QSAR), in which chemical structure is quantitatively correlated with a well-defined outcome such as a chemical property (e.g. boiling point) or activity in a biological system (e.g. binding a particular target). Christopher Lipinski, a scientist at Pfizer working on CNS drugs, later applied the QSAR concept to figuring out what chemical properties were enriched among FDA-approved CNS drugs, compared to all the putative CNS drugs that were earlier in the pipeline but not approved. He found the following rules of thumb:

+ &le;5 hydrogen bond donors
+ &le;10 hydrogen bond acceptors
+ Molecular weight <500
+ Calculated logP <5

These rules, which became known as "Lipinski's rule of five", were originally developed for CNS drugs but most pharmaceutical companies eventually came to view them as dogma for developing *any* drug. Yet many approved drugs, including the great majority of antibiotics, violate Lipinski's rule of five. And there is an element of self-fulfilling prophecy here, where because pharma companies focus on molecules that obey the rule of five, it continues to be the case that most FDA-approved drugs are rule of five-compliant.

An empirical approach to achieving performance diversity in compound collections is to collect highly multiplex measurements of activities of your compounds, and prioritize the synthesis of new compounds that prove to occupy a previously unoccupied space in that performance space.

### Open data sharing

As a final thought, to enable further improvements in compound collections and performance diversity, it is critical to sustain efforts toward greater openness and data sharing. The next tutorial in this class will cover one relevant public database, the BioAssay Research Database (BARD).

[Scott 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18832638/ "Scott JJ, Oh DC, Yuceer MC, Klepzig KD, Clardy J, Currie CR. Bacterial protection of beetle-fungus mutualism. Science. 2008 Oct 3;322(5898):63. doi: 10.1126/science.1160423. PubMed PMID: 18832638; PubMed Central PMCID: PMC2761720."

[Dancik 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20565092 "Dancík V, Seiler KP, Young DW, Schreiber SL, Clemons PA. Distinct biological network properties between the targets of natural products and disease genes. J Am Chem Soc. 2010 Jul 14;132(27):9259-61. doi: 10.1021/ja102798t. PubMed PMID: 20565092; PubMed Central PMCID: PMC2898216."

[Clemons 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20956335 "Clemons PA, Bodycombe NE, Carrinski HA, Wilson JA, Shamji AF, Wagner BK, Koehler AN, Schreiber SL. Small molecules of different origins have distinct distributions of structural complexity that correlate with protein-binding profiles. Proc Natl Acad Sci U S A. 2010 Nov 2;107(44):18787-92. doi: 10.1073/pnas.1012741107. Epub 2010 Oct 18. PubMed PMID: 20956335; PubMed Central  PMCID: PMC2973913."



