---
layout: post
title:  "Molecular Biology 01: 'Introduction to protein structure'"
date:   2014-09-03 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 01 of Harvard's BCMP 200: Molecular Biology course, delivered by Joe Loparo on September 3, 2014.*

### Class business

Jason Heustis is the person to contact with logistical questions about the class.

### Motivational quote for this class

> All approaches at higher levels are suspect until confirmed at the molecular level.
> 
> -- <cite>Francis Crick, quoted [here](http://www.nature.com/neuro/journal/v7/n10/full/nn1004-1027.html)</cite>

### Historical perspective

A few choice moments:

+ The Central Dogma dates to [Avery, Hershey and Chase](http://en.wikipedia.org/wiki/Hershey%E2%80%93Chase_experiment), who showed that DNA contained genetic material. They found that the transfer of phage DNA was sufficient to cause pathogenesis in infected bacteria, that DNAse could abolish this pathogenicity, and that protein from phages did not enter the cell.
+ Watson and Crick anticipated a replication mechanism for DNA in their [original letter to Nature](http://www.nature.com/nature/dna50/watsoncrick.pdf) [[Watson & Crick 1953]].
+ Max Perutz and John Kendrew used X-ray crystallography to determine the first crystal structure of a protein, myoglobin [[Kendrew 1958]]. They later won the [1962 Nobel Prize in chemistry](http://www.nobelprize.org/nobel_prizes/chemistry/laureates/1962/). 

### Review of some basics

+ A group's pKa is the pH at which it is 50% protonated. A group is primarily protonated when the ambient pH is less than its pKa. (Think of this as when there are *more* than enough protons around to keep the group half protonated.) We call the groups acidic (e.g. carboxylic acid) if they have a low pKa (i.e. they are deprotonated at neutral pH) and basic if they have high pKa.
+ Elements are most electronegative towards the upper right of the periodic table. 
+ Peptide bonds are formed via a dehydration reaction.
+ Peptide bonds have a resonance structure whereby about 40% of the time they are double bonds, which is why they stay fairly planar.
+ Cysteines can be oxidized to form disulfide bonds. The cytosol is reducing; disulfide bonds exist in oxidizing environments (e.g. extracellular). Air in the laboratory can oxidize disulfide bonds, which is why some protocols require addition of reducing agents.
+ A hydrogen bond has a length of 1.6 - 2.0 &Aring;. It is debated whether thiol (-SH) groups form hydrogen bonds - if they do, these are weaker than other hydrogen bonds.
+ Van der Waals forces between nonpolar groups are very weak; the collapsing of hydrophobic domains of proteins is driven primarily by entropy of the surrounding water molecules rather than by Van der Waals forces.
+ The dielectric constant (D; also known as [relative permittivity](http://en.wikipedia.org/wiki/Relative_permittivity)) of a substance is related to its ability to shield charges. D<sub>protein</sub> is generally around 2-4 but can get up to 80, and can profoundly affect side chain pKa. In a hydrophobic environment, the pKa of D or E can be driven above 7, making them proton donors.
+ Chiral amino acids (all except G) are found in their levorotary (L) form in all life on Earth.

In proteins, [dihedral angles](http://en.wikipedia.org/wiki/Dihedral_angle) are defined by convention as follows. Consider a series of bonds between atoms 1, 2, 3, and 4, then look head-on down the barrel at the 2-3 bond. Place the 1-2 bond at 12 o'clock. If the 3-4 bond is to the right of the 1-2 bond, then the angle is positive, if to the left it is negative. [This](http://kinemage.biochem.duke.edu/teaching/anatax/html/anatax.1b.html) is one of the clearer explanations I have found. Since I can never remember which is which, I made this diagram:

![dihedral angles in proteins](/media/2014/09/dihedral-angle-diagram.png)

+ &Psi; (Psi) is the angle along the C&alpha;-C bond.
+ &Phi; (Phi) is the angle along the N-C&alpha; bond.
+ &omega; (omega) is the angle along the C-N bond.

&omega; is 0&deg; for a *cis* peptide bond, and +180&deg; for a *trans* peptide bond. The other two vary between -180&deg; and +180&deg;.

[Kendrew 1958]: http://www.ncbi.nlm.nih.gov/pubmed/13517261 "KENDREW JC, BODO G, DINTZIS HM, PARRISH RG, WYCKOFF H, PHILLIPS DC. A three-dimensional model of the myoglobin molecule obtained by x-ray analysis. Nature. 1958 Mar 8;181(4610):662-6. PubMed PMID: 13517261."

[Watson & Crick 1953]: http://www.ncbi.nlm.nih.gov/pubmed/13054692 "WATSON JD, CRICK FH. Molecular structure of nucleic acids; a structure for deoxyribose nucleic acid. Nature. 1953 Apr 25;171(4356):737-8. PubMed PMID: 13054692."