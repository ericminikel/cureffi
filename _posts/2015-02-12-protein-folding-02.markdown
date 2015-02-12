---
layout: post
title:  "Protein folding 02: "
date:   2015-02-12 12:00:00
author: ericminikel
tag: mit-7.88j
location: Cambridge, MA
summary200: ""
---

*These are my notes from week 2 of MIT course 7.88j: Protein Folding and Human Disease, held by Dr. Jonathan King on February 12, 2015.*

### Assignment 1

For today's class we read three papers and one retrospective essay on the early history of protein structure [[Pauling 1951], [Sela 1957], [Anfinsen 1961], [Perutz 1987]]. A useful modern review that connects terms in those papers to what we know today is [[Eisenberg 2003]].

Pauling, Corey and Branson proposed two energetically stable protein secondary structures [[Pauling 1951]]. The first (Fig 2 & 4) is left-handed and made of D amino acids, with 3.7 residues per turn and 1.5&Aring; translation along the helical axis per residue. The second is right-handed and made of L amino acids, with 5.1 residues per turn and 0.99 &Aring; of translation per residue. The first structure is very similar to what we now call alpha helices. However, it turns out that in real life, naturally occurring amino acids are all levorotary (L) and alpha helices are right-handed. Also the number of residues per turn is now known to be closer to 3.6. The second structure is now referred to as a gamma helix but is virtually absent from nature. It also turns out there are a few secondary structures which are rarer than alpha helices but still existent, such as the [3<sub>10</sub> helix](http://en.wikipedia.org/wiki/310_helix), which Pauling, Corey and Branson did not anticipate.

With 3.6 residues per turn and 1.5&Aring; translation per residue, the alpha helix completes one 360&deg; turn every 3.6&times;1.5 = 5.4&Aring;. This is called the "pitch" of the alpha helix. I have labeled these properties on this PyMOL screenshot of human PrP<sup>C</sup> residues 146-151 (EDRYYR), a segment of &alpha;-helix 1, from an X-ray crystal structure by [[Knaus 2001]] \[[PDB# 1I4M](http://pdb.org/pdb/explore/explore.do?structureId=1I4M)\]:

![](/media/2015/02/huprp-146-151-labeled.png)

To reproduce the above figure, follow these steps in PyMOL (see also [this post](/2014/12/21/structures-of-prpc/)):

```
bg_color white
fetch 1i4m
hide everything
show cartoon, resi 146-151
show sticks, resi 146-151
color red, resi 146
color orange, resi 147
color yellow, resi 148
color green, resi 149
color blue, resi 150
color violet, resi 151
```

A nice overview of supersecondary structures is [here](http://www.acsu.buffalo.edu/~sjpark6/pednotes/Motifs.pdf). Most &beta;&alpha;&beta; motifs are right-handed, though I always need to look at the diagram to remember exactly what that means spatially.

DTT is one agent to reduce disulfide bonds. Here are the steps by which it acts:

![](/media/2015/02/dtt-mechanism.png)

Mercaptoethanol is virtually identical:

![](/media/2015/02/mercaptoethanol-mechanism.png)

Anfinsen and colleagues discuss five mechanisms (A1, A2, A3, A4 and B) for how proteins might spontaneously fold [[Anfinsen 1961]]. Here are their conclusions:

+ A1. Once one disulfide bond forms in RNAse, the energy barrier to forming the remaining ones is lowered, so there is a tipping point where a molecule will very suddenly adopt the native conformation. They rule out this mechanism because as they re-oxidize the disulfide bonds in RNAse, they are able to free up many thiol (-SH) groups before getting back any enzymatic activity.
+ A2. Each of the four unique disulfide bonds in RNAse has a different energy barrier to re-forming, such that as you re-oxidize, first bond 1 will form on every molecule, then bond 2 will form on every molecule, and so on. This would imply that not until you eliminate all thiol groups would you see any enzymatic activity - but in fact they see enzymatic activity earlier, so they rule this out.
+ A3. The bonds form in random order. Thus if you had eliminated 3/4 of free thiol, the probability that any one molecule has re-formed all of its disulfide bridges would be (3/4)<sup>4</sup> = 32%. But in fact, they see that when 3/4 of thiol are eliminated, they get >50% enzymatic activity, so they rule this out too.
+ A4. The limiting rate for regaining of enzymatic activity is secondary structure folding, not disulfide bond formation. They rule this out on the basis of a number of their earlier studies they cite which suggest that secondary structure formation is very rapid, whereas the lag time in their own experiments is on the order of hours.
+ B. Disulfide bonds form incorrectly (meaning between all 8 choose 2 pairs of cysteines rather than only the four correct combinations) at first, and then get rearranged later as folding proceeds. They believe this explanation is most likely.


[Eisenberg 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12966187 "Eisenberg D. The discovery of the alpha-helix and beta-sheet, the principal structural features of proteins. Proc Natl Acad Sci U S A. 2003 Sep 30;100(20):11207-10. Epub 2003 Sep 9. PubMed PMID: 12966187; PubMed Central PMCID: PMC208735."

[Pauling 1951]: http://www.ncbi.nlm.nih.gov/pubmed/14816373 "PAULING L, COREY RB, BRANSON HR. The structure of proteins; two hydrogen-bonded helical configurations of the polypeptide chain. Proc Natl Acad Sci U S A. 1951 Apr;37(4):205-11. PubMed PMID: 14816373; PubMed Central PMCID: PMC1063337."

[Sela 1957]: http://www.ncbi.nlm.nih.gov/pubmed/13421663 "SELA M, WHITE FH Jr, ANFINSEN CB. Reductive cleavage of disulfide bridges in ribonuclease. Science. 1957 Apr 12;125(3250):691-2. PubMed PMID: 13421663."

[Anfinsen 1961]: http://www.ncbi.nlm.nih.gov/pubmed/13683522/ "ANFINSEN CB, HABER E, SELA M, WHITE FH Jr. The kinetics of formation of native ribonuclease during oxidation of the reduced polypeptide chain. Proc Natl Acad Sci U S A. 1961 Sep 15;47:1309-14. PubMed PMID: 13683522; PubMed Central PMCID: PMC223141."

[Perutz 1987]: http://www.the-scientist.com/?articles.view/articleNo/8440/title/-I-Wish-I-d-Made-You-Angry-Earlier-/ "Perutz. February 23, 1987. 'I Wish I'd Made You Angry Earlier'"

[Knaus 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11524679 "Knaus KJ, Morillas M, Swietnicki W, Malone M, Surewicz WK, Yee VC. Crystal structure of the human prion protein reveals a mechanism for oligomerization. Nat Struct Biol. 2001 Sep;8(9):770-4. PubMed PMID: 11524679."
