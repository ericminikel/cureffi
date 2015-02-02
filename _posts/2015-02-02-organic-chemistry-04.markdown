---
layout: post
title:  "Organic chemistry 04: Arrow-pushing: resonance, nucleophiles and electrophiles"
date:   2015-02-02 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Equal and unequal resonance structures, alcohol deprotonation, nucleophile-electrophile interactions, frontier molecular orbital theory, HOMOs, LUMOs and electronegativity."
---

*These are my notes from lecture 4 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on February 2, 2015.*

### Resonance

#### Equal resonance

The structure of benzene frustrated chemists surprisingly far into the 1900s. Each side of the hexagon is 1.4&Aring;, about halfway between the C-C bond length (1.54&Aring;) and the C=C bond length (1.34&Aring;). Benzene can be drawn with a resonance structure of two different configurations of the double bonds. For a long time, chemists debated whether there were indeed two separate species in equilibrium with each other. It was eventually determined that is *not* the case - there is in fact but a single benzene structure, which is a superposition of those two structures. Thus, drawing it with a circle in the middle is actually more accurate to how benzene behaves on its own. Yet the circle model makes it confusing to account for electrons when thinking about reactivity.

![](/media/2015/02/benzene-resonance.png)

Another example of resonance is carboxylate ions. Here, the small curvy arrows indicate resonance between electrons on lone pairs of oxygen, and electrons in pi bonds. In other words, both oxygens have half the character of having two lone pairs, and half the character of having three lone pairs, and both carbon-oxygen bonds have half the character of a single and half the character of a double bond. Just as in benzene, the two structures are equivalent and equal contributors to the one actual structure.

![](/media/2015/02/carboxylate-resonance.png)

A final example is nitrites. Once again, the two structures are equal contributors.

![](/media/2015/02/nitrite-resonance.png)

In all of the above examples, there is actually but *one* structure, and it just takes two drawings of structures to explain what that one structure is.

#### Unequal resonance

Esters have an unusual property that is not fully captured in the drawing. There is one structure which has no formal charge and is thus more stable. However, some of the reactivity of esters can only be explained by invoking some amount of electron donation which creates a formal charge. Thus the structure at left is the major contributor, while that at right is less stable, and is a **minor resonance contributor**.

![](/media/2015/02/ester-resonance.png)

Similarly in amides, there is a barrier to rotation around the carbon-nitrogen bond created by the partial double bond character of the minor resonance contributor at right. This is an important factor in protein folding.

![](/media/2015/02/amide-resonance.png)

#### Stabilization by multiple minor resonance structures: the example of alcohol deprotonation

An alcohol such as methanol (CH<sub>3</sub>OH) has a pKa of ~15, about the same as water itself. Thus, the forward direction of this reaction has a very unfavorable Ka of 10<sup>-15</sup>:

CH<sub>3</sub>OH + H<sub>2</sub>O &harr; CH<sub>3</sub>O<sup>-</sup> + H<sub>3</sub>O<sup>+</sup>

A phenol on the other hand has a pKa of ~9, meaning it has about 10<sup>6</sup> greater propensity to dissociate into acid in water than methanol does.

![](/media/2015/02/phenol-deprotonation.png)

This greater stability can be explained by resonance. When the -OH on phenol is deprotonated to leave O<sup>-</sup>, the extra electron density on that oxygen is shared into the pi system of the benzene ring. This greater distributedness of electron density is more favorable than having only the one methyl group in methanol to share that electron density with. Mind you, oxygen is more electronegative than carbon, so in either case, the resonance structure in which oxygen has the extra electron is always the *major* resonance contributor. But phenol has six minor resonance contributors corresponding to the charge being on each different carbon, whereas methanol has just one minor resonance contributor. And phenol's minor resonance contributors involve a double bond to oxygen instead of in the aromatic ring. Thus, in the phenol conjugate base, known as phenolate, oxygen and all carbons are sp<sup>2</sup>.

![](/media/2015/02/phenolate-many-minor-resonance-contributors.png)

We can draw a single structure with dotted lines that sort of reflects this, with &delta;<sup>-</sup> indicating partial negative charge:

![](/media/2015/02/phenolate-single-structure.png)

### Nucleophile-electrophile reactions

We'll begin with a **Lewis acid-base reaction**. BF<sub>3</sub> is a trigonal planar electron receptor due to its incomplete octet - it has one empty 2p orbtial. F<sup>-</sup> is an electron donor. The reaction between these two species can be accounted for by an arrow indicating the movement of lone pair from F<sup>-</sup> into that empty 2p orbital. This results in a tetrafluoroborate ion with tetrahedral shape, and a formal negative charge on boron.

![](/media/2015/02/boron-tetrafluorate-reaction.png)

#### Frontier molecular orbital theory

In **frontier molecular orbital theory** (FMO), a reaction is when a filled orbtial &rarr; empty orbital.

In the example above, the fluoride ion has four filled non-bonding orbitals, denoted n<sub>F</sub> (n for non-bonding, F for fluorine). BF<sub>3</sub> has an empty non-bonding orbital on boron dubbed n<sub>B</sub>. The mixing of the filled orbital n<sub>F</sub> into the empty orbital n<sub>B</sub> yields the BF<sub>4</sub> ion.

These sorts of **filled-empty interactions** create one lower-energy bonding orbital and one higher-energy antibonding orbtial. From the diagram below, you can observe that if you had a filled-filled interaction you would have surplus electrons leading to a filled antibonding orbital. If you had an empty-empty interaction there would be no electrons to fill the bonding orbital. This diagram depicts what happens when the fluoride ion and BF<sub>3</sub> meet:

![](/media/2015/02/bf4--mo-diagram.png)

#### HUMO-LUMO

Frontier molecular orbital theory holds that the interactions all take place at the frontier or marginal orbitals. In other words, to understand the entire reaction, you only need to consider the highest occupied molecular orbital (HOMO) and lowest unoccupied molecular orbital (LUMO). In order for a new bond to form, two conditions must be met:

1. Spatial overlap between HOMO and LUMO
2. Energetic similarity between HOMO and LUMO

The most stable bonds in a molecule are &sigma; bonds. These offer a lot of stabilization relative to non-bonded atomic orbitals. &pi; bonds are the next lowest energy, then lone pairs denoted n for non-bonding, then empty p orbitals denoted n for non-bonding, then &pi;* antibonding, then &sigma;* antibonding.

![](/media/2015/02/mo-relative-energies.png)

With this insight, we can draw a full MO diagram of the reaction between F<sup>-</sup> and BF<sub>3</sub>. I am not certain I got all the details correct but here is my best attempt:

![](/media/2015/02/bf4--mo-diagram-full-1.png)

The reaction involves the movement of electrons from an n<sub>F</sub> non-bonding orbital in F<sup>-</sup> to an n<sub>F</sub> non-bonding orbital in BF<sub>4</sub><sup>-</sup>. Because movement is between non-bonding orbtials, this is called an n&rarr;n reaction.

I don't fully understand this because it seems like once you have formed a tetrahedral BF<sub>4</sub><sup>-</sup> ion you have four sp<sup>3</sup> hybridized orbitals rather than three sp<sup>2</sup> hybridized orbitals and you have therefore moved electrons from a non-bonding orbital into a bonding orbital. If so, then the MO diagram should look more like the one below. I need to ask about this in class.

![](/media/2015/02/bf4--mo-diagram-full-2.png)

#### Electronegativity

The relative electronegativity of the two atoms bonding determines the relative energy difference between a &sigma; bonding orbital and a non-bonding orbital from the more electronegative atom. Carbon-carbon is symmetric, whereas in carbon-oxygen the oxygen's non-bonding orbital is lower, and in carbon-chlorine, where the latter is quite electronegative, the picture is more lopsided still.

![](/media/2015/02/electronegativity-differences-in-mo-diagrams.png)

