---
layout: post
title:  "Organic chemistry 16: Stereochemistry - complex chirality, prochirality, topicity"
date:   2015-03-09 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 16 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on March 9, 2015.*

### Prochirality and axial chirality

**Prochirality** is the idea that a set of achiral groups can give rise to chirality in a reaction. For instance, consider 2-butenone, an achiral molecule. The carbonyl "faces" are said to be **enantiotopic**.

![](/media/2015/03/2-butenone.png)

Next, consider propan-2-ol. It is achiral because its two methyl groups are equivalent. These two methyl groups are therefore enantiotopic. If we replace one - say, if we deuterate exactly one of the two methyls - then we end up with a chiral molecule.

![](/media/2015/03/propan-2-ol.png)

| a face, atom or group is... | if its replacement leads to... | distinguishable? |
| ---- | ---- | ---- |
| homotopic | identical molecules | never |
| enantiotopic | enantiomers | in a chiral environment |
| diastereotopic | diastereomers | always |

Note that homotopic faces, atoms or groups can *never* be distinguished - they look exactly the same in NMR, in any reaction, etc. Enantiotopic faces, atoms or groups look the same on their own, but will react differently with chiral molecules. Diastereotopic faces, atoms or groups always appear different.

#### Homotopic example

![](/media/2015/03/homotopic-example.png)

Dichloromethane's two Hs and two Cls are homotopic, because if we deuterate one hydrogen, we still don't get a chiral molecule.

#### Enantiotopic example

![](/media/2015/03/enantiotopic-example.png)

In contrast to above, if we consider chloroiodomethane, replacing one hydrogen with deuterium *does* create enantiomers, which could be recognized in a chiral environment (would react differentially with a chiral molecule). Therefore the H and H in chloroiodomethane are enantiotopic.

#### Diastereotopic example

![](/media/2015/03/diastereotopic-example-1.png)

Here, the two resulting molecules are completely distinct. Therefore, reactions leading to them may have different energy profiles, and so it may be possible to design a reaction to produce only one or the other.

Here is another example where one reactant is more clearly favored over the other:

![](/media/2015/03/diastereotopic-example-2.png)

#### More examples

Distinguishing these three cases is not always trivial. Think through this example:

![](/media/2015/03/achiral-meso-example.png)

And contrast with this example:

![](/media/2015/03/chiral-c2-example.png)

### Chirality without stereogenic carbon

#### Heteroatoms

As introduced [last time](/2015/03/06/organic-chemistry-15/), amines can be stereogenic, but they undergo rapid **Walden inversion**, thus interconverting readily between enantiomers.

![](/media/2015/03/stereogenic-nitrogen-example.png)

Sulfoxides, in contrast, legitimately stay as one enantiomer. This molecule is best thought of as a tetrahedral molecule with two formal charges, as depicted at far right:

![](/media/2015/03/sulfoxide-example.png)

#### Chiral conformations

As introduced [last time](/2015/03/06/organic-chemistry-15/), Gauche butane has enantiomers, but they readily interconvert:

![](/media/2015/03/gauche-butane-example.png)

Then there's this thing. The drawing at left is actually ambiguous, because it doesn't tell you which chair conformation the cyclohexane is in. In fact, the two are enantiomers, but again, they interconvert readily.

![](/media/2015/03/chair-interconversion.png)

Then there's allenes, which are compounds with two adjacent double bonds at the center. Surprisingly, the bonding in allene is not planar:

![](/media/2015/03/allene.png)

So if we start substituting, we can quickly get to a chiral molecule:

![](/media/2015/03/substituted-chiral-allene.png)

#### Atropisomerism

The **Linderod reaction** can create this molecule at left, but the steric clash between the indicated groups is so strong that it twists the central bond, breaking the conjugation between the two phenyl groups. It can twist right or left, creating two different enantiomers. Once it does so, it is energetically impossible to go back the other way, so these never interconvert. Thus, these two resulting molecules are called **enantiomeric atropisomers**.

![](/media/2015/03/linderod-example.png)

Perhaps the most famous example of this is (s)-(-)-BINAP.

![](/media/2015/03/s---binap.png)

Its phosphenes can bind metal, thus making this a chiral metal catalyst. It can catalyze the following reaction, used in the industrial synthesis of menthol:

![](/media/2015/03/menthol-synthesis.png)

Another famous example is trans-cyclooctene. As with the cyclohexane compound diagrammed earlier, the structure at left is ambiguous and can refer to either enantiomer. These two enantiomers do not interconvert, and it is possible to isolate just one or the other.

![](/media/2015/03/trans-cyclooctene.png)

