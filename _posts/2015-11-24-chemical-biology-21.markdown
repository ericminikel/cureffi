---
layout: post
title:  "Chemical biology 21: stem cells and regenerative medicine"
date:   2015-11-24 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 21 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on November 24, 2015.*

The goal of regenerative medicine is to treat diseases of "cellular deficiency". The hope is that either embryonic stem cells and iPS cells can be differentiated into cell types of interest, or that somatic cells can be directly transdifferentiated into other cell types of interest. It is also hoped that small molecules will soon make it possible to do reprogramming and differentiation without introduction of any exogenous DNA.

Here are some examples of diseases that can be viewed as diseases of cellular deficiency:

| disease | cells that are lacking |
| ---- | ---- |
| diabetes | pancreatic beta cells |
| Parkinson disease | dopaminergic neurons | 
| cachexia (muscle wasting during cancer, of unknown cause) | muscle |
| anemia after radiation therapy for cancer | hematopoeitic stem cells |
| heart attack | cardiac tissue |

Like most new therapeutic modalities, the hype to science ratio for regenerative medicine has been very high.

One of the earliest clinical attempts to implement regenerative medicine was for Parkinson disease, by grafting human embryonic neural tissue into the substantia nigra of PD patients. I previously discussed this history [here](/2014/12/01/neurodegeneration-seminar-5/); despite isolated early reports suggestive of success [[Sawle 1992], [Piccini 1999]], it was eventually determined that the therapy had been ineffective [[Olanow 2003]].

Another early attempt was to replace a trachea scarred by chronic tuberculosis. A doctor used a donor trachea, treated it chemically to kill all donor cells while retaining the structural scaffold, then coated it in bone marrow stem cells from the recipient patient's hip, grew the cells for 4 days, and then transplanted it. For many years this success story was marred by accusations of scientific misconduct against the doctor, but a couple of months ago he was [cleared of all charges](http://www.nytimes.com/2015/08/29/science/paolo-macchiarini-researcher-cleared-of-scientific-misconduct-charges.html).

One oft-cited example is [the Berlin patient](https://en.wikipedia.org/wiki/The_Berlin_Patient). The Berlin patient was an AIDS patient who had leukemia and needed radiation and bone marrow transplantation. The doctor managed to find an HLA-matched bone marrow donor who was also homozygous for the *CCR5* &Delta;32 frameshift variant, which eliminates a receptor for HIV-1 and confers greatly reduced susceptibility to HIV infection. To this day, the Berlin patient may be the only person ever *cured* of HIV. This inspired clinical trials to use zinc finger nucleases to delete *CCR5* in patient cells and then do autologous stem cell transplantation, as well as the development of small molecules targeting CCR5. However, since then, several AIDS patients have undergone transplantation of bone marrow from *CCR5* null donors, and none have responded like the Berlin patient did &mdash; none have been cured. So it is possible that the Berlin patient was just extremely lucky and that this success is not reproducible. 

John Gurdon won half of the 2012 Nobel Prize in Physiology or Medicine (shared with Yamanaka for iPS reprogramming) for somatic cell nuclear transfer, the first method of cloning an organism. He started by transferring a nucleus from a tadpole somatic cell into an enucleated frog egg. For decades, people dismissed this discovery as being specific to frogs, rather than generalizable across life. The significance of his work was finally accepted when the sheep Dolly was successfully cloned using the same method Gurdon had used. Dolly had many health problems and only lived 7 years, which is short for a sheep. This proved that cloning was possible, but also that there were many problems yet to be resolved. 

The feasibility of cloning by somatic cell nuclear transfer proved that the reprogramming factors that determine cell fate were present in the cytoplasm. What were they? One obvious candidate would be transcription factors, particularly master regulator transcription factors. Shinya Yamanaka tried every combination of master regulator transcription factors until he found the minimum set of 4 genes that had to be expressed in order to make a differentiated cell revert to pluripotency. This is most commonly done with fibroblasts from skin punches, but the efficiency (proportion of treated cells that acquire pluripotency) is ~100-fold higher with keratinocytes from plucked hair follicles [[Aasen 2008]]. Early work used integrating retroviruses, but then it was found that non-integrating viruses such as Sendai could also transfer the required genes, and then it was found that just transfecting the mRNA would work, and then that chemically modified, extra stable RNA worked even better. The newest frontier is using small molecules [reviewed in [Firestone & Chen 2010]]. Early protocols used several modulators of DNA methylation and histone modification, such as aza-cytidine and valproic acid, to increase the efficiency of existing DNA- or RNA-based approaches. A couple of years ago there was a report that the reprogramming could be achieved with only small molecules and no nucleic acids [[Hou 2013]]. Making reprogramming easier and more efficient, and interrogating whether the resulting cells really possess embryonic-like properties, is an ongoing challenge [reviewed in [Krupalnik & Hanna 2014]].

Transplantation of pancreatic beta cells is sometimes used as a therapy for type 1 diabetes. However, there are not enough donors to go around, and recipients have to take immunosuppressants for the rest of their lives. So autologous transplantation is an appealing possibility. Doug Melton recently developed a protocol for differentiating beta cells from human ES cells in culture [[Pagliuca 2014]]. *In vivo*, ES cells become pancreatic beta cells through many separate steps of differentiation. To make a simpler cell culture protocol, it was desirable to find small molecules that could jump some of the intermediate steps. To do this, they put reporters (GFP or RFP) under the promoters of transcription factors that define certain cell states, and screened for molecules that would turn them on. They originally figured out a way to get to pancreatic progenitors using two small molecules [[Borowiak 2009], [Chen 2009]], but it took many years to figure out a protocol to get all the way to beta cells [[Pagliuca 2014]]. Another interesting approach is transdifferentiation of acinar cells into beta cells [[Li 2014]].

Therapeutic transdifferentiation is an appealing approach to get cancer stem cells to differentiate so that they can be killed. 

Shortly after protocols for making and differentiating iPS became available, they became a popular tool for modeling particular diseases in the lab &mdash; see for instance ALS [[Dimos 2008]], Rett syndrome [[Marchetto 2010]], Alzheimer disease [[Israel 2012]], and many many more. Yet making any stem cell-based regenerative therapy safe and effective has so far proven elusive, and this continues to be an area of great challenges, including for chemists to make small molecules to achieve targeted differentiation.

Regenerative medicine is also an area of many ongoing controversies. Recently [in the news](http://news.sciencemag.org/biology/2015/10/major-grant-limbo-nih-revisits-ethics-animal-human-chimeras), NIH announced it was considering a "possible policy revision" on human-animal chimeras to grow organs. The background here is that pigs have organs of a similar size to humans, and pig organs can actually be transplanted into humans in some cases, but with a need for intense immunosuppression to even temporarily stave off rejection. A new idea is to modify pig embryos to be unable to generate certain organs, and then inject into the embryo human stem cells so that specific organ will be human and could be transplanted (hopefully) without rejection. This idea, of pigs with human organs, has proven controversial.







[Pagliuca 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25303535 "Pagliuca FW, Millman JR, Gürtler M, Segel M, Van Dervort A, Ryu JH, Peterson QP, Greiner D, Melton DA. Generation of functional human pancreatic β cells in vitro. Cell. 2014 Oct 9;159(2):428-39. doi: 10.1016/j.cell.2014.09.040. PubMed PMID: 25303535; PubMed Central PMCID: PMC4617632."

[Israel 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22278060 "Israel MA, Yuan SH, Bardy C, Reyna SM, Mu Y, Herrera C, Hefferan MP, Van Gorp  S, Nazor KL, Boscolo FS, Carson CT, Laurent LC, Marsala M, Gage FH, Remes AM, Koo EH, Goldstein LS. Probing sporadic and familial Alzheimer's disease using induced pluripotent stem cells. Nature. 2012 Jan 25;482(7384):216-20. doi: 10.1038/nature10821. PubMed PMID: 22278060; PubMed Central PMCID: PMC3338985."

[Firestone & Chen 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20000447 "Firestone AJ, Chen JK. Controlling destiny through chemistry: small-molecule regulators of cell fate. ACS Chem Biol. 2010 Jan 15;5(1):15-34. doi: 10.1021/cb900249y. Review. PubMed PMID: 20000447; PubMed Central PMCID: PMC2807212."

[Hou 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23868920 "Hou P, Li Y, Zhang X, Liu C, Guan J, Li H, Zhao T, Ye J, Yang W, Liu K, Ge J,  Xu J, Zhang Q, Zhao Y, Deng H. Pluripotent stem cells induced from mouse somatic cells by small-molecule compounds. Science. 2013 Aug 9;341(6146):651-4. doi: 10.1126/science.1239278. Epub 2013 Jul 18. PubMed PMID: 23868920."

[Sawle 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1575455 "Sawle GV, Bloomfield PM, Björklund A, Brooks DJ, Brundin P, Leenders KL, Lindvall O, Marsden CD, Rehncrona S, Widner H, et al. Transplantation of fetal dopamine neurons in Parkinson's disease: PET [18F]6-L-fluorodopa studies in two patients with putaminal implants. Ann Neurol. 1992 Feb;31(2):166-73. PubMed PMID: 1575455."

[Piccini 1999]: http://www.ncbi.nlm.nih.gov/pubmed/10570493 "Piccini P, Brooks DJ, Björklund A, Gunn RN, Grasby PM, Rimoldi O, Brundin P, Hagell P, Rehncrona S, Widner H, Lindvall O. Dopamine release from nigral transplants visualized in vivo in a Parkinson's patient. Nat Neurosci. 1999 Dec;2(12):1137-40. PubMed PMID: 10570493."

[Olanow 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12953276 "Olanow CW, Goetz CG, Kordower JH, Stoessl AJ, Sossi V, Brin MF, Shannon KM, Nauert GM, Perl DP, Godbold J, Freeman TB. A double-blind controlled trial of bilateral fetal nigral transplantation in Parkinson's disease. Ann Neurol. 2003 Sep;54(3):403-14. PubMed PMID: 12953276."

[Aasen 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18931654 "Aasen T, Raya A, Barrero MJ, Garreta E, Consiglio A, Gonzalez F, Vassena R, Bilić J, Pekarik V, Tiscornia G, Edel M, Boué S, Izpisúa Belmonte JC. Efficient and rapid generation of induced pluripotent stem cells from human keratinocytes.  Nat Biotechnol. 2008 Nov;26(11):1276-84. doi: 10.1038/nbt.1503. Epub 2008 Oct 17. PubMed PMID: 18931654."

[Krupalnik & Hanna 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25008516 "Krupalnik V, Hanna JH. Stem cells: The quest for the perfect reprogrammed cell. Nature. 2014 Jul 10;511(7508):160-2. doi: 10.1038/nature13515. Epub 2014 Jul 2. PubMed PMID: 25008516."

[Borowiak 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19341624 "Borowiak M, Maehr R, Chen S, Chen AE, Tang W, Fox JL, Schreiber SL, Melton DA. Small molecules efficiently direct endodermal differentiation of mouse and human  embryonic stem cells. Cell Stem Cell. 2009 Apr 3;4(4):348-58. doi: 10.1016/j.stem.2009.01.014. PubMed PMID: 19341624; PubMed Central PMCID: PMC4564293."

[Chen 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19287398 "Chen S, Borowiak M, Fox JL, Maehr R, Osafune K, Davidow L, Lam K, Peng LF, Schreiber SL, Rubin LL, Melton D. A small molecule that directs differentiation of human ESCs into the pancreatic lineage. Nat Chem Biol. 2009 Apr;5(4):258-65. doi: 10.1038/nchembio.154. Epub 2009 Mar 15. PubMed PMID: 19287398."

[Li 2014]: http://www.ncbi.nlm.nih.gov/pubmed/25402613 "Li W, Cavelti-Weder C, Zhang Y, Clement K, Donovan S, Gonzalez G, Zhu J, Stemann M, Xu K, Hashimoto T, Yamada T, Nakanishi M, Zhang Y, Zeng S, Gifford D,  Meissner A, Weir G, Zhou Q. Long-term persistence and development of induced pancreatic beta cells generated by lineage conversion of acinar cells. Nat Biotechnol. 2014 Dec;32(12):1223-30. doi: 10.1038/nbt.3082. Epub 2014 Nov 17. Erratum in: Nat Biotechnol. 2015 Aug;33(8):882. Zhang, Yinying [corrected to Zhang, Yingying]. PubMed PMID: 25402613."

[Dimos 2008]: http://www.ncbi.nlm.nih.gov/pubmed/18669821 "Dimos JT, Rodolfa KT, Niakan KK, Weisenthal LM, Mitsumoto H, Chung W, Croft GF, Saphier G, Leibel R, Goland R, Wichterle H, Henderson CE, Eggan K. Induced pluripotent stem cells generated from patients with ALS can be differentiated into motor neurons. Science. 2008 Aug 29;321(5893):1218-21. doi: 10.1126/science.1158799. Epub 2008 Jul 31. PubMed PMID: 18669821."

[Marchetto 2010]: http://www.ncbi.nlm.nih.gov/pubmed/21074045 "Marchetto MC, Carromeu C, Acab A, Yu D, Yeo GW, Mu Y, Chen G, Gage FH, Muotri  AR. A model for neural development and treatment of Rett syndrome using human induced pluripotent stem cells. Cell. 2010 Nov 12;143(4):527-39. doi: 10.1016/j.cell.2010.10.016. PubMed PMID: 21074045; PubMed Central PMCID: PMC3003590."






