---
layout: post
title:  "Reports of small molecule PrPC ligands"
date:   2015-07-22 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2015/07/pps-thumbnail.png
summary200: "Binding the cellular prion protein, PrPC, could be one therapeutic strategy in prion disease. Are there any known molecules out there that bind PrPC?"
---

### Motivation

As I've discussed on this blog [again](/2013/10/17/2-aminothiazoles-a-tale-of-drug-resistance-and-strain-specificity/) and [again](/2014/06/04/a-proposal-how-to-tell-if-a-cell-free-assay-is-predictive-of-therapeutic-potency-in-vivo/), the most potent small molecules against prion disease *in vivo* have all proven strain-specific, extending life in mice infected with some prion strains but not others. The mechanism of action of these molecules &mdash; IND24, cpd-b, and anle138b &mdash; is not totally clear, but none of them have been suggested to bind PrP<sup>C</sup> [[Kawasaki 2007], [Wagner 2013], [Ghaemmaghami 2014]]. Binding PrP<sup>C</sup> is an appealing mechanism of action because one might hypothesize that it would stabilize PrP<sup>C</sup> and prevent its conversion to *any* prion strain. In support of this, there have been several proofs of concept that monoclonal antibodies against PrP<sup>C</sup> can block prion propagation and/or neurotoxicity in various model systems [[Peretz 2001], [White 2003], [Sonati 2013]], though there is heated debate about which epitopes can be safely targeted [[Solforosi 2004], [Klohn 2012], [Sonati 2013], [Herrmann & Sonati 2015]]. 

Binding and stabilizing the native state of an otherwise amyloidogenic protein is the mechanism of action of [tafamidis](/2012/08/03/how-tafamidis-was-born/), which, as far as I know, is the only truly disease-modifying drug approved in any country for any amyloid disease. But tafamidis binds to a pocket on transthyretin that evolved to bind thyroid hormone [[Bulawa 2012]]. Finding small molecules that bind PrP &mdash; or any other protein that lacks a binding pocket speciically evolved to bind small molecules &mdash; might be a more difficult task. 

While there are well-established methods, of various throughput levels, for identifying small molecules that bind to a protein &mdash; thermal shift [[Pantoliano 2001]], circular dichroism, surface plasmon resonance, small molecule microarray [[MacBeath 1999]] and so on &mdash; there are also well-established sources of false positives in binding assays. One of the most insidious such sources is that some small molecules will form aggregates, and the aggregates will then bind to a protein, resulting in promiscuous non-specific binding at high enough concentrations [[McGovern 2002]]. 

Despite the obvious challenges in identifying a small molecule that specifically and safely binds PrP<sup>C</sup>, the approach retains enough conceptual appeal that I decided I should educate myself on what is known so far. This post is therefore devoted to exploring the progress to date in binding PrP<sup>C</sup> with a small molecule. What approaches have been attempted? What pitfalls have been identified? What molecules have been claimed to exert a therapeutic effect by binding PrP<sup>C</sup>, and are any of the claims credible?

### Are there known molecules that bind PrP<sup>C</sup>?

When I looked in the literature, I found a large number of claims asserting that various molecules bind PrP<sup>C</sup>. One challenge in interpreting these claims is that almost anything will bind almost anything if the concentrations are high enough. If one looks for a molecule that binds PrP<sup>C</sup> at a concentration comparable to the concentration at which it is bioactive against prion formation, then the field of candidates grows much narrower.

One group has published NMR data showing an interaction of [**quinacrine**](/2015/06/19/the-curious-antiprion-activity-of-antimalarial-quinolines/) with the C terminus of PrP<sup>C</sup> [[Vogtherr 2003]], but those experiments were done at 10,000x the cellular EC<sub>50</sub> for quinacrine, calling into question whether this binding event could be responsible for quinacrine's activity in cell cultures. And as reviewed in [this post](/2015/06/19/the-curious-antiprion-activity-of-antimalarial-quinolines/) there are many reasons to suspect that quinacrine's relevant mechanism of action in prion-infected cells may be something else. Similarly, there are a crystal structure and NMR data supporting a direct interaction of PrP<sup>C</sup> with promazine and [**chlorpromazine**](/2014/09/03/chlorpromazine-a-new-mechanism-of-action/) [[Baral 2014]], but again, very high concentrations were used: the PrP crystals were soaked in 1-10 mM chlorpromazine solutions, and the NMR was done at 0.5 to 12 mM chlorpromazine, in contrast to a reported cellular EC<sub>50</sub> of just 3 &mu;M [[Korth 2001]]. Again, there are also plenty of other proposals for chlorpromazine's mechanism of action with respect to prions [[Yamasaki 2014]]. Also, the Collinge lab found no evidence that either of these binds PrP<sup>C</sup> at 100 &mu;M [[Nicoll 2010]].

Then there is **Congo red**, which is well-known to inhibit the accumulation of PK-resistant PrP<sup>Sc</sup> in cell culture, with an EC<sub>50</sub> somewhere below 140 nM [[Caughey & Race 1992]]. It has twice been reported to yield a signal in surface plasmon resonance with PrP<sup>C</sup> [[Kawatake 2006]], [[Touil 2006]]. The signal was far greater than that observed for quinacrine, but still, the K<sub>D</sub> of Congo red for PrP<sup>C</sup> was estimated at 1.6 &mu;M [[Kawatake 2006]], at least an order of magnitude higher than the cellular EC<sub>50</sub>. Congo red retains its activity in cell-free solid state prion conversion reaction [[Demaimay 1998]], hinting that it interacts directly with *some* conformation of PrP, rather than an indirect cellular target. Congo red is an amyloid-binding dye, indeed, it is tautologically so, as one of the tinctoral definitions of amyloid is that it binds Congo red [[Fowler 2007]]. Given that this compound binds the amyloid conformation of diverse substrate proteins, it seems parsimonious to suppose that its antiprion activity is mediated by binding to PrP<sup>Sc</sup> rather than to PrP<sup>C</sup>. In support of this, its EC<sub>50</sub> in the cell-free reaction is more dependent on the concentration of PrP<sup>Sc</sup> than on that of PrP<sup>C</sup> [[Demaimay 1998]], though as the authors point out, interpretation of this is complicated by the fact that PrP<sup>Sc</sup> is present in molar excess in that particular reaction. It would be interesting to repeat this experiment using the modern cell-free paradigms of RT-QuIC or PMCA, in which the substrate is present in molar excess.

Moving along, there are also the sulfonated, and usually metallated, anionic **porphyrins** and **phthalocyanines**, the most potent of which have cellular EC<sub>50</sub>s at or below 1 &mu;M [[Caughey 1998]] and can delay onset of disease by >50% in peripherally prion-infected mice [[Priola 2000], [Priola 2003]]. Of course, these are charged molecules and don't cross the blood-brain barrier. When injected directly into the brains of intracerebrally infected mice, they had only marginal effects on the disease course [[Kocisko 2006a]]. Some of these molecules have been shown to be active in a solid state cell-free conversion assay [[Caughey 1998]]. Phthalocyanine tetrasulfonate (PcTS), like Congo red, yields a signal indicating PrP<sup>C</sup> binding in surface plasmon resonance, but with a K<sub>D</sub> estimated at ~18 &mu;M [[Kawatake 2006], [Dee 2012]], about 1.5 orders of magnitude higher than its cellular EC<sub>50</sub> of 0.5 &mu;M [[Caughey 1998]]. The stoichiometry of this binding event was estimated to involve 4 or 5 PcTS molecules binding to each PrP<sup>C</sup> molecule for truncated PrP (SHaPrP 90-232), with an additional ~5 binding sites in the unstructured N-terminal tail of PrP (SHaPrP 29-90) [[Dee 2012]]. One study found that PcTS and the anionic porphyrins do bind PrP, but form an aggregate or colloid, rather than interacting with PrP in a simple 1:1 manner [[Nicoll 2010]]. Some of these molecules are fairly large, and by the time we get to PcTS, we are no longer talking about a single chemical entity - it is in fact a mixture of isomers with 3 or 4 sulfonate groups in different positions [[Caughey 1998], see legend of [Figure 1](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC22794/figure/F1/)]. 

One *in silico* screen uncovered a molecule, dubbed **GN8**, which was predicted to bind PrP<sup>C</sup> and subsequently shown to reduce PK-resistant PrP<sup>Sc</sup> accumulation in cell cultures, with some evidence for a bit of *in vivo* activity as well [[Kuwata 2007]], but both the Collinge and Harris labs have been unable to replicate the original group's finding that this molecule actually binds PrP<sup>C</sup> [[Nicoll 2010], [U.S. Patent Application WO2014025785A2]].

The most recent claim of a small molecule binding PrP<sup>C</sup> has been **Chicago sky blue 6B** [[Risse 2015]]. It was estimated to bind PrP<sup>C</sup> with a 3:1 stoichiometry and to have a K<sub>D</sub> of 0.55 &mu;M (by isothermal titration calorimetry) and a cellular EC<sub>50</sub> of ~3 &mu;M (just eyeballing Fig 7A) for clearing PK-resistant PrP<sup>Sc</sup> from PK1 cells. While still almost a 10-fold difference, this is the closest match so far between a compound's affinity for PrP<sup>C</sup> and its bioactive concentration. The compound was observed to bind full-length PrP but not PrP 119-231, and it occludes A&beta; oligomer binding, which has been mapped to residues 23-31 and 95-110 [[Fluharty 2013]]. These two regions each contain a cluster of positive charges, and Chicago sky blue has four formal negative charges, so I would speculate that electrostatics may be involved in this interaction. While this compound may bind PrP<sup>C</sup>, it does not do so at a single defined binding site, and it was toxic at a concentration barely higher than its EC<sub>50</sub>, so it is probably not a promising lead for future development.

![](/media/2015/07/reported-prpc-binders.png)

*Above: a selection of small molecules that have been reported to bind PrP<sup>C</sup>, but in a multivalent fashion and/or at concentrations far above the concentration required for activity in cells.*

For at least one of the porphyrins, though, there is rather compelling evidence for binding PrP<sup>C</sup>, at a defined site, in a simple 1:1 binding mode [[Nicoll 2010]]. A cationic porphyrin called [FeTMPyP](https://www.caymanchem.com/app/template/Product.vm/catalog/75854) (originally referred to as T(N-Me-4-Py)P-Fe<sup>3+</sup> [[Caughey 1998], [Figure 4](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC22794/figure/F4/)]) was shown by several different methods &mdash; equilibrium dialysis, isothermal titration calorimetry, circular dichroism, sedimentation velocity analytical ultracentrifugation to bind HuPrP [[Nicoll 2010]]. The various methods employed were in pretty good agreement on the affinity, with a K<sub>D</sub> ranging from 3.2 to 8.1 &mu;M, depending on the exact conditions, measurement method, and whether HuPrP 91-231 or 119-231 was used. NMR gave evidence for specific binding to residues ~160-180. According to circular dichroism, the compound raised the melting point of HuPrP 91-231 from 66.1 to 68.4&deg;C when the compound was present at 18 &mu;M and the PrP was present at 6.5 &mu;M, which is almost a 3:1 molar ratio. It would be interesting to know if this result can also be obtained in a 1:1 stoichiometry. But in prion-infected PK1 cells, at least, it reduced PK-resistant PrP<sup>Sc</sup> at an EC<sub>50</sub> of 1.6 &mu;M. This is by far the best match between a compound's affinity and its effective concentration, and together with the NMR data and the lack of any observed aggregation, seems to make it reasonably likely that this molecule really does bind PrP<sup>C</sup> in a simple 1:1 fashion.

![](/media/2015/07/fetmpyp.png)

*Above: FeTMPyP, the molecule with the strongest evidence for having antiprion properties mediated by binding PrP<sup>C</sup> in a 1:1 fashion.*

It is also worth discussing another class of reported PrP<sup>C</sup> binders, which are large, heterogeneous, anionic, usually sulfated polymers: some of the best-studied examples include pentosan polysulfate, heparin, dextran sulfate 500, and phosphorothioated oligonucleotides. Many of these compounds reduce PK-resistant PrP<sup>Sc</sup> in ScN2a cells [[Caughey & Raymond 1993], [Kocisko 2006b], [Karpuj 2007]], and pentosan polysulfate is sometimes even used as a tool compound to cure cells of prion infection [e.g. [Bate 2004]]. Some of them considerably slow down peripherally acquired prion disease in mice [[Ehlers & Diringer 1984], [Diringer & Ehlers 1991], [Farquhar 1999]], and pentosan polysulfate even works against intracerebrally acquired prion infections [[Doh-Ura 2004]], though it is problematic in terms of delivery, timing, and complications, which [may explain its lack of success](/2012/12/13/the-rise-and-fall-of-pentosan-polysulfate-in-prion-disease/) in human trials [[Bone 2008], [Tsuboi 2009]].

![](/media/2015/07/prp-binding-anionic-polymers.png)

*Above: the monomeric subunits of large, anionic polymers that are reported to bind PrP, inhibit PK-resistant PrP<sup>Sc</sup> accumulation in cells, and/or extend survival in animals infected with prions.*

Do these polymers work by binding PrP<sup>C</sup>? The evidence is mixed. Heparin conjugated to beads has been observed to pull down PrP<sup>C</sup> [[Caughey 1994]], pentosan polysulfate has been observed to bind PrP<sup>C</sup> according to surface plasmon resonance [[Brimacombe 1999]], and heparin and other glycosaminoglycans have been observed to bind PrP<sup>C</sup> in ELISA and flow cytometry [[Pan 2002]]. Pentosan polysulfate and dextran sulfate (as well as Congo red) have been reported to induce endocytosis of PrP<sup>C</sup> in uninfected cells [[Shyng 1995]]. Heparan sulfate and pentosan polysulfate have been reported to *increase* the rate of cell-free prion conversion in a solid-state assay [[Wong 2001]], which is consistent with binding to either PrP<sup>C</sup> or PrP<sup>Sc</sup>, though it is surprising in light of the antiprion properties of these compounds in cell culture systems. Endogenous glycosaminoglycans similar to these compounds have long been known to be incorporated into prion plaques in the brain [[Snow 1989]], and seem to play a role in binding PrP<sup>Sc</sup> in cell culture experiments as well [[Hijazi 2005]]. There is a vast literature on the interaction between glycosaminoglycans, and these polyanions, and PrP, and I've only just touched on it here.

In a recent review, Emiliano Biasini speculates that these polyanions may simply act by non-specific electrostatic binding: they have lots of negative charges, and PrP's N terminus is highly flexible and has lots of positive charges [[Iraci 2014]]. That explanation makes sense, but if it's true, then some of these polyanions exhibit a shockingly *strong* non-specific interaction. Consider the stoichiometry involved. Because the molecules shown above are large polymers of variable molecular weight and sometimes variable branching, most of the studies simply express their concentration in terms of ng/mL or similar rather than molarity. Pentosan polysulfate has an EC<sub>50</sub> of only about 1 ng/mL [[Caughey & Raymond 1993], see Figure 6], and its monomeric unit (shown above) has a molecular weight of about 320 g/mol. By my calculations, means that to reduce PK-resistant PrP<sup>Sc</sup> accumulation in cells by 50%, all you need is pentosan polysulfate polymers containing the equivalent of (1e-6 g/L)/(320 g/mol) = 3 nM worth of monomers. This would make pentosan polysulfate, in a sense, the most potent known antiprion compound.

Whatever the mechanism of action of the polyanions, they have only been reported to have activity when used as polymers, and even though a couple of them (pentosan polysulfate and heparin) are actually approved drugs, they are certainly not "drug-like", there seems little prospect of identifying a specific binding site on PrP, and they have no hope of crossing the blood-brain barrier. So these molecules, too, are not really the PrP<sup>C</sup> binder that we are looking for.

I don't believe that my coverage of the literature has been completely exhaustive (and feel free to let me know about additional claims I've missed), but at this point I believe I've touched on many of the more thoroughly investigated molecules reported to bind PrP<sup>C</sup>. I next turned to searching the patent literature. The search results are dominated by peptide or antibody ligands [e.g. [US 8605161 B2](https://www.google.com/patents/US8604161), [US 20140294844 A1](https://www.google.com/patents/US20140294844)], and by several versions of a patent application by Prometic Biosciences Limited, covering the use of substituted triazines [[US 8030484 B2](https://www.google.com/patents/US8030484)]. Although those are small molecules, none of the various versions of that patent appear to contain any real data demonstrating that such compounds actually bind PrP<sup>C</sup>.

The most interesting patent I found was an application published last February, filed by David Harris, Emiliano Biasini, and the Trustees of Boston University among others [[WO2014025785A2](https://www.google.com/patents/WO2014025785A2)], covering a series of small molecules shown to be active in any or all of the following assays:

1. Raising the melting temperature of recombinant mouse PrP.
2. Inhibiting PK-resistant PrP<sup>Sc</sup> accumulation in ScN2a cells.
3. Preventing A&beta; oligomers from binding PrP<sup>C</sup> in cell-free experiments.
4. Preventing spontaneous transmembrane currents in cells expressing PrP &Delta;CR. &dagger;
5. Binding to recombinant mouse or human PrP according to surface plasmon resonance.

&dagger;For background on PrP &Delta;CR see [[Solomon 2010]] 

I did not find a publication on PubMed or Google Scholar covering this work, so it is likely that the experiments in the Harris lab are ongoing, and the patent application, which has a priority date in 2012, probably represents a rather outdated snapshot of the current science on these compounds. Nevertheless, it was an interesting read. The compound for which the largest amount of data is discussed in the patent is one dubbed DS26, which is sometimes referred to in the text as 2-(2R,3S,5R,6S-pentahydroxycyclohexylidene) hydrazine carbothioamide. According to the IUPAC-parsing tool [OPSIN](http://opsin.ch.cam.ac.uk/) [[Lowe 2011]] this doesn't quite parse, so I asked my colleague Zarko Boskovic, who pointed out that on line 00348, describing its synthesis, it is referred to by its full IUPAC name, 2-((2R,3R,4S,5R,6S)-2,3,4,5,6-pentahydroxycyclohexylidene)hydrazinecarbothioamide, which looks like this (only the *E* enantiomer is active according to line 00398):

![](/media/2015/07/ds26.png)

According to *in silico* docking, the molecule is predicted to bind what they call "PDB-1", a set of residues defined in line 00380. I have highlighted these residues in teal in PyMOL on MRC Prion Unit's human PrP<sup>C</sup> structure [[PDB# 2W9E](http://pdb.org/pdb/explore/explore.do?structureId=2W9E), [Antonyuk 2009]]:

```
bg_color white
fetch 2w9e
hide everything
show surface, chain A
color yellow
color 0x36648B, chain A and (resi 134+135+136+137+150+154+155+157+158+159+160+209+210+213)
```

![](/media/2015/07/ds26_binding_site.png)

*Above: the predicted binding site of DS26 on the surface of PrP<sup>C</sup> according to in silico docking.*

I was surprised to see that the predicted binding site is apparently a ridge on the surface of the protein, rather than a valley.

The inventors used surface plasmon resonance to estimate a K<sub>D</sub> of 800 nM (see line 00389) for DS26 binding to human PrP<sup>C</sup>. They found that it increased the melting temperature (T<sub>m</sub>) from 66.8 to 68.9&deg;C (line 00406). They also say they tested its ability to inhibit PK-resistant PrP<sup>Sc</sup> accumulation in ScN2a cells. The EC<sub>50</sub> is not given, but is stated to be "considerably higher" than the K<sub>D</sub> (line 00408), and the lowest concentration they report having tested in cells was 10 &mu;M. The compound did, however, exhibit nearly complete inhibition of transmembrane currents in PrP &Delta;CR-expressing cells at a slightly lower concentration, 5 &mu;M (line 00410).

So is this finally the molecule that has been so elusive &mdash; a small molecule that binds PrP<sup>C</sup> in a 1:1 stoichiometry at a defined binding site? It is surely too early to judge based on just this patent application. Certainly, DS26 is not subject to the same objection as quinacrine and chlorpromazine. Those two molecules have been observed to bind PrP<sup>C</sup>, but only at concentrations far too high to explain their very low EC<sub>50</sub>s in cells. DS26, if anything, is the opposite: it binds PrP<sup>C</sup> at only 800 nM, yet doesn't achieve activity against PrP &Delta;CR until closer to 5 &mu;M and against PrP<sup>Sc</sup> until at least 10 &mu;M. This is not as close of a match between affinity and bioactivity as was reported for FeTMPyP (see above).

This is just a lead compound, and in its current form, at least, it is probably a long ways from being a drug. According to ChemDraw, this molecule has predicted logP of -3.49, meaning it's quite hydrophilic. For comparison, I used [rcdk](http://cran.r-project.org/web/packages/rcdk/index.html) to predict the XlogP for all 221 [FDA-approved CNS drugs](/2013/10/04/list-of-fda-approved-drugs-and-cns-drugs-with-smiles/). DS26 is more hydrophilic than any FDA-approved CNS drug:

```r
require(rcdk)
drugs = read.table('http://www.cureffi.org/wp-content/uploads/2013/10/drugs.txt',header=T,sep='\t',quote='',comment.char='')
cns = parse.smiles(drugs$smiles[drugs$cns_drug])
xlogp = eval.desc(cns, "org.openscience.cdk.qsar.descriptors.molecular.XLogPDescriptor")
range(xlogp$XLogP)
hist(xlogp$XLogP,breaks=(-10:16)/2,col='#FF9912',border=NA,axes=F,main='Predicted LogP',yaxs='i',xaxs='i',ylab='',xlab='')
abline(h=0)
axis(side=1,at=-4:7,lwd=0,lwd.ticks=1)
axis(side=2,at=(0:3)*10,lwd=0,lwd.ticks=1,las=2)
mtext(side=1,text='\u2190more hydrophilic       more hydrophobic\u2192',line=2)
mtext(side=1,text='Predicted logP',line=3,font=2)
mtext(side=2,text='Number of compounds',line=2)
rect(xleft=-3.74,xright=-3.24,ybottom=0,ytop=1,col='#D91309',border=NA)
arrows(x0=-3.49, x1=-3.49, y0=5, y1=1.5, length=.05, angle=30, code=2, col='#D91309')
text(x=-3.49,y=5,labels='DS26',col='#D91309',pos=3,cex=.9)
arrows(x0=-1, x1=0, y0=20, y1=20, length=.05, angle=30, code=2, col='#FF9912')
text(x=-1,y=20,pos=2,labels='CNS drugs',col='#FF9912',cex=.9)
```

![](/media/2015/07/ds26_versus_cns_drugs.png)

But those are drugs, and this is still just a lead; perhaps it could be pushed towards BBB permeability through some medicinal chemistry optimization or a prodrug approach [reviewed in [Rautio 2008a], [Rautio 2008b]]. Indeed, many of the analogues discussed in the patent contain additional hydrophobic groups substituted in at the NH<sub>2</sub> at right. But whether or not an analogue of DS26 ever becomes a drug, if it really does bind PrP<sup>C</sup>, in a monovalent fashion and at a specific binding site, it could certainly prove to be a useful tool compound. I look forward to watching this story develop.

Sadly absent from my patent search results was any news from London. MRC Prion Unit's website has for years contained a [page](http://www.prion.ucl.ac.uk/research/university-departments/small-molecule-therapeutics/) describing joint efforts with GlaxoSmithKline to find small molecules that bind and stabilize PrP<sup>C</sup>, and they wrote a review arguing for binding PrP<sup>C</sup> as a small molecule strategy [[Nicoll & Collinge 2009]] but so far there has been no word on the results of these efforts. John Collinge presented survival curves from mice treated with two compounds dubbed GSK01 and GSK02 at [last year's CJD Conference](/2014/07/14/notes-from-the-cjd2014-conference/), but he said that those particular compounds "have a unique mechanism of action and do not bind PrP". Whether the screen has turned up any leads that *do* bind PrP, I am not sure &mdash; as far as I can tell, no patent has been published yet.

This may be all we have so far, then. While there are some molecules, large and small, that appear to interact directly with PrP, FeTMPyP [[Nicoll 2010]] appears to be the only one with pretty solid evidence for binding PrP<sup>C</sup> at a single, well-defined site at a therapeutically relevant concentration. If you the reader know of any breakthroughs I've missed, please leave a comment below.

[Nicoll 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20876144 "Nicoll AJ, Trevitt CR, Tattum MH, Risse E, Quarterman E, Ibarra AA, Wright C,  Jackson GS, Sessions RB, Farrow M, Waltho JP, Clarke AR, Collinge J. Pharmacological chaperone for the structured domain of human prion protein. Proc  Natl Acad Sci U S A. 2010 Oct 12;107(41):17610-5. doi: 10.1073/pnas.1009062107. Epub 2010 Sep 27. PubMed PMID: 20876144; PubMed Central PMCID: PMC2955083."

[Rautio 2008a]: http://www.ncbi.nlm.nih.gov/pubmed/18446509 "Rautio J, Laine K, Gynther M, Savolainen J. Prodrug approaches for CNS delivery. AAPS J. 2008;10(1):92-102. doi: 10.1208/s12248-008-9009-8. Epub 2008 Feb 5. Review. PubMed PMID: 18446509; PubMed Central PMCID: PMC2751454."

[Rautio 2008b]: http://www.ncbi.nlm.nih.gov/pubmed/18219308 "Rautio J, Kumpulainen H, Heimbach T, Oliyai R, Oh D, Järvinen T, Savolainen J. Prodrugs: design and clinical applications. Nat Rev Drug Discov. 2008 Mar;7(3):255-70. doi: 10.1038/nrd2468. Review. Erratum in: Nat Rev Drug Discov. 2008 Mar;7(3):272. PubMed PMID: 18219308."

[Antonyuk 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19204296 "Antonyuk SV, Trevitt CR, Strange RW, Jackson GS, Sangar D, Batchelor M, Cooper S, Fraser C, Jones S, Georgiou T, Khalili-Shirazi A, Clarke AR, Hasnain SS, Collinge J. Crystal structure of human prion protein bound to a therapeutic antibody. Proc Natl Acad Sci U S A. 2009 Feb 24;106(8):2554-8. doi: 10.1073/pnas.0809170106. Epub 2009 Feb 9. PubMed PMID: 19204296; PubMed Central PMCID: PMC2637903."

[Pan 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12186633/ "Pan T, Wong BS, Liu T, Li R, Petersen RB, Sy MS. Cell-surface prion protein interacts with glycosaminoglycans. Biochem J. 2002 Nov 15;368(Pt 1):81-90. PubMed PMID: 12186633; PubMed Central PMCID: PMC1222984."

[Snow 1989]: http://www.ncbi.nlm.nih.gov/pubmed/2523631 "Snow AD, Kisilevsky R, Willmer J, Prusiner SB, DeArmond SJ. Sulfated glycosaminoglycans in amyloid plaques of prion diseases. Acta Neuropathol. 1989;77(4):337-42. PubMed PMID: 2523631."

[Hijazi 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15668233 "Hijazi N, Kariv-Inbal Z, Gasset M, Gabizon R. PrPSc incorporation to cells requires endogenous glycosaminoglycan expression. J Biol Chem. 2005 Apr 29;280(17):17057-61. Epub 2005 Jan 24. PubMed PMID: 15668233."

[Wong 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11157745/ "Wong C, Xiong LW, Horiuchi M, Raymond L, Wehrly K, Chesebro B, Caughey B. Sulfated glycans and elevated temperature stimulate PrP(Sc)-dependent cell-free formation of protease-resistant prion protein. EMBO J. 2001 Feb 1;20(3):377-86. PubMed PMID: 11157745; PubMed Central PMCID: PMC133469."

[Shyng 1995]: http://www.ncbi.nlm.nih.gov/pubmed/8530433 "Shyng SL, Lehmann S, Moulder KL, Harris DA. Sulfated glycans stimulate endocytosis of the cellular isoform of the prion protein, PrPC, in cultured cells. J Biol Chem. 1995 Dec 15;270(50):30221-9. PubMed PMID: 8530433."

[Brimacombe 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10477271/ "Brimacombe DB, Bennett AD, Wusteman FS, Gill AC, Dann JC, Bostock CJ. Characterization and polyanion-binding properties of purified recombinant prion protein. Biochem J. 1999 Sep 15;342 Pt 3:605-13. PubMed PMID: 10477271; PubMed Central PMCID: PMC1220501."

[Caughey 1994]: http://www.ncbi.nlm.nih.gov/pubmed/7511169/ "Caughey B, Brown K, Raymond GJ, Katzenstein GE, Thresher W. Binding of the protease-sensitive form of PrP (prion protein) to sulfated glycosaminoglycan and  congo red [corrected]. J Virol. 1994 Apr;68(4):2135-41. Erratum in: J Virol 1994  Jun;68(6):4107. PubMed PMID: 7511169; PubMed Central PMCID: PMC236688."

[Karpuj 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17592554/ "Karpuj MV, Giles K, Gelibter-Niv S, Scott MR, Lingappa VR, Szoka FC, Peretz D, Denetclaw W, Prusiner SB. Phosphorothioate oligonucleotides reduce PrP levels and prion infectivity in cultured cells. Mol Med. 2007 Mar-Apr;13(3-4):190-8. PubMed  PMID: 17592554; PubMed Central PMCID: PMC1892763."

[Kocisko 2006b]: http://www.ncbi.nlm.nih.gov/pubmed/16495266 "Kocisko DA, Vaillant A, Lee KS, Arnold KM, Bertholet N, Race RE, Olsen EA, Juteau JM, Caughey B. Potent antiscrapie activities of degenerate phosphorothioate oligonucleotides. Antimicrob Agents Chemother. 2006 Mar;50(3):1034-44. PubMed PMID: 16495266; PubMed Central PMCID: PMC1426446."

[Bate 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15325130 "Bate C, Langeveld J, Williams A. Manipulation of PrPres production in scrapie-infected neuroblastoma cells. J Neurosci Methods. 2004 Sep 30;138(1-2):217-23. PubMed PMID: 15325130."

[Fluharty 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23362282 "Fluharty BR, Biasini E, Stravalaci M, Sclip A, Diomede L, Balducci C, La Vitola P, Messa M, Colombo L, Forloni G, Borsello T, Gobbi M, Harris DA. An N-terminal fragment of the prion protein binds to amyloid-β oligomers and inhibits their neurotoxicity in vivo. J Biol Chem. 2013 Mar 15;288(11):7857-66. doi: 10.1074/jbc.M112.423954. Epub 2013 Jan 28. PubMed PMID: 23362282; PubMed Central PMCID: PMC3597823."

[Dee 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22480824 "Dee DR, Gupta AN, Anikovskiy M, Sosova I, Grandi E, Rivera L, Vincent A, Brigley AM, Petersen NO, Woodside MT. Phthalocyanine tetrasulfonates bind to multiple sites on natively-folded prion protein. Biochim Biophys Acta. 2012 Jun;1824(6):826-32. doi: 10.1016/j.bbapap.2012.03.011. Epub 2012 Mar 28. PubMed PMID: 22480824."

[Kocisko 2006a]: http://www.ncbi.nlm.nih.gov/pubmed/16436739 "Kocisko DA, Caughey WS, Race RE, Roper G, Caughey B, Morrey JD. A porphyrin increases survival time of mice after intracerebral prion infection. Antimicrob Agents Chemother. 2006 Feb;50(2):759-61. PubMed PMID: 16436739; PubMed Central PMCID: PMC1366918."

[Priola 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12934186 "Priola SA, Raines A, Caughey W. Prophylactic and therapeutic effects of phthalocyanine tetrasulfonate in scrapie-infected mice. J Infect Dis. 2003 Sep 1;188(5):699-705. Epub 2003 Aug 14. PubMed PMID: 12934186."

[Priola 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10688802 "Priola SA, Raines A, Caughey WS. Porphyrin and phthalocyanine antiscrapie compounds. Science. 2000 Feb 25;287(5457):1503-6. PubMed PMID: 10688802."

[Fowler 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17412596 "Fowler DM, Koulov AV, Balch WE, Kelly JW. Functional amyloid--from bacteria to humans. Trends Biochem Sci. 2007 May;32(5):217-24. Epub 2007 Apr 6. Review. PubMed PMID: 17412596."

[Kawatake 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16651721 "Kawatake S, Nishimura Y, Sakaguchi S, Iwaki T, Doh-ura K. Surface plasmon resonance analysis for the screening of anti-prion compounds. Biol Pharm Bull. 2006 May;29(5):927-32. PubMed PMID: 16651721."

[Touil 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16242887 "Touil F, Pratt S, Mutter R, Chen B. Screening a library of potential prion therapeutics against cellular prion proteins and insights into their mode of biological activities by surface plasmon resonance. J Pharm Biomed Anal. 2006 Mar 3;40(4):822-32. Epub 2005 Oct 19. PubMed PMID: 16242887."


[Herrmann & Sonati 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25710374 "Herrmann US, Sonati T, Falsig J, Reimann RR, Dametto P, O'Connor T, Li B, Lau  A, Hornemann S, Sorce S, Wagner U, Sanoudou D, Aguzzi A. Prion infections and anti-PrP antibodies trigger converging neurotoxic pathways. PLoS Pathog. 2015 Feb 24;11(2):e1004662. doi: 10.1371/journal.ppat.1004662. eCollection 2015 Feb. PubMed PMID: 25710374; PubMed Central PMCID: PMC4339193."

[Solforosi 2004]: http://www.ncbi.nlm.nih.gov/pubmed/14752167 "Solforosi L, Criado JR, McGavern DB, Wirz S, Sánchez-Alavez M, Sugama S, DeGiorgio LA, Volpe BT, Wiseman E, Abalos G, Masliah E, Gilden D, Oldstone MB, Conti B, Williamson RA. Cross-linking cellular prion protein triggers neuronal apoptosis in vivo. Science. 2004 Mar 5;303(5663):1514-6. Epub 2004 Jan 29. PubMed PMID: 14752167."

[Klohn 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22223800 "Klöhn PC, Farmer M, Linehan JM, O'Malley C, Fernandez de Marco M, Taylor W, Farrow M, Khalili-Shirazi A, Brandner S, Collinge J. PrP antibodies do not trigger mouse hippocampal neuron apoptosis. Science. 2012 Jan 6;335(6064):52. doi: 10.1126/science.1215579. PubMed PMID: 22223800."

[Peretz 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11507642 "Peretz D, Williamson RA, Kaneko K, Vergara J, Leclerc E, Schmitt-Ulms G, Mehlhorn IR, Legname G, Wormald MR, Rudd PM, Dwek RA, Burton DR, Prusiner SB. Antibodies inhibit prion propagation and clear cell cultures of prion infectivity. Nature. 2001 Aug 16;412(6848):739-43. PubMed PMID: 11507642."

[White 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12621436 "White AR, Enever P, Tayebi M, Mushens R, Linehan J, Brandner S, Anstee D, Collinge J, Hawke S. Monoclonal antibodies inhibit prion replication and delay the development of prion disease. Nature. 2003 Mar 6;422(6927):80-3. PubMed PMID: 12621436."

[Sonati 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23903654 "Sonati T, Reimann RR, Falsig J, Baral PK, O'Connor T, Hornemann S, Yaganoglu S, Li B, Herrmann US, Wieland B, Swayampakula M, Rahman MH, Das D, Kav N, Riek R, Liberski PP, James MN, Aguzzi A. The toxicity of antiprion antibodies is mediated by the flexible tail of the prion protein. Nature. 2013 Sep 5;501(7465):102-6. doi: 10.1038/nature12402. Epub 2013 Jul 31. PubMed PMID: 23903654."

[Pantoliano 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11788061 "Pantoliano MW, Petrella EC, Kwasnoski JD, Lobanov VS, Myslik J, Graf E, Carver T, Asel E, Springer BA, Lane P, Salemme FR. High-density miniaturized thermal shift assays as a general strategy for drug discovery. J Biomol Screen. 2001 Dec;6(6):429-40. PubMed PMID: 11788061."

[MacBeath 1999]: http://dx.doi.org/10.1021/ja991083q "Gavin MacBeath , Angela N. Koehler , and Stuart L. Schreiber. Printing Small Molecules as Microarrays and Detecting Protein−Ligand Interactions en Masse. J. Am. Chem. Soc., 1999, 121 (34), pp 7967–7968 DOI: 10.1021/ja991083q Publication Date (Web): August 12, 1999"

[McGovern 2002]: http://www.ncbi.nlm.nih.gov/pubmed/11931626 "McGovern SL, Caselli E, Grigorieff N, Shoichet BK. A common mechanism underlying promiscuous inhibitors from virtual and high-throughput screening. J Med Chem. 2002 Apr 11;45(8):1712-22. PubMed PMID: 11931626."

[Lowe 2011]: http://dx.doi.org/10.1021/ci100384d "Chemical Name to Structure: OPSIN, an Open Source Solution. Daniel M. Lowe , Peter T. Corbett , Peter Murray-Rust *, and Robert C. Glen Unilever Centre for Molecular Science Informatics, Department of Chemistry, University of Cambridge, Lensfield Road, Cambridge, CB2 1EW, England. J. Chem. Inf. Model., 2011, 51 (3), pp 739–753. DOI: 10.1021/ci100384d Publication Date (Web): March 9, 2011"

[U.S. Patent Application WO2014025785A2]: https://www.google.com/patents/WO2014025785A2 "Inventors: Emiliano BIASINI, David A. Harris, Aaron BEELER, Brian R. FLUHARTY, Maria Letizia BARRECA, Nunzio Iraci, Oscar INGHAM. Applicant: Trustees Of Boston University, Universita Di Perugia. WO2014025785 A2. Filing date Aug 6, 2013. Publication date Feb 13, 2014."

[Kuwata 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17616582 "Kuwata K, Nishida N, Matsumoto T, Kamatari YO, Hosokawa-Muto J, Kodama K, Nakamura HK, Kimura K, Kawasaki M, Takakura Y, Shirabe S, Takata J, Kataoka Y, Katamine S. Hot spots in prion protein for pathogenic conversion. Proc Natl Acad  Sci U S A. 2007 Jul 17;104(29):11921-6. Epub 2007 Jul 6. PubMed PMID: 17616582; PubMed Central PMCID: PMC1924567."

[Tsuboi 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19788637 "Tsuboi Y, Doh-Ura K, Yamada T. Continuous intraventricular infusion of pentosan polysulfate: clinical trial against prion diseases. Neuropathology. 2009 Oct;29(5):632-6. doi: 10.1111/j.1440-1789.2009.01058.x. PubMed PMID: 19788637."

[Bone 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18355301 "Bone I, Belton L, Walker AS, Darbyshire J. Intraventricular pentosan polysulphate in human prion diseases: an observational study in the UK. Eur J Neurol. 2008 May;15(5):458-64. doi: 10.1111/j.1468-1331.2008.02108.x. Epub 2008 Mar 18. PubMed PMID: 18355301."

[Doh-ura 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15113880 "Doh-ura K, Ishikawa K, Murakami-Kubo I, Sasaki K, Mohri S, Race R, Iwaki T. Treatment of transmissible spongiform encephalopathy by intraventricular drug infusion in animal models. J Virol. 2004 May;78(10):4999-5006. PubMed PMID: 15113880; PubMed Central PMCID: PMC400350."

[Farquhar 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10023899 "Farquhar C, Dickinson A, Bruce M. Prophylactic potential of pentosan polysulphate in transmissible spongiform encephalopathies. Lancet. 1999 Jan 9;353(9147):117. PubMed PMID: 10023899."

[Ehlers & Diringer 1984]: http://www.ncbi.nlm.nih.gov/pubmed/6205119 "Ehlers B, Diringer H. Dextran sulphate 500 delays and prevents mouse scrapie by impairment of agent replication in spleen. J Gen Virol. 1984 Aug;65 ( Pt 8):1325-30. PubMed PMID: 6205119."

[Caughey & Raymond 1993]: http://www.ncbi.nlm.nih.gov/pubmed/7678300/ "Caughey B, Raymond GJ. Sulfated polyanion inhibition of scrapie-associated PrP accumulation in cultured cells. J Virol. 1993 Feb;67(2):643-50. PubMed PMID: 7678300; PubMed Central PMCID: PMC237415."

[Caughey & Race 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1352803 "Caughey B, Race RE. Potent inhibition of scrapie-associated PrP accumulation by congo red. J Neurochem. 1992 Aug;59(2):768-71. PubMed PMID: 1352803."

[Wong 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11157745/ "Wong C, Xiong LW, Horiuchi M, Raymond L, Wehrly K, Chesebro B, Caughey B. Sulfated glycans and elevated temperature stimulate PrP(Sc)-dependent cell-free formation of protease-resistant prion protein. EMBO J. 2001 Feb 1;20(3):377-86. PubMed PMID: 11157745; PubMed Central PMCID: PMC133469."

[Caughey 1994a]: http://www.ncbi.nlm.nih.gov/pubmed/7511169/ "Caughey B, Brown K, Raymond GJ, Katzenstein GE, Thresher W. Binding of the protease-sensitive form of PrP (prion protein) to sulfated glycosaminoglycan and  congo red [corrected]. J Virol. 1994 Apr;68(4):2135-41. Erratum in: J Virol 1994  Jun;68(6):4107. PubMed PMID: 7511169; PubMed Central PMCID: PMC236688."

[Demaimay 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9832153 "Demaimay R, Harper J, Gordon H, Weaver D, Chesebro B, Caughey B. Structural aspects of Congo red as an inhibitor of protease-resistant prion protein formation. J Neurochem. 1998 Dec;71(6):2534-41. PubMed PMID: 9832153."

[Bulawa 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22645360 "Bulawa CE, Connelly S, Devit M, Wang L, Weigel C, Fleming JA, Packman J, Powers ET, Wiseman RL, Foss TR, Wilson IA, Kelly JW, Labaudinière R. Tafamidis, a potent and selective transthyretin kinetic stabilizer that inhibits the amyloid cascade. Proc Natl Acad Sci U S A. 2012 Jun 12;109(24):9629-34. doi: 10.1073/pnas.1121005109. Epub 2012 May 29. PubMed PMID: 22645360; PubMed Central  PMCID: PMC3386102."

[Vogtherr 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12904059 "Vogtherr M, Grimme S, Elshorst B, Jacobs DM, Fiebig K, Griesinger C, Zahn R. Antimalarial drug quinacrine binds to C-terminal helix of cellular prion protein. J Med Chem. 2003 Aug 14;46(17):3563-4. PubMed PMID: 12904059."

[Baral 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24373770 "Baral PK, Swayampakula M, Rout MK, Kav NN, Spyracopoulos L, Aguzzi A, James MN. Structural basis of prion inhibition by phenothiazine compounds. Structure. 2014 Feb 4;22(2):291-303. doi: 10.1016/j.str.2013.11.009. Epub 2013 Dec 26. PubMed PMID: 24373770."

[Yamasaki 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25181483 "Yamasaki T, Suzuki A, Hasebe R, Horiuchi M. Comparison of the anti-prion mechanism of four different anti-prion compounds, anti-PrP monoclonal antibody 44B1, pentosan polysulfate, chlorpromazine, and U18666A, in prion-infected mouse  neuroblastoma cells. PLoS One. 2014 Sep 2;9(9):e106516. doi: 10.1371/journal.pone.0106516. eCollection 2014. PubMed PMID: 25181483; PubMed Central PMCID: PMC4152300."

[Korth 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11504948 "Korth C, May BC, Cohen FE, Prusiner SB. Acridine and phenothiazine derivatives as pharmacotherapeutics for prion disease. Proc Natl Acad Sci U S A. 2001 Aug 14;98(17):9836-41. PubMed PMID: 11504948; PubMed Central PMCID: PMC55539."

[Caughey 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9770449/ "Caughey WS, Raymond LD, Horiuchi M, Caughey B. Inhibition of protease-resistant prion protein formation by porphyrins and phthalocyanines. Proc Natl Acad Sci U S A. 1998 Oct 13;95(21):12117-22. PubMed PMID: 9770449; PubMed Central PMCID: PMC22794."

[Warner 2002]: http://www.ncbi.nlm.nih.gov/pubmed/11882649 "Warner RG, Hundt C, Weiss S, Turnbull JE. Identification of the heparan sulfate binding sites in the cellular prion protein. J Biol Chem. 2002 May 24;277(21):18421-30. Epub 2002 Mar 6. PubMed PMID: 11882649."

[Risse 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25995455 "Risse E, Nicoll AJ, Taylor WA, Wright D, Badoni M, Yang X, Farrow MA, Collinge J. Identification of a Compound That Disrupts Binding of Amyloid-β to the Prion Protein Using a Novel Fluorescence-based Assay. J Biol Chem. 2015 Jul 3;290(27):17020-8. doi: 10.1074/jbc.M115.637124. Epub 2015 May 20. PubMed PMID: 25995455."

[Diringer & Ehlers 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1704414 "Diringer H, Ehlers B. Chemoprophylaxis of scrapie in mice. J Gen Virol. 1991 Feb;72 ( Pt 2):457-60. PubMed PMID: 1704414."

[Iraci 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25456402 "Iraci N, Stincardini C, Barreca ML, Biasini E. DECODING THE FUNCTION OF THE N-TERMINAL TAIL OF THE CELLULAR PRION PROTEIN TO INSPIRE NOVEL THERAPEUTIC AVENUES FOR NEURODEGENERATIVE DISEASES. Virus Res. 2014 Oct 23. pii: S0168-1702(14)00420-1. doi: 10.1016/j.virusres.2014.10.015. [Epub ahead of print] PubMed PMID: 25456402."

[Nicoll & Collinge 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19200015 "Nicoll AJ, Collinge J. Preventing prion pathogenicity by targeting the cellular prion protein. Infect Disord Drug Targets. 2009 Feb;9(1):48-57. Review.  PubMed PMID: 19200015."

[Kawasaki 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17881452/ "Kawasaki Y, Kawagoe K, Chen CJ, Teruya K, Sakasegawa Y, Doh-ura K. Orally administered amyloidophilic compound is effective in prolonging the incubation periods of animals cerebrally infected with prion diseases in a prion strain-dependent manner. J Virol. 2007 Dec;81(23):12889-98. Epub 2007 Sep 19. PubMed PMID: 17881452; PubMed Central PMCID: PMC2169081."

[Wagner 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23604588 "Wagner J, Ryazanov S, Leonov A, Levin J, Shi S, Schmidt F, Prix C, Pan-Montojo F, Bertsch U, Mitteregger-Kretzschmar G, Geissen M, Eiden M, Leidel F, Hirschberger T, Deeg AA, Krauth JJ, Zinth W, Tavan P, Pilger J, Zweckstetter M, Frank T, Bähr M, Weishaupt JH, Uhr M, Urlaub H, Teichmann U, Samwer M, Bötzel K,  Groschup M, Kretzschmar H, Griesinger C, Giese A. Anle138b: a novel oligomer modulator for disease-modifying therapy of neurodegenerative diseases such as prion and Parkinson's disease. Acta Neuropathol. 2013 Jun;125(6):795-813. doi: 10.1007/s00401-013-1114-9. Epub 2013 Apr 19. PubMed PMID: 23604588; PubMed Central PMCID: PMC3661926."

[Ghaemmaghami 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24762293 "Ghaemmaghami S, Russo M, Renslo AR. Successes and challenges in phenotype-based lead discovery for prion diseases. J Med Chem. 2014 Aug 28;57(16):6919-29. doi: 10.1021/jm5001425. Epub 2014 Apr 24. Review. PubMed PMID: 24762293; PubMed Central PMCID: PMC4148153."

[Solomon 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20573963/ "Solomon IH, Huettner JE, Harris DA. Neurotoxic mutants of the prion protein induce spontaneous ionic currents in cultured cells. J Biol Chem. 2010 Aug 20;285(34):26719-26. doi: 10.1074/jbc.M110.134619. Epub 2010 Jun 23. PubMed PMID: 20573963; PubMed Central PMCID: PMC2924115."


