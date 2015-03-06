---
layout: post
title:  "Organic chemistry 15: Stereochemistry - meso compounds, resolution"
date:   2015-03-06 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Optical rotation, the story of Pasteur and tartaric acid, meso compounds, chiral pool method, resolution method, examples of methamphetamine, intro to chirality without stereogenic carbon."
---

*These are my notes from lecture 15 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on March 6, 2015.*

### Optical rotation

The fact that enantiomers differentially rotate polarized light is a useful property for determining the composition of a mixture, which may be somewhere in between racemic (50/50) and pure (all one enantiomer).

For chiral molecules, you can look up a value called \[&alpha;\]<sup>20</sup><sub>D</sub>. \[&alpha;\]<sup>20</sup><sub>D</sub> means the rotation at 20&deg;C, with a path length of 1 dm, under a sodium light where &lambda; = 581 nm (the sodium D-line, hence the D). This quantity, together with the parameters c = concentration in g/mL and l = path length, allows you to derive the actual rotation &alpha;, by virtue of the equation \[&alpha;\]<sup>20</sup><sub>D</sub> = &alpha;/(cl).

**Enantiomeric excess (ee)** is linearly related to observed rotation. Specifically, ee = observed / pure. Today we'll consider tartaric acid (below). Pure (+)-tartaric acid has \[&alpha;\]<sup>20</sup><sub>D</sub> = +12. Consider the following mixtures:

| ratio | &alpha; | ee |
| ---- | ---- | ---- |
| 100:0 | +12 | 100% |
| 90:10 | +9.6 | 80% |
| 50:50 | 0 | 0% |

Note that in a 90:10 mixture, the 10 cancels out 10 out of the 90, so you end up with only 80% of the rotation you'd have in the 100:0 mixture, for an 80% ee.

#### Pasteur and tartaric acid

In 1848, Pasteur was studying two apparently related substances, tartaric acid and racemic acid. Tartaric acid is a natural substance that sometimes crystallizes out of wine, and it is dextrorotary. Racemic acid was an industrial byproduct which seemed identical to tartaric acid in all respects, except that it had no optical rotation. Pasteur was a [vitalist](/2015/01/26/organic-chemistry-01/) and was very interested in elucidating the physical basis of what distinguished life from non-life. He suspected that optical rotation was specific to vital force, because many natural products were optically active, while synthetic products almost never were.

Pasteur synthesized sodium ammonium racemic acid and then crystallized it. It formed a pile of two different types of crystals, which were *macroscopically distinct*. With a pair of tweezers and a primitive 1848 microscope, you could actually pick apart the pile into two separate piles of crystals, which were macroscopic mirror images of one another. If you then re-dissolved the two piles, each would be optically active, but in opposite directions.

We now know that very few racemic mixtures behave this way. The vast majority will form a racemic crystal; only a handful form separate crystals. Moreover, even knowing this, it is actually quite difficult to reproduce Pasteur's experiment.

Tartaric acid and its enantiomer lack plane symmetry, though they do each have two-fold rotational symmetry. There exists no plane across which you can reflect tartaric acid and still superimpose it. Thus the molecule is chiral. However, if you imagine the z axis sticking out of the screen, you can rotate the molecule 180&deg; around that axis, and then superimpose it. This is called C<sub>2</sub> symmetry. Tartaric acid also has a diastereomer called meso-tartaric acid. This molecule does have a plane of symmetry, and is therefore achiral. In general, any compound like this, having stereogenic carbons but also a plane of symmetry, is called a **meso compound**.

![](/media/2015/03/tartaric-acid-enantiomer-and-diastereomer.png)

### Stereospecificity in synthesis

There are three major strategies for preparing a single enantiomer. Today we'll discuss a famous example which touches on two of these three methods:

![](/media/2015/03/methamphetamine-enantiomers.png)

The folks, such as Walter White, who wish to synthesize pure dextromethamphetamine for commercial sale, have developed two methods: chiral pool and resolution.

#### Chiral pool

In the **chiral pool** method, you steal stereogenic centers from nature. Nature provides us a huge pool of chiral molecules that we can use as starting materials. In the case of dextromethamphetamine, you can start from (-)-ephedrine or (+)-pseudoephedrine and remove the hydroxyl group via a very dangerous reaction:

![](/media/2015/03/chiral-pool-methamphetamine.png)

#### Resolution

As drug enforcement efforts have made it more and more difficult to acquire large amounts of pseudoephedrine, people have turned more towards the **resolution** method. In this method, you first synthesize a racemic mixture:

![](/media/2015/03/making-racemic-methamphetamine.png)

Then you separate it by adding an enantiopure molecule such as (+)-tartaric acid. (+)-tartaric acid will form salts with each enantiomer, but the two salts have different physical properties, so under careful conditions you can get only the dextromethamphetamine to crystallize out.

![](/media/2015/03/resolution-of-racemic-methamphetamine.png)

This is wasteful, however, since at best you get 50% yield, and in practice it is hard to get even that much.

### Chirality without stereogenic carbon

Next time, we'll discuss molecules that have chirality without stereogenic carbon. These are usually not stable, and interconvert fairly quickly. Here is an example with a stereogenic nitrogen:

![](/media/2015/03/stereogenic-nitrogen-example.png)

There are also weird examples where a molecule has no single stereogenic center, yet manages to be chiral overall. For example, Gauche butane has **axial chirality** even though no one carbon is stereogenic. It, too, interconverts rapidly:

![](/media/2015/03/gauche-butane-example.png)


