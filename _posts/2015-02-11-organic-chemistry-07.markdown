---
layout: post
title:  "Organic chemistry 07: Carbonyls - organometallic nucleophiles, acidity and pKa"
date:   2015-02-11 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Acid-base chemistry, what is pKa, what factors affect pKa, alkyllithium and Grignard reagents and how to use them to lengthen chains or make tertiary alcohols."
---

*These are my notes from lecture 7 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on February 11, 2015.*

PSet due Monday even though no class due to president's day
Material compressed to today / Friday. Then midterm exam.

### Acid-base chemistry

Consider this:

HCl &harr; H<sup>+</sup> + Cl<sup>-</sup>

The forward direction of this reaction is *incredibly* endothermic - it takes a lot of energy to break the bond, and will not occur under any reasonably achieveable conditions.

However, this reaction:

HCl + H<sub>2</sub>O &harr; H<sub>3</sub>O<sup>+</sup> + Cl<sup>-</sup>

Is fairly favorable. In other words, when we say HCl is an acid, we just mean it's ready to donate its proton to a suitable acceptor - it doesn't just give the proton up for nothing.

The latter equation has Ka as follows:

Ka = Keq\[H<sub>2</sub>O\] = \[H<sub>3</sub>O<sup>+</sup>\]\[Cl<sup>-</sup>\] / \[HCl\]

pKa = -log10(Ka) = -7 for HCl

This very favorable pKa of -7 indicates that the lone pairs on water have 10<sup>7</sup>-fold higher affinity for the proton than Cl<sup>-</sup> does.

Now consider another reaction, of acetic acid and ammonia:

![](/media/2015/02/acetic-acid-ammonia.png)

Note that on either side of the equation, it is the protonated species that can be described with a pKa. These pKas are well-established and can be looked up online, allowing you to figure out the equilibrium of the overall reaction. To do this, think of it as two half-reactions mediated by water:

![](/media/2015/02/acetic-acid-ammonia-half-reactions.png)

By multiplying the Ka of the two half-reactions (or, think of it as summing the pKas) we can obtain an overall Ka for the reaction of 10<sup>4</sup>. The equilibrium lies dramatically to the right, or in other words, the nitrogen lone pairs are much more affine for the proton than the oxygen lone pairs on carboxylic acid are.

#### What affects pKa?

The pKa of compounds depends on several factors.

| compound | pKa |
| ---- | ---- |
| H-F | 3 |
| H-Cl | -7 |
| H-I | -9 |
| H-OH | 16 |
| H-SH | 8 |
| H-NH<sub>2</sub> | 38 |
| H-O<sup>+</sup>H<sub>2</sub> | -2 |
| H-N<sup>+</sup>H<sub>3</sub> | 9 |
| H-CH<sub>3</sub> | 50 |
| H-ethene | 45 |
| H-ethyne | 25 |

\*Note that for the species with pKa >20, they are such weak acids they would never give up a proton to water. The pKa values are based on extrapolations from measurements made in other solvents.
\*\*Note that ammonia appears twice: 38 is the pKa for NH<sub>3</sub> to dissociate to NH<sub>2</sub><sup>-</sup>, while 9 is the pKa for NH<sub>4</sub><sup>+</sup> to dissociate to NH<sub>3</sub>.

Here are factors that affect the values in the table above:

1. **Electronegativity** of the atom bound to hydrogen. Hence why water has higher pKa than hydrogen halides.
2. **Size of electron shell**. Among halogens, the size of the electron shell involved in bonding is so important that it overcomes the difference in electronegativity, hence why HCl has lower pKa than HF. Similarly, H-SH is a stronger acid than H-OH even though S is more electronegative than O.
3. **Bond strength and size matter**. I wasn't clear if this is a separate thing or just a re-statement of the "size" thing above.
4. **Hybridization state**. Hybridized orbitals with more s character are more willing to take on extra electrons. Thus, a triple bond (sp hybridized) more readily takes the electrons from a proton than a single bond (sp<sup>3</sup> hybridized), which is why ethyne is more acidic than methane.
5. **Resonance**. Cyclohexanol has a pKa of 16, while phenol has a pKa of 9, because the O<sup>-</sup> is able to share the extra electron density into the pi system of benzene. Another example is that ethanol has a pKa of 16, while acetic acid has a much lower pKa of 5 thanks to its double bond.
6. **Induction**. The following three compounds differ in pKa not because of explicit resonance structures per se, but due to different ability to distribute electron density across the molecule via dipole moments. This effect is less strong than resonance.

![](/media/2015/02/induction-affecting-pka.png)

[This handout](http://isites.harvard.edu/fs/docs/icb.topic93502.files/Lectures_and_Handouts/20-Acidity_Concepts.pdf) contains some additional useful pKas and concepts.

### How to make the conjugate base of hydrocarbons

Alkyllithium reagents and alkylmagnesium reagents can make the conjugate base of hydrocarbons.

#### Alkyllithium reagents

Examples include methyllithium (CH<sub>3</sub>Li) or butyllithium (BuLi). These are quite reactive but are stable and can be purchased in a bottle. Here, the carbon is the electronegative partner. These are made via alkyl halides and lithium metal. For instance, in an aprotic solvent such as diethyl ether, you can react this alkyl bromide with lithium:

![](/media/2015/02/making-alkyllithium-reagent-example.png)

The notation Li(0) denotes that the lithium *does* have its electron, as opposed to being in the Li<sup>+</sup> state. Li(0) is a 1e<sup>-</sup> reducing agent.

Now that we have alkylithium, here is how we can use it to perform addition to a carbonyl, resulting in a new carbon-carbon bond.

![](/media/2015/02/use-alkyllithium-to-make-3ary-alcohol.png)

![](/media/2015/02/alkyllithium-example-2.png))

#### Grignard reagents

Another very famous example of this reaction is a Grignard reaction. These use Grignard reagents, which contain Mg instead of Li. They have the formula R-Mg-X. For instance:

![](/media/2015/02/grignard-reagent-example-1.png)

In the first step, again Mg(0) denotes that Mg retains its electrons. This is simply magnesium metal, which can be chopped into pieces and added to the reaction.

#### What you can do with these

The choice of alkyllithium versus Grignard reagents is often just a practical one; you might try the reaction both ways and see which works better.

These reagents can even be used to perform addition to less reactive carbonyls, such as esters. This works via nucleophilic attack on the carbon, which creates a ketone which is even more reactive. The second equivalent of PhLi then attacks that, resulting in a deprotonated alcohol which is restored to a protonated state in the workup with HCl after it has run to completion.

For instance, this reaction proceeds via PhLi making a nucleophilic attack on the carbon in the ester.

![](/media/2015/02/phli-attack-on-ester.png)

The above reaction proceeds via multiple steps as diagrammed below. Here's how I think I understand it. The first nucleophilic attack abolishes the double bond, and creates a new bond to phenyl, so that the central carbon has four bonds. The OCH<sub>3</sub><sup>-</sup> then ionizes away (I think) and the O<sup>-</sup> re-forms its double bond with the central carbon. A second nucleophilic attack then abolishes the double bond again, such that now two phenyl groups are bound to the central carbon. This leaves you with O<sup>-</sup> as one of the groups, but by treating with HCl, you can reprotonate it. Thus you end up with a tertiary alcohol (a carbon with an -OH plus three other things bound to it).

![](/media/2015/02/phli-ester-steps.png)

However, if you try to use alkyllithium or Grignard reagents on acids or amides, you'll be disappointed. All they will do to acids is deprotonate them, creating (say) methane. (Although with very large amounts of heat and excess reagent you can force something to happen with acids). And they won't do anything at all to amides. 

![](/media/2015/02/inefficacy-against-acids-and-amides.png)

Addition to alkynes is possible:

![](/media/2015/02/addition-to-alkynes.png)

Formadelhyde (CH<sub>2</sub>O) is useful as a chain lengthening reagent. Here, it is shown converting an alkyne into a primary alcohol:

![](/media/2015/02/formaldehyde-chain-lengthening.png)

Grignard reagents can also be used to lengthen chains by simply bubbling CO<sub>2</sub> gas through your solution:

![](/media/2015/02/grignard-plus-co2-chain-lengthening.png)

In learning this material, one should not only remember what each reagent can do, and what solvents and conditions must be used, but also be able to recognize a product - say, a secondary alcohol - and figure out what sort of process could be used to create that product.



