---
layout: post
title:  "Chemical biology 12: Build/couple/pair in diversity-oriented synthesis"
date:   2015-10-15 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 12 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on October 15, 2015.*

Today begins a series of lectures about organic synthesis strategies to increase the diversity of chemical space accessed in compound libraries, and thereby make it more feasible to hit "undruggable" targets. Some good background readings on this challenge are [[Lovering 2009], [Nielsen & Schreiber 2008], [Schreiber 2009], [Dandapani & Marcaurelle 2010]].

Recall from the beginning of the class that there are two pillars we have to build for precision medicine. First, for many diseases, we are not certain where to aim &mdash; but there is hope that human biology and genomics can point us toward the right targets. Second, for many targets, we do not know how to hit them &mdash; but there is optimisim that next-generation synthesis can render the undruggable druggable. We must be disciplined about going after the right targets &mdash; the ones that are causal for human disease &mdash; rather than the easy targets.

Whereas **target-oriented synthesis** (the topic of the last few lectures) strives to achieve the total synthesis of specific natural products, **diversity-oriented synthesis** is inspired by the structural complexity and diversity of natural products as a class, rather than any one specific molecule.

Diversity bears on the size of screening collections needed. A library of 10<sup>6</sup> compounds that is highly redundant often covers less chemcial space than a performance-diverse library of 10<sup>4</sup> compounds.

Different reactions are capable of generting different amounts of complexity. For instance, an alcohol plus carboxylic acid can create an ester, which doesn't give you much complexity. Diels-Alder reactions, in contrast, can create lots of stereocenters, so are much more capable of generating complexity. If you do a search for compounds that are the product of one complexity-generating reaction and a substrate for a second complexity-generating reaction, then you have a 2-step process to go from simple reactants to highly complex products.

If you mix an amine, an aldehyde, an isonitrile, and a carboxylic acid, you can get an incredibly complex product in just a few steps from four very simple reactants [[Lee 2000]]. Complex molecules are not necessarily better than simple molecules, but it would be nice to at least have a collection of complex molecules to test the hypothesis that certain complex molecules can do certain things that no simple molecule can do.

Another strategy for synthesis is **appendage diversity**: start with a central scaffold, and add different arms onto the molecule in a combinatoric fashion [[Tan 1998]]. Though this strategy allows synthesis of millions of non-identical compounds, such a set of compounds has turned out to not be very performance-diverse.

One can also design ad hoc diversity syntheses - for instance, looking at any one molecule, one can often imagine a strategy to do something unique with it. But these are often not generalizable.

One more systematic approach is to combine chiral fragments in, say, a Mitsunobu reaction, so that if you have 2 stereoisomers of one reactant and 4 stereoisomers of the other, you can generate any of 8 steroisomers of the product. Another is to choose reactions that are capable of generating **skeletal diversity** [[Micalizio & Schreiber 2002], [Burke 2003], [Sello 2003], [Burke 2004]]. Some chemical structures are more "pluripotent" than other chemical structures, and stereochemistry of reactants can lead to skeletal and folding diversity of products.

Another systematic approach is **build/couple/pair**. Organisms synthesize all natural products essentially by this mechanism [[Schreiber 2009]] - for instance, penicillin is synthesized from amino acids by a build/couple/pair mechanism. We can now do it synthetically too, although there are still specific coupling reactions that occur in nature that we do not know how to achieve in the lab.

+ **Build**: asymmetric syntheses of chiral building blocks with functionality suitable for the couple and pair steps.
+ **Couple**: intermolecular coupling reactions that join those building blocks in all possible stereochemical combinations.
+ **Pair**: intramolecular coupling reactions that join the remaining functional groups in all possible combinations.

The first two steps give you stereochemical diversity, while the last step gives you skeletal diversity. For more examples, see [[List 2002], [Oguri & Schreiber 2005], [Kumagai 2006], [Mitchell & Shaw 2006], [Morton 2009]].

Ideally, the "build" stage is actually just a "purchase" phase. Nature actually uses very few building blocks, and commercially available chemical fragments already contain far more diversity than nature works with.

Until a few years ago, basically 100% of fragments available commercially for fragment-based screening were flat heterocycles. Now there are strategies for obtaining three-dimensional fragments that still meet all of the molecular weight, solubility, etc. rules for fragments [[Hung 2011]].




[Lovering 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19827778 "Lovering F, Bikker J, Humblet C. Escape from flatland: increasing saturation as an approach to improving clinical success. J Med Chem. 2009 Nov 12;52(21):6752-6. doi: 10.1021/jm901241e. PubMed PMID: 19827778."

[Nielsen & Schreiber 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18080276 "Nielsen TE, Schreiber SL. Towards the optimal screening collection: a synthesis strategy. Angew Chem Int Ed Engl. 2008;47(1):48-56. Review. PubMed PMID: 18080276; PubMed Central PMCID: PMC2645036."

[Schreiber 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19129834 "Schreiber SL. Organic chemistry: Molecular diversity by design. Nature. 2009 Jan 8;457(7226):153-4. doi: 10.1038/457153a. PubMed PMID: 19129834."

[Dandapani & Marcaurelle 2010]: http://www.ncbi.nlm.nih.gov/pubmed/21079589 "Dandapani S, Marcaurelle LA. Grand challenge commentary: Accessing new chemical space for 'undruggable' targets. Nat Chem Biol. 2010 Dec;6(12):861-3. doi: 10.1038/nchembio.479. PubMed PMID: 21079589."

[Lee 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10814416 "Lee D, Sello JK, Schreiber SL. Pairwise use of complexity-generating reactions in diversity-oriented organic synthesis. Org Lett. 2000 Mar 9;2(5):709-12. PubMed PMID: 10814416."

[Tan 1998]: http://dx.doi.org/10.1021/ja981746o "Tan, D. S., Foley, M. A., Shair, M. D., & Schreiber, S. L. (1998). Stereoselective synthesis of over two million compounds having structural features both reminiscent of natural products and compatible with miniaturized cell-based assays. Journal of the American Chemical Society, 120(33), 8565-8566."

[Micalizio & Schreiber 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12207413 "Micalizio GC, Schreiber SL. An alkynylboronic ester annulation: development of synthetic methods for application to diversity-oriented organic synthesis. Angew  Chem Int Ed Engl. 2002 Sep 2;41(17):3272-6. PubMed PMID: 12207413."

[Burke 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14576427 "Burke MD, Berger EM, Schreiber SL. Generating diverse skeletons of small molecules combinatorially. Science. 2003 Oct 24;302(5645):613-8. PubMed PMID: 14576427."

[Burke 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15506774 "Burke MD, Berger EM, Schreiber SL. A synthesis strategy yielding skeletally diverse small molecules combinatorially. J Am Chem Soc. 2004 Nov 3;126(43):14095-104. PubMed PMID: 15506774."

[Sello 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14572265/ "Sello JK, Andreana PR, Lee D, Schreiber SL. Stereochemical control of skeletal diversity. Org Lett. 2003 Oct 30;5(22):4125-7. PubMed PMID: 14572265; PubMed Central PMCID: PMC4134662."

[Morton 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19016294/ "Morton D, Leach S, Cordier C, Warriner S, Nelson A. Synthesis of natural-product-like molecules with over eighty distinct scaffolds. Angew Chem Int Ed Engl. 2009;48(1):104-9. doi: 10.1002/anie.200804486. PubMed PMID: 19016294; PubMed Central PMCID: PMC2633658."

[List 2002]: http://www.ncbi.nlm.nih.gov/pubmed/11817958 "List B, Pojarliev P, Biller WT, Martin HJ. The proline-catalyzed direct asymmetric three-component Mannich reaction: scope, optimization, and application to the highly enantioselective synthesis of 1,2-amino alcohols. J Am Chem Soc. 2002 Feb 6;124(5):827-33. PubMed PMID: 11817958."

[Kumagai 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16646101 "Kumagai N, Muncipinto G, Schreiber SL. Short synthesis of skeletally and stereochemically diverse small molecules by coupling petasis condensation reactions to cyclization reactions. Angew Chem Int Ed Engl. 2006 May 26;45(22):3635-8. PubMed PMID: 16646101."

[Mitchell & Shaw 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16482504 "Mitchell JM, Shaw JT. A structurally diverse library of polycyclic lactams resulting from systematic placement of proximal functional groups. Angew Chem Int Ed Engl. 2006 Mar 3;45(11):1722-6. PubMed PMID: 16482504."

[Oguri & Schreiber 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15624974 "Oguri H, Schreiber SL. Skeletal diversity via a folding pathway: synthesis of  indole alkaloid-like skeletons. Org Lett. 2005 Jan 6;7(1):47-50. PubMed PMID: 15624974."

[Hung 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21482811 "Hung AW, Ramek A, Wang Y, Kaya T, Wilson JA, Clemons PA, Young DW. Route to three-dimensional fragments using diversity-oriented synthesis. Proc Natl Acad Sci U S A. 2011 Apr 26;108(17):6799-804. doi: 10.1073/pnas.1015271108. Epub 2011  Apr 11. PubMed PMID: 21482811; PubMed Central PMCID: PMC3084099."



