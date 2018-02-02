---
layout: post
title:  "Structures of PrPC"
date:   2014-12-21 12:00:00
author: ericminikel
location: Boston, MA
thumb120: http://www.cureffi.org/media/2014/12/prpc-structure-thumbnail.png
summary200: "As a first foray into trying to understand the structural biology problems surrounding prions, I used PyMOL to look at several reported structures of PrPC."
---

After my nearly three years of studying prions, structural biology remains an area I know almost nothing about. Recently I set about trying to rectify this and understand a bit of the capabilities and limitations of structural biology with regard to prions. The real challenge here is understanding what we know and don't know about the structure of PrP<sup>Sc</sup>, but for starters, in this post I'll address the easier question of the structure of PrP<sup>C</sup>, which has been solved.

Something I've come to appreciate in my [molecular biology class](/tag/bcmp-200/) this semester is that X-ray crystallography and NMR are both old, tried-and-true technologies, and one major reason they've remained non-trivial to execute after all these years is that they both require extremely pure preparations of a protein or complex of interest, with virtually every copy of the molecule in the exact same conformation. For example, a challenge in creating a uniform crystal of the DNA double-strand break-binding protein complex Ku70/80 was that if you put in a piece of DNA, Ku70/80 can bind to *either* of its ends, so that now not every molecule is in the exact same position. Overcoming this problem required the clever trick of using a piece of DNA that has a hairpin at one end, such that only one end is recognizable as a double-strand break [[PDB# 1JEY](http://pdb.org/pdb/explore/explore.do?structureId=1jey), [Walker 2001]].

PrP<sup>C</sup>'s structure was finally experimentally determined [[Riek 1996]] over a decade after it was [first purified](/2013/10/17/how-prion-protein-was-first-purified/) [[Prusiner 1983], [Prusiner 1984]]. As far as I can tell, two of the major obstacles which made PrP<sup>C</sup> difficult were:

1. Its flexible N terminus doesn't want to adopt the same conformation in every copy of the molecule, and
2. It is poorly soluble in water without detergent, making it hard to obtain sufficiently high concentrations (e.g. the 0.8 mM eventually achieved in [[Riek 1996]])

In addition, according to [[Riek 1996]], in early attempts to produce recombinant PrP it was found that bacterial proteases would often cleave the protein at residues 112, 118 and 120, making it impossible to obtain the intact protein. A resolution to all of these problems awaited Simone Hornemann's development of a protocol for purifying recombinant MoPrP121-231 from *E. coli* [[Hornemann & Glockshuber 1996]]. This C-terminal segment of PrP proved far more soluble in water than the full-length protein, and it readily folded into a uniform conformation. With this enabling insight, the first structure of PrP<sup>C</sup> was soon solved via solution NMR [[Riek 1996]]. This solution came from the laboratory of none other than Kurt Wuthrich, who had pioneered the use of solution NMR for biomolecules and would later win the [2002 Nobel Prize in Chemistry](http://www.nobelprize.org/nobel_prizes/chemistry/laureates/2002/press.html).

The structure they determined is [[PDB# 1AG2](http://pdb.org/pdb/explore/explore.do?structureId=1AG2)], so I fired up [PyMOL](/2014/09/15/molecular-biology-pymol/) to have a look at it.

~~~ 
bg_color white
fetch 1ag2
hide everything
show cartoon
spectrum
show sticks, resi 179 or resi 214 # show the disulfide bridge
~~~ 

![](/media/2014/12/riek-1996-prpc-1.png)

Here, I've colored PrP<sup>C</sup> by residue number, so that the bottom-most red end is where the GPI anchor would be attached and insert into the membrane, and the blue tip off to the upper left would lead to the rest of the N terminus. You can see the disulfide bond between &alpha;-helices 2 and 3.

That cartoon view makes it seem that there is plenty of space in the protein, in contrast to how everyone calls the C terminus a "globular domain". So next I switched to surface view instead:

~~~ 
hide cartoon
show surface
~~~ 

![](/media/2014/12/riek-1996-prpc-2.png)

That's better - now it at least looks solid. Still, it is hardly a ball - its surface seems to be covered with an awful lot of divots and ridges, which you can see if you shake it around:

<iframe width="560" height="315" src="//www.youtube.com/embed/3nr-fsVsq5o" frameborder="0" allowfullscreen></iframe>

The structure of PrP<sup>C</sup> has now been determined dozens of times (different species, different mutants, etc.) since Roland Riek and Kurt Wuthrich's original NMR structure [reviewed in [Surewicz & Apostol 2011]]. The first X-ray crystal structure came five years later, and used a slightly longer C-terminal fragment: HuPrP90-231 [[PDB# 1I4M](http://pdb.org/pdb/explore/explore.do?structureId=1I4M), [Knaus 2001]]. The assignment of residues to &alpha;-helices and &beta;-sheets is identical to that of [[Riek 1996]], but the tertiary structure looks utterly different, and the cysteines of the disulfide bond (sticks in red near bottom and yellow near top) do not face each other:

~~~ 
bg_color white
fetch 1i4m
hide everything
show cartoon
spectrum
show sticks, resi 179 or resi 214 # show the disulfide bridge
~~~ 

![](/media/2014/12/knaus-2001-prpc-1.png)

Even if you view it as a surface, there's a big hole in the middle:

~~~ 
hide cartoon
show surface
~~~ 

![](/media/2014/12/knaus-2001-prpc-2.png)

It turns out that both of these differences are because the protein crystallized as a **domain-swapped dimer**. &alpha;-helix 3 is swapped between two PrP<sup>C</sup> molecules, the disulfide bond is intermolecular, and an intermolecular antiparallel &beta;-sheet forms.

To visualize the dimer in PyMOL, you need to generate the symmetry mates:

~~~ 
symexp sym,1i4m,(1i4m),3.0
hide everything
show cartoon, 1i4m
show cartoon, sym02000000
show sticks, resi 179 and (1i4m or sym02000000)
show sticks, resi 214 and (1i4m or sym02000000)
~~~ 

![](/media/2014/12/knaus-2001-prpc-3.png)

Although they don't appear to line up perfectly, the cysteines of the disulfide bond are at least across from each other now:

![](/media/2014/12/knaus-2001-prpc-4.png)

If we show only residues >191 in one copy of the protein and only residues <191 in the other copy, it starts to look much more like the NMR structure:

~~~ 
hide everything, 1i4m and resi 191-231
hide everything, sym02000000 and resi 1-190
~~~ 

![](/media/2014/12/knaus-2001-prpc-5.png)

Now the surface looks more solid, too - no large gaps:

~~~ 
show surface, 1i4m and resi 1-190
show surface, sym02000000 and resi 191-231
~~~ 

![](/media/2014/12/knaus-2001-prpc-6.png)

Later on, other groups crystallized PrP<sup>C</sup> in complex with antibody [Fabs](http://en.wikipedia.org/wiki/Fragment_antigen-binding), and obtained crystals of PrP that look much more like the NMR structure. It is not clear to me if using an antibody is necessary to prevent PrP from domain-swapping during crystallization, or if these investigators were simply interested in the structure of PrP when bound to an antibody. In any case, the first of these was MRC Prion Unit's structure of HuPrP 119-231 bound to ICSM-18 [[PDB# 2W9E](http://pdb.org/pdb/explore/explore.do?structureId=2W9E), [Antonyuk 2009]].

~~~ 
bg_color white
fetch 2w9e
hide everything
show surface
color teal, chain L # light chain ICSM-18 fab
color teal, chain H # heavy chain POM1 fab
color yellow, chain A # HuPrP
~~~ 

![](/media/2014/12/antonyuk-2009-prpc-1.png)

PrP (yellow) is a tiny protein - it even appears small compared to the Fab (teal), which in turn is much smaller than a real antibody. Although PrP here has a structure close to that obtained via NMR, and is not domain-swapped, it does form an intermolecular beta-sheet with its neighbor:

~~~ 
hide everything
symexp sym,2w9e,(2w9e),3.0
hide everything
show cartoon, sym02-10000 and chain A
show cartoon, sym08000000 and chain A
color orange, sym08000000 and chain A
~~~ 

![](/media/2014/12/antonyuk-2009-prpc-2.png)

One review I read [[Surewicz & Apostol 2011]] noted that either of these dimeric interactions - the intermolecular beta sheet or the domain swapping - might or might not mimic an interaction that PrP does *in vivo* during PrP<sup>Sc</sup> formation. It is tempting to speculate, particularly since codon 129 is located in one of those beta strands and is known to influence PrP conversion efficiency, but there is no hard evidence.

Having learned how to use PyMOL and examine these structures, I also went back and looked at the crystal structure of mouse PrP bound to chlorpromazine and POM1 which Michael James and Adriano Aguzzi reported earlier this year [[PDB# 4MA8](http://pdb.org/pdb/explore/explore.do?structureId=4MA8), [Baral 2014]] and which I [blogged about](/2014/09/03/chlorpromazine-a-new-mechanism-of-action/) a few months ago:

~~~ 
bg_color white
fetch 4ma8
hide everything
show surface
color teal, chain L # light chain POM1 fab
color teal, chain H # heavy chain POM1 fab
color yellow, chain C # PrP
color red, organic # small molecule
show sticks, organic # small molecule
~~~ 

![](/media/2014/12/baral-2014-prpc-1.png)

Sure enough, chlorpromazine is shown sticking into one of those divots on the surface of PrP:

![](/media/2014/12/baral-2014-prpc-2.png)

Another structure I had always wanted to understand better is that of crystallized HuPrP D178N 129M, the mutant protein responsible for fatal familial insomnia [[PDB# 3HEQ](http://pdb.org/pdb/explore/explore.do?structureId=3HEQ), [Lee 2010]]. The authors crystallized HuPrP 129M or 129V with either a wild-type sequence, the D178N mutation or the F198S mutation. Surprisingly, the wild-type protein formed a domain-swapped dimer, but the mutants didn't - they instead formed intermolecular beta-sheets not unlike those from [[Antonyuk 2009]].  

~~~ 
bg_color white
hide everything
show cartoon
color yellow, chain A
color orange, chain B
symexp sym,3heq,(3heq),3.0
hide everything
show cartoon, chain A and 3heq
show cartoon, chain B and sym07000000
show sticks, resi 129
show sticks, resi 178
~~~ 

![](/media/2014/12/lee-2010-prpc-1.png)

The authors state that, compared to the impact of the F198S mutation on structure, "the structural consequences of the FFI and CJD D178N substitution are more subtle". If they're subtle even to the structural biologists, I expect I will have trouble discerning anything at all, but I figured I'd try and align the D178N structure with the HuPrP structure from [[Antonyuk 2009]]:

~~~ 
hide everything, sym07000000
hide sticks
fetch 1ag2
hide everything, 1ag2
show cartoon, 1ag2
color blue, 1ag2
align 1ag2, 3heq and chain A
show sticks, resi 178 and (3heq and chain A or 1ag2)
~~~ 

![](/media/2014/12/lee-2010-d178n-vs-antonyuk-2009-1.png)

The two structures align reasonably well, with a root mean squared distance (RMS) of 2.3 &Aring;<sup>2</sup> between corresponding atoms. Visually, the structures look broadly similar, but they do seem to diverge a bit around the beta sheets (D178N in yellow and wild-type in blue).

As mentioned above, there are yet dozens of other structures of PrP<sup>C</sup>, many of which are reviewed in [[Surewicz & Apostol 2011]]. While a lot of the insights about these structures remain mysterious to me, being able to at least have a look and play with them has helped me to understand a bit more of the observations that the authors have made in their papers about these structures.

[Walker 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11493912 "Walker JR, Corpina RA, Goldberg J. Structure of the Ku heterodimer bound to DNA and its implications for double-strand break repair. Nature. 2001 Aug 9;412(6847):607-14. PubMed PMID: 11493912."

[Hornemann & Glockshuber 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8800210 "Hornemann S, Glockshuber R. Autonomous and reversible folding of a soluble amino-terminally truncated segment of the mouse prion protein. J Mol Biol. 1996 Sep 6;261(5):614-9. PubMed PMID: 8800210."

[Riek 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8700211 "Riek R, Hornemann S, Wider G, Billeter M, Glockshuber R, Wüthrich K. NMR structure of the mouse prion protein domain PrP(121-231). Nature. 1996 Jul 11;382(6587):180-2. PubMed PMID: 8700211."

[Prusiner 1983]: http://www.ncbi.nlm.nih.gov/pubmed/6418385 "Prusiner SB, McKinley MP, Bowman KA, Bolton DC, Bendheim PE, Groth DF, Glenner GG. Scrapie prions aggregate to form amyloid-like birefringent rods. Cell. 1983 Dec;35(2 Pt 1):349-58. PubMed PMID: 6418385."

[Prusiner 1984]: http://www.ncbi.nlm.nih.gov/pubmed/6432339 "Prusiner SB, Groth DF, Bolton DC, Kent SB, Hood LE. Purification and structural studies of a major scrapie prion protein. Cell. 1984 Aug;38(1):127-34. PubMed PMID: 6432339."

[Baral 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24373770 "Baral PK, Swayampakula M, Rout MK, Kav NN, Spyracopoulos L, Aguzzi A, James MN. Structural basis of prion inhibition by phenothiazine compounds. Structure. 2014 Feb 4;22(2):291-303. doi: 10.1016/j.str.2013.11.009. Epub 2013 Dec 26. PubMed PMID: 24373770."

[Knaus 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11524679 "Knaus KJ, Morillas M, Swietnicki W, Malone M, Surewicz WK, Yee VC. Crystal structure of the human prion protein reveals a mechanism for oligomerization. Nat Struct Biol. 2001 Sep;8(9):770-4. PubMed PMID: 11524679."

[Surewicz & Apostol 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21630136 "Surewicz WK, Apostol MI. Prion protein and its conformational conversion: a structural perspective. Top Curr Chem. 2011;305:135-67. doi: 10.1007/128_2011_165. Review. PubMed PMID: 21630136."

[Antonyuk 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19204296 "Antonyuk SV, Trevitt CR, Strange RW, Jackson GS, Sangar D, Batchelor M, Cooper S, Fraser C, Jones S, Georgiou T, Khalili-Shirazi A, Clarke AR, Hasnain SS, Collinge J. Crystal structure of human prion protein bound to a therapeutic antibody. Proc Natl Acad Sci U S A. 2009 Feb 24;106(8):2554-8. doi: 10.1073/pnas.0809170106. Epub 2009 Feb 9. PubMed PMID: 19204296; PubMed Central PMCID: PMC2637903."

[Lee 2010]: http://www.ncbi.nlm.nih.gov/pubmed/19927125 "Lee S, Antony L, Hartmann R, Knaus KJ, Surewicz K, Surewicz WK, Yee VC. Conformational diversity in prion protein variants influences intermolecular beta-sheet formation. EMBO J. 2010 Jan 6;29(1):251-62. doi: 10.1038/emboj.2009.333. Epub 2009 Nov 19. PubMed PMID: 19927125; PubMed Central PMCID: PMC2808380."
