---
layout: post
title:  "Why do some PrP mutations cause disease?"
date:   2017-04-25 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2017/04/why-pathogenic-thumbnail.png
summary200: "After all these years, we don't really know why some PrP mutations cause disease and others don't. And we may not need to know in order to find a drug."
---

### introduction

When I've given talks on prion disease genetics over the past year, one question I very often get is "why do these mutations cause disease?". In other words, of all possible genetic variants in *PRNP*, what makes some benign, while others almost guarantee that a person will develop prion disease?

The short answer is we don't know. The long answer is this blog post.

There are three functional classes of pathogenic variants in *PRNP*: protein-truncating variants, octapeptide repeat insertions, and missense variants. Let's go through each class.

### protein-truncating variants

![](/media/2017/04/figure4.png)

*Figure 4 from [[Minikel 2016]]. PrP is encoded by a single exon; early truncating variants appear to be tolerated in humans, while late truncating variants cause prion disease.*

I'm starting here because these are the simplest to explain &mdash; sort of. PrP is normally GPI-anchored to the outside surface of a cell. Protein-truncating variants occurring after codon 145 or so seem to leave enough of the protein intact that it is still capable of forming a prion, while lopping off the GPI anchoring signal, thus making PrP secreted instead of cell surface anchored. This change in localization causes a gain of function. Consistent with this, expression of full-length, GPI anchorless PrP in mice can cause prion disease too [[Stohr 2011]]. Truncation earlier in the protein doesn't seem to cause any harm. Why secreted PrP is inherently bad is not obvious, not to me anyway. If anything, I might have imagined that letting PrP float around in three dimensions, instead of crowded into the 2D surface of a lipid raft, would give it fewer opportunities to bump into another copy of itself and form a prion. But while there are still some mysteries, we can at least point to a functional change in PrP caused by these mutations.

### octapeptide repeat insertions

![](/media/2017/04/n-terminal-tox-cartoon.png)

*Cartoon depiction of the N-terminal toxicity theory.*

These mutations increase the number of octarepeat units (PHGGGWGQ), which are involved in metal binding, among who knows what other functions. So these mutations increase the length of the flexible N terminus. A two-octapeptide repeat deletion has also been reported [[Beck 2001], [Capellari 2002]], but there's not yet strong human genetic evidence that it's actually disease-causing. In fact, only insertions of at least 5 additional repeats appear to confer a high lifetime risk of prion disease &mdash; [Mendelian segregation hasn't been seen](/2017/04/24/annotating-the-literature-on-pathogenicity-of-prnp-variants/) for shorter repeat insertions.

So far what we know is that adding at least 5 extra PHGGGWGQ units seems to be disease-causing. Why? The one explanation I've heard offered is what I call the [N-terminal toxicity hypothesis](/2015/09/21/the-n-terminal-toxicity-hypothesis/), which holds that PrP's N terminus has an intrinsic toxicity which under normal, healthy conditions is kept in check by alpha cleavage or by regulation by the C terminus, but which in disease can go unchecked. I haven't heard a better theory, but at the same time I'm not totally satisfied by this theory either. For instance, the N-terminal toxicity hypothesis purports to explain an *intrinsic* toxicity of octarepeat expansions, independent of prion formation, yet these expansions also give rise to transmissible prions [[Goldfarb 1991], [Mead 2006]]. In any event, even if the N-terminal toxicity hypothesis is correct, there's still the question of how exactly the N terminus is toxic. For that, there are many ideas [reviewed in [Aguzzi & Falsig 2012]] but not much hard evidence yet.

### missense variants

![](/media/2017/04/lee-2010-d178n-closeup.png)

*Close-up of the mutant asparagine in D178N-129M human PrP from [[Lee 2010]].*

Now we come to the most perplexing part: why do PrP missense mutations cause disease? There has been a huge amount of speculation about this over the years and some interesting theories but no firm answers.

The most obvious question would be, do these mutations destabilize PrP's native structure? If they do, they could increase the availability of a partially unfolded intermediate, thus providing fuel to PrP<sup>Sc</sup>'s fire. But the best *in vitro* data on recombinant PrP with mutations provide no evidence for a categorical destabilizing effect. For instance, P102L and E200K HuPrP90-231 seem to have secondary structures, equilibrium guanidine denaturation curves, and melting points virtually identical to their wild-type counterpart [[Swietnicki 1998]]. A study of eight different reportedly pathogenic variants found that all of them had similar [circular dichroism](/2015/12/27/circular-dichroism-on-recombinant-prp/) spectra as wild-type, and some but not all unfolded more readily in equilibrium urea denaturation [[Liemann & Glockshuber 1999]]. That study did include V180I and V210I, which we now recognize as lower-penetrance variants [[Minikel 2016]], and indeed, those two were among the variants with denaturation curves most similar to wild-type. But so was E200K, which clearly has pretty high penetrance. So our updated knowledge on this front doesn't necessarily change interpretation of the data. A deeper study of F198S (a variant that does show Mendelian segregation with disease) found a clearly reduced stability in equilibrium denaturation experiments across a range of pH values [[Vanik & Surewicz 2002]], but without data indicating this is true across a range of different variants, it's hard to say if this is the reason why F198S is pathogenic, or just a coincidence. There are even high resolution crystal structures of a couple of mutants, and while D178N and E200K PrP are apparently less likely to crystallize as a domain-swapped dimer than wild-type PrP, they otherwise have identical structures [[Lee 2010]]. So while a destabilization of native structure could be at play, so far, the *in vitro* experiments don't provide any home-run evidence for it.

Recombinant PrP &mdash; unanchored, unglycosylated, and so on &mdash; could certainly fail to capture some folding problem encountered in the cell. There are reports to suggest that PrP with the D178N mutation, for example, is slightly unstable: its unglycosylated form doesn't reach the cell surface and the protein is slightly under-expressed in human and knock-in mouse brains [[Petersen 1996], [Jackson 2009]]. When bank vole PrP, which is already somehow unstable, has this mutation added to it, it takes tens of transgene copies to achieve even 0.5X expression in a mouse brain [[Watts 2016]]. But we don't know how cells know to degrade these mutant PrPs (much less how we could encourage them to be even more vigorous about it).

Another possibility would be if mutations stabilized or promoted a misfolded structure, a hard thing to study directly since it is difficult to purify large amounts of authentically infectious PrP<sup>Sc</sup>. A few studies have examined the propensity of recombinant PrPs to misfold, and have reported, for instance, that F198S is quicker than wild-type to form beta sheet-rich oligomeric structures [[Vanik & Surewicz 2002]], and that D178N is quicker to form RT-QuIC product [[Gao 2012]]. While interesting, there are a few difficulties in interpreting these sorts of studies. PrP amyloids formed *in vitro* are not usually infectious. Recombinant PrP properties can vary a bit from batch to batch even without sequence differences. As touched on above, it is hard to learn much from studies of single mutations because any one mutation might have unique properties by coincidence. By analogy, consider the case of *SOD1* ALS, where as explained [here](/2015/04/30/how-do-sod1-mutations-cause-als/), a subset of disease-causing mutants *happen* to cause a loss of function, even though the disease mechanism is clearly gain of function [[Borchelt 1994], [Hayward 2002]].

Relating to that N-terminal toxicity hypothesis from earlier, there's some interesting evidence to suggest that PrP's positively charged N terminus may dock on the face of the C terminus, and that D178N and E200K mutations, by increasing the charge on that face, may disrupt that interaction [[Spevacek 2013]]. If true, though, this still doesn't do much to help us explain the mutations that don't increase charge or aren't located in that area.

One possibility is that there are a couple of different mechanisms at play &mdash; after all, genetic prion disease is fairly phenotypically diverse. For instance, several variants including P102L, G114V, A117V, and G131V are associated with a longer disease course (a few years as opposed <1 year for E200K). One theory about variants like those, which occur in the pretty hydrophobic central region of PrP, is that they might cause PrP's cryptic transmembrane domain [[Hay 1987], [Lopez 1990], [Harris 2003]] to actually adopt a transmembrane conformation. The Prusiner and Lingappa labs had a series of papers about this so-called "<sup>Ctm</sup>PrP" concept in the late 1990s [[Hegde 1998], [Hegde 1999]] but interest in the topic eventually fizzled out without a definitive answer one way or the other.

There are other one-off explanations for certain variants as well, but they don't get us very far. For example, T183A [[Nitrini 1997], [Grasbon-Frodl 2004]] abolishes a consensus N-linked glycosylation site (residues 181-183 are NIT in the wild-type sequence), resulting in loss of one of PrP's two potential glycan chains. But why, in turn, is losing one glycosylation site so bad, given that [neither glycosylaton nor lack thereof](/2013/05/05/prion-protein-n-linked-glycosylation-review-and-assessment-of-therapeutic-potential/) seem to be critical for prion formation? The argument might be stronger if we'd ever observed a pathogenic variant abolishing PrP's other glycosylaton site, residues 197-199. (F198S is located there but does not disrupt the consensus sequence NXT). And even if there were another example of a glycosylation site-abolishing variant, it seemingly would not get us closer to understanding how the many other missense variants, those that don't affect glycosylation, cause disease.

There have been attempts to infer a mechanism of pathogenicity just from looking at the location and distribution of amino acid substitutions. For example, based on a predicted structure of PrP<sup>C</sup> (this was before the structure had been solved by NMR [[Riek 1996]]), one paper argued that pathogenic mutations must destabilize PrP<sup>C</sup> because "Ten of 11 known point mutations... lie within or adjacent to the four putative &alpha;-helical domains" [[Huang 1994]]. In a more recent example, it was argued that almost all pathogenic PrP variants either increase hydrophobicity or increase charge [[Shen & Ji 2011]].

There are a few issues to think about when evaluating such claims. What's the null hypothesis that one is comparing to? For instanece, no two amino acids have exactly the same hydrophobicity, so one can guess that in any random, unselected distribution of amino acid substitutions, about half will increase hydrophobicity. (To model this formally, we'd have to also incorporate mutation rates based on DNA sequence context). So if half of pathogenic PrP variants increase hydrophobicity, that's not surprising at all. And then, how many hypotheses is one testing? Amino acids have a number of properties (hydrophobicity, charge, size) and these can go up or down, so you have several degrees of freedom in trying to assign amino acid substitutions to different explanatory buckets. The same goes for location-based arguments. Is our prior assumption that missense substitutions in alpha helices should be the most destabilizing, or that those in loops and turns are the worst? Or maybe the key difference is interior vs. solvent-exposed residues? My point is that there are a lot of distributions of mutations that might occur by chance, but about which you could tell some post-hoc story that would sound pretty good.

Another limitation in these sorts of inferences is that we now recognize that not all of the mutations that were included in these analyses are actually disease-causing. The inclusion of some benign or low-penetrance variants could water down any conclusions quite a bit. Meanwhile, back then there weren't a large number of known or presumed benign variants in *PRNP* to use as negative controls. For example, I've noticed that C214Y has turned up in [gnomAD](http://gnomad.broadinstitute.org/variant/20-4680507-G-A) but still not in any prion disease case. I'd imagine abolishing PrP's disulfide bond would be as destabilizing as anything, so this observation may slightly argue against the "destabilizing" hypothesis. 

Per my effort to [annotate the literature](/2017/04/24/annotating-the-literature-on-pathogenicity-of-prnp-variants/), there are only 16 *PRNP* missense variants with evidence for Mendelian segregation in at least one family: P102L, P105L, P105T, G114V, A117V, S132I, D178N, T183A, H187R, E196K, F198S, E200K, D202G, E211D, and Y218N. 11 of these variants lie in the structured region of PrP and, although I don't think it will settle the matter of how or why these are pathogenic, I want to offer this map of where they lie in the protein:

![](/media/2017/04/high-penetrance-missense-on-1hjm.png)

*To make this in PyMOL: `fetch 1hjm; bg_color white; hide everything; show cartoon; color gray; color red, resi 132+178+183+187+196+198+200+202+211+218`*

Spinning this around in PyMOL, there's no rhyme or reason to me. Helix 1 is spared, but other than that, you have interior residues and surface residues; helical residues and loop/turn residues. Some of the mutations increase charge, others are charge-neutral.

One could imagine much more sophisticated analyses and wet lab experiments here. But as I've dug into this more while writing this post, I think I've convinced myself that knowing the answer to this question is not critical, and depending on what the answer is, it might not move us any closer to a therapeutic. For example, suppose we made tens of recombinant PrP batches with various pathogenic mutations and various benign variants and did a huge battery of *in vitro* experiments on them, and suppose the result was we convinced ourselves that the "destabilizing" hypothesis is correct. Would that change our therapeutic strategy? You could argue that it would strengthen the case for finding small molecule PrP binders because it proves that lack of stability is the cause of disease. But you could also argue it weakens that case for finding small molecule PrP binders, because the mutant PrP molecules might already be unfolded and so the molecule won't be able to bind them in the first place. On the whole it seems that time would be better spent working on actually finding small molecule PrP binders, so that you can test the therapeutic hypothesis with a candidate therapeutic agent.

In conclusion, we know that PrP mutations cause disease by a gain of function. We know that to cause disease, PrP needs to exist and it needs to misfold. These simple, longstanding observations are enough to lead us to some good therapeutic hypotheses. Why exactly some mutations cause disease and others don't, we don't know. And while I certainly care enough to read interesting work that others have done on the topic, I've realized I don't think knowing the answer is critical to developing a drug.


[Hay 1987]: https://www.ncbi.nlm.nih.gov/pubmed/3547085 "Hay B, Barry RA, Lieberburg I, Prusiner SB, Lingappa VR. Biogenesis and transmembrane orientation of the cellular isoform of the scrapie prion protein [published errratum appears in Mol Cell Biol 1987 May;7(5):2035]. Mol Cell Biol.  1987 Feb;7(2):914-20. PubMed PMID: 3547085; PubMed Central PMCID: PMC365150."

[Lopez 1990]: https://www.ncbi.nlm.nih.gov/pubmed/1970195 "Lopez CD, Yost CS, Prusiner SB, Myers RM, Lingappa VR. Unusual topogenic sequence directs prion protein biogenesis. Science. 1990 Apr 13;248(4952):226-9.  PubMed PMID: 1970195."

[Goldfarb 1991]: https://www.ncbi.nlm.nih.gov/pubmed/1683708 "Goldfarb LG, Brown P, McCombie WR, Goldgaber D, Swergold GD, Wills PR, Cervenakova L, Baron H, Gibbs CJ Jr, Gajdusek DC. Transmissible familial Creutzfeldt-Jakob disease associated with five, seven, and eight extra octapeptide coding repeats in the PRNP gene. Proc Natl Acad Sci U S A. 1991 Dec 1;88(23):10926-30. PubMed PMID: 1683708; PubMed Central PMCID: PMC53045."

[Borchelt 1994]: https://www.ncbi.nlm.nih.gov/pubmed/8058797/ "Borchelt DR, Lee MK, Slunt HS, Guarnieri M, Xu ZS, Wong PC, Brown RH Jr, Price DL, Sisodia SS, Cleveland DW. Superoxide dismutase 1 with mutations linked to familial amyotrophic lateral sclerosis possesses significant activity. Proc Natl  Acad Sci U S A. 1994 Aug 16;91(17):8292-6. PubMed PMID: 8058797; PubMed Central PMCID: PMC44592."

[Huang 1994]: https://www.ncbi.nlm.nih.gov/pubmed/7913747/ "Huang Z, Gabriel JM, Baldwin MA, Fletterick RJ, Prusiner SB, Cohen FE. Proposed three-dimensional structure for the cellular prion protein. Proc Natl Acad Sci U S A. 1994 Jul 19;91(15):7139-43. PubMed PMID: 7913747; PubMed Central  PMCID: PMC44354."

[Petersen 1996]: https://www.ncbi.nlm.nih.gov/pubmed/8647879 "Petersen RB, Parchi P, Richardson SL, Urig CB, Gambetti P. Effect of the D178N mutation and the codon 129 polymorphism on the metabolism of the prion protein. J Biol Chem. 1996 May 24;271(21):12661-8. PubMed PMID: 8647879."

[Riek 1996]: https://www.ncbi.nlm.nih.gov/pubmed/8700211 "Riek R, Hornemann S, Wider G, Billeter M, Glockshuber R, Wüthrich K. NMR structure of the mouse prion protein domain PrP(121-231). Nature. 1996 Jul 11;382(6587):180-2. PubMed PMID: 8700211."

[Nitrini 1997]: https://www.ncbi.nlm.nih.gov/pubmed/9266722 "Nitrini R, Rosemberg S, Passos-Bueno MR, da Silva LS, Iughetti P, Papadopoulos M, Carrilho PM, Caramelli P, Albrecht S, Zatz M, LeBlanc A. Familial spongiform encephalopathy associated with a novel prion protein gene mutation. Ann Neurol. 1997 Aug;42(2):138-46. PubMed PMID: 9266722."

[Swietnicki 1998]: https://www.ncbi.nlm.nih.gov/pubmed/9813003 "Swietnicki W, Petersen RB, Gambetti P, Surewicz WK. Familial mutations and the thermodynamic stability of the recombinant human prion protein. J Biol Chem. 1998 Nov 20;273(47):31048-52. PubMed PMID: 9813003."

[Hegde 1998]: https://www.ncbi.nlm.nih.gov/pubmed/9452375 "Hegde RS, Mastrianni JA, Scott MR, DeFea KA, Tremblay P, Torchia M, DeArmond SJ, Prusiner SB, Lingappa VR. A transmembrane form of the prion protein in neurodegenerative disease. Science. 1998 Feb 6;279(5352):827-34. PubMed PMID: 9452375."

[Hegde 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10617204 "Hegde RS, Tremblay P, Groth D, DeArmond SJ, Prusiner SB, Lingappa VR. Transmissible and genetic prion diseases share a common pathway of neurodegeneration. Nature. 1999 Dec 16;402(6763):822-6. PubMed PMID: 10617204."

[Forloni 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10211473 "Forloni G, Angeretti N, Malesani P, Peressini E, Rodriguez Martin T, Della Torre P, Salmona M. Influence of mutations associated with familial prion-related encephalopathies on biological activity of prion protein peptides. Ann Neurol. 1999 Apr;45(4):489-94. PubMed PMID: 10211473."

[Liemann & Glockshuber 1999]: https://www.ncbi.nlm.nih.gov/pubmed/10079068 "Liemann S, Glockshuber R. Influence of amino acid substitutions related to inherited human prion diseases on the thermodynamic stability of the cellular prion protein. Biochemistry. 1999 Mar 16;38(11):3258-67. PubMed PMID: 10079068."

[Chen 2000]: https://www.ncbi.nlm.nih.gov/pubmed/11214924 "Chen SG, Zou W, Parchi P, Gambetti P. PrP(Sc) typing by N-terminal sequencing  and mass spectrometry. Arch Virol Suppl. 2000;(16):209-16. Review. PubMed PMID: 11214924."

[Beck 2001]: https://www.ncbi.nlm.nih.gov/pubmed/11468331 "Beck JA, Mead S, Campbell TA, Dickinson A, Wientjens DP, Croes EA, Van Duijn CM, Collinge J. Two-octapeptide repeat deletion of prion protein associated with  rapidly progressive dementia. Neurology. 2001 Jul 24;57(2):354-6. PubMed PMID: 11468331."

[Capellari 2002]: https://www.ncbi.nlm.nih.gov/pubmed/12451210 "Capellari S, Parchi P, Wolff BD, Campbell J, Atkinson R, Posey DM, Petersen RB, Gambetti P. Creutzfeldt-Jakob disease associated with a deletion of two repeats in the prion protein gene. Neurology. 2002 Nov 26;59(10):1628-30. PubMed  PMID: 12451210."

[Hayward 2002]: https://www.ncbi.nlm.nih.gov/pubmed/11854284/ "Hayward LJ, Rodriguez JA, Kim JW, Tiwari A, Goto JJ, Cabelli DE, Valentine JS, Brown RH Jr. Decreased metallation and activity in subsets of mutant superoxide dismutases associated with familial amyotrophic lateral sclerosis. J Biol Chem. 2002 May 3;277(18):15923-31. Epub 2002 Feb 19. PubMed PMID: 11854284."

[Vanik & Surewicz 2002]: https://www.ncbi.nlm.nih.gov/pubmed/12372829 "Vanik DL, Surewicz WK. Disease-associated F198S mutation increases the propensity of the recombinant prion protein for conformational conversion to scrapie-like form. J Biol Chem. 2002 Dec 13;277(50):49065-70. PubMed PMID: 12372829."

[Harris 2003]: https://www.ncbi.nlm.nih.gov/pubmed/14522850 "Harris DA. Trafficking, turnover and membrane topology of PrP. Br Med Bull. 2003;66:71-85. Review. PubMed PMID: 14522850."

[Grasbon-Frodl 2004]: https://www.ncbi.nlm.nih.gov/pubmed/15558291 "Grasbon-Frodl E, Lorenz H, Mann U, Nitsch RM, Windl O, Kretzschmar HA. Loss of glycosylation associated with the T183A mutation in human prion disease. Acta Neuropathol. 2004 Dec;108(6):476-84. Epub 2004 Oct 26. PubMed PMID: 15558291."

[Schiff 2008]: https://www.ncbi.nlm.nih.gov/pubmed/18410485 "Schiff E, Campana V, Tivodar S, Lebreton S, Gousset K, Zurzolo C. Coexpression of wild-type and mutant prion proteins alters their cellular localization and partitioning into detergent-resistant membranes. Traffic. 2008 Jul;9(7):1101-15.  doi: 10.1111/j.1600-0854.2008.00746.x. PubMed PMID: 18410485."

[Jackson 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19709627 "Jackson WS, Borkowski AW, Faas H, Steele AD, King OD, Watson N, Jasanoff A,Lindquist S. Spontaneous generation of prion infectivity in fatal familialinsomnia knockin mice. Neuron. 2009 Aug 27;63(4):438-50. doi:10.1016/j.neuron.2009.07.026. PubMed PMID: 19709627; PubMed Central PMCID:PMC2775465."

[Lee 2010]: https://www.ncbi.nlm.nih.gov/pubmed/19927125/ "Lee S, Antony L, Hartmann R, Knaus KJ, Surewicz K, Surewicz WK, Yee VC. Conformational diversity in prion protein variants influences intermolecular beta-sheet formation. EMBO J. 2010 Jan 6;29(1):251-62. doi: 10.1038/emboj.2009.333. PubMed PMID: 19927125; PubMed Central PMCID: PMC2808380."

[Shen & Ji 2011]: https://www.ncbi.nlm.nih.gov/pubmed/21679685 "Shen L, Ji HF. Mutation directional selection sheds light on prion pathogenesis. Biochem Biophys Res Commun. 2011 Jul 1;410(2):159-63. doi: 10.1016/j.bbrc.2011.06.007. Review. PubMed PMID: 21679685."

[Stohr 2011]: http://www.ncbi.nlm.nih.gov/pubmed/22160704/ "Stöhr J, Watts JC, Legname G, Oehler A, Lemus A, Nguyen HO, Sussman J, Wille H, DeArmond SJ, Prusiner SB, Giles K. Spontaneous generation of anchorless prions in transgenic mice. Proc Natl Acad Sci U S A. 2011 Dec 27;108(52):21223-8. doi: 10.1073/pnas.1117827108. Epub 2011 Dec 12. PubMed PMID: 22160704; PubMed Central  PMCID: PMC3248514."

[Gao 2012]: https://www.ncbi.nlm.nih.gov/pubmed/23547462 "Gao C, Ren K, Li LZ, Jiang HY, Chen C, Zhang J, Han J, Dong XP. [Mutant D178N  prion protein converts spontaneously in RT-QuIC assay]. Zhonghua Shi Yan He Lin Chuang Bing Du Xue Za Zhi. 2012 Oct;26(5):370-3. Chinese. PubMed PMID: 23547462."

[Aguzzi & Falsig 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22735515 "Aguzzi A, Falsig J. Prion propagation, toxicity and degradation. Nat Neurosci. 2012 Jun 26;15(7):936-9. doi: 10.1038/nn.3120. Review. PubMed PMID: 22735515."

[Spevacek 2013]: https://www.ncbi.nlm.nih.gov/pubmed/23290724 "Spevacek AR, Evans EG, Miller JL, Meyer HC, Pelton JG, Millhauser GL. Zinc drives a tertiary fold in the prion protein with familial disease mutation sites  at the interface. Structure. 2013 Feb 5;21(2):236-46. doi: 10.1016/j.str.2012.12.002. Epub 2013 Jan 3. PubMed PMID: 23290724; PubMed Central PMCID: PMC3570608."

[Mead 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16923955 "Mead S, Poulter M, Beck J, Webb TE, Campbell TA, Linehan JM, Desbruslais M, Joiner S, Wadsworth JD, King A, Lantos P, Collinge J. Inherited prion disease with six octapeptide repeat insertional mutation--molecular analysis of phenotypic heterogeneity. Brain. 2006 Sep;129(Pt 9):2297-317. PubMed PMID: 16923955."

[Mead 2007]: https://www.ncbi.nlm.nih.gov/pubmed/17709704 "Mead S, Webb TE, Campbell TA, Beck J, Linehan JM, Rutherfoord S, Joiner S, Wadsworth JD, Heckmann J, Wroe S, Doey L, King A, Collinge J. Inherited prion disease with 5-OPRI: phenotype modification by repeat length and codon 129. Neurology. 2007 Aug 21;69(8):730-8. PubMed PMID: 17709704."

[Watts 2016]: http://www.ncbi.nlm.nih.gov/pubmed/27350609 "Watts JC, Giles K, Bourkas ME, Patel S, Oehler A, Gavidia M, Bhardwaj S, Lee J, Prusiner SB. Towards authentic transgenic mouse models of heritable PrP prion  diseases. Acta Neuropathol. 2016 Jun 28. [Epub ahead of print] PubMed PMID: 27350609."

[Minikel 2016]: https://www.ncbi.nlm.nih.gov/pubmed/26791950 "Minikel EV, Vallabh SM, Lek M, Estrada K, Samocha KE, Sathirapongsasuti JF, McLean CY, Tung JY, Yu LP, Gambetti P, Blevins J, Zhang S, Cohen Y, Chen W, Yamada M, Hamaguchi T, Sanjo N, Mizusawa H, Nakamura Y, Kitamoto T, Collins SJ, Boyd A, Will RG, Knight R, Ponto C, Zerr I, Kraus TF, Eigenbrod S, Giese A, Calero M, de Pedro-Cuesta J, Haïk S, Laplanche JL, Bouaziz-Amar E, Brandel JP, Capellari S, Parchi P, Poleggi A, Ladogana A, O'Donnell-Luria AH, Karczewski KJ,  Marshall JL, Boehnke M, Laakso M, Mohlke KL, Kähler A, Chambert K, McCarroll S, Sullivan PF, Hultman CM, Purcell SM, Sklar P, van der Lee SJ, Rozemuller A, Jansen C, Hofman A, Kraaij R, van Rooij JG, Ikram MA, Uitterlinden AG, van Duijn  CM; Exome Aggregation Consortium (ExAC)., Daly MJ, MacArthur DG. Quantifying prion disease penetrance using large population control cohorts. Sci Transl Med.  2016 Jan 20;8(322):322ra9. doi: 10.1126/scitranslmed.aad5169. PubMed PMID: 26791950; PubMed Central PMCID: PMC4774245."


