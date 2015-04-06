---
layout: post
title:  "Organic chemistry 24: Alkynes - reactions, synthesis and protecting groups"
date:   2015-04-06 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Intro to protecting groups, TMS and TBS. Alkynyl Grignards and alkynyl lithium reagents. Alkyne reduction with Lindler's catalyst, dissolving metal reduction, mercury acetate, or 9-BBN."
---

*These are my notes from lecture 24 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on April 6, 2015.*

### Introduction to protecting groups

Consider this retrosynthesis problem. The block arrow means "figure out how to make the thing on the left from the things on the right".

![](/media/2015/04/retrosynthesis-problem-1.png)

We can quickly recognize two tertiary alcohols connected by an alkane:

![](/media/2015/04/retrosynthesis-problem-1-split-3o-alcohols.png)

And based on that thinking, we can devise this beginning to our synthesis strategy:

![](/media/2015/04/retrosynthesis-problem-1-dead-end.png)

However, at this stage we are stuck. We want to use a Grignard reagent next, but if we do, it will attack the alcohol:

![](/media/2015/04/grignard-alcohol-problem.png)

This motivates the need for a **protecting group**. We need a way to block the alcohol from reacting while we do something else, and then freeing it up again. The canonical protecting group is some sort of silyl ether. The simplest way to achieve this is with as trimethylsilyl (TMS; Me<sub>3</sub>Si):

![](/media/2015/04/alcohol-protection-with-tms.png)

In other words, TMS will form an ether with your alcohol, and can be removed again upon addition of acid or base. However, this group falls off *so* easily that it's actually not as useful as it could be, and therefore is not that often used. A more useful reagent is tBuMe<sub>2</sub>Si, abbreviated TBS. Amazingly, just substituting different alkanes on the silicon makes a big difference in how easy the group is to remove. TBS is removed most readily by F<sup>-</sup>.

![](/media/2015/04/alcohol-protection-with-tbs.png)

With TBS in our toolkit, we are now ready to solve the retrosynthesis problem at top:

![](/media/2015/04/retrosynthesis-problem-1-tbs-solution.png)

The TBAF is a source of fluoride; its structure is this:

![](/media/2015/04/tbaf.png)

### Alkynes in synthesis

Alkynes can be used together with Grignard reagents:

![](/media/2015/04/alkynes-with-grignards.png)

Another option is the bulky base lithium diisopropylamide (LDA). 

![](/media/2015/04/alkyne-with-lda.png)

Alkynyl Grignards are unique among Grignards for their ability to do SN2 chemistry. (All other Grignards are too basic / too reactive, and may just give you an E2 product). Once you have your alkynyl Grignard or alkynyl lithium reagent (above), you can react with (for example) carbonyls, OTs, or TMS:

![](/media/2015/04/things-you-can-do-with-alkynyl-grignards.png)

### Reduction of alkynes

An alkyne can be reduced (hydrogenated) to an alkane using Pd/C, or reduced only to an alkene using Lindler's catalyst (*cis*) or Na and NH<sub>3</sub> (*trans*). This means that if our end goal is an alkane or alkene, we have the option of doing our chemistry with an alkyne and then reducing it later.

![](/media/2015/04/alkynes-reduced-three-ways.png)

How do these reduction reactions work? Lindler's catalyst is said to be a **poisoned catalyst**. Similar to Pd/C, you end up with a metal surface with hydrogens projecting up out of it, ready to react with an exposed face of alkynes.

![](/media/2015/04/lindlers-catalyst.png)

The Na, NH<sub>3</sub> reaction is referred to as **dissolving metal reduction**. The Na metal actually dissolves in the ammonia, producing a beautiful deep blue solution:

![](/media/2015/04/dissolving-na.png)

The electron that dissociates from sodium then attacks the triple bond, yielding a radical anion which reacts with ammonia twice to add two hydrogens:

![](/media/2015/04/dissolving-metal-reduction.png)

Hydration of alkynes can also be achieved using sulfuric acid and mercury acetate:

![](/media/2015/04/alkyne-plus-mercury-acetate.png)

You can also perform hydroboration of alkynes using 9-BBN, introduced in [lecture 20](/2015/03/27/organic-chemistry-20/):

![](/media/2015/04/alkyne-hydroboration-with-9-bbn.png)

### Another retrosynthesis problem

Now consider this problem:

![](/media/2015/04/retrosynthesis-problem-2.png)

Right away, we must recognize that we'll need to take special care to create the stereochemical relationship between the two hydroxides. Observe that the bond in between the two -OH can rotate. Therefore we can think of this as either a *trans* anti configuration, or a *cis* syn configuration:

![](/media/2015/04/retrosynthesis-problem-2-bond-rotation.png)

Once we recognize this, it becomes possible to design a synthesis by reducing an alkyne with Lindler's catalyst and then adding the hydroxyl groups with OsO<sub>4</sub>:

![](/media/2015/04/retrosynthesis-problem-2-alkyne-solution.png)




