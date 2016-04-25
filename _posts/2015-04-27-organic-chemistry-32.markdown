---
layout: post
title:  "Organic chemistry 32: NMR spin-spin coupling"
date:   2015-04-27 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Chemical shift equivalence lessons. Spin-spin coupling. Vicinal vs. geminal couling. Pascal's triangle."
---

*These are my notes from lecture 32 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on April 27, 2015.*

This lecture relies heavily on slides. With Dr. Spoering's permission, I have uploaded a scan of today's handout [here](/media/2015/04/chem-20-lecture-32-handout.pdf).

### Chemical shift equivalence

We continued to go over the practice spectra from last time. A few general lessons regarding chemical shift equivalence:

+ In alkanes longer than ethane, not all hydrogens are chemical shift equivalent - the CH<sub>2</sub> hydrogens are different from CH<sub>3</sub> hydrogens.
+ On cyclohexane, all hydrogens are equivalent. This is because even though axial and equatorial hydrogens are in different environments, the chair flip is sufficiently rapid that the hydrogens are considered to be "exchangeable in some rapid chemical process", thus meeting the third criterion from [lecture 31](/2015/04/24/organic-chemistry-31/)
+ In N,N-dimethylacetaminde, whether two methyls are equivalent depends upon temperature - only at high temperatures does the thermal energy overcome the rotational barrier, making them equivalent.

### Spin-spin coupling

Consider isopropanol.

![](/media/2015/04/isopropanol.png)

We have three peaks:

+ &delta; 4.0, integration 1H = the hydrogen on the central carbon. It appears as a "multiplet" with many tiny peaks very close in energy.
+ &delta; 2.5, integration 1H = the alcohol hydrogen. It appears as a "doublet" with two peaks very close in energy.
+ &delta; 1.2, integration 6H = the hydrogens on the distal carbons. It appears as a "doublet" with two peaks very close in energy.

The multiplet and doublets are the result of **spin-spin coupling**. Here is a simpler generalized example:

![](/media/2015/04/spin-spin-coupling.png)

Here, Hb can have spin of either {+&half;, -&half;}, so it splits Ha by J Hz. J is not joules, apparently, but rather a variable indicating the coupling constant in units of Hz. The formula is J (Hz) = H (ppm) &times; B<sub>0</sub> (MHz), where B<sub>0</sub> is magnetic field strength.

There are two ways that spin-spin coupling can arise:

1. **Vicinal (3-bond) coupling**. Here, the two hydrogens are near each other but not on the same cabron, and freely rotating. J depends on the angle between them, with a max of 14 Hz. The average J is 7-8Hz.
    ![](/media/2015/04/vicinal-coupling.png)
2. **Geminal coupling**. This occurs when two hydrogens are bound to the same carbon. Most of the time, hydrogens bound to the same carbon are homotopic or enantiotopic and thus chemical shift equivalents, so you get no spin-spin coupling. The only case where you get geminal coupling is if the hydrogens are diastereotopic.

With this in mind, if we look again at the isopropanol <sup>1</sup>H NMR spectrum, we can see that:

![](/media/2015/04/isopropanol-labeling.png)

+ H<sub>A</sub> is doublet by H<sub>B</sub>
+ The 6 H<sub>C</sub> are doublet by H<sub>B</sub>
+ H<sub>B</sub> is doublet by H<sub>A</sub> and 6-plet by H<sub>C</sub>.

You can make tree diagrams to see how splitting occurs. In ethanol for example, let's call the CH<sub>3</sub> hydrogens H<sub>A</sub> and the CH<sub>2</sub> hydrogens H<sub>B</sub>. A single H<sub>B</sub> hydrogen would split the H<sub>A</sub> signal into a 50/50 doublet. Two H<sub>B</sub> hydrogens split it a second time, but instead of four equally likely outcomes you get three outcomes with probability 25/50/25, thus you see a higher middle peak.

![](/media/2015/04/spin-spin-coupling-tree-diagram.png)

This ends up being [**Pascal's triangle**](http://en.wikipedia.org/wiki/Pascal%27s_triangle). Thus, a 1:1 doublet means you're adjacent to an atom with one hydrogen bound. A 1:2:1 triplet means you're adjacent to CH<sub>2</sub>. A 1:3:3:1 quadruplet means you're adjacent to CH<sub>3</sub>.

In isopropanol, H<sub>B</sub> is split six times by H<sub>C</sub> for a septet. Rows of Pascal's triangle can be calculated quickly using the choose function, so a septet is (in R):

~~~ 
> choose(6,0:6)
[1]  1  6 15 20 15  6  1
~~~ 

But then in addition to the 6 H<sub>C</sub>, H<sub>B</sub> is also being split by H<sub>A</sub>, so H<sub>B</sub> ends up being a doublet of septets, better known simply as a multiplet. 

With this in mind, we can look at the NMR spectrum of styrene in the handout. It has a 5:1:1:1 integration ratio. The total of five ortho, meta, and para hydrogens are not chemical shift equivalents, which is why the 5H peak at far left appears as multiple peaks. Of the remaining three hydrogens in the molecule, we have a doublet-of-doublets at &delta; ~6.7 (all four peaks are approximately equal 1:1:1:1, which is how you can tell it is a doublet of doublets and not a 1:3:3:1 quadruplet), and then two doublets at &delta; ~5.7 and ~5.2. Here is a diagram of the molecule:

![](/media/2015/04/styrene.png)

H<sub>A</sub> is split twice, by H<sub>B</sub> and H<sub>C</sub>, hence it is the doublet-of-doublets. Note that H<sub>B</sub> and H<sub>C</sub> are each split just once, by H<sub>A</sub>; they do not split each other (because they are homotopic or something?).

To make matters more complicated, each of what appears to be a single peak within a doublet in the styrene spectrum actually has two mini-peaks if you zoom in really close on the peak. We'll talk about why that is next time.

This discussion of spin-spin coupling is continued in [lecture 33](/2015/04/29/organic-chemistry-33/).



