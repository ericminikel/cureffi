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

### Lecture notes

The major classes of protein folds are:

1. **Globular proteins**. These are usually soluble, and are the substrate for most biochemistry research.
2. **Fibrous proteins**. These include coiled coil proteins, which we will discuss today.
3. **Membrane proteins**. This is perhaps 30% of our proteome, but they are vastly under-studied because they cannot be crystallized.
4. **Natively unstructured**. These proteins are unstructured in aqueous solution and usually cannot be crystallized. It is unclear whether some of these might actually have well-defined structures in their native compartment of the cell. This class includes alpha synuclein, which we will cover in detail in this class.

Many important insights in the field have come not from computational analysis, but simply through spending a ton of time staring at a structure and contemplating it. For instance, [[Chothia 1981]] stared at 50 helix-helix contacts in a a number of different proteins, and came to understand the importance of helix-helix packing in defining the fold of globular proteins. The helices they examined were on average 15 residues long (range, 6 to 23) and the interfaces of Van der Waals contact between helices were on average 4.7 residues long (range, 3 to 7). Note that the residues closest in 3D space in these contacts are not necessarily anywhere near each other in 1D sequence, confounding any attempts to gain computational insights.

One of the things Chothia recognized is a topology present on the surface of alpha helices. Grooves and ridges are formed by the i&plusmn;4n (e.g. 1, 5, 9, 13...), i&plusmn;3n and i&plusmn;1n series of residues. The bulkiness of the residues determines the height of ridges and depth of grooves. Pairs of helices usually intercalate 4-4, 3-4 or 1-4, meaning there is almost always at least one i&plusmn;4n ridge/groove involved.

Helix-helix interface residues are predominantly hydrophobic - 50% are A, I, L, F, V. Another 25% are the hydrophilic D, N, E, Q, K, R, usually found at the edge of the interface, half contacting the solvent.

In helix-helix packing, the distance between the two helix axes avearges 9.4&Aring; (range, 6.8 to 12.0&Aring;), depending on the size of side chains. The interpenetration of atoms from each helix into the other one's grooves is only 2.3&Aring;, though. In other words, only the tips of the side chains really interdigitate, and the peptide backbone is not involved in the packing at all.

Myoglobins from many different species have been crystallized. It is easy to align the sequences (or structures) due to absolute conservation of the heme-binding histidines. Once these are aligned, you find that only about 15% of the remainder of residues are highly conserved by some metric.

Here, again, is that myoglobin structure from last time:

![](/media/2015/02/myoglobin-structure.png "myoglobin")

The fact that almost all proteins use almost all 20 amino acids suggests that each amino acid can do something unique and special at least some of the time. There are amino acids that are often found at the ends of alpha helices and help to define the beginning of a helix - these sometimes form turns and are often called "helix caps".

Some of the first studies of protein structure used not X-ray crystallography but X-ray fiber diffraction. Fibers of hair diffracted X-rays with meridional signal at 5.15&Aring; and equatorial at 9.8&Aring;. When the hairs were stretched, the pattern changed. This was evidence that (1) keratin in hair had a particular conformation, consistent between all the different copies of keratin, and (2) that this structure could be distorted into a different specific conformation by force. X-ray fiber diffraction has come back into importance in recent years as a tool for understanding amyloid folds.

In contrast to keratin, actin is not fibrous, it is globular, but it polymerizes into filaments. Tropomyosin is a coiled coil fibrous protein which binds actin filaments and walks along them in order to flex a muscle.

Examples of 2-stranded coiled coils include:

+ Myosin
+ Paramyosin - this is what clamps bivalve sea creatures shut
+ M-protein
+ Lamin
+ Intermediate filament (IF)
+ Tropomyosin - introduced above

Because you can get large amounts of muscle from animals, it is relatively easy to purify muscle proteins, and their amino acid sequences were determined relatively early on. Tropomyosin, myosin, paramyosin and intermediate filament all contain heptapeptide repeat motifs which are fairly well conserved. Leucine is the most common residue in the 1st ("a") position of the repeat. Positions a and d are hydrophobic and face into the interface, g and e are charged, and b, c and f face outward and could be anything. This creates a hydrophobic core at the interface, locked together by opposing charges on either helix.

![](/media/2015/02/heptad-repeat.png)

The first complete high resolution structure of a coiled coil protein was that of a fragment of GCN4, a parallel coiled coil with two alpha helices each containing 8 turns and 31 residues [[PDB# 2ZTA](http://pdb.org/pdb/explore/explore.do?structureId=2zta)].

Even though alpha helices themselves are right-handed, they can coil around each other in a left-handed fashion. Helices are said to be parallel if the N termini are both at one end, and the C termini both at the other end, and antiparallel if they are head-to-foot with one helix's C at the other one's N. Counterintuitively, both structures are stable and exist in nature. As you might guess from the above diagram, it turns out that the charges of residues g and e on the two strands are a large part of what determines the parallel vs. antiparallelness of the coiled coil. 

It turns out there are even 3-stranded parallel coiled coils with axial symmetry, a hydrophobic core and three ionic pairs. Similarly, there are 4-, 5-, and 6-stranded coiled coils. The larger ones are not as tightly packed due to steric issues, but do nevertheless appear in nature.

The coiled coil proteins are considered some of the best examples where we really understand how amino acid sequence determines structure. However, the fact that we can look at the structure and see how sequence helps to *hold* the protein in its conformation doesn't actually tell us how the protein *got into* that conformation in the first place. An analogy is that the wedge shape of stones in an archway is clearly important for the stability of the arch, but it doesn't tell you how to *build* the arch. In fact, it is impossible to build an arch without a scaffold - you need the scaffold to support it until you finish it and add the keystone, at which you can remove the scaffold and it will self-support. Moral of the story: the forces that hold a structure together may not be sufficient to create that structure.

[Eisenberg 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12966187 "Eisenberg D. The discovery of the alpha-helix and beta-sheet, the principal structural features of proteins. Proc Natl Acad Sci U S A. 2003 Sep 30;100(20):11207-10. Epub 2003 Sep 9. PubMed PMID: 12966187; PubMed Central PMCID: PMC208735."

[Pauling 1951]: http://www.ncbi.nlm.nih.gov/pubmed/14816373 "PAULING L, COREY RB, BRANSON HR. The structure of proteins; two hydrogen-bonded helical configurations of the polypeptide chain. Proc Natl Acad Sci U S A. 1951 Apr;37(4):205-11. PubMed PMID: 14816373; PubMed Central PMCID: PMC1063337."

[Sela 1957]: http://www.ncbi.nlm.nih.gov/pubmed/13421663 "SELA M, WHITE FH Jr, ANFINSEN CB. Reductive cleavage of disulfide bridges in ribonuclease. Science. 1957 Apr 12;125(3250):691-2. PubMed PMID: 13421663."

[Anfinsen 1961]: http://www.ncbi.nlm.nih.gov/pubmed/13683522/ "ANFINSEN CB, HABER E, SELA M, WHITE FH Jr. The kinetics of formation of native ribonuclease during oxidation of the reduced polypeptide chain. Proc Natl Acad Sci U S A. 1961 Sep 15;47:1309-14. PubMed PMID: 13683522; PubMed Central PMCID: PMC223141."

[Perutz 1987]: http://www.the-scientist.com/?articles.view/articleNo/8440/title/-I-Wish-I-d-Made-You-Angry-Earlier-/ "Perutz. February 23, 1987. 'I Wish I'd Made You Angry Earlier'"

[Knaus 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11524679 "Knaus KJ, Morillas M, Swietnicki W, Malone M, Surewicz WK, Yee VC. Crystal structure of the human prion protein reveals a mechanism for oligomerization. Nat Struct Biol. 2001 Sep;8(9):770-4. PubMed PMID: 11524679."

[Chothia 1981]: http://www.ncbi.nlm.nih.gov/pubmed/7265198 "Chothia C, Levitt M, Richardson D. Helix to helix packing in proteins. J Mol Biol. 1981 Jan 5;145(1):215-50. PubMed PMID: 7265198."


