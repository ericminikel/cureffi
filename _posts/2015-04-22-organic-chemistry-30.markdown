---
layout: post
title:  "Organic chemistry 30: Infrared and ultraviolet spectroscopy"
date:   2015-04-22 12:00:00
author: ericminikel
tag: chem-20
location: Cambridge, MA
summary200: "Principles of spectroscopy. UV spectroscopy, conjugation, and fingerprinting. IR spectroscopy, vibrational modes and functional groups."
---

*These are my notes from lecture 30 of Harvard's Chemistry 20: Organic Chemistry course, delivered by Dr. Ryan Spoering on April 22, 2015.*

This lecture relies heavily on slides. With Dr. Spoering's permission, I have uploaded a scan of today's handout [here](/media/2015/04/chem-20-lecture-30-handout.pdf).

### Introduction to spectroscopy

Spectroscopy is the absorption of light by molecules. Spectroscopy is ultimately the only way we know anything about structures. The development of spectroscopy, especially NMR, over the course of the 20th century was as important to synthesis as the discovery of the synthesis reactions themselves.

Today we'll look at infrared and ultraviolet spectroscopy, which are the most straightforward types of spectroscopy, basically asking what it means to absorb a photon at a particular wavelength. Most of the rest of the class will be on NMR.

Almost every part of the electromagnetic spectrum does something useful for chemistry:

+ Wavelengths (&lambda;) < 10<sup>-9</sup> are gamma and X-rays, useful in X-ray crystallography.
+ &lambda; 10<sup>-6</sup> to 10<sup>-9</sup> is ultraviolet, which we'll discuss today
+ The visible spectrum is entirely within the 10<sup>-6</sup> order of magnitude
+ &lambda; between 10<sup>-6</sup> and 10<sup>-4</sup> is infrared, which we'll also discuss today
+ &lambda; 10<sup>-4</sup> to 10<sup>-1</sup> is microwaves, which can be used to introduce rotation, particularly for very small molecules
+ &lambda; > 10<sup>-1</sup> is radiofrequency, used in NMR

### UV spectroscopy

In IR and UV spectroscopy, you excite molecule from its **ground state** to an **excited state** using a photon, whose energy is written h&nu;. If we have a system with a HOMO of &Psi;<sub>1</sub> and a LUMO of &Psi;<sub>2</sub>, where the difference in energy of these two orbitals is denoted &Delta;E. When a photon with energy h&nu; = &Delta;E hits the molecule, one of the two electrons in &Psi;<sub>1</sub> will jump up to &Psi;<sub>2</sub>.

&Delta;E = h&nu; = hc/&lambda;

+ h is Planck's constant in J&middot;s
+ &lambda; is wavelength in m
+ &nu; is frequency in waves per second or s<sup>-1</sup>
+ &Delta;E is change in energy in J

UV spectroscopy is most useful for looking at molecules that have conjugation. As you increase conjugation, the HOMO-LUMO energy gap (&Delta;E) narrows. Thus, etheylene has peak absorbance at &lambda;<sub>max</sub> = 171 nm, whereas buta-1,3-diene has a lower energy difference with &lambda;<sub>max</sub> = 217 nm:

![](/media/2015/04/effect-of-conjugation.png)

At the high end like 171 nm you start to run into wavelengths where glass and pyrex will absorb, which means if you want to make measurements here you have to use vessels made of quartz, which is a pain. So UV spectroscopy is more useful at the longer wavelengths such as 217 nm.

UV spectroscopy can be used as a fingerprinting method - for instance, the way 11-cis-retinal (the rhodopsin conjugated to opsin in cattle retina) was discovered was that they synthesized every possible E and Z isomer of this molecule until they found one with the right absorbance. 

In conjugated systems the energy difference being observed is usually a &pi;&rarr;&pi;\* change, though in some molecules you can observe a n&rarr;&sigma;\* or n&rarr;&pi;\* jump.

In the time of Woodward, who completed the landmark synthesis of chlorophyll [[Woodward 1960]] there were many efforts to come up with empirical rules to predict the UV absorbance of a structure, such as the Woodward-Fieser rules or the Fieser-Kuhn rules. However, overall the usefulness of UV spectroscopy is very limited.

### IR spectroscopy

#### Vibrational modes

In a simple diatomic molecule, say HCl, the bond length stretches and contracts according to a vibrational mode called a **symmetric stretch**. This means that the molecule's dipole, which is *not* symmetric, is oscillating. This means that if an IR photon arrives and its frequency of radiation matches the frequency of the bond's vibration, they can interact and excite the molecule to the next higher energy vibrational mode.

CO<sub>2</sub> can get thermally excited in three different ways:

1. **Symmetric stretching**: the two C=O bonds stretch and contract simultaneously.
2. **Asymmetric stretching**: one C=O bond stretches while the other contracts, and vice versa - they are out of phase. Thus, it lind of looks like the carbon is bouncing back and forth between them.
3. **Bending**: the carbon rises while the oxygens fall, and vice versa.

![](/media/2015/04/co2-vibrational-modes.png)

The symmetric stretching in CO<sub>2</sub> is IR inactive. The other two are IR active and you will see them in IR spectroscopy.

Functional groups each have their own distinct vibrational modes. IR is in terms of **wavenumber** which is just a frequency measuremnet but in a weird unit, cm<sup>-1</sup>. C-H stretches have the highest wavenumbers, in the high 2000s, C-H bends are in the mid-1000s, C-C stretches are very weak and usually undetectable, and C-H rocking gives the smallest wavenumber, in the 700s. See the example of dodecane in the handout.

The region from wavenumber 1500 on down is known as the **fingerprint region** because it contains a lot of complicated vibrational modes that are very hard to predict computationally, but which are highly reproducible emprically. So although you cannot usually guess a novel structure based on its fingerprint, once you've seen a structure you can recognize it again in the future.

On IR spectra you will also see **overtones** for strong vibrational modes. For example if you have strong absorbance at 900 cm<sup>-1</sup>, it will give an overtone at 1800 cm<sup>-1</sup>.

Alkenes and alkynes are particularly easy to read - C=C has a pronounced stretch at 1650 cm<sup>-1</sup>, and C&equiv;C has one at 2100 cm<sup>-1</sup>.

-OH groups give a broad spectrum at ~3300-3440 cm<sup>-1</sup>. Because of hydrogen bonding this is wide rather than sharp, representing all the different hydrogen bond possibilities. C=O have a very strong stretch at ~1700 cm<sup>-1</sup> due to the strong dipole. The exact peak wavenumber depends on the X group bound to the carbonyl:

![](/media/2015/04/carbonyl.png)

In the handout there is a table of what wavenumber you get depending on what X is - ranging from 1869 cm<sup>-1</sup> for F to as low as 1650 for amides (-NHR). It is so low for amides because these actually have a resonance structure where the C=O bond loses some of its double bond character:

![](/media/2015/04/carbonyl-amide-resonance.png)

With carbonyls adjacent to halogens you get particularly *high* wavenumber because there is a resonance structure where the C=O bond becomes a C&equiv;O bond (yielding an acylium ion) and the halogen leaves:

![](/media/2015/04/carbonyl-halide-resonance.png)

### Discussion

Observe that UV spectroscopy can be useful for fingerprinting a molecule to see if two molecules are the same, but can't really tell you a whole structure from scratch. IR spectroscopy can give you a lot of information about functional groups, but usually no more detail than that - for instance, maybe you can tell that a molecule contains an amide and a C=C bond, but you have no idea how these are configured relative to each other.

If you actually need to figure out a molecule's whole structure empirically, then, your only option is NMR, which we'll discuss in the coming lectures.



[Woodward 1960]: http://pubs.acs.org/doi/abs/10.1021/ja01499a093 "R. B. Woodward , W. A. Ayer , J. M. Beaton , F. Bickelhaupt , R. Bonnett , P. Buchschacher , G. L. Closs , H. Dutler , J. Hannah , F. P. Hauck , S. Itô , A. Langemann , E. Le Goff , W. Leimgruber , W. Lwowski , J. Sauer , Z. Valenta , H. Volz. THE TOTAL SYNTHESIS OF CHLOROPHYLL. J. Am. Chem. Soc., 1960, 82 (14), pp 3800–3802 DOI: 10.1021/ja01499a093 Publication Date: July 1960"