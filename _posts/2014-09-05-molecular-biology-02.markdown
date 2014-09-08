---
layout: post
title:  "Molecular Biology 02: 'Thermodynamics of protein folding'"
date:   2014-09-05 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 02 of Harvard's BCMP 200: Molecular Biology course, delivered by Joe Loparo on September 5, 2014.*

### Dihedral angles

Continued from [lecture 01](/2014/09/03/molecular-biology-01). &omega; is always 0 or +180&deg;. If you plot &Phi; and &Psi; you find only a few clusters are well-represented: a range of &alpha;-helix combinations, a &beta;-sheet area, and a third rarer area (called L&alpha; and populated by left-handed &alpha;-helices). &omega; is ususally found in the *trans* conformation due to steric hindrance of the consecutive side chains, however, proline because it is anchored to the backbone has a unique twist that enables a *cis* conformation.

### Secondary structure

&alpha;-helices and &beta;-sheets are two ways of allowing the NH and C=O groups on the backbone to form hydrogen bonds. &alpha;-helices contain 3.6 residues per rotation, or in other words, each residue spans 100&deg; of rotation. Consecutive rungs of an &alpha;-helix turns are separated by 5.4&Aring;. &alpha;-helices are *almost* exclusively right-handed. In a right-handed &alpha;-helix, you turn counter-clockwise as you go *up*. In a left-handed &alpha;-helix you turn clockwise as you go up. Side chains point outward from the helix. If you plot out where each residue falls on the helix based on the 3.6 residues/turn rule, you find that amphipathic, half-buried helices have all the hydrophobic residues on one side and the hydrophilic ones on the other side. A fully buried helix will be all hydrophobic residues and a fully exposed helix will be all hydrophilic residues.

In &beta;-sheets, all potential H-bonds are satisfied except for the "flanking" strands at either end of the sheet. About 20% of &beta;-sheets found in nature are mixed parallel and anti-parallel, the other 80% are pure one or the other. &beta;-sheets are not flat, but pleated.

### Tertiary structure

A single sheet or helix is not stable in water. Tertiary structure is the packing of these elements, and loops connecting them, onto each other.

### Thermodynamics of protein folding

There are two fundamental problems in protein folding:

1. Can we predict a protein's structure from its sequence?
2. [Levinthal's paradox](http://en.wikipedia.org/wiki/Levinthal's_paradox) is that sampling all possible possible conformations of a polypeptide chain to find the lowest-energy state would take millions of years rather than a few seconds, so how do proteins fold so quickly?

As an example, consider the metalloprotease cleaveage of Notch to create the Notch intracellular domain (NICD), which then translocates to the nucleus and affects transcription. The proteolytic site of Notch is protected by Lin12/Notch repeats which are connected to the EGF repeats that interact with Notch's ligand. The ligand is believed to apply a force that unfolds this region, allowing cleavage. Mutations which destabilize this fold and result in constitutive activation cause tumors.

Thermodynamics can only describe *whether* a chemical reaction will occur spontaneously or not, not how fast it will occur (see [Biochemistry 01](/2013/09/22/biochemistry-01-stereochemistry-thermodynamics-water-and-acid-base-chemistry/)).

The energy of a system is its capacity to do work.

&Delta;U = q + w

Where U is internal energy, q is heat and w is work.

q := heat = C(T<sub>f</sub>-T<sub>i</sub>)

Where C is the heat capacity and f and i mean final and initial.

&Delta;w := work = F<sub>x</sub>&Delta;x

Where F is force and &Delta;x is displacement along the x axis.

If you dissolve urea in water at a 4M solution, it will dissolve spontaneously and the solution will become cold (just like guanidine, as I learned [here](/2014/07/30/recombinant-prion-protein-rocky-mountain-style/)).

Gibb's free energy is defined as:

G = H - TS

Where G, H, T and S are Gibb's free energy, enthalpy, temperature and entropy respectively.

&Delta;G = &Delta;H - T&Delta;S

If &Delta;G &lt; 0 the reaction will proceed spontaneously.

In the urea example, &Delta;H &gt; 0 because energy is required to pull apart the interacting urea molecules, using heat from the water. Yet the reaction still occurs spontaneously because &Delta;S &gt; 0 by a lot - the urea solution is much more entropic than urea and water separately.

For the reaction A + B &harr; C + D, we define:

K<sub>eq</sub> = ([C]<sub>eq</sub>[D]<sub>eq</sub>)/([A]<sub>eq</sub>[B]<sub>eq</sub>)

K<sub>eq</sub> = e<sup>-&Delta;G&deg;/RT</sup>

ATP is a special molecule: its hydrolysis into ADP is spontaneous at physiological concentrations of the reactants and products, i.e. &Delta;G &lt; 0 for this reaction:

ATP + H<sub>2</sub>O &rarr; ADP + P<sub>i</sub>

[Le Chatelier's principle](http://en.wikipedia.org/wiki/Le_Chatelier's_principle) says you could drive the reaction in reverse, making ATP spontaneously, simply by increasing the concentrations of the procuts. However [P<sub>i</sub>] never gets high enough in the cell for ATP to be spontaneously generated from ADP. The unfavorable production of ATP is instead created via a coupled reaction with favorable reactions such as the release of protons across the mitochondrial membrane (see [Biochemistry 08](http://www.cureffi.org/2013/11/08/biochemistry-08-the-citric-acid-cycle-and-the-electron-transport-chain/)).

### Enthalpy

H := Enthalpy = U + PV

Where U, P and V are internal energy, pressure and volume.

In physiological conditions, changes in pressure and volume are almost always negligible, so H and U are closely coupled. In other words, in most biological systems, the enthalpy is equal to the internal energy.

People have developed molecular dynamics simulations of the fundamental atomic forces that determine a protein's enthalpy (dihedral angles, Van der Waals interactions, electrostatic interactions, etc) and attempt to minimize the energy to determine a protein's fold. But there are so many degrees of freedom that computational expense prohibits running the simulation long enough to find the lowest energy state. Still there are attempts, such as Folding@Home, Foldit, and [D.E. Shaw](http://en.wikipedia.org/wiki/David_E._Shaw)'s [Anton](http://en.wikipedia.org/wiki/Anton_(computer)). Anton holds the record for the longest molecular dynamics simulation - it ran for some untold amount of time, calculating the energy a protein would have at every femtosecond or something, in order to simulate 1 millisecond of the protein's movement. Obviously, the time that Anton took to simulate that millisecond was more than a millisecond.

### Entropy

S := Entropy = k<sub>b</sub>ln(W)

Where k<sub>b</sub> is Boltzmann's constant and W is the number of microstates that give rise to the macrostate of interest.

My favorite explanation of this is that given by Richard Feynman. When I read it, I understood for the first time how physical entropy and information entropy are the same concept:

> So we now have to talk about what we mean by disorder and what we mean by order. ... Suppose we divide the space into little volume elements. If we have black and white molecules, how many ways could we distribute them among the volume elements so that white is on one side and black is on the other? On the other hand, how many ways could we distribute them with no restriction on which goes where? Clearly, there are many more ways to arrange them in the latter case. We measure "disorder" by the number of ways that the insides can be arranged, so that from the outside it looks the same. The logarithm of that number of ways is the entropy. The number of ways in the separated case is less, so the entropy is less, or the "disorder" is less.
> 
> <cite>&mdash; Richard Feynman, quoted [here](http://www.panspermia.com/seconlaw.htm)</cite>

In biology, entropy is very often the driving force, for instance for the burial of hydrophobic protein domains. Imagine a water molecule in a tetrahedron. The tetrahedron has four corners, and the water has two hydrogens, so you can place the molecule in 4 choose 2 = 6 orientations. If you add a nonpolar group of a neighboring molecule at one corner of the tetrahedron, only three of the six states remain favorable (by still allowing hydrogen bonding). So &Delta;S<sub>hydrophobic</sub> = k<sub>b</sub>ln(3) - k<sub>b</sub>ln(6) &lt; 0, meaning that entropy has decreased.

Consider the mixing of epoxy and hardener into cured epoxy. This reaction has &Delta;S < 0 because the solid has fewer microstates than the liquids did. Yet the reaction occurs spontaneously at room temperature, so it must be true that &Delta;H < 0. Heat is therefore released - in fact, the reaction is extremely exothermic. Joe measured the temperature of "5-minute epoxy" and it rose from 21&deg;C to >40&deg;C at the 5 minute mark.

An incorrect and simplistic view of protein folding is as follows. An unfolded protein has high configurational entropy but also high enthalpy because it has few stabilizing interactions. A folded protein has far less entropy, but also far less enthalpy. There is a tradeoff between H and S here. Note that because &Delta;G = &Delta;H - T&Delta;S, increased temperature weights the S term more heavily, meaning that higher temperature favors unfolding.

That entire explanation only considers the energy of the protein and not that of the solvent. In fact, hydrophobic domains of a protein constrain the possible configurations of surrounding water (see explanation above), and so their burial upon folding increases the water's entropy. Moreover, it turns out that the hydrogen bonding of polar residues and the backbone is satisfied both in an unfolded state (by water) and in a folded state (by each other). Therefore enthalpy is "zero sum," and protein folding is driven almost entirely by entropy.

Here is a description of a technique called [differential scanning calorimetry](http://en.wikipedia.org/wiki/Differential_scanning_calorimetry). You apply equal amounts of heat to two solutions, one with only buffer and the other with buffer and protein, and you measure the temperature in each solution. Eventually the protein reaches its melting temperature T<sub>m</sub>, where the protein is 50% folded and 50% unfolded and &Delta;G = 0. At T<sub>m</sub>, the melting of the protein aborbs lots of the applied heat, and so the temperature does not rise as much as it does in the buffer-only solution.

Another technique for measuring protein stability is the force required to unfold it using single molecule atomic force microscopy.

Common denaturants are urea and guanidine hydrochloride. Amazingly, we still do not know how they work. It is thought that they stabilize all constituent parts of the unfolded protein. Guanidine may surround those unfavorable hydrophobic domains of the protein but then expose its own hydrophilic side to water, so that the movement of the water is not constrained.