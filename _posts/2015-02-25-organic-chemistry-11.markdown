---
layout: post
title:  "Organic chemistry 11: SN1 Substitution - carbocations, solvolysis, solvent effects"
date:   2015-02-25 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "SN1 reactions, molecularity and kinetics, tert-butyl carbocations, how resonance contributes to carbcation stability, benzylic carbocations, allylic cabocations, and acid-catalyzed dehydration."
---

*These are my notes from lecture 11 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on February 25, 2015.*

### Unimolecular substitution reactions (S<sub>N</sub>1)

SN1 are the simplest type of reaction. It can proceed via solvolysis.

If you have a polar protic solvent, a carbon-halide bond will break very easily, yielding a carbocation which will rapidly react with solvent. All of these reactions with tert-butyl-bromide will run forward:

![](/media/2015/02/tert-butyl-bromide-sn1.png)

This proceeds via the a 2-step mechanism (this is what he said in class, even though it looks like >2 steps to me):

![](/media/2015/02/tert-butyl-bromide-sn1-steps.png)

#### Review of molecularity and kinetics

| class | elementary steps of a reaction | rate = |
| ---- | ---- | ---- |
| unimolecular | A &rarr; B | k\[A\] |
| unimolecular | A &rarr; B + C | k\[A\] |
| bimolecular | A + B &rarr; C | k\[A\]\[B\] |
| bimolecular | A + B &rarr; C + D | k\[A\]\[B\] |

When you have a reaction with two steps, this gets complicated. But in the case of tert-butyl-bromide, the unimolecular step is so slow that to a close approximation, the rate depends only on that step. Therefore the overall rate for this reaction is k\[<sup>+</sup>BuBr\]:

![](/media/2015/02/tert-butyl-bromide-energy-diagram.png)

#### Carbocation stability

The more alkyl substitution there is on a carbon, the more stable the corresponding cation will be. That is because alkyl groups can donate some electron density to the carbon carrying the formal charge. Therefore a tert-butyl cation is by far the tertiary carbocation you are most likely to encounter. The two carbocations at right are so high-energy that you will essentially never encounter them as a plausible intermediate.

![](/media/2015/02/tertiary-carbocation.png)

In tertiary carbocations, hyperconjugation is what helps stabilize. There is a weak donation of electron density from the &sigma;<sub>CH</sub> bond to the empty p (n<sub>C</sub>) orbital.

Here are some potential benzylic cations and their relative propensity to ionize:

![](/media/2015/02/benzylic-carbocations.png)

The reason why the middle one is so prone to ionize is because it has several resonance stuctures, one of which (depicted below at right) has all octets satisfied, which is the biggest determinant of stability:

![](/media/2015/02/benzylic-carbocation-resonance.png)

Indeed, lone pair donation from oxygen, or nitrogen, is a popular way of stabilizing carbocations, for instance in the two examples below, which yield oxonium and iminium ions. 

![](/media/2015/02/oxonium-iminium.png)

Allylic cations are also possible. For instance, this reaction runs forward:

![](/media/2015/02/allylic-carbocation.png)

And the reason why the cation forms readily is that it has a resonance structure such that the positive charge is shared equally between two carbons:

![](/media/2015/02/allylic-resonance.png)

So far we've talked only about alkyl halides, which are useful commerically available reagents. However, carbocations also figure into plenty of other types of chemistry. In fact, using acid catalysis, you can easily achieve solvolysis of alcohols, and thereby make alkyl halides via an SN1 reaction known as **acid-catalyzed dehydration**:

![](/media/2015/02/acid-catalyzed-dehydration.png)

Note that when you take a chiral molecule and put it through a unimolecular substitution with a carbocation intermediate, it loses its steochemistry because the carbocation is trigonal planar. If the end product is chiral again, you'll end up with a racemic mixture, even though you started with 100% S or 100% R.
