---
layout: post
title:  "Thermodynamics in binding assays"
date:   2016-11-14 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: 
summary200: "Before you set out on a small molecule screen for your protein of interest, first make sure the thermodynamics make sense."
---

Recently Sonia and I have been running multiple different assays looking for binding interactions between a protein and a small molecule ligand. Again and again, I find myself needing to think about whether the design of an experiment makes sense from a thermodynamic standpoint. And again and again, I find myself amazed to realize how little I really understand about thermodynamics, compared to what I thought I knew from biochemistry classes a took a few years ago, early in my biological education. So I had to sit down and spend some serious time wrapping my mind around it. This blog post will collect what I've learned.

If you took an [intro biochemistry](/2013/09/22/biochemistry-01-stereochemistry-thermodynamics-water-and-acid-base-chemistry/) or [molecular biology](/2014/09/05/molecular-biology-02/) class like I did, at some point you have seen the equation K<sub>d</sub> = \[A\]\[B\]/\[AB\], which describes the binding of two molecules A and B at equilibrium. Here, \[A\] is the *free* concentration of A, \[B\] the free concentration of B, and \[AB\] the concentration of AB complex. So let's write it:

$$ K_d = \frac{[A_{free}][B_{free}]}{[AB]} $$

One of the things one often asks &mdash; or at least should ask &mdash; is **fraction bound**: what proportion of A will be bound to B, for a given starting concentration of A, B, and a K<sub>d</sub> value. The fraction of B bound is often written &Theta;<sub>B</sub>. [These OCW notes](https://ocw.mit.edu/courses/biology/7-51-graduate-biochemistry-fall-2001/lecture-notes/fa01lec07.pdf) point out that you can rearrange the above equation to get:

$$ \Theta_B = \frac{[A_{free}]}{K_d + [A_{free}]} $$

But this is in terms of *free* rather than *total* A, which isn't the most intuitive. In the types of situations I encounter in daily life, I might be taking, for instance, a 10 &mu;M solution of my protein, diluting a DMSO stock of a compound into it for a final concentration of 20 &mu;M, and then wanting to know what percent of the protein will be bound at various K<sub>d</sub> values. Those are *total* concentrations. To solve for &Theta;<sub>B</sub> in terms of total A, total B, and K<sub>d</sub>, you need the quadratic formula. [As explained by Vikas Shah of the Chazin lab](http://structbio.vanderbilt.edu/chazin/wisdom/kdcalc.htm), it works out that:

$$ [AB] = \frac{([A_{total}] + [B_{total}] + K_d) \pm \sqrt{([A_{total}] + [B_{total}] + K_d)^2 - 4[A_{total}][B_{total}]}}{2} $$

And then you can simply divide [AB] by [A<sub>total</sub>] or [B<sub>total</sub>] respectively to get &Theta;<sub>A</sub> or &Theta;<sub>B</sub>. I've written this handy R function to implement the equation:

~~~ R
proportion_a_bound = function (atot, btot, kd) {
  # quadratic formula per htta://structbio.vanderbilt.edu/chazin/wisdom/kdcalc.htm
  ab1 = ((atot + btot + kd) + sqrt((atot + btot + kd)^2 - 4 * atot * btot)) / 2
  ab2 = ((atot + btot + kd) - sqrt((atot + btot + kd)^2 - 4 * atot * btot)) / 2
  pab1 = ab1 / atot
  pab2 = ab2 / atot
  # pick the one that is between 0 and 1 as only that makes sense
  answer = c(pab1, pab2)[which(c(pab1, pab2) > 0 & c(pab1, pab2) < 1)]
  return (answer)
}
~~~

So for example, if you have 10 &mu;M protein, 10 &mu;M ligand, and the K<sub>d</sub> is 10 &mu;M, then 38% of the protein will be bound:

~~~ R
proportion_a_bound(1e-5,1e-5,1e-5)
# 0.381966
~~~

This random-seeming ~38% figure &mdash; the proportion bound when \[A<sub>total</sub>] = \[B<sub>total</sub>\] = K<sub>d</sub> &mdash; turns out to be (3-&radic;<span style="text-decoration:overline;">5</span>)/2, which you can get from plugging numbers into the quadratic equation above.

After playing with several examples, I realized that of the two answers allowed by the &plusmn; of the quadratic formula, the valid solution, the one that gives a proportion bound that is actually a valid proprtion, between 0 and 1 inclusive, always comes from the "-" version. We can therefore further simplify, and express the proportion of A bound as:

$$ \Theta_A = \frac{([A_{total}] + [B_{total}] + K_d) \minus \sqrt{([A_{total}] + [B_{total}] + K_d)^2 - 4[A_{total}][B_{total}]}}{2 \times A_{total}} $$

~~~ R
proportion_a_bound = function (atot, btot, kd) {
  return ( ((atot + btot + kd) - sqrt((atot + btot + kd)^2 - 4 * atot * btot)) / (2*atot) )
}
~~~

This function will occasionally give answers just slightly outside the \[0,1\] support, seemingly due to floating point overflow:

~~~ R
proportion_a_bound(1e-16, 5e-4, 1e-10)
# 1.000177
~~~

Normally the solution to these sorts of floating point problems is to do everything in log space and then re-exponentiate at the end &mdash; but since the log of a sum can't be simplified, I couldn't figure out an elegant way to do this. Proposals are welcome in the comments below.

Back to chemical biology. Before seeing this solution, I always had this vague sense that the fraction bound was somehow more intuitive. I think that's because chemical biologists spend much of their time thinking about situations where either the protein or the ligand is in considerable excess. Let's go back to this equation:

$$ \Theta_B = \frac{[A_{free}]}{K_d + [A_{free}]} $$

And now suppose that A is in great excess of B, such that even if 100% of B were bound to A, still only a negligible fraction of A would be bound to B. This means that \[A<sub>free</sub>] &asymp; \[A<sub>total</sub>\]. Therefore, in such a situation, if \[A<sub>total</sub>\] &asymp; K<sub>d</sub>, then the right half of the equation above becomes 1/2. This leads to one intuitive way of thinking about what K<sub>d</sub> means: if one thing (either protein or ligand) is in vast excess to the other, then the K<sub>d</sub> is the concentration of the more abundant thing, at which 50% of the less abundant thing will be bound. So if you have \[protein\] &gt;&gt; \[ligand\] for example, then the K<sub>d</sub> is the value of \[protein\] for which 50% of the ligand will be bound.

Sorting all this out in my head has allowed me to understand much better the conditions required for certain binding assays that we use in the lab. Here are a few examples.

Differential scanning fluorimetry (DSF) is an assay where you apply increasing temperature to your protein until it melts, exposing hydrophobic patches and therefore causing a dye such as Sypro Orange to fluoresce. It's recommended to have at least a 1:10 ratio of protein to ligand in this assay [[Niesen 2007]]. This can sometimes be hard to accommodate when optimizing assay conditions, because ligand concentration is bounded on the high end by compound solubility in &le;2% DMSO, while protein concentration is bounded on the low end by the total protein content needed to see a strong enough and reliable enough fluorescence signal upon melting. So why can't we just screen 10 &mu;M protein against 10 &mu;M ligand? The answer is that, as shown above, under those conditions a hypothetical 10 &mu;M K<sub>d</sub> hit (a reasonable affinity for a primary screen hit) would only bind 38% of your protein, which might not be enough for you to see a shift in the average melting curve of your protein. In this case, you're observing the protein, so you need a high concentration of ligand to drive the binding event. This is why it's critical, when developing the assay, to think of both ligand and protein in terms of molarity. I often hear ligand concentrations quoted in micromolar but protein concentrations in mg/mL, which obscures the fundamental stoichiometry between the two.

On the other end of the spectrum is DNA-encoded library (DEL) selection [[Kleiner 2011]]. In this assay, you have protein immobilized on a bead, and you expose it to a pooled library of small molecules that are each conjugated to a unique DNA barcode. You wash away unbound small molecules and DNA, then sequence the DNA that remains in association with your protein to figure out which small molecules bound. I never understood how this could possibly work, because any one small molecule in a DNA-encoded library is present at only a femtomolar or even attomolar concentration, clearly way below the K<sub>d</sub> of any plausible hit. The answer is that in this case, you're observing the ligand, and the protein is the more abundant molecule that is driving the interaction. The protein might be present at 50 &mu;M in the bead slurry, so if a small molecule is present at 100 aM (1e-16 M) and has K<sub>d</sub> = 10 &mu;M, then 98% of it will be protein-bound:

~~~ R
proportion_a_bound(1e-16,5e-4,1e-5)
# 0.9801188
~~~

Whereas a different small molecule with negligible affinity, say, K<sub>d</sub> = 100 mM, would be ~0% bound:

~~~ R
proportion_a_bound(1e-16,5e-4,1e-1)
# 0
~~~

This gives you (in theory) orders of magnitude enrichment of a 10 &mu;M ligand over a non-binder. This is, in principle, what gives you signal in a DEL selection. In practice, there are also a few complications. You wash the protein a few times after exposing it to the library, so the absolute amount of ligand retained by the protein is incredibly small, and it is only by grace of the exponential amplification power of PCR that it is feasible to detect the ligand's DNA barcode at all, let alone to detect its enrichment compared to the barcodes of non-binding small molecules. In practice, the degrees of enrichment observed for hits in DEL selection are more often on the order of 2 to 5 *fold* rather than 2 to 5 *orders of magnitude* &mdash; see for instance [[Kleiner 2010], [Maianti 2014]]. I have yet to hear a good explanation of why this is. Moreover, PCR amplifies both signal and noise, and it's not without its biases, so it's hard to interpret enrichment if the absolute number of copies of a barcode sequence is low.

Small molecule microarray (SMM) [[Hong 2014]] is perhaps an analogous situation, and here too I've had to ponder how the thermodynamics make any sense. Small molecules are printed in a tiny dot matrix on a chemically functionalized slide, and the slide is immersed in a solution containing the protein. After multiple washing steps, any retained protein is detected with a fluorescently labeled antibody. If you consider the full volume of solution used, particularly after the washes, both protein and ligand are present at concentrations far below any realistic K<sub>d</sub>. But the *local* concentration of a ligand in its particular dot in the dot matrix is high, resulting in a considerable enrichment of bound protein on the dot of a ligand with good affinity compared to a ligand with no appreciable affinity, and the protein is what you're detecting. The absolute amount of protein retained is small, but immunodetection is sensitive.

Of course, not every assay can be cleanly binned into a "protein-observed" or "ligand-observed" bucket. [Isothermal titration calorimetry](/2016/09/12/isothermal-titration-calorimetry/) (ITC), for instance, observes the heat released by the binding event, so it's kind of observing both. ITC is also different in that whereas the K<sub>d</sub> equations above describe the *equilibrium* state, and many assays interrogate a system already in an equilibrium state, ITC is specifically looking at the process of getting back to equilibrium after the perturbation of injecting more protein or more ligand. In ITC, you can detect evidence of binding even if both protein and ligand are a bit below the K<sub>d</sub>, with only a minority in the bound state, although you can only use ITC for K<sub>d</sub> determination if at least one of the two molecules eventually gets saturated, which means that the other molecule needs to be titrated up to a concentration above the K<sub>d</sub>.

NMR is another strange exception to any attempt to form a set of hard-and-fast rules. In STD-NMR, for example, you saturate the protein and then look for transfer of spin from the protein to a ligand [[Viegas 2011]]. Weak ligands have fast on/off rates, which paradoxically helps you, as one copy of the protein can transfer its spin to many copies of ligand in a short period of time. Thus, we perform STD-NMR screens with 10 &mu;M protein but 200 &mu;M ligand, even though the ligand is what we're observing, and we can use STD-NMR to detect binding events that have a K<sub>d</sub> yet higher, even up to 10 mM, much higher than the concentration of protein or ligand. Protein-observed NMR (such as [TROSY](/2016/04/13/charting-the-prp-archipelago-with-trosy/)) behaves more similarly to a conventional assay, in that you observe the protein at, say, 50 &mu;M while driving the interaction with a small molecule concentration that can be as high as 2 mM, although even in this paradigm, NMR is sensitive enough that you can sometimes see peak shifts with only a minority of protein in the bound state, so it is not essential that the concentration of the small molecule be greater than the K<sub>d</sub>.

Every assay is different, so there is perhaps no general rule, other than that it is a good idea to think through all this before setting out on a screen. If I can distill the lessons learned into a short checklist of things to consider, it might be:

+ Which molecule &mdash; protein or ligand &mdash; is giving you the signal?
+ What fraction of that molecule will need to be bound in order for you to see a signal?
+ Do your assay conditions allow that fraction to be achieved for a realistic K<sub>d</sub>?

[Niesen 2007]: https://www.ncbi.nlm.nih.gov/pubmed/17853878 "Niesen FH, Berglund H, Vedadi M. The use of differential scanning fluorimetry  to detect ligand interactions that promote protein stability. Nat Protoc. 2007;2(9):2212-21. PubMed PMID: 17853878."

[Kleiner 2010]: https://www.ncbi.nlm.nih.gov/pubmed/20681606/ "Kleiner RE, Dumelin CE, Tiu GC, Sakurai K, Liu DR. In vitro selection of a DNA-templated small-molecule library reveals a class of macrocyclic kinase inhibitors. J Am Chem Soc. 2010 Aug 25;132(33):11779-91. doi: 10.1021/ja104903x.  PubMed PMID: 20681606; PubMed Central PMCID: PMC2924185."

[Kleiner 2011]: https://www.ncbi.nlm.nih.gov/pubmed/21674077/ "Kleiner RE, Dumelin CE, Liu DR. Small-molecule discovery from DNA-encoded chemical libraries. Chem Soc Rev. 2011 Dec;40(12):5707-17. doi: 10.1039/c1cs15076f. Review. PubMed PMID: 21674077; PubMed Central PMCID: PMC4435721."

[Viegas 2011]: http://dx.doi.org/10.1021/ed101169t "Aldino Viegas, João Manso, Franklin L. Nobrega, and Eurico J. Cabrita. Saturation-Transfer Difference (STD) NMR: A Simple and Fast Method for Ligand Screening and Characterization of Protein Binding. J. Chem. Educ., 2011, 88 (7), pp 990–994 DOI: 10.1021/ed101169t"

[Maianti 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24847884 "Maianti JP, McFedries A, Foda ZH, Kleiner RE, Du XQ, Leissring MA, Tang WJ, Charron MJ, Seeliger MA, Saghatelian A, Liu DR. Anti-diabetic activity of insulin-degrading enzyme inhibitors mediated by multiple hormones. Nature. 2014 Jul 3;511(7507):94-8. doi: 10.1038/nature13297. PubMed PMID: 24847884; PubMed Central PMCID: PMC4142213."

[Hong 2014]: https://www.ncbi.nlm.nih.gov/pubmed/24534749/ "Hong JA, Neel DV, Wassaf D, Caballero F, Koehler AN. Recent discoveries and applications involving small-molecule microarrays. Curr Opin Chem Biol. 2014 Feb;18:21-8. doi: 10.1016/j.cbpa.2013.09.020. Review. PubMed PMID: 24534749; PubMed Central PMCID: PMC3943826."
