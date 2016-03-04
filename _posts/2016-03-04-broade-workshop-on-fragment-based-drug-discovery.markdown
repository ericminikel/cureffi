---
layout: post
title:  "BroadE workshop on fragment-based drug discovery"
date:   2016-03-04 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2016/03/mike-mesleh-broade-workshop-thumbnail.png
summary200: "My notes from a BroadE workshop taught by Dr. Mike Mesleh."
---

*These are my notes from the BroadE Workshop "Fragment-Based Drug Discovery: A Primer", taught by Dr. Mike Mesleh at the Broad Institute, 1:00p - 3:00p on March 4, 2016. I am told Broad will be uploading a video of the workshop later; if so, I will post it here. These notes duplicate a lot of content from my earlier post on [NMR fragment screening](/2016/01/13/nmr-fragment-screening/).*

![](/media/2016/03/mike-mesleh-broade-workshop.png)

### Why fragments?

It's getting harder to find something new. For every new approved drug, >10,000 new compounds are synthesized [[Walters 2011]]. Fragment screening is appealing because [[Rees 2004]]:

+ It allows a better sampling of "chemical space", allowing you to get out of local minima by finding new binding sites and new binding modes. For arguments on why the sampling of chemical space is better, see [[Bohacek 1996], [Fink & Reymond 2007], [Gorse 2006]] and [this post](/2016/01/13/nmr-fragment-screening/).
+ Fragments have better ligand efficiency, allowing you to build molecules where every atom counts towards its affinity. Affinity is often additive, such that linking two fragments together can sometimes give a really potent ligand.
+ You're looking for a needle in a smaller haystack - you don't need to screen as many compounds to find interesting hits.
+ Fragment libraries are better optimized for high solubility, low promiscuity, and low toxicity - it lacks many of the medicinal chemistry pitfalls found in conventional HTS libraries, which are on average too flat, aromatic, and hydrophobic [[Feher & Schmidt 2003], [Lovering 2009]]&dagger;.

&dagger; A caveat to that point is that even fragment libraries are not nearly as diverse as they could be - they are often too monolithic in the scaffolds they contain, and tend to be too hydrophobic. More hydrophobic compounds are much more likely to be promiscuous [[Leach & Hann 2011]].

The point about ligand efficiency deserves further explanation. If you measure affinity in -&Delta;&Delta;G/mol (Kcal), it is very hard to get strong affinity for very small molecules, so it is possible to get a more affine ligand by making a larger molecule, but above about 15 or so non-hydrogen atoms, there is a plateau where you can't get much more affinity [[Kuntz 1999]]. A slight caveat is that some of this plateau may simply be because assays are not sensitive enough to detect stronger affinity than this. **Ligand efficiency** is the amount of binding energy gained from each heavy atom. 

$$ LE = \frac{-\Delta G}{HAC} = \frac{-RT ln{IC_{50}}}{HAC} $$

Where HAC is heavy atom count. This is just one measure of ligand efficiency, there are many others [reviewed in [Hann & Keseru 2012]].

A challenge for diversity of fragment libraries is that there is not a lot of three-dimensionality. Even when vendors do claim to have more three-dimensional compounds, too often it is just them adding an adamantyl group onto a hundred different things.

A list of commercially available fragment libraries can be found [here](http://cambridgemedchemconsulting.com/resources/hit_identification/fragment_collections.html). Some collections are geared toward a few chemistries that vendor specializes in; others are optimized for R03 compliance; others are optimized for visibility in particular assays. The diversity within one vendor's collection is typically less than the diversity you can find across vendors.

Fragment-based drug discovery naturally lends itself to structure-based drug design (SBD), where you try to build out your drug using structural information about the target and how your hits interact with it. SBD has a few advantages:

+ Weaker affinity compounds are more sensitive to subtle changes in structure, so it is easy to get clear SAR data
+ Structure is useful to guide the design in terms of potency and selectivity
+ SBD accelerates the timeline of optimization

Examples of SBD success stories include [oseltamivir](https://en.wikipedia.org/wiki/Oseltamivir) and [imatinib](https://en.wikipedia.org/wiki/Imatinib).

First-in-class drugs are more likely to be entropic binders, while best-in-class drugs more often turn out to be enthalpic binders [[Kawasaki & Freire 2011]].

There are many ways to assess the druggabilty of a target:

+ Experimental methods. Perform NMR or X-ray crystallography with a variety of solvents. Solvents are kind of like "micro fragments". If some solvents affect or incorporate into the structure, that indicates you have potential binding pockets. Alternately you can do a mini screen first to see what your hit rate might be before going into a larger screen.
+ Computational methods. Use MOE or FTMap to search for concavities or potential binding pockets.

A caveat is that even a target which seems undruggable may not be impossible - see example later.

Common pitfalls of fragment screening include redox cycling, aggregation, etc. Depending on what your assay is, fluorescence and other specific things can be problems too. Just as in HTS, PAINS (pan-assay interference compounds) pose a major problem &mdash; see [[Baell & Holloway 2010]].

### Biophysical methods for fragment screening

Here are some methods:

+ Surface plasmon resonance (SPR). Immobilize a protein on a slide, wash compounds over it and look for those that change the refractive index, an indicator of binding.
+ Differential scanning fluorimetry (DSF). Heat the protein in the presence of a dye that fluoresces when bound to hydrophobic protein segments. This tells you when your protein unfolds, so you can find compounds that raise the melting temperature. It is very high throughput.
+ Nuclear magnetic resonance (NMR). NMR detection of compound binding relies on the compound having some on/off rate, so paradoxically, NMR cannot detect very strong affinity compounds (K<sub>d</sub> < ~1 &mu;M). Ideally, NMR can give you site-specific resolution of which atoms are involved in a binding information. 
+ Differential scanning calorimetry (DSC)
+ Mass spec (MS)
+ Isothermal titration calorimetry (ITC)
+ X-ray crystallography
+ Biochemical assays if available for your particular target.

The secondary screen needs to be orthogonal, as many types of artifacts are specific to one assay, for instance, in SPR, you'll get false positives that just bind to the chip. At some point during or after the secondary screen, you need to be able to get affinity (K<sub>d</sub>) information, which can be acheived with SPR or ITC. As always, there is a tradeoff between throughput and information. In general, MS and DSF are pretty high throughput. 

There are a million ways to do NMR, with various capabilities and tradeoffs. For fragment screening, you can do either protein-observed or ligand-observed methods. For identifying interactions, 2D NMR such as <sup>1</sup>H-<sup>1</sup>H NOESY can identify proximity of hydrogens between ligand and protein. For larger proteins, for determining the binding site of a compound in the context of a protein structure, you need to use a 2D heteronuclear method such as <sup>15</sup>N-<sup>1</sup>H HSQC, HMQC, or TROSY. For very large proteins, it can be necessary to do <sup>13</sup>C side chain methyl group labeling, which can be achieved by feeding the bacteria a supplement where glucose is <sup>13</sup>C labeled only at the 2' and 4' positions (or something like that).

When doing either protein-observed or ligand-observed NMR, you will find that strong binders (slow on/off rate) result in a peak simply disappearing and re-appearing somewhere else. Weak binders (fast on/off rate) result in a broadening of the peaks they affect, like a smear between the bound and unbound state.

Another approach is saturation-transfer difference (STD) NMR. By using a frequency that affects only atoms in protein, you can saturate your protein. The saturated protein will then transfer its excitation to bound ligands, and if you have a fast on/off rate, many copies of the ligand will be able to bind and get excited. Then you observe the ligand and compare its spectrum to the ligand's normal <sup>1</sup>H NMR spectrum. If there is a difference, that means that the ligand got excited by the saturated protein, and therefore that it had bound. Of the atoms in the ligand, those that are in direct contact with the protein will give especially strong peaks, and you can use this to determine which side of the ligand is in contact with the protein.

Yet another approach is Water LOGSY, which is basically NOESY for interaction between hydrogens in water and in your ligand. If the ligand binds the protein, a water will be displaced, and you will see a shift.

While NMR is very good at telling you binding site, it is not ideal for determining binding orientation. If you want to know exactly how your ligand is bound, which is important for knowing how to optimize it, the best way is X-ray crystallography. You can use co-crystallization or, more often, crystal soaking.

Once you have hits, you will probably want to look up more information about them (e.g. performance and promiscuity in other screens, existence of analogues, etc.), and ChEMBL is a pretty good starting point.

### Examples of fragment-based drug discovery successes

I discussed three examples in [this post](/2016/01/13/nmr-fragment-screening/). Here are a few other interesting examples:

+ MK-8931 (verubecestat), a Merck beta secretase inhibitor. The initial druggability assessment on beta secretase was very pessimistic, and basically suggested it would be impossible to find any ligands. But Merck was so committed to beta secretase being the right target that they went forward anyway, and did a massive fragment screen. The hit rate was very low, and the hits they did have were ugly, but they pressed forward anyway, and eventually got to a potent inhibitor now in Phase III trials [[NCT01953601](https://clinicaltrials.gov/ct2/show/NCT01953601)]. See [[Zhu 2010]].
+ Antibacterial DNA gyrase inhibitors [[Bax 2010], [Mesleh 2016]].

An interesting fact about vemurafenib is that Plexxikon *really* wanted to target B-Raf V600E, and undertook a massive fragment screening effort to find leads. The primary screen was 20,000 fragments against three kinases, and they generated hundreds more derivatives of the hit scaffolds.


[Walters 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21755928 "Walters WP, Green J, Weiss JR, Murcko MA. What do medicinal chemists actually  make? A 50-year retrospective. J Med Chem. 2011 Oct 13;54(19):6405-16. doi: 10.1021/jm200504p. Epub 2011 Aug 31. PubMed PMID: 21755928."

[Rees 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15286733 "Rees DC, Congreve M, Murray CW, Carr R. Fragment-based lead discovery. Nat Rev Drug Discov. 2004 Aug;3(8):660-72. Review. PubMed PMID: 15286733."

[Bohacek 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8788213 "Bohacek RS, McMartin C, Guida WC. The art and practice of structure-based drug design: a molecular modeling perspective. Med Res Rev. 1996 Jan;16(1):3-50. Review. PubMed PMID: 8788213."

[Fink & Reymond 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17260980 "Fink T, Reymond JL. Virtual exploration of the chemical universe up to 11 atoms of C, N, O, F: assembly of 26.4 million structures (110.9 million stereoisomers) and analysis for new ring systems, stereochemistry, physicochemical properties, compound classes, and drug discovery. J Chem Inf Model. 2007 Mar-Apr;47(2):342-53. Epub 2007 Jan 30. PubMed PMID: 17260980."

[Gorse 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16454754 "Gorse AD. Diversity in medicinal chemistry space. Curr Top Med Chem. 2006;6(1):3-18. Review. PubMed PMID: 16454754."

[Feher & Schmidt 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12546556 "Feher M, Schmidt JM. Property distributions: differences between drugs, natural products, and molecules from combinatorial chemistry. J Chem Inf Comput Sci. 2003 Jan-Feb;43(1):218-27. PubMed PMID: 12546556."

[Lovering 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19827778 "Lovering F, Bikker J, Humblet C. Escape from flatland: increasing saturation as an approach to improving clinical success. J Med Chem. 2009 Nov 12;52(21):6752-6. doi: 10.1021/jm901241e. PubMed PMID: 19827778."

[Leach & Hann 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21665521 "Leach AR, Hann MM. Molecular complexity and fragment-based drug discovery: ten years on. Curr Opin Chem Biol. 2011 Aug;15(4):489-96. doi: 10.1016/j.cbpa.2011.05.008. Epub 2011 Jun 12. Review. PubMed PMID: 21665521."

[Hann & Keseru 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22543468 "Hann MM, Keserü GM. Finding the sweet spot: the role of nature and nurture in  medicinal chemistry. Nat Rev Drug Discov. 2012 Apr 30;11(5):355-65. doi: 10.1038/nrd3701. PubMed PMID: 22543468."

[Kawasaki & Freire 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21839183 "Kawasaki Y, Freire E. Finding a better path to drug selectivity. Drug Discov Today. 2011 Nov;16(21-22):985-90. doi: 10.1016/j.drudis.2011.07.010. Epub 2011 Aug 2. Review. PubMed PMID: 21839183; PubMed Central PMCID: PMC3210374."

[Baell & Holloway 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20131845 "Baell JB, Holloway GA. New substructure filters for removal of pan assay interference compounds (PAINS) from screening libraries and for their exclusion in bioassays. J Med Chem. 2010 Apr 8;53(7):2719-40. doi: 10.1021/jm901137j. PubMed PMID: 20131845."

[Bax 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20686482 "Bax BD, Chan PF, Eggleston DS, Fosberry A, Gentry DR, Gorrec F, Giordano I, Hann MM, Hennessy A, Hibbs M, Huang J, Jones E, Jones J, Brown KK, Lewis CJ, May  EW, Saunders MR, Singh O, Spitzfaden CE, Shen C, Shillings A, Theobald AJ, Wohlkonig A, Pearson ND, Gwynn MN. Type IIA topoisomerase inhibition by a new class of antibacterial agents. Nature. 2010 Aug 19;466(7309):935-40. doi: 10.1038/nature09197. Epub 2010 Aug 4. PubMed PMID: 20686482."

[Mesleh 2016]: http://www.ncbi.nlm.nih.gov/pubmed/26786695 "Mesleh MF, Cross JB, Zhang J, Kahmann J, Andersen OA, Barker J, Cheng RK, Felicetti B, Wood M, Hadfield AT, Scheich C, Moy TI, Yang Q, Shotwell J, Nguyen K, Lippa B, Dolle R, Ryan MD. Fragment-based discovery of DNA gyrase inhibitors targeting the ATPase subunit of GyrB. Bioorg Med Chem Lett. 2016 Feb 15;26(4):1314-8. doi: 10.1016/j.bmcl.2016.01.009. Epub 2016 Jan 6. PubMed PMID: 26786695."

[Zhu 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20043696 "Zhu Z, Sun ZY, Ye Y, Voigt J, Strickland C, Smith EM, Cumming J, Wang L, Wong  J, Wang YS, Wyss DF, Chen X, Kuvelkar R, Kennedy ME, Favreau L, Parker E, McKittrick BA, Stamford A, Czarniecki M, Greenlee W, Hunter JC. Discovery of cyclic acylguanidines as highly potent and selective beta-site amyloid cleaving enzyme (BACE) inhibitors: Part I--inhibitor design and validation. J Med Chem. 2010 Feb 11;53(3):951-65. doi: 10.1021/jm901408p. PubMed PMID: 20043696."











