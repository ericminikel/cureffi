---
layout: post
title:  "Organic chemistry 26: Diels-Alder cycloaddition"
date:   2015-04-10 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Diels-Alder cycloaddition. Basis in frontier molecular orbital theory. Regioselectivity, stereoselectivity and the endo rule, historical examples."
---

*These are my notes from lecture 26 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on April 10, 2015.*

### Diels-Alder cycloaddition

The Diels-Alder is perhaps the single most important reaction ever discovered for creating diversity in synthesis. In general, a cycloaddition is when you add more than one group at a time, forming a cycle. The Diels-Alder is a 4,2 cycloaddition combining an electron-rich diene in the s-*cis* conformation with an electron-poor alkene which is "dienophilic". The result is a cyclohexene.

![](/media/2015/04/diels-alder-cycloaddition.png)

The mechanism involves simultaneous formation of two new bonds:

![](/media/2015/04/diels-alder-mechanism.png)

Here is another example, illustrating how you can get greater chemical complexity out of this reaction:

![](/media/2015/04/diels-alder-example.png)

Important points to note about the above reaction are:

+ It is a \[4+2\] cycloaddition
+ It is concerted (new bonds form simultaneously rather than stepwise)
+ It is stereospecific at *both* &pi;-systems
+ It is stereospecific following the endo rule (more on this later)
+ It is regioselective

Some properties of this reaction are best understood using frontier molecular orbital theory. Orbital symmetry is the reason why you only get \[4+2\] addition and never \[2+2\]. Here, the HOMO of the diene (&pi;<sub>2</sub>) reacts with the LUMO of the dienophile (&pi;\*<sub>CC</sub>). Here, the &pi;<sub>2</sub> notation is new, and can be understood as follows. Because this reaction has 4 p orbitals meeting simultaneously, there are 4 possible combinations of orientations with different energy (highest energy at top):

| name | occupied? | orientation |
| ---- | ---- | ---- |
| &pi;<sub>4</sub> | no | down up down up |
| &pi;<sub>3</sub> | no | up down down up |
| &pi;<sub>2</sub> | yes | up up down down |
| &pi;<sub>1</sub> | yes | up up up up |

To understand this table, recall that the energy is determined by the number of nodes where you transition from up to down or down to up. Here, &pi;<sub>3</sub> is the LUMO.

#### Regioselectivity 

Consider this reaction, which can proceed one of two ways:

![](/media/2015/04/diels-alder-regioselectivity.png)

The top version is favored. This is due to a resonance structure in the diene:

![](/media/2015/04/diene-resonance.png)

Which gives rise to this preference:

![](/media/2015/04/resonance-regioselectivity.png)

#### Stereospecificity

Consider the difference between a *cis* dienophile and a *trans* dienophile:

![](/media/2015/04/diels-alder-stereospecificity-example-1.png)

In each case, the product is racemic, in that (for instance) in the top right product the two functional groups could be both forward or both back. But they are stereospecific in that a *cis* configuration of the dienophile dictates that the two groups will be *cis*, on the same face of the cyclohexene, in the product. Conversely a *trans* dienophile dictates the two groups will be *trans*, on opposite faces of the cyclohexene.

Here is another example:

![](/media/2015/04/diels-alder-stereospecificity-example-2.png)

Stereoselectivity is also achieved via the endo rule. Consider this reaction:

![](/media/2015/04/endo-rule.png)

It can proceed via either of two orientations, named exo and endo. The endo is strongly favored, giving the product at right. (Note that the ring with the peak above it on the left side of the product is a norbornane). The reason why endo is favored is not 100% understood but seems to have to do with additional orbital interactions that provide stabilization without participating covalently in the reaction. The fact that endo is favored is called **the endo rule**.

#### History

Otto Diels and Kurt Alder invented this reaction in 1928. The original reaction they worked with used cyclopentadiene and quinone as reactants, and obtained two different, highly complex, products:

![](/media/2015/04/the-original-diels-alder.png)

They published their results and asserted that they reserved the right to use this reaction in synthesis exclusively for themselves. Luckily, no one respected that, and the reaction became widely used and gave rise to many important innovations. In 1952, Robert Burns Woodward at Harvard used the Diels-Alder to design a 12-step synthesis of cortisone, and a 13-step synthesis of cholesterol. It has been applied to the synthesis of gibberellic acid and of leipicidin A, using intramolecular Diels-Alder reactions where the diene and dienophile are already part of the same molecule. Andrew G. Myers in 1995 used it to achieve a new route to synthesis of diverse tetracycline analogues, which became the basis of [Tetraphase Pharmaceuticals](http://tphase.com/). Yoshito Kishi used it to synthesize pinnatoxin A in 1998. Matthew Shair in 2002 synthesized (-)-longithorine A using two key Diels-Alder steps. These are highly complex natural products. It has been suggested that the Diels-Alder may actually represent how nature makes natural products. One of the most recent breakthroughs in using Diels-Alder for complex synthesis was [[Balskus & Jacobsen 2007]].

[Balskus & Jacobsen 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17885133 "Balskus EP, Jacobsen EN. Asymmetric catalysis of the transannular Diels-Alder  reaction. Science. 2007 Sep 21;317(5845):1736-40. PubMed PMID: 17885133."



