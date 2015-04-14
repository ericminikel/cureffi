---
layout: post
title:  "Backgrounder on SOD1"
date:   2015-04-06 12:01:00
author: ericminikel
location: Boston, MA
thumb120: http://www.cureffi.org/media/2015/04/sod1-thumbnail.png
summary200: "Background and introductory reading list on the biochemistry and cell biology of SOD1 ALS modeled in mice and cell cultures."
---

This semester I'm doing a research rotation in [Lee Rubin's lab](http://www.scrb.harvard.edu/lab/54/home) where they have been modeling *SOD1* ALS mutations in iPS-derived motor neurons [[Yang 2013]], and I've also decided to do my final project for my [protein folding class](/tag/mit-7.88j) on the prion-like aspects of SOD1 misfolding. This post is my first pass at a backgrounder to get familiar with the gene, the protein, and just a little bit of the literature.

### Background on the gene and the protein

![](/media/2015/04/sod1-gene-ensembl.png)

*Above: the SOD1 gene, [ENSG00000142168](http://useast.ensembl.org/Homo_sapiens/Location/View?db=core;g=ENSG00000142168;r=21:31659022-31669900;redirect=no) in the Ensembl viewer.*

The *SOD1* gene (above) spans about 10kb of genomic sequence on chromosome 21, with five protein-coding exons encoding a 153-residue protein:

```
>ENSG00000142168:ENST00000270142 peptide: ENSP00000270142 pep:KNOWN_protein_coding
MATKAVCVLKGDGPVQGIINFEQKESNGPVKVWGSIKGLTEGLHGFHVHEFGDNTAGCTS
AGPHFNPLSRKHGGPKDEERHVGDLGNVTADKDGVADVSIEDSVISLSGDHCIIGRTLVV
HEKADDLGKGGNEESTKTGNAGSRLACGVIGIAQ
```

Note that the translated sequence above is 154 residues, but like many cytosolic proteins [[Giglione 2004]], SOD1 undergoes N-terminal methionine excision, thus yielding a 153-residue protein. The residue numbering in common use in publications about *SOD1* is based on 153-residue counting and thus appears as shifted from this reference sequence by -1: for instance, people refer to D90A [[Al-Chalabi 1998]] and G93A [[Yang 2013]], which correspond to residues 91 and 94, respectively, in the above sequence or in any output generated programmatically by genomic tools. [In ExAC](http://exac.broadinstitute.org/gene/ENSG00000142168), the *SOD1* gene (canonical transcript ENST00000270142) has three predicted loss-of-function variants, all singletons. The protein is localized to the cytosol and the mitochondrial intermembrane space [[Kawamata & Manfredi 2010]]. SOD1 was known as an enzyme responsible for inactivating superoxide radicals before it was ever linked to ALS, and its crystal structure was solved in 1992 [[PDB# 1SOS](http://pdb.org/pdb/explore/explore.do?structureId=1sos), [Parge 1992]]:

```
fetch 1sos
bg_color white
hide everything
show cartoon, chain A
show spheres, inorganic and chain A
color 0x0000CD, chain A
color 0xC77F33, element Cu
color 0x7c7faf, element Zn
```

(Note these are the [official PyMOL element colors](http://www.pymolwiki.org/index.php/Color_Values#Color_by_Element.2FAtom) for Zn and Cu).

![](/media/2015/04/sod1-structure-1sos.png)

I blogged about ALS last semester in [these notes from neurodegeneration seminar](/2014/11/24/neurodegeneration-seminar-4/) and an important point is that ALS is the name for a constellation of clincial signs, a syndrome. The name ALS refers to what are probably **several different diseases** at the molecular level. Most cases are sporadic; of the cases that are familial, there are a variety of genes, often with distinct pathology.

The *SOD1* gene was linked to ALS around the same time by two different groups, at MGH and Northwestern [[Rosen 1993], [Deng 1993]], each of which found different mutations in different families, and estimated that 10-15% of familial ALS cases were attributable to this gene&dagger;. The first paper remained fairly agnostic as to the mechanism by which these mutations caused disease, offering that "one possibility... is that the activity of SOD1 is reduced, leading to an accumulation of the toxic superoxide radical. Alternatively, the activity of SOD1 might be increased, leading to excessive levels of hydrogen peroxide and the highly toxic hydroxyl radical..." [[Rosen 1993]]. The other paper concluded more strongly that loss-of-function was responsible - they measured the enzymatic activity of the SOD1 mutants and found it to be on average to be less than half that of wild-type SOD1, and examined the position of the mutations in the reported structure of SOD1 and found them to be disruptive [[Deng 1993]].

&dagger;There is now some evidence that wild-type SOD1 may also be involved in subset of sporadic ALS cases [[Bosco 2010], [Forsberg 2010]], though this remains controversial [[Kerman 2010]]. 

The loss-of-function hypothesis was challenged the following year, however, by David Borchelt, who was then working in Don Cleveland's lab. They found that the G37R mutant retained nearly full enzymatic activity [[Borchelt 1994]]. To explore the disease mechanism further, they created a whole series of transgenic mouse lines [[Wong 1995]]. The higher the level of overexpression of G37R *SOD1*, the earlier the onset of disease in mice; and this was on a wild-type background, so endogenous mouse *Sod1* was present. Meanwhile, overexpression of wild-type *SOD1* did not cause any pathology. Collectively, these results indicated that the disease might be caused not by loss-of-function, but by "an aberrant property of this SOD1 mutant", or in other words, gain-of-function.

Further animal data would soon validate this conclusion. *Sod1* knockout mice are viable and show no obvious ALS-like phenotype [[Reaume 1996]], and indeed, the disease course of mice expressing mutant *SOD1* is unaltered whether the endogenous *Sod1* alleles are present or knocked out [[Brujin 1998]]. There is, however, still some controversy as to whether loss of *SOD1* function might contribute somewhat to the disease in *SOD1* ALS patients [[Saccon 2013]].

Fast-forwarding 15+ years, mutant SOD1 is now widely considered - depending on your semantic opinion - a "prion" [[Prusiner 2012]], "prion-like" [[Polymenidou & Cleveland 2011]], or a "prionoid" [[Aguzzi & Rajendran 2009]], and is said to cause a "protein misfolding disease" [[Nordlund & Oliveberg 2008]], or a "protein aggregation disease" [[Ray 2005]]. As is the case in most (all?) neurodegenerative diseases, it remains controversial whether the toxic species is the aggregate or an elusive oligomer [[Polymenidou & Cleveland 2011]], but in either case, the death of neurons is ascribed to the progressive, nucleated misfolding of SOD1 protein.

### Reading list

My mentor in the Rubin lab, Chen Benkler, gave me a reading list of six of her favorite papers on SOD1, including one review [[Polymenidou & Cleveland 2011]] and five original research papers focusing primarily on the prion-like spreading of misfolded SOD1 [[Matsumoto 2005], [Karch 2009], [Prudencio 2009], [Munch 2011], [Basso 2013]]. Here's my read of each of these papers.

#### *The Seeds of Neurodegeneration: Prion-like Spreading in ALS* [[Polymenidou & Cleveland 2011]]

Table 1 compares different neurodegenerative disease-associated proteins in terms of the weight of evidence in favor of a "prion-like" mechanism in different experimental paradigms. At least as of 2011, SOD1 had been shown to undergo seeded aggregation *in vitro* and in cell culture, and to transmit from cell to cell in cell culture (see [[Prudencio 2009], [Munch 2011]] reviewed below). This would make it comparable to huntingtin in terms of level of evidence, and less strong than A&beta; or tau, both of which have been shown to induce aggregation *in vivo* (in mice), which in turn are less strong than &alpha;-synuclein, aggregates of which can actually cause clinical disease in mice [[Mougenot 2012], [Luk 2012], [Watts 2013]]. There has been some progress in this area since this review was written, however: last year it was reported that spinal cord homogenates from *SOD1* G93A (but not G37R) mice could induce disease in mice expressing a different transgene (G85R-YFP) [[Ayers 2014]].

The most interesting thing I learned from this review is that SOD1 toxicity is considered to be non-cell-autonomous. This was demonstrated through a series of experiments from Don Cleveland's lab in which mice with a floxed G37R *SOD1* transgene were crossed to mice expressing Cre recombinase under different cell type-specific promoters, to selectively delete *SOD1* in either motor neurons, astrocytes or microglia. I coarsely summarize the results in this table:

| Cre promoter | cell type in which *SOD1* is deleted | delay in onset | extension of survival | citation |
| ---- | ---- | ---- | ---- | ---- |
| Isl1 | motor neurons | 9% | 22% | [[Boillee 2006]] |
| CD11b | microglia | none | 34% | [[Boillee 2006]] |
| GFPA | astrocytes | none | 16% | [[Yamanaka 2008]] |

These results imply that SOD1 in each of these three cell types contributes to the disease, and that SOD1 in microglia and astrocytes affects disease progression but not onset. The authors conclude that there are two distinct disease phases mediated by these different cell types

> an initiating phase of disease caused by mutant SOD1 damage within motor neurons, and a mechanistically divergent later phase encompassing the progression to complete paralysis that is linked to the inflammatory response of microglia and mutant toxicity within these cells
> 
> &mdash; [[Boillee 2006]]

The finding that mutant SOD1 toxicity is non-cell-autonomous has been further replicated by transplanting glia expressing mutant (G93A) *SOD1* into wild-type rats, where they caused motor neuron death [[Papadeas 2011]]. What's more, astrocytes derived from iPS from genetic *or* sporadic ALS patients kill motor neurons when the two are co-cultured [[Haidet-Phillips 2011]]. 

Boillee's notion of "two distinct disease phases" may sound familiar from the study of prion disease - see [this post](/2014/11/03/neurodegeneration-seminar-1/). Yet the situation in prion disease is starkly different from that in *SOD1* ALS: neurons that don't express PrP are simply invulnerable to prion neurotoxicity, period [[Brandner 1996], [Mallucci 2003]]. And although microglial activation and astrocyte proliferation are prominent features of prion disease, the evidence is mixed as to whether these glial cells are friend or foe [[Aguzzi 2013]]. For instance, deletion of *Mfge8*, which astrocytes produce and which appears to be involved in apoptotic body engulfment, slightly *accelerates* prion disease progression [[Kranich 2010]], whereas deletion of *Nox2*, which microglia use to produce free oxygen radicals, slightly *slows* prion disease progression (as does killing off the microglia themselves) [[Sorce 2014]]. Meanwhile, deletion of *Trem2* reduces microglial activation without appreciably affecting disease course [[Zhu 2015]]. 

As a prion scientist, something that bothers me about all of the SOD1 toxicity studies above is that they were done on a wild-type background, i.e. endogenous *Sod1* was expressed in all of the cells being studied. If prions composed of mutant SOD1 are capable of templating the misfolding of wild-type SOD1, then it is hard to disentangle the effects of prion propagation (which is non-cell-autonomous) from those of neurotoxicity (which the authors conclude is non-cell-autonomous). This issue apparently bothered prionologist Neil Cashman as well, so he studied cross-seeding between mutant human SOD1, wild-type human SOD1 and wild-type mouse SOD1 in cell culture and *in vitro* and concluded that the mutants could template wild-type human SOD1 but not wild-type mouse SOD1 [[Grad 2011]]. If so, that's not so different from the situation with PrP prions, where at least human PrP mutants appear to template the wild-type human protein (see [this post](/2013/08/15/allelic-origin-of-prpsc-in-heterozygotes/)), yet a substantial transmission barrier exists between species [[Collinge & Clarke 2007]]. Still, I'd feel more comfortable reaching strong conclusions about cell autonomousness if the *in vivo* experiments were repeated on a knockout background.

#### *Structural properties and neuronal toxicity of amyotrophic lateral sclerosis–associated Cu/Zn superoxide dismutase 1 aggregates* [[Matsumoto 2005]]

In this study, they expressed YFP or CFP fused to wild-type, G85R or G93A *SOD1* (six combinations total) by transient transfection in rat PC12 cells and then did microscopy, biochemistry, FRAP (see [here](/2013/02/10/cell-biology-02-the-plasma-membrane/)), and enzymatic activity assays on them. The mutants fused to CFP formed aggregates described as "perinuclear", which were relatively immobile (they don't move much according to FRAP), while a subset of the mutant fusion protein was still diffuse and mobile (i.e. <100% of the protein was incorporated into aggregates).

When they co-expressed a mutant *SOD1* fused to CFP, and then separately expressed YFP, they found that the the YFP diffused throughout the cell including the space occupied by the mutant-CFP aggregates, which was taken to imply that the SOD1 aggregates form a "honeycomb"-like structure that allows soluble proteins to diffuse through. In contrast, when they expressed a mutant huntingtin fragment fused to CFP, it formed aggregates that excluded YFP. Yet when they coexpressed mutant SOD1-CFP fusions and also the chaperone Hsp70 fused to YFP, the Hsp70 was found to co-localize partly (34%) with the CFP-marked aggregates. This was taken to mean that Hsp70 interacts with the aggregates.

They also tried tagging the LMP2 &beta; subunit of the 20S proteasome with YFP, and they found that the YFP in this case showed 72% co-localization with CFP, implying that the proteasome is sequestered by the SOD1 aggregates. To explore the functional consequences of this sequestration, they co-transfected mutant SOD1-CFP with a YFP-ubiquitin reporter protein. They found that the reporter accumulated to ~2.6 to 2.9x higher levels in the cells containing CFP aggregates, suggesting a reduction in proteasome activity, which they figure is due to the sequestration, though if real the effect could also simply be due to the proteasome being busy degrading the mutant SOD1.

Finally, they make the case that aggregates kill cells. The trouble is that not all cells that are transfected with mutant SOD1-CFP actually develop aggregates - only 15-30% do. So the comparison they end up making is that ~15% of untransfected or WT SOD1-CFP transfected cells died after 48h, while 90% of the cells that were transfected with mutant SOD1-CFP *and* developed aggregates died. Over that 48h time period, yet additional cells that initially had diffuse mutant SOD1-CFP expression develop aggregates, and 70% of those cells then die during the next 48h.

#### *Role of mutant SOD1 disulfide oxidation and aggregation in the pathogenesis of familial ALS* [[Karch 2009]]

This paper from David Borchelt's group studies aggregates obtained from three different transgenic mouse lines expressing human *SOD1* with either the G93A, G37R, or H46R+H48Q mutations. They extracted spinal cords in non-ionic detergent and plotted the amount of detergent-insoluble SOD1 immunoreactivity (corresponding to aggregates) over time. While the kinetics of disease were somewhat different in the different mouse lines, the overall picture was similar: the amount of aggregated SOD1 increased over time.

Other groups had previously reported that SOD1 aggregates (unlike natively folded SOD1) are cross-linked by intermolecular disulfide bonds [[Jonsson 2004], [Jonsson 2006], [Furukawa 2006]]. Karch et al therefore examined cross-linking in the SOD1 aggregates from these mice. This required detergent extraction of spinal cords in the presence of iodoacetamide (IA), which "irreversibly prevents air oxidation and disulfide bond scrambling during sample preparation" - in other words, making sure that the state of disulfide bonds by the time the protein gets to your gel is the same as what it was *in vivo*. By using 1% SDS they were able to soluibilize the SOD1 aggregates (which had been insoluble in 0.5% Nonidet P-40 non-ionic detergent) to the point that they could run them on a Western blot and assess their multimericity by molecular weight. Predictably, they found that the appearance of dimers and higher-order multimers increased over the course of disease. They also found that some of the mutant protein migrates on a gel in a manner consistent with a *reduced* (i.e. not disulfide-bonded) SOD1 monomer, suggesting that perhaps some of the mutant protein had either lost its native (intramolecular) disulfide bond, or perhaps never acquired it in the first place.

This is an interesting contrast to PrP prions. The hypothesis that PrP<sup>Sc</sup> might contain intermolecular disulfide bonds was explored some time ago [[Welker 2001]] but no one ever managed to produce convincing evidence for it. At a talk that Byron Caughey gave recently, an audience member asked about the possibility of intermolecular disulfides in PrP<sup>Sc</sup> and Byron replied that he had looked into this for a while many years ago but found no evidence for it and so gave it up. Indeed, the Prusiner lab's efforts 22 years ago failed to find covalent modifications of any type associated with prions, suggesting that PrP<sup>Sc</sup> instead differs from PrP<sup>C</sup> solely by conformation [[Pan 1993], [Stahl 1993]]. There have been occasional challenges to this view [e.g. [Canello 2008]] but to my knowledge, the prevaling view among prion scientists continues to be that PrP<sup>Sc</sup> and PrP<sup>C</sup> differ only in conformation.

#### *Variation in aggregation propensities among ALS-associated variants of SOD1: correlation to human disease* [[Prudencio 2009]]

This is an interesting combination of biochemistry and epidemiology, looking at 21 different *SOD1* mutations. They estimate "aggregation propensity" by transiently transfecting HEK293FT cells with the different mutant cDNAs, centrifuging the cell lysates, and then dividing the Western blot band intensity of the pellet (insoluble fraction) by the supernatant (soluble fraction). They then compare this "aggregation propensity" to a bunch of different clinical variables, to see how the aggregation propensity affects the disease. None of the variables of interest were found to correlate with the aggregation propensity. Average age of onset (which varies from about 40 to about 55 between different mutations) was completely uncorrelated with aggregation propensity (p = .92) and disease duration showed only an extremely weak trend (p = .14). They also compared the aggregation propensity to a number of different biochemical factors to see if they could determine what drives aggregation, but none of those correlated either.

#### *Prion-like propagation of mutant superoxide dismutase-1 misfolding in neuronal cells* [[Munch 2011]]

This study looks at the ability of cultured cells to take up and propagate SOD1 aggregates. They purified recombinant mutant SOD1 from Sf9 cells (details in [[Munch 2010]]), labeled it with Dylight649 and then mixed it with [trifluoroethanol](http://en.wikipedia.org/wiki/2,2,2-Trifluoroethanol), which apparently causes it to aggregate. Then they dumped the aggregates onto N2a cells. The N2a cells took up the fluorescent aggregates amazingly quickly - fluorescence inside cells was visible within 60 minutes and then increased by a few orders of magnitude, peaking around 15h. They did this originally with the mutant H64R but replicated the results with two other mutants, A4V and L144F. 

They next asked how the aggregates get into cells. They started with FM 4-64FX, which is apparently a dye that stains endocytic vesicles. 5 minutes after exposure to cells, the aggregates appeared punctate and co-localized with that marker, but by the 30 minute mark they appeared to have diffused throughout the cytosol. Thus, apparently the aggregates get endocytosed but then somehow break out of their vesicles. By what pathway, exactly, were the aggregates entering cells? They did a battery of tests to rule out different possibilities. The aggregates didn't co-localize with transferrin, and their uptake was not inhibited by chlorpromazine, nor by either of two dominant-negative proteins (eps15 and AP180), so the authors ruled out clathrin-mediated endocytosis. A dynamin inhibitor and a dominant negative K44A dynamin mutant did not affect the process, either, thus ruling out dynamin-mediated transport. Caveolin-1 knockout or genistein (a caveolin-1 inhibitor) didn't affect it either, ruling out caveolin-dependent endocytosis. Yet depleting cellular ATP with sodium azide and 2-deoxyglucose did reduce the uptake of aggregates, indicating there was an active (ATP-driven) process at work. 

Finally, they found that 5-N-ethyl-N-isopropyl-amiloride (EIPA), wortmannin, and another compound called IPA3 - all small molecule inhibitors of kinases involved in macropinocytosis - all reduced aggregate uptake. Macropinocytosis is introduced [here](/2014/11/17/neurodegeneration-seminar-3/) and has also been implicated in cellular uptake of tau aggregates [[Holmes 2013]]. Methyl-&beta;-cyclodextrin (M&beta;CD), which disrupts lipid rafts, also reduced the uptake, implicating macropinocytosis at lipid rafts in particular. 

Then they asked whether the aggregates could seed new aggregate formation inside cells. They stably expressed H64R SOD1-GFP in the cells, and on its own, this protein remained diffuse throughout cytosol rather than aggregating. Only when the cells were exposed to the recombinant H64R SOD1 from Sf9 cells, aggregated with TFE, did they produce aggregates. In addition, when cells were infected with aggregates labeled with different colors and then co-cultured, they would exchange aggregates until both groups of cells contained aggregates of both colors; and fluorescent aggregates in culture media from one group of cells could be taken up into the cytosol of other cells. Thus, in a variety of paradigms (including without cell-cell contact), SOD1 aggregates can move from cell to cell and can seed soluble SOD1 to aggregate. 

That last round of experiments was done with H64R SOD1 being expressed by all of the different cells, so they did not look at cross-seeding between mutant and WT SOD1. 

#### *Mutant Copper-Zinc Superoxide Dismutase (SOD1) Induces Protein Secretion Pathway Alterations and Exosome Release in Astrocytes* [[Basso 2013]]

In this study they harvested cortical tissue from mouse embryos overexpressing mutant (G93A) or WT human *SOD1*, and isolated/differentiated astrocytes, then performed a number of tests on the astrocytes, including:

1. Western blot on GFAP as a control - the GFAP band was a broader smear in the mutant SOD1 astrocytes, which they attribute to GFAP fragmentation due to calpain activation.
2. 2D gels on pools of mutant SOD1 astrocytes (n=3) versus pools of WT SOD1 astrocytes and image analysis to identify dots that were more intense one gel than the other. They then identified these proteins by MALDI-TOF mass spec and technically validated the difference in protein abundance of a few of them with Western blots.
3. Measurements of total protein secretion and exosome production.
4. Exposing cultured motor neurons to exosomes from the astrocytes. They found that SOD1 was able to move from the exosomes into the neurons, and that the exosomes from the mutant SOD1 astrocytes caused some (36%) motor neuron death.

[Matsumoto 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16216923 "Matsumoto G, Stojanovic A, Holmberg CI, Kim S, Morimoto RI. Structural properties and neuronal toxicity of amyotrophic lateral sclerosis-associated Cu/Zn superoxide dismutase 1 aggregates. J Cell Biol. 2005 Oct 10;171(1):75-85. PubMed PMID: 16216923; PubMed Central PMCID: PMC2171239."

[Karch 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19416874 "Karch CM, Prudencio M, Winkler DD, Hart PJ, Borchelt DR. Role of mutant SOD1 disulfide oxidation and aggregation in the pathogenesis of familial ALS. Proc Natl Acad Sci U S A. 2009 May 12;106(19):7774-9. doi: 10.1073/pnas.0902505106. Epub 2009 Apr 30. PubMed PMID: 19416874; PubMed Central PMCID: PMC2675570."

[Prudencio 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19483195 "Prudencio M, Hart PJ, Borchelt DR, Andersen PM. Variation in aggregation propensities among ALS-associated variants of SOD1: correlation to human disease. Hum Mol Genet. 2009 Sep 1;18(17):3217-26. doi: 10.1093/hmg/ddp260. Epub 2009 May  30. PubMed PMID: 19483195; PubMed Central PMCID: PMC2722984."

[Polymenidou & Cleveland 2011]: http://www.ncbi.nlm.nih.gov/pubmed/22036560 "Polymenidou M, Cleveland DW. The seeds of neurodegeneration: prion-like spreading in ALS. Cell. 2011 Oct 28;147(3):498-508. doi: 10.1016/j.cell.2011.10.011. PubMed PMID: 22036560; PubMed Central PMCID: PMC3220614."

[Munch 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21321227 "Münch C, O'Brien J, Bertolotti A. Prion-like propagation of mutant superoxide dismutase-1 misfolding in neuronal cells. Proc Natl Acad Sci U S A. 2011 Mar 1;108(9):3548-53. doi: 10.1073/pnas.1017275108. Epub 2011 Feb 14. PubMed PMID: 21321227; PubMed Central PMCID: PMC3048161."

[Basso 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23592792 "Basso M, Pozzi S, Tortarolo M, Fiordaliso F, Bisighini C, Pasetto L, Spaltro G, Lidonnici D, Gensano F, Battaglia E, Bendotti C, Bonetto V. Mutant copper-zinc superoxide dismutase (SOD1) induces protein secretion pathway alterations and exosome release in astrocytes: implications for disease spreading and motor neuron pathology in amyotrophic lateral sclerosis. J Biol Chem. 2013 May 31;288(22):15699-711. doi: 10.1074/jbc.M112.425066. Epub 2013 Apr 16. PubMed PMID: 23592792; PubMed Central PMCID: PMC3668729."

[Yang 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23602540/ "Yang YM, Gupta SK, Kim KJ, Powers BE, Cerqueira A, Wainger BJ, Ngo HD, Rosowski KA, Schein PA, Ackeifi CA, Arvanites AC, Davidow LS, Woolf CJ, Rubin LL. A small molecule screen in stem-cell-derived motor neurons identifies a kinase inhibitor as a candidate therapeutic for ALS. Cell Stem Cell. 2013 Jun 6;12(6):713-26. doi: 10.1016/j.stem.2013.04.003. Epub 2013 Apr 18. PubMed PMID: 23602540; PubMed Central PMCID: PMC3707511."

[Al-Chalabi 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9817920 "Al-Chalabi A, Andersen PM, Chioza B, Shaw C, Sham PC, Robberecht W, Matthijs G, Camu W, Marklund SL, Forsgren L, Rouleau G, Laing NG, Hurse PV, Siddique T, Leigh PN, Powell JF. Recessive amyotrophic lateral sclerosis families with the D90A SOD1 mutation share a common founder: evidence for a linked protective factor. Hum Mol Genet. 1998 Dec;7(13):2045-50. PubMed PMID: 9817920."

[Rosen 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8446170 "Rosen DR, Siddique T, Patterson D, Figlewicz DA, Sapp P, Hentati A, Donaldson  D, Goto J, O'Regan JP, Deng HX, et al. Mutations in Cu/Zn superoxide dismutase gene are associated with familial amyotrophic lateral sclerosis. Nature. 1993 Mar 4;362(6415):59-62. Erratum in: Nature. 1993 Jul 22;364(6435):362. PubMed PMID: 8446170."

[Deng 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8351519 "Deng HX, Hentati A, Tainer JA, Iqbal Z, Cayabyab A, Hung WY, Getzoff ED, Hu P, Herzfeldt B, Roos RP, et al. Amyotrophic lateral sclerosis and structural defects in Cu,Zn superoxide dismutase. Science. 1993 Aug 20;261(5124):1047-51. PubMed PMID: 8351519."

[Borchelt 1994]: http://www.ncbi.nlm.nih.gov/pubmed/8058797/ "Borchelt DR, Lee MK, Slunt HS, Guarnieri M, Xu ZS, Wong PC, Brown RH Jr, Price DL, Sisodia SS, Cleveland DW. Superoxide dismutase 1 with mutations linked to familial amyotrophic lateral sclerosis possesses significant activity. Proc Natl  Acad Sci U S A. 1994 Aug 16;91(17):8292-6. PubMed PMID: 8058797; PubMed Central PMCID: PMC44592."

[Wong 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7605627 "Wong PC, Pardo CA, Borchelt DR, Lee MK, Copeland NG, Jenkins NA, Sisodia SS, Cleveland DW, Price DL. An adverse property of a familial ALS-linked SOD1 mutation causes motor neuron disease characterized by vacuolar degeneration of mitochondria. Neuron. 1995 Jun;14(6):1105-16. PubMed PMID: 7605627."

[Kawamata & Manfredi 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20367259 "Kawamata H, Manfredi G. Import, maturation, and function of SOD1 and its copper chaperone CCS in the mitochondrial intermembrane space. Antioxid Redox Signal. 2010 Nov 1;13(9):1375-84. doi: 10.1089/ars.2010.3212. Review. PubMed PMID: 20367259; PubMed Central PMCID: PMC2962758."

[Parge 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1463506 "Parge HE, Hallewell RA, Tainer JA. Atomic structures of wild-type and thermostable mutant recombinant human Cu,Zn superoxide dismutase. Proc Natl Acad  Sci U S A. 1992 Jul 1;89(13):6109-13. Erratum in: Proc Natl Acad Sci U S A 1992 Nov 15;89(22):11106. PubMed PMID: 1463506; PubMed Central PMCID: PMC49447."

[Prusiner 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22723400 "Prusiner SB. Cell biology. A unifying role for prions in neurodegenerative diseases. Science. 2012 Jun 22;336(6088):1511-3. doi: 10.1126/science.1222951. PubMed PMID: 22723400; PubMed Central PMCID: PMC3942086."

[Aguzzi & Rajendran 2009]: http://www.ncbi.nlm.nih.gov/pubmed/20064386 "Aguzzi A, Rajendran L. The transcellular spread of cytosolic amyloids, prions, and prionoids. Neuron. 2009 Dec 24;64(6):783-90. doi: 10.1016/j.neuron.2009.12.016. Review. PubMed PMID: 20064386."

[Nordlund & Oliveberg 2008]: http://www.ncbi.nlm.nih.gov/pubmed/19436494 "Nordlund A, Oliveberg M. SOD1-associated ALS: a promising system for elucidating the origin of protein-misfolding disease. HFSP J. 2008 Dec;2(6):354-64. doi: 10.2976/1.2995726. Epub 2008 Oct 14. PubMed PMID: 19436494; PubMed Central PMCID: PMC2645584."

[Ray 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15738401 "Ray SS, Nowak RJ, Brown RH Jr, Lansbury PT Jr. Small-molecule-mediated stabilization of familial amyotrophic lateral sclerosis-linked superoxide dismutase mutants against unfolding and aggregation. Proc Natl Acad Sci U S A. 2005 Mar 8;102(10):3639-44. Epub 2005 Feb 28. PubMed PMID: 15738401; PubMed Central PMCID: PMC553303."

[Mougenot 2012]: http://www.ncbi.nlm.nih.gov/pubmed/21813214 "Mougenot AL, Nicot S, Bencsik A, Morignat E, Verchère J, Lakhdar L, Legastelois S, Baron T. Prion-like acceleration of a synucleinopathy in a transgenic mouse model. Neurobiol Aging. 2012 Sep;33(9):2225-8. doi: 10.1016/j.neurobiolaging.2011.06.022. Epub 2011 Aug 3. PubMed PMID: 21813214."

[Bosco 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20953194/ "Bosco DA, Morfini G, Karabacak NM, Song Y, Gros-Louis F, Pasinelli P, Goolsby  H, Fontaine BA, Lemay N, McKenna-Yasek D, Frosch MP, Agar JN, Julien JP, Brady ST, Brown RH Jr. Wild-type and mutant SOD1 share an aberrant conformation and a common pathogenic pathway in ALS. Nat Neurosci. 2010 Nov;13(11):1396-403. doi: 10.1038/nn.2660. Epub 2010 Oct 17. PubMed PMID: 20953194; PubMed Central PMCID: PMC2967729."

[Forsberg 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20644736 "Forsberg K, Jonsson PA, Andersen PM, Bergemalm D, Graffmo KS, Hultdin M, Jacobsson J, Rosquist R, Marklund SL, Brännström T. Novel antibodies reveal inclusions containing non-native SOD1 in sporadic ALS patients. PLoS One. 2010 Jul 14;5(7):e11552. doi: 10.1371/journal.pone.0011552. PubMed PMID: 20644736; PubMed Central PMCID: PMC2904380."

[Kerman 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20111867 "Kerman A, Liu HN, Croul S, Bilbao J, Rogaeva E, Zinman L, Robertson J, Chakrabartty A. Amyotrophic lateral sclerosis is a non-amyloid disease in which extensive misfolding of SOD1 is unique to the familial form. Acta Neuropathol. 2010 Mar;119(3):335-44. doi: 10.1007/s00401-010-0646-5. Epub 2010 Jan 29. PubMed  PMID: 20111867."

[Luk 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23161999 "Luk KC, Kehm V, Carroll J, Zhang B, O'Brien P, Trojanowski JQ, Lee VM. Pathological α-synuclein transmission initiates Parkinson-like neurodegeneration  in nontransgenic mice. Science. 2012 Nov 16;338(6109):949-53. doi: 10.1126/science.1227157. PubMed PMID: 23161999; PubMed Central PMCID: PMC3552321."

[Watts 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24218576 "Watts JC, Giles K, Oehler A, Middleton L, Dexter DT, Gentleman SM, DeArmond SJ, Prusiner SB. Transmission of multiple system atrophy prions to transgenic mice. Proc Natl Acad Sci U S A. 2013 Nov 26;110(48):19555-60. doi: 10.1073/pnas.1318268110. Epub 2013 Nov 11. PubMed PMID: 24218576; PubMed Central  PMCID: PMC3845125."

[Ayers 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25262000 "Ayers JI, Fromholt S, Koch M, DeBosier A, McMahon B, Xu G, Borchelt DR. Experimental transmissibility of mutant SOD1 motor neuron disease. Acta Neuropathol. 2014 Dec;128(6):791-803. doi: 10.1007/s00401-014-1342-7. Epub 2014 Sep 28. PubMed PMID: 25262000."

[Brandner 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8552188 "Brandner S, Isenmann S, Raeber A, Fischer M, Sailer A, Kobayashi Y, Marino S,  Weissmann C, Aguzzi A. Normal host prion protein necessary for scrapie-induced neurotoxicity. Nature. 1996 Jan 25;379(6563):339-43. PubMed PMID: 8552188."

[Boillee 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16741123 "Boillée S, Yamanaka K, Lobsiger CS, Copeland NG, Jenkins NA, Kassiotis G, Kollias G, Cleveland DW. Onset and progression in inherited ALS determined by motor neurons and microglia. Science. 2006 Jun 2;312(5778):1389-92. PubMed PMID:  16741123."

[Yamanaka 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18246065/ "Yamanaka K, Chun SJ, Boillee S, Fujimori-Tonou N, Yamashita H, Gutmann DH, Takahashi R, Misawa H, Cleveland DW. Astrocytes as determinants of disease progression in inherited amyotrophic lateral sclerosis. Nat Neurosci. 2008 Mar;11(3):251-3. doi: 10.1038/nn2047. Epub 2008 Feb 3. PubMed PMID: 18246065; PubMed Central PMCID: PMC3137510."

[Kranich 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20837697 "Kranich J, Krautler NJ, Falsig J, Ballmer B, Li S, Hutter G, Schwarz P, Moos R, Julius C, Miele G, Aguzzi A. Engulfment of cerebral apoptotic bodies controls  the course of prion disease in a mouse strain-dependent manner. J Exp Med. 2010 Sep 27;207(10):2271-81. doi: 10.1084/jem.20092401. Epub 2010 Sep 13. PubMed PMID: 20837697; PubMed Central PMCID: PMC2947076."

[Sorce 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25502554 "Sorce S, Nuvolone M, Keller A, Falsig J, Varol A, Schwarz P, Bieri M, Budka H, Aguzzi A. The role of the NADPH oxidase NOX2 in prion pathogenesis. PLoS Pathog.  2014 Dec 11;10(12):e1004531. doi: 10.1371/journal.ppat.1004531. eCollection 2014  Dec. PubMed PMID: 25502554; PubMed Central PMCID: PMC4263757."

[Zhu 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25816748 "Zhu C, Herrmann US, Li B, Abakumova I, Moos R, Schwarz P, Rushing EJ, Colonna  M, Aguzzi A. Triggering receptor expressed on myeloid cells-2 is involved in prion-induced microglial activation but does not contribute to prion pathogenesis in mouse brains. Neurobiol Aging. 2015 Feb 27. pii: S0197-4580(15)00150-5. doi: 10.1016/j.neurobiolaging.2015.02.019. [Epub ahead of print] PubMed PMID: 25816748."

[Mallucci 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14593181 "Mallucci G, Dickinson A, Linehan J, Klöhn PC, Brandner S, Collinge J. Depleting neuronal PrP in prion infection prevents disease and reverses spongiosis. Science. 2003 Oct 31;302(5646):871-4. PubMed PMID: 14593181."

[Aguzzi 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23307732 "Aguzzi A, Barres BA, Bennett ML. Microglia: scapegoat, saboteur, or something  else? Science. 2013 Jan 11;339(6116):156-61. doi: 10.1126/science.1227901. Review. PubMed PMID: 23307732."

[Papadeas 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21969586 "Papadeas ST, Kraig SE, O'Banion C, Lepore AC, Maragakis NJ. Astrocytes carrying the superoxide dismutase 1 (SOD1G93A) mutation induce wild-type motor neuron degeneration in vivo. Proc Natl Acad Sci U S A. 2011 Oct 25;108(43):17803-8. doi: 10.1073/pnas.1103141108. Epub 2011 Oct 3. PubMed PMID: 21969586; PubMed Central PMCID: PMC3203804."

[Reaume 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8673102 "Reaume AG, Elliott JL, Hoffman EK, Kowall NW, Ferrante RJ, Siwek DF, Wilcox HM, Flood DG, Beal MF, Brown RH Jr, Scott RW, Snider WD. Motor neurons in Cu/Zn superoxide dismutase-deficient mice develop normally but exhibit enhanced cell death after axonal injury. Nat Genet. 1996 May;13(1):43-7. PubMed PMID: 8673102."

[Bruijn 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9743498 "Bruijn LI, Houseweart MK, Kato S, Anderson KL, Anderson SD, Ohama E, Reaume AG, Scott RW, Cleveland DW. Aggregation and motor neuron toxicity of an ALS-linked SOD1 mutant independent from wild-type SOD1. Science. 1998 Sep 18;281(5384):1851-4. PubMed PMID: 9743498."

[Saccon 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23687121 "Saccon RA, Bunton-Stasyshyn RK, Fisher EM, Fratta P. Is SOD1 loss of function  involved in amyotrophic lateral sclerosis? Brain. 2013 Aug;136(Pt 8):2342-58. doi: 10.1093/brain/awt097. Epub 2013 May 17. Review. PubMed PMID: 23687121; PubMed Central PMCID: PMC3722346."

[Haidet-Phillips 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21832997 "Haidet-Phillips AM, Hester ME, Miranda CJ, Meyer K, Braun L, Frakes A, Song S, Likhite S, Murtha MJ, Foust KD, Rao M, Eagle A, Kammesheidt A, Christensen A, Mendell JR, Burghes AH, Kaspar BK. Astrocytes from familial and sporadic ALS patients are toxic to motor neurons. Nat Biotechnol. 2011 Aug 10;29(9):824-8. doi: 10.1038/nbt.1957. PubMed PMID: 21832997; PubMed Central PMCID: PMC3170425."

[Grad 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21930926/ "Grad LI, Guest WC, Yanai A, Pokrishevsky E, O'Neill MA, Gibbs E, Semenchenko V, Yousefi M, Wishart DS, Plotkin SS, Cashman NR. Intermolecular transmission of  superoxide dismutase 1 misfolding in living cells. Proc Natl Acad Sci U S A. 2011 Sep 27;108(39):16398-403. doi: 10.1073/pnas.1102645108. Epub 2011 Sep 19. PubMed  PMID: 21930926; PubMed Central PMCID: PMC3182705."

[Collinge & Clarke 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17991853 "Collinge J, Clarke AR. A general model of prion strains and their pathogenicity. Science. 2007 Nov 9;318(5852):930-6. Review. PubMed PMID: 17991853."

[Giglione 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15197470/ "Giglione C, Boularot A, Meinnel T. Protein N-terminal methionine excision. Cell Mol Life Sci. 2004 Jun;61(12):1455-74. Review. PubMed PMID: 15197470."

[Jonsson 2004]: http://www.ncbi.nlm.nih.gov/pubmed/14534160 "Jonsson PA, Ernhill K, Andersen PM, Bergemalm D, Brännström T, Gredal O, Nilsson P, Marklund SL. Minute quantities of misfolded mutant superoxide dismutase-1 cause amyotrophic lateral sclerosis. Brain. 2004 Jan;127(Pt 1):73-88. Epub 2003 Oct 8. PubMed PMID: 14534160."

[Jonsson 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16330499 "Jonsson PA, Graffmo KS, Andersen PM, Brännström T, Lindberg M, Oliveberg M, Marklund SL. Disulphide-reduced superoxide dismutase-1 in CNS of transgenic amyotrophic lateral sclerosis models. Brain. 2006 Feb;129(Pt 2):451-64. Epub 2005 Dec 5. PubMed PMID: 16330499."

[Furukawa 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16636274 "Furukawa Y, Fu R, Deng HX, Siddique T, O'Halloran TV. Disulfide cross-linked protein represents a significant fraction of ALS-associated Cu, Zn-superoxide dismutase aggregates in spinal cords of model mice. Proc Natl Acad Sci U S A. 2006 May 2;103(18):7148-53. Epub 2006 Apr 24. PubMed PMID: 16636274; PubMed Central PMCID: PMC1447524."

[Munch 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20399791 "Münch C, Bertolotti A. Exposure of hydrophobic surfaces initiates aggregation  of diverse ALS-causing superoxide dismutase-1 mutants. J Mol Biol. 2010 Jun 11;399(3):512-25. doi: 10.1016/j.jmb.2010.04.019. Epub 2010 Apr 24. PubMed PMID:  20399791; PubMed Central PMCID: PMC2927901."

[Welker 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11274354 "Welker E, Wedemeyer WJ, Scheraga HA. A role for intermolecular disulfide bonds in prion diseases? Proc Natl Acad Sci U S A. 2001 Apr 10;98(8):4334-6. Epub 2001  Mar 27. PubMed PMID: 11274354; PubMed Central PMCID: PMC31835."

[Pan 1993]: http://www.ncbi.nlm.nih.gov/pubmed/7902575/ "Pan KM, Baldwin M, Nguyen J, Gasset M, Serban A, Groth D, Mehlhorn I, Huang Z, Fletterick RJ, Cohen FE, et al. Conversion of alpha-helices into beta-sheets features in the formation of the scrapie prion proteins. Proc Natl Acad Sci U S A. 1993 Dec 1;90(23):10962-6. PubMed PMID: 7902575; PubMed Central PMCID: PMC47901."

[Stahl 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8448158 "Stahl N, Baldwin MA, Teplow DB, Hood L, Gibson BW, Burlingame AL, Prusiner SB. Structural studies of the scrapie prion protein using mass spectrometry and amino acid sequencing. Biochemistry. 1993 Mar 2;32(8):1991-2002. PubMed PMID: 8448158."

[Canello 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18680312 "Canello T, Engelstein R, Moshel O, Xanthopoulos K, Juanes ME, Langeveld J, Sklaviadis T, Gasset M, Gabizon R. Methionine sulfoxides on PrPSc: a prion-specific covalent signature. Biochemistry. 2008 Aug 26;47(34):8866-73. doi: 10.1021/bi800801f. Epub 2008 Aug 5. PubMed PMID: 18680312."

[Holmes 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23898162/ "Holmes BB, DeVos SL, Kfoury N, Li M, Jacks R, Yanamandra K, Ouidja MO, Brodsky FM, Marasa J, Bagchi DP, Kotzbauer PT, Miller TM, Papy-Garcia D, Diamond MI. Heparan sulfate proteoglycans mediate internalization and propagation of specific proteopathic seeds. Proc Natl Acad Sci U S A. 2013 Aug 13;110(33):E3138-47. doi:  10.1073/pnas.1301440110. Epub 2013 Jul 29. PubMed PMID: 23898162; PubMed Central  PMCID: PMC3746848."

[Bruijn 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9743498 "Bruijn LI, Houseweart MK, Kato S, Anderson KL, Anderson SD, Ohama E, Reaume AG, Scott RW, Cleveland DW. Aggregation and motor neuron toxicity of an ALS-linked SOD1 mutant independent from wild-type SOD1. Science. 1998 Sep 18;281(5384):1851-4. PubMed PMID: 9743498."


