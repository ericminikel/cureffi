---
layout: post
title:  "Protein folding 03: GCN4 and alpha/beta structures"
date:   2015-02-19 12:00:00
author: ericminikel
tag: mit-7.88j
location: Cambridge, MA
summary200: ""
---

*These are my notes from week 3 of MIT course 7.88j: Protein Folding and Human Disease, held by Dr. Jonathan King on February 19, 2015.*

### Assignment 2

The reading for this week was [[O'Shea 1989]] as well as chapters 4-5 of [Branden & Tooze](http://amzn.com/0815323050).

#### Alpha/beta structures

&alpha;/&beta; structures are common to many small molecule-binding enzymes, including all of "glycolytic" enzymes (which bind and break down glucose in glycolysis). In such a structure, there is a core &beta;-barrel consisting of several beta sheets, either all parallel or mixed parallel/antiparallel, surrounded by a cage of alpha helices. In linear sequence, the alpha helices and beta sheets alternate. Thus, you can think of the structure as being made up of repeating &alpha;&beta;&alpha; motifs. It is actually the loops at one end of the barrel that form the active site for binding the small molecule.

Current phylogenetic evidence suggests that the 15 or so distinct proteins known to have alpha/beta structures arose by convergent evolution.

#### From leucine zipper to coiled coil

By the late 1980s, the "coiled coil" introduced [last time](/2015/02/12/protein-folding-02) was already understood to be the structure of fibrous proteins like tropomyosin and keratin. Landschulz et al studied the DNA-binding protein GCN4 and proposed that its structure was a "leucine zipper" in which the leucines, which repeated every 7 residues, interlocked [[Landschulz 1988]]. O'Shea et al responded with evidence that GCN4 is in fact also a coiled coil, a structure which shares some structural features with the proposed leucine zipper but does not have leucine interdigitation [[O'Shea 1989]].

It is worth recapping the major arguments of the 1989 paper one by one. O'Shea created 33-residue synthetic peptides corresponding to the proposed leucine zipper region of GCN4. In this paper, they did not yet determine a high-resolution structure - that came a few years later [[O'Shea 1991]] - but they used several clever experiments to narrow down the range of possible structures. First, they settled on some basic aspects of the structure:

+ Circular dichroism ([introduced here](/2015/01/22/the-quest-for-the-structure-of-prpsc/)) indicated 100% alpha helical structure.
+ The melting point depended on peptide concentration, which meant the peptide must form dimers or higher-order oligomers. They cite another group's sedimentation experiments showing that it is in fact a dimer.
+ The peptide is highly soluble, indicating the hydrophobic side chains must be buried in the helix-helix interface.

Then they tackled their core question of whether the helices were arranged in a parallel or antiparallel fashion. To do this, they synthesized 36-residue peptides with the original sequence plus CGG at the N terminus or GGC at the C terminus. The glycines allow flexibility so that the cysteine can form disulfide bonds under oxidizing conditions. They apparently could distinguish the C-terminal and N-terminal versions on HPLC, though I don't understand why that would be the case, as they should have the exact same molecular weight. In any event, they observed:

+ In oxidizing conditions, one could readily obtain homodimers (N-N or C-C disulfides) whereas heterodimers were rarely recovered, indicating that the parallel configuration was preferred for the folded protein.
+ In conditions that were both oxidizing *and* denaturing, it became possible to obtain heterodimers, indicating that the unfolded protein was capable of forming heterodimers. This seems to be a sort of control for the above bullet point.
+ Once formed, the homodimers had a melting temperature that was independent of concentration, consistent with covalent association. The heterodimer had a lower, and still concentration-dependent, melting-point. (I don't understand why this supports their theory; the heterodimer, though harder to form, ought to still be covalent, no?)
+ If they formed heterodimers in denaturing conditions and then added them to a redox buffer (presumably diluting away the denaturant?), they went away, while the homodimers stayed. Thus the homodimer was preferred.

Based on all of this they conclude that GCN4 forms a parallel coiled coil. This was shown even more definitively when they came out with their X-ray structure of it two years later [[PDB# 2ZTA](http://pdb.org/pdb/explore/explore.do?structureId=2zta), [O'Shea 1991]]:

```
fetch 2zta
hide everything
show cartoon
color red, chain A
color yellow, chain B
bg_color white
show sticks
```

![](/media/2015/02/gcn4-coiled-coil.png)




[O'Shea 1989]: http://www.ncbi.nlm.nih.gov/pubmed/2911757 "O'Shea EK, Rutkowski R, Kim PS. Evidence that the leucine zipper is a coiled coil. Science. 1989 Jan 27;243(4890):538-42. PubMed PMID: 2911757."

[Landschulz 1988]: http://www.ncbi.nlm.nih.gov/pubmed/3289117 "Landschulz WH, Johnson PF, McKnight SL. The leucine zipper: a hypothetical structure common to a new class of DNA binding proteins. Science. 1988 Jun 24;240(4860):1759-64. PubMed PMID: 3289117."

[O'Shea 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1948029 "O'Shea EK, Klemm JD, Kim PS, Alber T. X-ray structure of the GCN4 leucine zipper, a two-stranded, parallel coiled coil. Science. 1991 Oct 25;254(5031):539-44. PubMed PMID: 1948029."