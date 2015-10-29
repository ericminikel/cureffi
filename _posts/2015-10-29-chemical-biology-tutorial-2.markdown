---
layout: post
title:  "Chemical biology tutorial 2: cheminformatics and small-molecule activity databases"
date:   2015-10-29 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from tutorial 2 in Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Paul Clemons on October 29, 2015.*

### How computers view molecules

Similarity is relative. Quantifying similarity between different molecules requires a digital representation of the molecules and a formula for quantifying difference or similarity. For some of the earliest examples of computer representations of molecules, see [[Randic 1979], [Carhart 1985]]. More recent representations include SMILES and InChI. SMILES has difficulty representing tautomers, isotopes, and a few other edge cases, so InChI is more comprehensive, but also newer (circa 2004) so there is not as much legacy support for it. ChemDraw literally uses digital representations of the *drawing*, in inches, rather than of the underlying structure: it stores coordinates and identities of atoms, and then a match table of atoms that are bonded to one another, along with stereochemical information for each bond.

Tanimoto distance only measures the distance between bit strings, it doesn't imply anything about what information is encoded in the bit string. You can generate bit strings (or "fingerprints") representing various different sets of features of molecules. A currently popular model for bit strings is extended-connectivity fingerprints (ECFP) of various diameters (for instance, ECFP4 or ECFP6) [[Rogers & Hahn 2010]].

### Assay databases

ChemBank was a project from ca. 1998-2008, capturing data from about 4,700 screens covering a total of 1.3 million unique structures. It is no longer being maintained. Now several alternatives are available. We'll discuss NIH's [BARD](https://bard.nih.gov/), which is the direct successor of ChemBank and holds all the data from the MLPCN projects, but several other databases have overlapping goals, data, and capabilities: for instance NCBI's [PubChem](https://pubchem.ncbi.nlm.nih.gov/), UCSD's [BindingDB](https://www.bindingdb.org/), UCSF's [ZINC](http://zinc.docking.org/), and EBI's [ChEMBL](https://www.ebi.ac.uk/chembl/). Collectively, these databases offer the promise of allowing one to computationally query the biological activity of compounds, rather than relying on predicted chemical properties.

As one example of how to use these resources, a phenotypic screen found a molecule that induced insulin expression in pancreatic alpha cells, and they then queried ChemBank to identify 13 molecules with similar bioactivity profiles, two of which were annotated as kinase inhibitors [[Fomina-Yadlin 2010]]. The original hit was subsequently confirmed to be a kinase inhibitor as well.

When you look at a molecule in BARD, among other things it will display a figure for 'Assays - Active vs. Tested':

![](/media/2015/10/ml162.png)

In this example, it is 32/286. But that doesn't mean the 32 are independent. BARD includes all assays, not just primary screens, so in many cases, a large fraction of the Active assays will be re-tests and secondary and counterscreens after finding the original hit, meaning that hits which do validate (this example, ML162, is now recognized as a probe) often appear to have high hit rates. If you want to know whether the molecule is a pan-assay interference compound, the Scaffold Promiscuity Analysis plug-in is more useful than just the overall active vs. tested ratio.

As you browse, you can add both compounds and assays to your Cart. Once you have everything you are interested in, you can click 'Visualize' in the Cart to generate a spreadsheet of which compounds were active in which of your assays of interest.

The 'Bio-Activity Summary' tells you everything you need to know about one molecule's performance in various assays &mdash; a table with assay details and the compound's EC<sub>50</sub> and full dose-response curves.

The 'Linked Hierarchy Visualization' uses structured assay definitions across a variety of types of annotation to let you explore your compound's activity. So for instance you can see if your compound is only hitting in luciferase-based assays, which might suggest it is just a luciferase inhibitor.

A useful tool for exploring protein-protein interaction data is [STRING](http://string-db.org/). See also [STITCH](http://stitch.embl.de/).

A more wikipedia-like interface to learning more about probes - their advantages and limitations, which negative controls to use, etc. - is [ChemicalProbes.org](http://www.chemicalprobes.org/).




[Randic 1979]: http://dx.doi.org/10.1016/0009-2614(79)87030-X "Randić, M., & Wilkins, C. L. (1979). On a graph theoretical basis for ordering of structures. Chemical Physics Letters, 63(2), 332-336."

[Carhart 1985]: http://dx.doi.org/10.1021/ci00046a002 "Carhart, R. E., Smith, D. H., & Venkataraghavan, R. (1985). Atom pairs as molecular features in structure-activity studies: definition and applications. Journal of Chemical Information and Computer Sciences, 25(2), 64-73."

[Rogers & Hahn 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20426451 "Rogers D, Hahn M. Extended-connectivity fingerprints. J Chem Inf Model. 2010 May 24;50(5):742-54. doi: 10.1021/ci100050t. PubMed PMID: 20426451."

[Fomina-Yadlin 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20696901 "Fomina-Yadlin D, Kubicek S, Walpita D, Dancik V, Hecksher-Sørensen J, Bittker  JA, Sharifnia T, Shamji A, Clemons PA, Wagner BK, Schreiber SL. Small-molecule inducers of insulin expression in pancreatic alpha-cells. Proc Natl Acad Sci U S  A. 2010 Aug 24;107(34):15099-104. doi: 10.1073/pnas.1010018107. Epub 2010 Aug 9.  PubMed PMID: 20696901; PubMed Central PMCID: PMC2930573."




