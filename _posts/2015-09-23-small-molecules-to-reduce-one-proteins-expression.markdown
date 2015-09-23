---
layout: post
title:  "Small molecules to reduce one protein's expression"
date:   2015-09-23 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2015/09/targeting-gene-expression-thumbnail.png
summary200: "Suppose you want a drug to specifically reduce one protein's expression, while affecting every other protein as little as possible. Are there any precedents or known strategies for achieving this?"
---

### introduction

This post will explore strategies to use small molecules to reduce the expression of one protein, at any point up to and including its translation. By way of introduction, it's important to discuss why such strategies might be of interest.

My protein of interest is the prion protein, PrP. Reduction of PrP expression has an extremely strong proof of principle as a therapeutic strategy. Knockout mice are resistant to prion disease [[Bueler 1993]], and incubation time is inversely correlated with PrP expression level all the way from heterozygous knockouts to 10x overexpressers [[Bueler 1994], [Fischer 1996]]. Cre-mediated conditional knockout of PrP around the time of first symptoms can reverse prion disease [[Mallucci 2003]], and conditional downregulation to ~20% of wild-type levels using a Tet-off system can dramatically delay prion disease [[Safar 2005]]. So: if you can shut off production of the the protein, you can stop the disease. But how to achieve that?

In a [recent post about thalidomide](/2015/08/24/thalidomides-renaissance/) I discussed strategies for targeting one protein for degradation *after* it has been translated and has folded. So why not just focus on those strategies? There are a few reasons.

First, the strategies discussed in that post all require having a good small molecule ligand for the protein of interest to begin with. For PrP, it's [not clear](/2015/07/22/reports-of-small-molecule-prpc-ligands/) whether we have such a ligand available. The same is true for many proteins implicated in human disease.

Second, the strategy of bringing your protein of interest into proximity with an E3 ubiquitin ligase, is probably only relevant to cytosolic proteins. PrP is an extracellular protein, GPI-anchored to the plasma membrane and localized to the cell surface via the secretory pathway. (The alternative strategy for secretory pathway proteins may be adamantyl conjugation to attract BiP. There are now some promising results for using this strategy to induce androgen receptor degradation [[Gustafson 2015]], so I think it is worth pursuing &mdash; if a ligand can be found.)

A third issue, which someone pointed out to me recently, is that even if you have a small molecule ligand for your protein, it probably binds to the protein in its natively folded state. For a disease, such as prion disease, where the problem is one of protein aggregation, do we know that individual PrP molecules reach a fully folded PrP<sup>C</sup> state before being recruited to PrP<sup>Sc</sup>? Or is it possible that some nascent PrP molecules never even fold correctly in the first place before becoming PrP<sup>Sc</sup>? The fact that GdnHCl is useful in getting PrP to convert to a PrP<sup>Sc</sup>-like conformation in various *in vitro* paradigms [[Kocisko 1994], [Atarashi 2011]] leads us to consider the possibility that any PrP molecules that never reach their full native fold may be preferentially converted to PrP<sup>Sc</sup>. I speculate that this might be particularly true in genetic prion disease if the pathogenic mutation causes PrP to take longer to fold &mdash; though mutant PrPs can reach a fold nearly indistinguishable from the native fold of wild-type PrP [[Lee 2010]], I don't know if the kinetics of their folding have been extensively studied.

And finally, antibodies to some epitopes of PrP's globular domain [can be toxic](/2015/09/21/the-n-terminal-toxicity-hypothesis/) [[Sonati 2013]]. It is not yet known whether small molecules that bind PrP might have similar effects, and I certainly still think that small molecule binders of PrP<sup>C</sup> are worth pursuing, but the possibility of epitope-specific toxicity is at least one reason for considering alternative approaches in tandem.

To be clear, loads of drugs have effects on gene expression, and there exist loads of data about this &mdash; that's what [LINCS](http://www.lincscloud.org/) is all about. In some instances, therapeutic applications of compounds have been suggested specifically on the basis of their effects on transcription &mdash; examples, such as celastrol, are discussed in [this lecture](/2015/09/15/chemical-biology-04/) and [this one](/2015/09/22/chemical-biology-06/). But this post is about what to do if, like me, you have exactly one protein whose abundance you want to alter, while affecting everything else as little as possible. To figure out if there are ways of specifically altering one protein's expression level up to and including translation, Sonia and I both looked to the literature and sat down to brainstorm with our colleagues at the Broad Institute to see if they knew of any good examples. Here's everything we found, broken down by the process being targeted.

### transcription

![](/media/2015/09/targeting-transcription.png)

*Above: some small molecules that affect transcription through epigenetic changes or transcription factor destruction.*

We didn't find any clear examples of small molecules *specifically* targeting one gene or a few genes' transcription. Often, strategies for affecting transcriptional regulation are epigenetic &mdash; say, targeting chromatin state with HDAC inhibitors, or BET bromodomain inhibitors [[Filippakopoulos 2010], [Matzuk 2012]], or, rather than inhibiting an epigenetic protein, targeting it for destruction [[Winter 2015]]. Then there is the strategy of targeting transcription factors for destruction ([lenalidomide's mechanism](/2015/08/24/thalidomides-renaissance/)). All of these approaches will affect expression levels of tons of different genes. As far as I can tell, such molecules are being pursued therapeutically in instances where dysregulation of the transcription factor or epigenetic regulator itself is a cause of disease, rather than just to get at one gene that happens to be regulated by them.

One slightly odd example of a more targeted attempt is the effort to disrupt HIV Tat protein's interaction with the HIV TAR RNA stem-loop. Sonia came across a screen of tripeptides for the ability to bind the HIV-1 TAR RNA stem-loop [[Hwang 1999]]. Evidently the HIV Tat protein must bind this stem-loop structure, and Tat is important for the processivitity (ability to continue transcribing once it has started) of the RNA-dependent RNA polymerase that makes HIV mRNA from HIV genomic RNA. After screening a combinatorial library of 24,389 tripeptides against TAR, they found a few with sub-micromolar K<sub>D</sub>. One of these was shown to inhibit expression of a reporter gene with an EC<sub>50</sub> of about 50 nM. All of those results sound awesome, but there must be some catch or else this would be a drug by now. Though they counterscreened for cytotoxicity, the compound was only incubated with the cells for 4 hours, so maybe it later turned out that it was incredibly non-specific and just killed transcription globally or something. If anyone knows the epilogue on these tripeptides I would be curious to hear it.

### splicing

![](/media/2015/09/targeting-splicing.png)

*Above: some small molecules that affect splicing.*

Therapeutic alteration of splicing is a sufficiently hot area that there was a whole review on it a few years ago [[Spitali & Aartsma-Rus 2012]]. Almost all of that review is about antisense oligonucleotides, which are not small molecules and are thus beyond the scope of this blog post. The only small molecule example mentioned therein is kinetin.

Kinetin is a natural product marketed as an active ingredient of anti-aging creams &mdash; you can even [buy it on Amazon Prime](http://amzn.com/B0030O725Y). In a screen of just 1,040 known bioactives, kinetin was found to restore proper splicing of *IKBKAP*, the gene disrupted in familial dysautonomia (FD) [[Slaugenhaupt 2004]]. Sue Slaugenhaupt later filed a patent on the use of kinetin and related analogues to treat FD [[US20150111902](https://www.google.com/patents/US20150111902)]. The compound has been shown to improve splicing in a mouse model of FD [[Shetty 2011]] and has gone to clinical trials [[Axelrod 2011], [NCT02274051](https://clinicaltrials.gov/ct2/show/NCT02274051)] but the mechanism of action is apparently still unknown.

Recently there have been two breakthroughs in finding small molecules to alter splicing of *SMN2* to treat spinal muscular atrophy. I have discussed these in greater detail in [this post](/2015/09/22/drugging-the-spliceosome-to-treat-sma/). In the first instance [[Naryshkin 2014]], the mechanism was not identified. The latter compound was shown to stabilize a transient complex of the U1 snRNP, the U1C protein, and the nascent mRNA during splicing.

How specific are these compounds? Both studies performed RNA-seq oncultured cells treated with their compounds to see how many genes were differentially expressed in the presence of their compounds. The first study found only 12 genes whose expression was either increased by &ge;2x or decreased to &le;0.5x in the presence of the compound [[Naryshkin 2014]]. The other found 175 genes differentially expressed at this same threshold, plus 39 differential splicing events [[Palacino 2015]]. They explored the sequence motif required for a splice site to be affected by the compound, and evidently the affected splice sites were enriched for an unusual nGA sequence motif present in *SMN2* exon 7 but only 2.6% of all human exons. So that fact that *SMN2* happens to have a relatively rare splice site sequence may be part of what allowed this small molecule to be relatively specific, affecting its splicing without disturbing too many other genes. The compound (Novartis LMI-070) is now in a Phase 1 clinical trial for SMA [[NCT02268552](https://clinicaltrials.gov/ct2/show/NCT02268552)], so we'll soon know how well-tolerated it proves to be in humans.

Kinetin and LMI-070 are both intended to restore expression, of a mutated or pseudogene transcript respectively. We didn't find any examples of drugs targeting splicing specifically to *disrupt* one protein's expression. But looking at Figure 3A of [[Palacino 2015]], you can see there are some transcripts whose expression in log2 space drops below the -5 mark, implying a >97% decrease in expression upon treatment with LMI-070. In this case, where the goal is to change *SMN2* splicing, those are considered off-target effects. But if one of those transcripts happened to encode the protein that causes your gain-of-function disease, then you'd have quite a potent drug candidate on your hands. Thus I infer from this example that in principle, it may be possible to knock down a gene of interest by targeting its splicing.

Just a note, these few examples discussed above are not a complete list. A series of other natural products and synthetic derivatives are known to inhibit splicing factor 3b (encoded by *SF3B1*), with possible relevance to treatment of some cancers [[Kotake 2007], [Kaida 2007], [Albert 2009]], and there are several other splice-inhibiting compounds reviewed in [[Bonnal 2012]].

### mRNA stability

Obviously, there are non-small-molecule approaches for targeting mRNA &mdash; siRNA and antisense oligonucleotides can both induce mRNA destruction. In addition, the reason that some of the splice-modulating drugs discussed above cause a decrease in expression of some transcripts might be that they cause inclusion of cryptic non-conserved exons that contain stop codons, thus triggering nonsense-mediated decay, so these might indirectly affect mRNA stability. However, we did not find any good examples of small molecules that bind directly to an mRNA and cause it to be degraded. In fact, one review [[Thomas & Hergenrother 2008]] specifically states that there are no examples in this area.

### translation initiation

![](/media/2015/09/targeting-translation.png)

*Above: some small molecules that target translation.*

The first concept we ran across is that of [riboswitches](https://en.wikipedia.org/wiki/Riboswitch): structures in RNA that evolved to bind small molecules. Apparently these are prevalent in bacteria as mechanisms for small molecule metabolites to regulate their own production pathways, and some of them are now believed to be the targets of both synthetic and natural product antibiotics such as roseoflavin [reviewed in [Blount & Breaker 2006], [Serganov & Patel 2007]]. Though this is very cool, it doesn't yet seem to amount to a more general proof of principle that you can target a specific RNA with a small molecule. After all, the whole strategy is predicated on your target of interest already having a binding pocket, which won't usually be the case. And I am not aware of any riboswitches encoded in the human genome.

Another strategy for targeting translation initiation is to go after the initiation factors themselves rather than the mRNA. One study specifically developed a FRET screen to try to prevent formation of a productive translation initiation complex involving eIF4GI and eIF4E [[Cencic 2011]] \(see background in [molecular biology 27](/2014/11/21/molecular-biology-27/)\). The paper doesn't go into a ton of detail about why eIF4E would be a good drug target. They just note in the introduction that disruption of the eIF4F complex, of which eIF4E is part, has "modest effects" on global translation rates and disproportionate effects on a few mRNAs, particularly those with more secondary structure. Mice tolerated 15 mg/kg/day of their lead compound, 4E1RCat, for 5 days, so it at least wasn't acutely toxic. They tested it as a cancer treatment and reported that it was ineffective alone but had some synergy with doxorubicin. I would be interested to see some ribosome profling or proteomics data on cells treated with this compound to see how specific its effects are.

Novartis once did a screen for inhibitors of IRES-mediated translation [[Didiot 2013]]. IRES are internal ribosome entry sites, structures in mRNA which allow translation to begin while bypassing most of the cell's usual translation initiation machinery (see [molecular biology 27](/2014/11/21/molecular-biology-27/) for background). Because many viruses, and apparently the oncogene c-Myc, use IRES, while most eukaryotic transcripts do not, this might be a good drug target. They found two hits, cymarin and somalin, which had about 20-fold selectivity for inhibiting IRES over regular cap-dependent translation (for instance, somalin inhibited cap-dependent translation with an EC<sub>50</sub> of 2 &mu;M but inhibited IRES-dependent translation with an EC<sub>50</sub> of 100 nM). That's probably nowhere near the specificity you'd want for a drug, but maybe it's a start. The compounds killed c-Myc-dependent cancer cell lines, suggesting possible therapeutic utility. I would be interested to know if Novartis is still exploring analogues of these compounds or, generally, pursuing this target at all.

The "[iron response element](https://en.wikipedia.org/wiki/Iron_response_element)", discovered decades ago [[Hentze 1987]], is a well-defined stem-loop structure in the 5'UTR of some mRNAs which iron response protein 1 (IRP1) binds in order to regulate translation. There have been a few efforts to find ways of targeting iron response elements' activity, whether by directly binding the mRNA or through indirect mechanisms. One screen found a compound that appeared to increase IRP1 interactions with a iron response element, but the direct mechanism of action was not clarified [[Zimmer 2008]]. Another group fused the 5'UTR of *APP* mRNA to a luciferase open reading frame, and screened for compounds that would reduce translation of luciferase. They reported several hits, at least one of which, JTR-009, was claimed to directly bind the iron response element in the mRNA [[Bandyopadhyay 2006], [Bandyopadhyay 2013]]. 

As an aside and a cautionary tale about screening, a colleague also pointed us to an interesting story where a group had tried to screen for compounds that increase translation [[Shin 2014]]. Their hits, hymenialdisine and isohymenialdisine, turned out to be inhibitors of translational repression by PKR &mdash; evidently, the addition of mRNA to *in vitro* extracts for screening caused this translational repression response, and the hits were simply counteracting that response. 

### discussion

If you want to target one gene's expression with a small molecule, the better proofs of principle seem to be for going after splicing or maybe translation initiation. We didn't find very good of examples targeting transcription or mRNA stability. Maybe we just missed something in the literature &mdash; leave a comment to let us know.

If there's a generalizable lesson from the examples reviewed above, it might be that if you want to target one gene's expression, you need there to be something special about that gene. A rare splice site sequence, or a rare translation initiation mechanism, maybe a rare RNA secondary structure, something that your gene of interest has that relatively few genes in the human genome have. To the extend that any of the examples reviewed above have demonstrated specificity, it's through targeting that which is rare. And even then, none of the examples above seem to have specificity anywhere near that of small molecules directly targeting proteins of interest.

With this in mind, an upcoming post will discuss PrP's life from transcription initiation to translation, and whether there is anything rare or unique about it that could be targeted to reduce its expression.


[Hwang 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10557261/ "Hwang S, Tamilarasu N, Ryan K, Huq I, Richter S, Still WC, Rana TM. Inhibition of gene expression in human cells through small molecule-RNA interactions. Proc Natl Acad Sci U S A. 1999 Nov 9;96(23):12997-3002. PubMed PMID: 10557261; PubMed  Central PMCID: PMC23888."

[Didiot 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23150017 "Didiot MC, Hewett J, Varin T, Freuler F, Selinger D, Nick H, Reinhardt J, Buckler A, Myer V, Schuffenhauer A, Guy CT, Parker CN. Identification of cardiac glycoside molecules as inhibitors of c-Myc IRES-mediated translation. J Biomol Screen. 2013 Apr;18(4):407-19. doi: 10.1177/1087057112466698. Epub 2012 Nov 13. PubMed PMID: 23150017."

[Bill 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24599954 "Bill A, Hall ML, Borawski J, Hodgson C, Jenkins J, Piechon P, Popa O, Rothwell C, Tranter P, Tria S, Wagner T, Whitehead L, Gaither LA. Small molecule-facilitated degradation of ANO1 protein: a new targeting approach for anticancer therapeutics. J Biol Chem. 2014 Apr 18;289(16):11029-41. doi: 10.1074/jbc.M114.549188. Epub 2014 Mar 5. PubMed PMID: 24599954; PubMed Central PMCID: PMC4036244."

[Kondo 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25555158/ "Kondo Y, Oubridge C, van Roon AM, Nagai K. Crystal structure of human U1 snRNP, a small nuclear ribonucleoprotein particle, reveals the mechanism of 5' splice site recognition. Elife. 2015 Jan 2;4. doi: 10.7554/eLife.04986. PubMed PMID: 25555158; PubMed Central PMCID: PMC4383343."

[Palacino 2015]: http://www.ncbi.nlm.nih.gov/pubmed/26030728 "Palacino J, Swalley SE, Song C, Cheung AK, Shu L, Zhang X, Van Hoosear M, Shin Y, Chin DN, Keller CG, Beibel M, Renaud NA, Smith TM, Salcius M, Shi X, Hild M, Servais R, Jain M, Deng L, Bullock C, McLellan M, Schuierer S, Murphy L, Blommers MJ, Blaustein C, Berenshteyn F, Lacoste A, Thomas JR, Roma G, Michaud GA, Tseng BS, Porter JA, Myer VE, Tallarico JA, Hamann LG, Curtis D, Fishman MC, Dietrich WF, Dales NA, Sivasankaran R. SMN2 splice modulators enhance U1-pre-mRNA association and rescue SMA mice. Nat Chem Biol. 2015 Jul;11(7):511-7. doi: 10.1038/nchembio.1837. Epub 2015 Jun 1. PubMed PMID: 26030728."

[Wills 1992]: https://www.ncbi.nlm.nih.gov/pubmed/1296103 "Wills PR. Potential pseudoknots in the PrP-encoding mRNA. J Theor Biol. 1992 Dec 21;159(4):523-7. PubMed PMID: 1296103."

[Barrette 2001]: https://www.ncbi.nlm.nih.gov/pubmed/11160898 "Barrette I, Poisson G, Gendron P, Major F. Pseudoknots in prion protein mRNAs  confirmed by comparative sequence analysis and pattern searching. Nucleic Acids Res. 2001 Feb 1;29(3):753-8. PubMed PMID: 11160898; PubMed Central PMCID: PMC30388."

[Wahl 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19239890 "Wahl MC, Will CL, Lührmann R. The spliceosome: design principles of a dynamic  RNP machine. Cell. 2009 Feb 20;136(4):701-18. doi: 10.1016/j.cell.2009.02.009. Review. PubMed PMID: 19239890."

[Murchie & Davis 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15095977 "Murchie AI, Davis B, Isel C, Afshar M, Drysdale MJ, Bower J, Potter AJ, Starkey ID, Swarbrick TM, Mirza S, Prescott CD, Vaglio P, Aboul-ela F, Karn J. Structure-based drug design targeting an inactive RNA conformation: exploiting the flexibility of HIV-1 TAR RNA. J Mol Biol. 2004 Feb 20;336(3):625-38. PubMed PMID: 15095977."

[Shin 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24513115 "Shin U, Williams DE, Kozakov D, Hall DR, Beglov D, Vajda S, Andersen RJ, Pelletier J. Stimulators of translation identified during a small molecule screening campaign. Anal Biochem. 2014 Feb 15;447:6-14. PubMed PMID: 24513115; PubMed Central PMCID: PMC3943918."

[Spitali & Aartsma-Rus 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22424220 "Spitali P, Aartsma-Rus A. Splice modulating therapies for human disease. Cell. 2012 Mar 16;148(6):1085-8. doi: 10.1016/j.cell.2012.02.014. Review. PubMed PMID:  22424220."

[Lee & Lee 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20829789 "Lee BH, Lee MJ, Park S, Oh DC, Elsasser S, Chen PC, Gartner C, Dimova N, Hanna J, Gygi SP, Wilson SM, King RW, Finley D. Enhancement of proteasome activity by a small-molecule inhibitor of USP14. Nature. 2010 Sep 9;467(7312):179-84. doi: 10.1038/nature09299. PubMed PMID: 20829789; PubMed Central PMCID: PMC2939003."

[Winter 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25999370 "Winter GE, Buckley DL, Paulk J, Roberts JM, Souza A, Dhe-Paganon S, Bradner JE. DRUG DEVELOPMENT. Phthalimide conjugation as a strategy for in vivo target protein degradation. Science. 2015 Jun 19;348(6241):1376-81. doi: 10.1126/science.aab1433. Epub 2015 May 21. PubMed PMID: 25999370."

[Cencic 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21191102 "Cencic R, Hall DR, Robert F, Du Y, Min J, Li L, Qui M, Lewis I, Kurtkaya S, Dingledine R, Fu H, Kozakov D, Vajda S, Pelletier J. Reversing chemoresistance by small molecule inhibition of the translation initiation complex eIF4F. Proc Natl  Acad Sci U S A. 2011 Jan 18;108(3):1046-51. doi: 10.1073/pnas.1011477108. Epub 2010 Dec 29. Erratum in: Proc Natl Acad Sci U S A. 2011 Apr 19;108(16):6689. PubMed PMID: 21191102; PubMed Central PMCID: PMC3024666."

[Gustafson 2015]: http://www.ncbi.nlm.nih.gov/pubmed/26083457 "Gustafson JL, Neklesa TK, Cox CS, Roth AG, Buckley DL, Tae HS, Sundberg TB, Stagg DB, Hines J, McDonnell DP, Norris JD, Crews CM. Small-Molecule-Mediated Degradation of the Androgen Receptor through Hydrophobic Tagging. Angew Chem Int  Ed Engl. 2015 Aug 10;54(33):9659-62. doi: 10.1002/anie.201503720. Epub 2015 Jun 17. PubMed PMID: 26083457; PubMed Central PMCID: PMC4547777."

[Lee 2010]: http://www.ncbi.nlm.nih.gov/pubmed/19927125 "Lee S, Antony L, Hartmann R, Knaus KJ, Surewicz K, Surewicz WK, Yee VC. Conformational diversity in prion protein variants influences intermolecular beta-sheet formation. EMBO J. 2010 Jan 6;29(1):251-62. doi: 10.1038/emboj.2009.333. Epub 2009 Nov 19. PubMed PMID: 19927125; PubMed Central PMCID: PMC2808380."

[Sakaguchi 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8606772 "Sakaguchi S, Katamine S, Nishida N, Moriuchi R, Shigematsu K, Sugimoto T, Nakatani A, Kataoka Y, Houtani T, Shirabe S, Okada H, Hasegawa S, Miyamoto T, Noda T. Loss of cerebellar Purkinje cells in aged mice homozygous for a disrupted PrP gene. Nature. 1996 Apr 11;380(6574):528-31. PubMed PMID: 8606772."

[Nishida 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10378511/ "Nishida N, Tremblay P, Sugimoto T, Shigematsu K, Shirabe S, Petromilli C, Erpel SP, Nakaoke R, Atarashi R, Houtani T, Torchia M, Sakaguchi S, DeArmond SJ,  Prusiner SB, Katamine S. A mouse prion protein transgene rescues mice deficient for the prion protein gene from purkinje cell degeneration and demyelination. Lab Invest. 1999 Jun;79(6):689-97. PubMed PMID: 10378511."

[Moore 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10525406/ "Moore RC, Lee IY, Silverman GL, Harrison PM, Strome R, Heinrich C, Karunaratne A, Pasternak SH, Chishti MA, Liang Y, Mastrangelo P, Wang K, Smit AF, Katamine S, Carlson GA, Cohen FE, Prusiner SB, Melton DW, Tremblay P, Hood LE, Westaway D. Ataxia in prion protein (PrP)-deficient mice is associated with upregulation of the novel PrP-like protein doppel. J Mol Biol. 1999 Oct 1;292(4):797-817. PubMed  PMID: 10525406."

[Li 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10930132 "Li A, Sakaguchi S, Atarashi R, Roy BC, Nakaoke R, Arima K, Okimura N, Kopacek  J, Shigematsu K. Identification of a novel gene encoding a PrP-like protein expressed as chimeric transcripts fused to PrP exon 1/2 in ataxic mouse line with a disrupted PrP gene. Cell Mol Neurobiol. 2000 Oct;20(5):553-67. PubMed PMID: 10930132."

[Silverman 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10842180 "Silverman GL, Qin K, Moore RC, Yang Y, Mastrangelo P, Tremblay P, Prusiner SB, Cohen FE, Westaway D. Doppel is an N-glycosylated, glycosylphosphatidylinositol-anchored protein. Expression in testis and ectopic production in the brains of Prnp(0/0) mice predisposed to Purkinje cell loss. J Biol Chem. 2000 Sep 1;275(35):26834-41. PubMed PMID: 10842180."

[Rossi 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11179214/ "Rossi D, Cozzio A, Flechsig E, Klein MA, Rülicke T, Aguzzi A, Weissmann C. Onset of ataxia and Purkinje cell loss in PrP null mice inversely correlated with Dpl level in brain. EMBO J. 2001 Feb 15;20(4):694-702. PubMed PMID: 11179214; PubMed Central PMCID: PMC145426."

[Moore 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11734625/ "Moore RC, Mastrangelo P, Bouzamondo E, Heinrich C, Legname G, Prusiner SB, Hood L, Westaway D, DeArmond SJ, Tremblay P. Doppel-induced cerebellar degeneration in transgenic mice. Proc Natl Acad Sci U S A. 2001 Dec 18;98(26):15288-93. Epub 2001 Dec 4. PubMed PMID: 11734625; PubMed Central PMCID: PMC65022."

[Sakaguchi 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7494265 "Sakaguchi S, Katamine S, Shigematsu K, Nakatani A, Moriuchi R, Nishida N, Kurokawa K, Nakaoke R, Sato H, Jishage K, et al. Accumulation of proteinase K-resistant prion protein (PrP) is restricted by the expression level of normal PrP in mice inoculated with a mouse-adapted strain of the Creutzfeldt-Jakob disease agent. J Virol. 1995 Dec;69(12):7586-92. PubMed PMID: 7494265; PubMed Central PMCID: PMC189697."

[Matzuk 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22901802 "Matzuk MM, McKeown MR, Filippakopoulos P, Li Q, Ma L, Agno JE, Lemieux ME, Picaud S, Yu RN, Qi J, Knapp S, Bradner JE. Small-molecule inhibition of BRDT for male contraception. Cell. 2012 Aug 17;150(4):673-84. PubMed PMID: 22901802; PubMed Central PMCID: PMC3420011."

[Winter 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25999370 "Winter GE, Buckley DL, Paulk J, Roberts JM, Souza A, Dhe-Paganon S, Bradner JE. DRUG DEVELOPMENT. Phthalimide conjugation as a strategy for in vivo target protein degradation. Science. 2015 Jun 19;348(6241):1376-81. doi: 10.1126/science.aab1433. Epub 2015 May 21. PubMed PMID: 25999370."

[Filippakopoulos 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20871596 "Filippakopoulos P, Qi J, Picaud S, Shen Y, Smith WB, Fedorov O, Morse EM, Keates T, Hickman TT, Felletar I, Philpott M, Munro S, McKeown MR, Wang Y, Christie AL, West N, Cameron MJ, Schwartz B, Heightman TD, La Thangue N, French CA, Wiest O, Kung AL, Knapp S, Bradner JE. Selective inhibition of BET bromodomains. Nature. 2010 Dec 23;468(7327):1067-73. doi: 10.1038/nature09504. Epub 2010 Sep 24. PubMed PMID: 20871596; PubMed Central PMCID: PMC3010259."

[Slaugenhaupt 2004]: http://www.ncbi.nlm.nih.gov/pubmed/14709595 "Slaugenhaupt SA, Mull J, Leyne M, Cuajungco MP, Gill SP, Hims MM, Quintero F,  Axelrod FB, Gusella JF. Rescue of a human mRNA splicing defect by the plant cytokinin kinetin. Hum Mol Genet. 2004 Feb 15;13(4):429-36. Epub 2004 Jan 6. PubMed PMID: 14709595."

[Axelrod 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21775922/ "Axelrod FB, Liebes L, Gold-Von Simson G, Mendoza S, Mull J, Leyne M, Norcliffe-Kaufmann L, Kaufmann H, Slaugenhaupt SA. Kinetin improves IKBKAP mRNA splicing in patients with familial dysautonomia. Pediatr Res. 2011 Nov;70(5):480-3. doi: 10.1038/pr.2011.705. PubMed PMID: 21775922; PubMed Central  PMCID: PMC3189334."

[Shetty 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21821670 "Shetty RS, Gallagher CS, Chen YT, Hims MM, Mull J, Leyne M, Pickel J, Kwok D,  Slaugenhaupt SA. Specific correction of a splice defect in brain by nutritional supplementation. Hum Mol Genet. 2011 Nov 1;20(21):4093-101. doi: 10.1093/hmg/ddr333. Epub 2011 Aug 5. PubMed PMID: 21821670; PubMed Central PMCID: PMC3188989."

[Naryshkin 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25104390 "Naryshkin NA, Weetall M, Dakka A, Narasimhan J, Zhao X, Feng Z, Ling KK, Karp  GM, Qi H, Woll MG, Chen G, Zhang N, Gabbeta V, Vazirani P, Bhattacharyya A, Furia B, Risher N, Sheedy J, Kong R, Ma J, Turpoff A, Lee CS, Zhang X, Moon YC, Trifillis P, Welch EM, Colacino JM, Babiak J, Almstead NG, Peltz SW, Eng LA, Chen KS, Mull JL, Lynes MS, Rubin LL, Fontoura P, Santarelli L, Haehnke D, McCarthy KD, Schmucki R, Ebeling M, Sivaramakrishnan M, Ko CP, Paushkin SV, Ratni H, Gerlach I, Ghosh A, Metzger F. Motor neuron disease. SMN2 splicing modifiers improve motor function and longevity in mice with spinal muscular atrophy. Science. 2014 Aug 8;345(6197):688-93. doi: 10.1126/science.1250127. PubMed PMID:  25104390."

[Hajdin 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23503844 "Hajdin CE, Bellaousov S, Huggins W, Leonard CW, Mathews DH, Weeks KM. Accurate SHAPE-directed RNA secondary structure modeling, including pseudoknots. Proc Natl Acad Sci U S A. 2013 Apr 2;110(14):5498-503. doi: 10.1073/pnas.1219988110. Epub 2013 Mar 15. PubMed PMID: 23503844; PubMed Central PMCID: PMC3619282."

[Blount & Breaker 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17160062 "Blount KF, Breaker RR. Riboswitches as antibacterial drug targets. Nat Biotechnol. 2006 Dec;24(12):1558-64. Review. PubMed PMID: 17160062."

[Bandyopadhyay 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16928984 "Bandyopadhyay S, Ni J, Ruggiero A, Walshe K, Rogers MS, Chattopadhyay N, Glicksman MA, Rogers JT. A high-throughput drug screen targeted to the 5'untranslated region of Alzheimer amyloid precursor protein mRNA. J Biomol Screen. 2006 Aug;11(5):469-80. Epub 2006 Apr 28. PubMed PMID: 16928984."

[Sonati 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23903654 "Sonati T, Reimann RR, Falsig J, Baral PK, O'Connor T, Hornemann S, Yaganoglu S, Li B, Herrmann US, Wieland B, Swayampakula M, Rahman MH, Das D, Kav N, Riek R, Liberski PP, James MN, Aguzzi A. The toxicity of antiprion antibodies is mediated by the flexible tail of the prion protein. Nature. 2013 Sep 5;501(7465):102-6. doi: 10.1038/nature12402. Epub 2013 Jul 31. PubMed PMID: 23903654."

[Thomas & Hergenrother 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18361529 "Thomas JR, Hergenrother PJ. Targeting RNA with small molecules. Chem Rev. 2008 Apr;108(4):1171-224. doi: 10.1021/cr0681546. Epub 2008 Mar 25. Review. PubMed PMID: 18361529."

[Bandyopadhyay 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23935819/ "Bandyopadhyay S, Cahill C, Balleidier A, Huang C, Lahiri DK, Huang X, Rogers JT. Novel 5' untranslated region directed blockers of iron-regulatory protein-1 dependent amyloid precursor protein translation: implications for down syndrome and Alzheimer's disease. PLoS One. 2013 Jul 31;8(7):e65978. doi: 10.1371/journal.pone.0065978. Print 2013. PubMed PMID: 23935819; PubMed Central PMCID: PMC3729844."

[Fischer 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8635458 "Fischer M, Rülicke T, Raeber A, Sailer A, Moser M, Oesch B, Brandner S, Aguzzi A, Weissmann C. Prion protein (PrP) with amino-proximal deletions restoring susceptibility of PrP knockout mice to scrapie. EMBO J. 1996 Mar 15;15(6):1255-64. PubMed PMID: 8635458; PubMed Central PMCID: PMC450028."

[Bueler 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8100741 "Büeler H, Aguzzi A, Sailer A, Greiner RA, Autenried P, Aguet M, Weissmann C. Mice devoid of PrP are resistant to scrapie. Cell. 1993 Jul 2;73(7):1339-47. PubMed PMID: 8100741."

[Bueler 1994]: http://www.ncbi.nlm.nih.gov/pubmed/8790598 "Büeler H, Raeber A, Sailer A, Fischer M, Aguzzi A, Weissmann C. High prion and PrPSc levels but delayed onset of disease in scrapie-inoculated mice heterozygous for a disrupted PrP gene. Mol Med. 1994 Nov;1(1):19-30. PubMed PMID: 8790598; PubMed Central PMCID: PMC2229922."

[Mallucci 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14593181 "Mallucci G, Dickinson A, Linehan J, Klöhn PC, Brandner S, Collinge J. Depleting neuronal PrP in prion infection prevents disease and reverses spongiosis. Science. 2003 Oct 31;302(5646):871-4. PubMed PMID: 14593181."

[Safar 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16186247 "Safar JG, DeArmond SJ, Kociuba K, Deering C, Didorenko S, Bouzamondo-Bernstein E, Prusiner SB, Tremblay P. Prion clearance in bigenic mice. J Gen Virol. 2005 Oct;86(Pt 10):2913-23. PubMed PMID: 16186247."

[Kocisko 1994]: http://www.ncbi.nlm.nih.gov/pubmed/7913989 "Kocisko DA, Come JH, Priola SA, Chesebro B, Raymond GJ, Lansbury PT, Caughey B. Cell-free formation of protease-resistant prion protein. Nature. 1994 Aug 11;370(6489):471-4. PubMed PMID: 7913989."

[Atarashi 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21278748 "Atarashi R, Satoh K, Sano K, Fuse T, Yamaguchi N, Ishibashi D, Matsubara T, Nakagaki T, Yamanaka H, Shirabe S, Yamada M, Mizusawa H, Kitamoto T, Klug G, McGlade A, Collins SJ, Nishida N. Ultrasensitive human prion detection in cerebrospinal fluid by real-time quaking-induced conversion. Nat Med. 2011 Feb;17(2):175-8. doi: 10.1038/nm.2294. Epub 2011 Jan 30. PubMed PMID: 21278748."

[Serganov & Patel 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17846637 "Serganov A, Patel DJ. Ribozymes, riboswitches and beyond: regulation of gene expression without proteins. Nat Rev Genet. 2007 Oct;8(10):776-90. Epub 2007 Sep  11. Review. PubMed PMID: 17846637."

[Albert 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19671752 "Albert BJ, McPherson PA, O'Brien K, Czaicki NL, Destefino V, Osman S, Li M, Day BW, Grabowski PJ, Moore MJ, Vogt A, Koide K. Meayamycin inhibits pre-messenger RNA splicing and exhibits picomolar activity against multidrug-resistant cells. Mol Cancer Ther. 2009 Aug;8(8):2308-18. doi: 10.1158/1535-7163.MCT-09-0051. Epub 2009 Aug 11. PubMed PMID: 19671752; PubMed Central PMCID: PMC2762647."

[Kaida 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17643111 "Kaida D, Motoyoshi H, Tashiro E, Nojima T, Hagiwara M, Ishigami K, Watanabe H, Kitahara T, Yoshida T, Nakajima H, Tani T, Horinouchi S, Yoshida M. Spliceostatin A targets SF3b and inhibits both splicing and nuclear retention of pre-mRNA. Nat  Chem Biol. 2007 Sep;3(9):576-83. Epub 2007 Jul 22. PubMed PMID: 17643111."

[Kotake 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17643112 "Kotake Y, Sagane K, Owa T, Mimori-Kiyosue Y, Shimizu H, Uesugi M, Ishihama Y,  Iwata M, Mizui Y. Splicing factor SF3b as a target of the antitumor natural product pladienolide. Nat Chem Biol. 2007 Sep;3(9):570-5. Epub 2007 Jul 22. PubMed PMID: 17643112."

[Bonnal 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23123942 "Bonnal S, Vigevani L, Valcárcel J. The spliceosome as a target of novel antitumour drugs. Nat Rev Drug Discov. 2012 Nov;11(11):847-59. doi: 10.1038/nrd3823. Review. PubMed PMID: 23123942."

[Hentze 1987]: http://www.ncbi.nlm.nih.gov/pubmed/3685996 "Hentze MW, Caughman SW, Rouault TA, Barriocanal JG, Dancis A, Harford JB, Klausner RD. Identification of the iron-responsive element for the translational  regulation of human ferritin mRNA. Science. 1987 Dec 11;238(4833):1570-3. PubMed  PMID: 3685996."

[Zimmer 2008]: http://www.ncbi.nlm.nih.gov/pubmed/19111663 "Zimmer M, Ebert BL, Neil C, Brenner K, Papaioannou I, Melas A, Tolliday N, Lamb J, Pantopoulos K, Golub T, Iliopoulos O. Small-molecule inhibitors of HIF-2a translation link its 5'UTR iron-responsive element to oxygen sensing. Mol Cell. 2008 Dec 26;32(6):838-48. doi: 10.1016/j.molcel.2008.12.004. PubMed PMID: 19111663; PubMed Central PMCID: PMC3978139."


