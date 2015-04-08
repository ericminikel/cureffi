---
layout: post
title:  "Organic chemistry 25: Stereochemistry - diastereoselective and enantioselective reactions"
date:   2015-04-08 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Diastereoselectivity - exo and endo epoxidation, directed epoxidation, acyclic stereocontrol. Enantioselectivity - Sharpless and Jacobsen asymmetric epoxidation, Masamune hydroboration."
---

*These are my notes from lecture 25 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on April 8, 2015.*

### Diastereoselectivity

Consider these two reactions using mCPBA, introduced in [lecture 19](/2015/03/25/organic-chemistry-19/), to add an epoxide group:

![](/media/2015/04/diastereoselectivity.png)

In the first case, there is *some* diastereoselectivity, but it is not absolute. The diastereomer at left is somewhat favored because the epoxide has less steric interference with the methyl group on the front face of the cyclohexane. In the second case, the methyl group is sufficiently out of the way of the epoxide group that you end up with no diastereoselectivity at all.

Next, here are three examples with absolute diastereoselectivity:

![](/media/2015/04/absolute-diastereoselectivity.png)

You can figure out why by thinking about the reactants in 3D - one face is much easier to get at than the other. For instance the second case, it's because the molecule is not flat - the two rings are angled at one other, and it is sterically much easier to react with the convex face than the concave face. The third molecule below is achiral but has diastereotopic faces, front and back, with a convex/concave shape to it that makes the front more accessible.

Norbornane, introduced in [lecture 14](/2015/03/04/organic-chemistry-14/), has diastereotopic faces, exo and endo. The exo is more accessible, so mCPBA will add an exo-epoxide (top). What if you want an endo-epoxide instead? You can achieve this by first brominating with NBS, then attacking with water from the endo face:

![](/media/2015/04/norbornane-exo-vs-endo-epoxide.png)

Below are two examples of **directed epoxidation** with opposite results due to opposite phenomena. At top, the TBS is bulky, so it is 7:1 preferred to add the epoxide to the opposing face. At bottom, the -OH can hydrogen bond with the oxygen in the epoxide, thus stabilizing it - so here it is 10:1 preferred to add the epoxide to the *same* face as the -OH.

![](/media/2015/04/directed-epoxidation.png)

This sort of -OH-directed epoxidation is also at work in the diastereoselectivity of this reaction below, with half chair cyclohexane. The -OH hydrogen bond causes the epoxide to be added on the top (same face):

![](/media/2015/04/half-chair-cyclohexane-oh-directed-epoxidation.png)

Finally, here is a concept called **acyclic stereocontrol**. Prof. Kishi in this department is famous for, among other things, the synthesis of monensin in 1979:

![](/media/2015/04/monensin.png)

### Enantioselectivity

In this example, there is no enantioselectivity, you get both products about equally:

![](/media/2015/04/no-enantioselectivity.png)

Recall from [lecture 15](/2015/03/06/organic-chemistry-15/) that enantioselectivity is quantified as **enantiomeric excess**, abbreviated ee.

**Sharpless asymmetric epoxidation** is a way of epoxidating allylic alcohols. It uses a titanium catalyst derived from a tartrate: 

![](/media/2015/04/sharpless-asymmetric-epoxidation.png)

Alternately, there is [**Jacobsen asymmetric epoxidation**](http://en.wikipedia.org/wiki/Jacobsen_epoxidation), which uses bleach and the very complicated-looking [Jacobsen catalyst](http://en.wikipedia.org/wiki/Jacobsen%27s_catalyst) (not pictured):

![](/media/2015/04/jacobsen-asymmetric-epoxidation.png)

Both Sharpless and Jacobsen have the advantage that their chiral reagents are catalysts, meaning that they are not consumed in the reaction and you can use substoichiometric amounts of them. This is key because those reagents are costly to synthesize. For contrast, consider the **Masasmune hydroboration** (below). Here, the chiral reagent is not a catalyst but a reactant. Its stereochemistry is destroyed in the reaction, meaning you need 1:1 stoichiometry and you can't reuse it:

![](/media/2015/04/masamune-hydroboration.png)

In Masamune hydroboration, the enantioselectivity is achieved via steric clash when the B-H bond aligns and hydrogen bonds with the C=C double bond:

![](/media/2015/04/masamune-enantioselectivity-mechanism.png)

