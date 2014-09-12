---
layout: post
title:  "Molecular Biology 04: 'DNA structure and topology'"
date:   2014-09-10 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 04 of Harvard's BCMP 200: Molecular Biology course, delivered by Joe Loparo on September 10, 2014.*

### DNA structure and topology

Watson and Crick's double helix structure raised two questions that we'll discuss today:

1. How do proteins recognize DNA binding sites?
2. How do proteins gain access to individual DNA strands?

Question 1 will be touched on today and explored in more detail in lecture 05. Question 2 branches into two aspects: (A) DNA topology the biological concept, and (B) DNA topology the tool to understand how proteins that change DNA structure work.

### Review of DNA facts

See also [biochemistry 04](/2013/10/11/biochemistry-04-proteins-and-nucleic-acids/).

The two stands of a DNA double helix are antiparallel. When a free dNTP is incorporated into DNA by DNA polymerase, it loses two phosphates. The mean weight of a dNMP, as incorporated into DNA, is 330 Da. G:C bonds have three hydrogen bonds, hence the higher melting temperature of GC-rich DNA. The phosphate backbone of DNA is negatively charged, so the consecutive units repel one another. But they are stabilized by interactions both with water and with cations dissolved in the water (Na<sup>+</sup>, K<sup>+</sup> and Mg<sup>+</sup>). As for the bases, the base pairing satisfies all possible hydrogen bonds, excluding water from the interior of the helix. However, even single-stranded DNA can satisfy all its hydrogen bonds thanks to water, so hydrogen bonding is *not* the major driving force for annealing. Instead, annealing is driven by van der Waals and electrostatic interactions between consecutive bases due to stacking of their aromatic rings.

DNA base pairing is cooperative: the pairing of one pair of bases brings the next pair closer together, lowering the energy for them to pair too. Mispairing of bases has an energetic penalty, as the mismatched bases cannot pair with each other nor with water (because the neighboring base pairs exclude water from the helix's interior).

A normal (B-form) DNA double helix is ~20&Aring; (2 nm) wide and each base pair is 3.3&Aring; in height. There are 10.4 bp per turn, for a "pitch" of 34&Aring;. Each base pair accounts for 360&deg;/10.4bp = 34.6&deg; of rotation, creating a minor groove and a major groove. B-form DNA is a right-handed helix, which means that strands go up and counterclockwise at the same time. Z-form DNA, which is a rarity, is a left-handed helix. There is also the A-form helix, which pure dsDNA will only form in conditions of almost no water, but dsRNA and DNA-RNA hybrids routinely adopt the A-form. A-form and Z-form structures are profoundly different from B-form - see [this table](http://en.wikipedia.org/wiki/Z-DNA#Comparison_geometries_of_some_DNA_forms). It is still debated whether Z-form DNA has any physiological role. The same dsDNA molecule can only have B form in one segment and Z form in another segment if it has an open, un-annealed space in between them. Therefore it has been hypothesized that sometimes dsDNA adopts a Z form in order to preserve a rolling window of un-annealed DNA.

Though we spoke above of DNA structure as if it were fixed, in reality many things such as small molecule intercalators and DNA-binding proteins can change its structure.

DNA force extension experiments have revealed that ssDNA and dsDNA have different properties. dsDNA behaves like a rigid rod up to about 50 nm (which is its crystallographic length), whereas ssDNA loses its stiffness at only ~2nm of extension. These quantities are called the molecules' "persistence lengths".

The minor groove is 5.7&Aring; tall and 7.5&Aring; deep, while the major groove is 11.7&Aring; high and 8.5&Aring; deep. Proteins can more easily bind in the major groove. The major groove also has more chemical information available to proteins, whereas some pairings are degenerate in the minor groove. Let's define:

+ A = hydrogen bond acceptor
+ D = hydrogen bond donor
+ M = methyl group
+ H = hydrogen that does not offer bonding

Then the groups exposed to the major and minor grooves in different pairings are as follows:

| pairing | major | minor |
| ------- | ----- | ----- |
| A:T | A D A M | A H A |
| T:A | M A D A | A H A |
| G:C | A A D H | A D A |
| C:G | H D A A | A D A |

Bacteria have a single circular chromosome on the order of 4Mbp. However, their genome is actually divided into separate topologically distinct domains averaging ~10kb each. This was discovered by experiments nicking DNA to allow parts of it to relax [[Postow 2004]]. This partitioning into separate topological domains is because of proteins bound to DNA, giving rise to supercoiling. When a circular plasmid is twisted multiple times, it can relieve some of its topological stress by forming a plectoneme which looks like &infin;. Left-handed plectonemes are called "positive supercoils" and right-handed ones are called "negative supercoils".

When the ends of DNA are constrained, for instance in a circular chromosome, strand separation leads to topological stress - the segments adjacent to the separated segment will supercoil, leading to plectonemes.

Here are some terms:

+ **Lk** is the linking number - the number of times two strands are "linked", where 0 is two unconnected things and 1 is two circles linked to one another. Lk can be counted by counting the total number of times one strand crosses the other, and then dividing by two. For dsDNA, the Lk is simply the number of times one constituent strand passes the other. There are rules about Lk:
    1. Lk is always an integer
    2. Lk is topologically invariant. It can only change when you break a strand.
+ **Tw** is the number of twists. For B-form dsDNA, the energy is minimized when there is 1 Tw per 10.4bp.
+ **Wr** is writhe. This is the number of times DNA crosses over itself in a supercoil.

It can be shown that:

Lk = Tw + Wr

When unconstrained, DNA adopts a conformation that yields optimal Tw. Discrepancies between Lk and the optimal Tw result in changes in Wr, known as supercoiling. 

For a 3kb circular plasmid, for example, Tw will always be around 300. The energetic incentive to keep Tw close to length/10.4 is so high that any change in Lk is almost always compensated by a change in Wr rather than in Tw.

Consider a second example, a 400 bp piece of linear dsDNA *fixed* at both ends. It begins with Lk = 40, Tw = 40, Wr = 0. If we "overwind" it by 3 turns, then Lk = 43 and Wr will accordingly rise to +3. Wr = +3 is called a positive supercoil, which is left-handed.

Almost all genomes exist in a negatively supercoiled state. Consider a 1kb circular plasmid, where DNA helicase needs to unwind 10 bp to do something to it. In the remaining 990 bp, it will be Lk = 100, Tw = 99, Wr = +1. As more and more helicases act on the DNA, the positive supercoiling becomes more and more intense, making helicase's job more difficult. Instead, it is desirable to keep the DNA in a negative supercoiled state by default, so that helicase is actually moving energetically downhill when it unwinds DNA, relieving topological stress. In bacteria, an enzyme called gyrase expends ATP in order to negatively supercoil DNA by cleaving it, turning it and re-ligating it.

There are two types of supercoiling, called plectonemic and solenoidal. In the latter, DNA is wrapped around something (say, a nucleosome), but the fundamental topology is the same. Eukaryotes wrap DNA around nucleosomes to introduce negative supercoil instead of using gyrase.

A left-handed solenoidal wrap of one segment of DNA around histones results in a left handed plectoname (positive supercoil) in the rest of the DNA, for conservation of link number. To relieve this stress, topoisomerases are needed to un-writhe the rest of the DNA. Unlike bacterial gyrases, topoisomerases do not need ATP - they just use the energy in the supercoiled DNA to cut and re-ligate the DNA.

The conformation of DNA is of practical importance in the lab. In DNA gel electrophoresis, a closed relaxed circle will migrate the slowest. A linear DNA will run faster. A supercoiled DNA will run yet faster than linear DNA because its size exposed to the gel is smaller. The more supercoiled, the faster it runs. Ethidium bromide, by intercalating DNA, relaxes the curvature of the DNA helix from 34.6&deg; to only 10&deg;. Remember that Lk is conserved in the absence of breaking strands, so this doesn't result in a decrease in Lk. This instead decreases Tw and increases Wr, introducing positive supercoils. The direction of effect is the same as that of unwinding DNA with a helicase.



[Postow 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15256503 "Postow L, Hardy CD, Arsuaga J, Cozzarelli NR. Topological domain structure of  the Escherichia coli chromosome. Genes Dev. 2004 Jul 15;18(14):1766-79. PubMed PMID: 15256503; PubMed Central PMCID: PMC478196."