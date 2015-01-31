---
layout: post
title:  "Organic chemistry 03: Bonding - atomic orbitals and molecular orbitals"
date:   2015-01-30 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Molecular geometry, pi bonding, double and triple bonds, rotational rigidity, cis-trans geometrical stereoisomerism. Borane, ethene, aromatics, carbonyls, and ethyne."
---

*These are my notes from lecture 3 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on January 30, 2015.*

### Molecular geometry

Last time we discussed tetrahedral methane. Today we'll begin by discussing BH<sub>3</sub>, which is trigonal planar. We'll then discuss alkenes nad alkynes (hydrocarbons which involve double and triple bonds respectively).

#### Borane

Boron has fewer than four electrons, so hybridization into four equivalent sp<sup>3</sup> orbitals is not an option. Instead, when borane (BH<sub>3</sub>) forms, the s orbital mixes with just two of the three p orbitals, which by definition are coplanar with each other. The third p orbital is left alone. As a result the molecule is planar, and the unhybridized p orbital is left empty on the axis perpendicular to the plane of the molecule. This empty orbital is important when considering the reactivity of the molecule. Boron is extremely electrophilic, and you can think of the empty orbital as the coordination site waiting for a reaction to occur. In the molecular orbital diagram, it shows up as a *non-bonding* orbital of intermediate energy between bonding and anti-bonding orbitals. Note that it is a rule that for every bonding orbital there must be an antibonding orbital.

![](/media/2015/01/borane-mo-diagram.png)

#### Ethene

![](/media/2015/01/ethene.png)

The molecule (CH<sub>2</sub>=CH<sub>2</sub>) is ethene according to IUPAC nomenclature, but often called ethylene. Because each carbon forms only three bonds, it relies on sp<sup>2</sup> hybridization and, like borane, is therefore trigonal planar. The sp<sup>2</sup> hybridized orbitals from &sigma; bonds, while the remaining carbon electrons are left in the 2p<sub>z</sub> orbitals, which are perpendicular to the molecule's plane. The two 2p<sub>z</sub> orbitals run parallel to each other, for constructive interference resulting in a &pi; bond. This constructive interference requires that the two 2p<sub>z</sub> orbitals must be oriented in the same direction - if one were to rotate 180&deg;, the interference would be destructive and the molecule would be destabilized. As a result, it is unfavorable to rotate about the double bond axis, and so the molecule acquires a rigid planar geometry.

As I understand it, the &pi; bond is diagrammed as follows:

![](/media/2015/01/ethylene-pi-bond-mo.png)

The &sigma; bond was not diagrammed in class, and it is a bit confusing to think through where all the electrons are; I had to watch [this Khan Academy video](http://www.khanacademy.org/video?v=lJX8DxoPRfk) and consult [this page](http://classes.yale.edu/chem225b/studyaids/pericyclic/pericyclic.htm). The ethylene molecule has a total of 12 valence electrons - four from each of two carbons, and one from each of four hydrogens. Each carbon has three sp<sup>2</sup> hybridized orbitals which can hold a total of six electrons, so at first glacnce, you'd think that all of the electrons are used up in the sp<sup>2</sup> orbitals. But in fact, you get to double-count one electron from each carbon - each carbon's sp<sup>2</sup> orbitals are filled with three of its own electrons, two hydrogen electrons, and one of the *other* carbon's electrons. Thus it only takes a total of ten electrons to fill the 12 slots in the sp<sup>2</sup> orbitals. The remaining two electrons are in each carbon's 2p<sub>z</sub> orbital. These two half-filled 2p<sub>z</sub> orbitals align in phase with one another, thereby forming a pi bond, which is the highest occupied molecular orbital in ethylene.

#### Alkenes

Alkenes are named just like alkanes, but with -ene instead of -ane. Thus:

![](/media/2015/01/alkenes.png)

Trans-2-butene and cis-2-butene are **geometrical stereoisomers**. These are distinct molecules and cannot interconvert due to rigid &pi; bonds.

![](/media/2015/01/e-vs-z-naming.png)

The above two molecules are also rigid, non-interconvertible geometrical stereoisomers. We use the German abbreviations E for apart (*trans*) and Z for together (*cis*). Priority of functional groups is decided first by atomic number (carbon beats hydrogen). If these are the same, then you recursively move further out along the chains and compare. Here, numbering is still done according to the longest carbon chain, yet even though you might think that the 5th carbon on the 2-pentene chain is just part of the chain, the identity of functional groups is decided relative to the double bond. The ethyl is therefore of higher priority than the methyl, and "wins". It is in *trans* to the bromine at left, and in *cis* at right. Note that I have labeled them with the names they were given in class, though if you use ChemDraw to generate a name, it end in "methylpent-2-ene" instead of methyl-2-pentene".

#### Aromatic compounds

The two arrangements of double bonds in benzene are equivalent. When benzene appears as a functional group it is called phenyl.

![](/media/2015/01/benzene.png)

#### Carbonyl

Carbonyl is a C=O double bond. It is the most interesting functional group ever because it provides the most useful reactivity. The simplest carbonyl is formaldehyde, which is trigonal planar. Analogous to ethylene, it has pi bonding between the carbon and oxygen. When the carbon in a carbonyl is bonded to two R groups, it is a ketone, with the suffix -one. If it is bonded to one H and one R group, it is an aldehyde, with the suffix -al. If the C is single-bonded to an additional O which has an R group on the other side of it, that is an ester. If the carbon is bonded to an OH and an R group that is a carboxylic acid. If the carbon is bonded to an N and surrounded by R groups in the fashion diagrammed below, that is an amide.

![](/media/2015/01/carbonyl.png)

#### Alkynes

Alkynes are like alkanes but with carbon-carbon triple bonds. The simplest one, HC&equiv;CH is ethyne according to IUPAC naming rules, but is commonly known as acetylene:

![](/media/2015/01/ethyne.png)

In carbon-carbon triple bonds, there is "sp" (sp<sup>1</sup>) hybridization. Because this hybrid orbital contains only one p orbital, it is linear rather than planar. The remaining electrons occupy two aligned 2p<sub>y</sup> orbitals and aligned 2p<sub>z</sub> orbitals, at two axes perpendicular to the linear dimension of the molecule. You can think of the molecule as a rod surrounded by a barrel of electron density.

![](/media/2015/01/ethyne-pi-bonds.png)

Alkynes take an -yne suffix and need to be numbered to specify where the triple bond occurs. If a molecule has a double and a triple bond, the alkene is the higher-priority functional group, and the double and triple bonds confer "en" and "yne" morphemes separated by carbon numbering.

![](/media/2015/01/alkyne-examples.png)


