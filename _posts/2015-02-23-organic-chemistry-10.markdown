---
layout: post
title:  "Organic chemistry 10: Stereochemistry - chirality, enantiomers and diastereomers"
date:   2015-02-23 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Chirality, stereogenic carbons, naming enantiomers, naming stereogenic carbons, enantiomers, diastereomers, challenges for synthesis."
---

*These are my notes from lecture 10 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on February 23, 2015.*

### Introduction to stereochemistry

Consider again 2-bromobutane from last time, now diagrammed differently:

![](/media/2015/02/2-bromobutane-enantiomers.png)

The central atom is a **stereogenic carbon** because it has four distinct groups: Br, Me, Et, and H. A chiral object is one with a non-superimposable mirror image. The two versions of 2-bromobutane on either side of the mirror here are **enantiomers**. Note that there is no such thing as a "chiral carbon"; rather, we say that *stereogenic* carbons cause the *whole molecule* to be chiral. (Note, however, that it *is* possible for a molecule to have stereogenic carbons and yet be achiral). The two molecules above have the same properties in *almost* every possible way.

To obtain a mirror image, you must reverse *all* stereogenic carbons in the molecule. This can be done by swapping any two of the four substituents on each carbon. In the case of 2-bromobutane there is only one stereogenic carbon.

![](/media/2015/02/reversing-carbon-in-bromobutane.png)

In the case of glucose we have multiple stereogenic carbons, all of which must be reversed to obtain a mirror image.

![](/media/2015/02/reverse-all-stereogenic-carbons-in-glucose.png)

If we reverse some but not all of the stereogenic carbons, we get something else. If you try reversing the carbons and you get a superimposable image, then you must be looking at an achiral molecule.

Consider these three molecules:

![](/media/2015/02/two-achiral-one-chiral.png)

At a glance, you can tell the first two are achiral because they contain a **plane of symmetry**. Any molecule with a plane of symmetry is achiral. 

#### Naming enantiomers

D- and L-glucose have almost identical physical properties. One exception is that enantiomers rotate plane polarized light in opposite directions; which is which is hard to predict and is usually determined empirically. Enantiomers that rotate light to the right are called **(+)** or **dextrorotary (D)**. Those that rotate light left are called **(-)** or **levorotary (L)**.

#### Naming stereogenic carbons

Stereogenic carbons are named R or S. To determine which name a carbon gets, follow these steps:

1. Prioritize four groups by atomic number
2. Lowest priority group is drawn away from the viewer
3. If the groups with priority 1-3 are clockwise, the carbon is R, if they are counterclockwise it is S.

For instance, using these steps you can assign the two 2-bromobutanes as being R and S. The (+) and (-) properties you simply have to look up.

![](/media/2015/02/s-and-r-bromobutane.png)

#### Creating stereochemistry in reactions

Benzaldehyde is achiral. Although it is not symmetric, the carbon in the aldehyde has only three, not four, groups bound to it. However, if we attack it with an alkyllithium reagent, that reagent can attack from the top or bottom, resulting in two different enantiomers. If we do this reaction, we'll get a 50/50 **racemic mixture** of both.

![](/media/2015/02/generating-chirality-from-benzaldehyde.png)

Sometimes you only want one of the two enantiomers. The classic example of this is thalidomide:

![](/media/2015/02/thalidomide-stereochemistry.png)

The (+) enantiomer is a mild sedative, the (-) enantiomer is a potent teratogen. Racemic mixtures were prescribed to pregnant women for morning sickness and caused a tragic wave of birth defects. It took almost a decade to elucidate the molecular basis for this adverse effect.

In the case of thalidomide, the two enantiomers will interconvert at physiological pH, so even a pure mixture of (+) would have caused birth defects. However, after thalidomide, it became impossible for racemic mixtures to be approved as drugs. This motivated a huge movement in synthetic chemistry to figure out how to only make one enantiomer.

A less sinister example is of the two enantiomers of carvone, flavonoids that impart characteristic flavors to spearmint and caraway:

![](/media/2015/02/carvone-enantiomers.png)

#### Multiple stereogenic carbons

Now consider menthol, which has three stereogenic carbons. The enantiomer at left is the classic menthol flavor you're used to. The one at right has almost identical physical properties but tastes less strongly minty.

![](/media/2015/02/menthol-enantiomers.png)

However, if we flip some but not all of the carbons, we get a different molecule altogether, which actually has many differing physical properties. This is called a **diastereomer**.

![](/media/2015/02/menthol-two-diastereomers.png)

Because methol has three stereogenic carbons, it has 2<sup>3</sup> = 8 possible isomers. Here are the four diastereomers (each has an enantiomer which is not depicted).

![](/media/2015/02/diastereomers-of-menthol.png)

If you draw each in chair form, you can understand how each has a different combination of axial and equatorial groups, resulting in different physical properties.

#### Challenges for synthesis

What if we only want to synthesize one of the two enantiomers? How could we achieve that? The case of menthol is actually easier than benzaldehyde. In the synthesis of menthol, we would add the -OH group last, and we would need to add it in the correct orientation. But by that time, the molecule would already have chirality we could build off of.

#### History of hexose stereoisomers

Hexose has five stereogenic carbons, hence 2<sup>5</sup> = 32 stereoisomers, or 16 pairs of enantiomers. Figuring out what all of these were took a long time. 

Aldohexoses can be opened to reveal and aldehyde group. The linear form can then be degraded to (+)-glyceraldehyde. Degradation to (D)- or (+)-glyceraldehyde became the reference for figuring out what all of the hexoses were.
