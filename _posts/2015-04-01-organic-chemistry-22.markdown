---
layout: post
title:  "Organic chemistry 22: Radicals - alkene halogenation, polymerization"
date:   2015-04-01 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Radical chemistry, bond homolysis, bond dissociation energies. Halogens, benzoyl peroxide. Initiation, propagation and termination. Oxygen radicals. Synthesis of plastics."
---

*These are my notes from lecture 22 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on April 1, 2015.*

### Radical chemistry

**Bond homolysis** is when you break a relatively weak bond such as Cl-Cl using either heat, denoted &Delta;, or electromagnetic radiation, denoted h&nu;. Each Cl atom gets one electron from the broken &sigma; bond. Each Cl atom thus has an incomplete octet with only 7 electrons, and is therefore highly reactive.

Another example of this is benzoyl peroxide, which can undergo bond homolysis and lose a CO<sub>2</sub> to yield a reactive benzene ring with a singly-occupied molecular orbital (SOMO):

![](/media/2015/04/benzoyl-peroxide.png)

Bond dissociation energies are as follows:

| bond type | dissociation energy (kcal/mol) |
| ---- | ---- |
| 1&deg; C-H | 100 |
| 2&deg; C-H | 96 |
| 3&deg; C-H | 94 |
| sp<sup>2</sup> C-H | 103 |
| sp C-H | 131 |
| Ph CH<sub>2</sub>-H | 88 |
| H-F | 136 |
| H-Cl | 103 |
| H-Br | 88 |
| H-I | 71 |
| F-F | 38 |
| Cl-Cl | 58 |
| Br-Br | 46 |
| I-I | 36 |
| C-F | 106 |
| C-Cl | 81 |
| C-Br | 69 |
| C-I | 53 |

Notice that the diatomic halogens are all very weak, which is why they can be broken simply by heat or photolysis. Also note that there are electronegativity and spatial overlap trends overlaid here and that the trend for some of these sets of molecules runs opposite to that of pKa.

Consistent with the above data, we can make a list of things that stabilize radicals. Note that we are referring to stability of the radical created by homolysis. Thus, when we say tertiary (3&deg;) radicals are more stable, that means that the bond on a tertiary carbon is less stable. In other words, the 3&deg; C-H bond has lower dissociation energy of 94 kcal/mol compared to 100 kcal/mol for 1&deg; C-H precisely because the resulting radical is more stable.

Things that stabilize radicals:

+ 3&deg; > 2&deg; > 1&deg;
+ Steric bulk
+ Resonance structures
+ e<sup>-</sup>-donating *or* e<sup>-</sup>-withdrawing groups

![](/media/2015/04/things-that-stabilize-radicals.png)

Radicals are never going to be an appreciable concentration in your solution. They need to be present as very scarce catalytic species. They often catalyze reactions through **radical chains**, in which they attack one molecule, yielding a new radical which attacks another molecule, and so on. This proceeds via three steps: initiation, propagation and termination:

![](/media/2015/04/three-steps-of-radical-chemistry.png)

Here's an example of how these three steps proceed, using the example of benzyol peroxide catalysis of hydrobromination. In the presence of HBr only, this reaction will yield a Markonikov product. In the presence of 1% benzoyl peroxide, you end up with an anti-Markonikov product.

![](/media/2015/04/benzoyl-peroxide-non-markonikov.png)

Here's how:

![](/media/2015/04/benzoyl-peroxide-catalysis-mechanism.png)

This process can be used to achieve regioselectivity as well. This is because the radical prefers to be on the tertiary carbon because it gets stabilization from conjugation. Here is an example:

![](/media/2015/04/benzoyl-peroxide-regioselectivity.png)

In some instances, radical chemistry is not very useful because it can allow rearrangements, giving rise to diastereomeric mixtures. However, there are strategies for achieving high stereoselectivity with radical chemistry and these are often useful.

### Reaction with O<sub>2</sub>

We often think about O<sub>2</sub> in its singlet form with a double bond, but in fact most of the oxygen around us in the atmosphere is triplet oxygen, in which there is a single bond and both oxygens have a spare electron:

![](/media/2015/04/triplet-vs-singlet-oxygen.png)

A radical initiator, denoted In&middot;, can rip an H off of an R group, leaving the R with a radical that can react with triplet oxygen:

![](/media/2015/04/oxygen-radical-steps.png)

This sort of reaction can occur, very slowly, if diethyl ether bottles are left around the lab for too long. The rim of the container will form an ether peroxide which is highly explosive, and if you open the container, it will explode and also ignite the whole container of ether. Thus, if you ever find an old ether bottle lying around a lab, you call the bomb squad, who will come detonate it with a robot.

![](/media/2015/04/oxygen-radical-with-diethyl-ether.png)

These organic hydroperoxide intermediates are responsible for vegetable oil spoilage. To avoid spoilage (whether in food or in stored ether, if you can tolerate the impurities in the ether), you can add a stabilizer such as BHT, which acts as a sink for radicals.

![](/media/2015/04/bht.png)

This is analogous to the role played *in vivo* by &alpha;-tocopherol, better known as Vitamin E.

Radical polymerization is used for synthesizing most plastics, such as polystyrene:

![](/media/2015/04/polystyrene.png)

Other examples of this include polyvinyl chloride (PVC), polypropylene (PP), and polyethylene (PE).

![](/media/2015/04/pe-pp-pvc.png)







