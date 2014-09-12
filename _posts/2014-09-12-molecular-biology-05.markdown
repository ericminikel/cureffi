---
layout: post
title:  "Molecular Biology 05: 'Protein-DNA interactions Part I'"
date:   2014-09-12 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 05 of Harvard's BCMP 200: Molecular Biology course, delivered by Joe Loparo on September 12, 2014.*

Today's lecture is inspired by [Mark Ptashne's *A Genetic Switch*](http://www.amazon.com/Genetic-Switch-Third-Edition-Revisited/dp/0879697164).

### Bacteriophage lambda

The bacteriophage &lambda; has a isohedral "head" of 600 &Aring;. The ssDNA is linear in the head but circularizes upon entry into *E. coli*. &lambda; can infect *E. coli* and replicate within the bacteria by **lysogeny**, where the host cell divides and the phage DNA gets to replicate passively. When exposed to UV radiation, the phage will switch to a **lytic** state, where it prints up hundreds of copies of itself and then lyses the host cell.

In bacteria, a **promoter** is the entire seqeunce recognized by an RNA polymerase that initiates transcription. An **operator** is a smaller sequence within the promoter which is bound by a regulator of transcription. RNA polymerase has a ~60bp footprint (for comparison, *E. coli*'s DNA polymerase has a ~30bp footprint).

&lambda; has a 236-residue protein called Repressor which contains a C-terminal dimerization domain an an N-terminal DNA-binding domain. &lambda; also has a Cro protein of 66 residues, which is almost always dimerized. When repressor is dimerized, the N terminal domains of the two copies fit into consecutive major grooves of DNA. The genes for Repressor and Cro are adjacent, and share a regulatory region with operators OR3, OR2 and OR1. The promoter for Cro overlaps OR2 and OR1, and the promoter for Repressor overlaps OR3 and OR2. The ORs are palindromic. OR1, 2 and 3 have some conserved bases and some differences, resulting in different affinities for different operators.

These operators were characterized using "DNA footprinting". DNA is digested minimally with a nonspecific endonuclease (DNAse I) so that on average each piece of DNA is cut exactly once, and then run on a denaturing polyacrylamide gel such that you can see a gap of missing hypothetical DNA piece sizes where a protein was bound to the DNA, precluding DNAse I from cutting it there.

The gene complex was studied by mutating 2 of the 3 ORs between Repressor and Cro and studing what the one functional OR did.

+ When Repressor is bound to OR1, it acts as a negative regulator of the Cro promoter. It occludes RNA polymerase from binding there. 
+ When Repressor is bound to OR2, it negatively regulates Cro, while also positively regulating Repressor by recruiting RNA polymerase to transcribe it.
+ When Repressor is bound to OR3, it positively regulates Cro and negatively regulates Repressor.

As you increase Repressor concentration from 0 to a high number, it will first bind OR1, then OR2, then OR3. There is cooperative binding whereby Repressor bound at OR1 increases the affinity of Repressor for OR2. In a lysogenic cell, about 90% of the time Repressor is bound to OR1 and OR2, and about 10% of the time it is bound to OR1, OR2 and OR3.

When UV damages DNA, the broken DNA filaments bind and activate RecA, which leads to the cleavage of Repressor in its flexible linker domain between the N and C termini. Thus it cannot dimerize and has reduced affinity for the ORs. This eventually removes all Repressor bound to the OR region, resulting in Cro transcription. 

Cro has no cooperative binding, and is exclusively a negative regulator of transcription. So as Cro concentration increases, it first binds OR3, turning off Repressor. As Cro expression increases it eventually binds OR2 and OR1, turning off its own transcription.

This results in lytic replication, allowing &lambda; to escape the catastrophe that has befallen its host cell.

The structure of Cro absent DNA was solved by Brian Matthews' group in 1981. It contains 3 &alpha;-helices and 3&beta;sheets, with a helix-turn-helix motif between &alpha;2 and &alpha;3, a motif which had only ever been seen once before. This eventually turned out to be an important motif for DNA sequence recognition. Cro was crystallized as a dimer, in which the three &beta;-strands from each of the two molecules had combined into an extended &beta;-sheet. Modeling of the structure revealed that the combined &beta;-sheet was just long enough to allow the two &alpha;3s to fit into two consecutive major grooves in DNA. While it is &alpha;3 that binds DNA, the interaction between &alpha;2 and &alpha;3 is crucial for getting the angle just right, and the turn region in between them (MGM) has that glycine which is critical for being able to make such a sharp turn.

Repressor has 5 &alpha;-helices including one helix-turn-helix motif. Its N-terminal domain, &alpha;5, is responsible for the weak dimerization.

Recall that in an &alpha;-helix there are 3.6 residues per turn and the diameter of the backbone is 5&Aring;, with sidechains extending further. This size allows it to fit into a major groove (12&Aring;) but not a minor groove (6&Aring;).

Both the Cro and Repressor recognition helices' amino acid sequences begin with QS which bind to positions 2 and 4 in the operator DNA. In Cro, for instance, Q44 binds adenine in base pair 2, S45 binds guanine in base pair 4, N55 and K4 bind guanine in base pair 6, and Q33 (in &alpha;2) both hydrogen bonds with the DNA backhone and binds to the adenine in base pair 2. There are various ways that amino acids can bind DNA. In some cases, aromatic amino acids can intercalate DNA - for instance, this is seen in proteins that bend DNA, though perhaps not in sequence recognition proteins. For the most part, there is no obvious recognition code matching amino acids to the DNA sequence recognized, with the exception of TALENs. Yet it is possible to redesign the specificity of a DNA-binding &alpha;-helix - as shown in a landmark experiment [[Wharton & Ptashne 1985]].

Cro and Repressor both distort DNA shape when the bind, by over-twisting the minor groove. They insert a positively charged lysine into the minor groove which counteracts the repulsion between the negatively charged DNA backbones on either side of the minor groove. Also the DNA sequence that forms the minor groove in the operator is AT-rich, which is necessarily because AT-rich DNA is easier to bend than GC-rich DNA. A single A>G mutation reduces the affinity of Repressor by 15-fold.

So there are three forces controlling protein-DNA binding:

1. H-bonds between the protein and the DNA backbone anchor the protein to DNA
2. Sequence-specific interactions between DNA and the major groove
3. DNA distortion adds specificity

But wait - how can hydrogen bonding be a driving force? Aren't hydrogen bonds satisfied in the solvent (water) as well? Yes, but once protein binds to the DNA backbone, it starts to sterically exclude water from the major groove, which means that there will be an energetic penalty for not satisfying H-bonds *unless* the protein and DNA can bind, which occurs in a sequence-specific manner.

### Cooperativity

A "good" genetic switch is one in which the expression of Cro as a function of Repressor concentration is as discontinuous as possible - there is a very sharp S curve where a slight change in \[Repressor\] causes a very sudden change in Cro expression. A "bad switch" would have a very gradual linear relationship between \[Repressor\] and Cro expression.

Let's say the total \[Repressor\] := \[R<sub>T</sub>\] in the cell is 100 molecules, for a concentration of 100 nM (see calculations below), and there is one operator, for a concentration of 1 nM. Because \[R<sub>T</sub>\] >> \[O<sub>T</sub>\], we can define \[R\] := \[R<sub>free</sub>\] and then assume \[R<sub>T</sub>\] = \[R\] or in other words, all Repressor is free. If we assume the K<sub>D</sub> of Repressor for the operator is 1e-10 M, we get that only 1e-3 of the time is the operator unbound by Repressor. But if we then also assume that the K<sub>D</sub> of Repressor for non-specific DNA binding is 1e-4 M and that there is a 1e-7 molarity of potential non-specific sites, then we find that 99% of Repressor is not free, but rather is bound to non-specific sites. Overcoming this problem would require either (1) increasing the expression of Repressor by 100-fold, but this solution is bad because it makes it hard to shut *off* the switch, or (2) increasing the ratio of Repressor's sequence-specific K<sub>D</sub> to its non-specific K<sub>D</sub> by 100-fold. How can we achieve this latter goal? Because there is a logarithmic relationship between &Delta;G and K<sub>eq</sub>, doubling the &Delta;G of the binding will change the K<sub>D</sub> for specific binding from 1e-10 to 1e-20, and the non-specific one from 1e-4 to 1e-8, giving us a 1e12 ratio. Based on thermodynamics alone, this seems great, but actually it is a **kinetic trap**. Because there are many more non-specific sites, Repressor is likely to meet them first, and when it does, it will bind with its newfound 1e-8 M affinity. Therefore it will take a very long time for Repressor to bind the operator instead - if it sampled even 10% of all possible non-specific sites before finding its specific site, at 1 per second, it would take 25 hours to find its specific site. So it would be hard to turn the switch on. Moreover, because the specific site has affinity 1e-20 M, even after you turn off Repressor expression, it will take eons for the existing Repressor to un-bind the specific site, so it's also hard to turn the switch off.

Instead, the solution nature has found is **cooperative binding**. By having two adjacent specific sites and an affinity between individual Repressor molecules, you effectively increase the concentration of Repressor at the desired site. The non-specific sites, meanwhile, are unlikely to be near each other by chance, so the energy benefit of cooperative binding is unlikely to be achieved elsewhere.

In fact, it turns out there are actually left and right operators and Repressor can form up to octamers. The higher order multimers that a protein is capable of forming, the higher is its sensitivity to concentration.

### Random grab bag of facts

Consider an *E. coli* cell which is 2 &mu;m in length and 1&mu;m in diameter and roughly cylindrical. Its volume is approximated by h&pi;r^2 = (2e-6 m)&pi;(1e-6 m)^2 = 1.6e-18 m^3 . Recall that 1 mL = 1 cm^3 = (1e-2 m)^3 = 1e-6 m^3, so 1L = 1e-3 m^3 . Therefore the volume of *E. coli* is 1.6e-18 m^3 &times; 1e-3 m^3 / L = 1.6e-15 L. A single molecule is 1/(6.022e23) mol = 1.7e-24 mol. Therefore the molarity of a single molecule in an *E. coli* cell volume is 1.7e-24 mol / 1.6e-15 L = 1.1e-9 mol/L &asymp; 1M. Therefore the molarity of a molecle in *E. coli* is about 1 nM per molecule in the cell. HeLa cells have about a 1000x larger volume, so it takes 1000 molecules to equal 1 nM.

A one-line R expression for all the above math is `(1/6.022e23)/((2e-6)*pi*(.5e-6)**2*1e3)`.

In ion affinity chromatography, "anion exchange" refers to when a cation is bound to the column and a negatively charged protein is purified. "Cation exchange" refers to when an anion is bound to the column and a positively charged protein is purified.

[Wharton & Ptashne 1985]: http://www.ncbi.nlm.nih.gov/pubmed/4033758 "Wharton RP, Ptashne M. Changing the binding specificity of a repressor by redesigning an alpha-helix. Nature. 1985 Aug 15-21;316(6029):601-5. PubMed PMID:  4033758."
