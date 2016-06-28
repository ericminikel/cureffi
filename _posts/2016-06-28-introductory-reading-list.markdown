---
layout: post
title:  "Introductory prion reading list"
date:   2016-06-28 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2016/06/intro_thumbnail.png
summary200: "An annotated guide to recommended reading for people interested in prion therapeutics."
---

Or, **"Some papers that shape my thinking on prion therapeutics"**.

Lately I've gotten a request from several people, ranging from scientists starting to get interested in prions, to people at risk for prion disease starting to get interested in science. People have asked me to put together a suggested reading list to introduce them to the field. I resisted this request for a long time, for a few reasons. First, I like to read and cite exhaustively, not just to pick a few favorites. Second, recommending papers is hard &mdash; how much should you prioritize reading the *earliest* discovery of something versus more recent work that contains more of a full picture? Third and perhaps most importantly, there is no surer way to make enemies than to fail to cite someone's paper in a list of important milestones in the field!

But eventually enough people asked me that I relented and decided to write this post. But I want to frame it slightly differently. What follows is *not* intended as a list of the most important papers, but rather, as an annotated guide to how I think about prion therapeutics, with suggested reading along the way. Please don't be offended if your paper isn't here &mdash; this post absolutely does no justice to the large swathes of the prion field that I personally just don't spend as much time thinking about, such as neuropathology, prion detection, structural biology, veterinary prions and zoonotic risk, and so on.

---

Every piece of formal writing that I produce these days (fellowship applications, my preliminary qualifying exam, etc.) contains, usually as the first sentence, a statement something like this:

> Prion disease is a neurodegenerative disorder caused by misfolding of the cellular prion protein, PrP<sup>C</sup>, into an autocatalytically self-propagating conformer called the scrapie prion protein, or PrP<sup>Sc</sup>.

That's the disease mechanism for you, in one sentence. What's incredible is just how many bothans died to bring us this information. That one sentence contains whole careers, decades of work condensed into a singular conclusion.

![](/media/2016/06/prion_hypothesis.png)

If you only care to read one paper about this sentence, read Stanley Prusiner's Nobel Lecture [[Prusiner 1998]]. If you do want to read the whole backstory, here are some key points along the road to that one sentence, with the corresponding papers:

+ There are transmissible agents that can be inactivated by things that destroy proteins but not by things that destroy nucleic acids, and must therefore be proteinaceous infectious particles: *prions* [[Prusiner 1982]].
+ Prions can be purified biochemically from infected brains by a many-step process relying on (among other things) their detergent insolubility and protease resistance. The amino acid sequence of the substituent protein can then be read out &mdash; this is the first identification of PrP as the constituent of prions [[Prusiner 1984]].
+ PrP is encoded by a chromosomal gene expressed in both infected and uninfected animals &mdash; not a viral gene [[Oesch 1985], [Chesebro 1985]].
+ The chromosomal PrP-encoding gene in mice is in linkage with a gene determining prion incubation time [[Carlson 1986]]. In fact, the PrP-encoding gene and the incubation time gene are one and the same [[Westaway 1987]].
+ A genetic prion disease is linked to mutations in the *PRNP* gene encoding PrP [[Hsiao 1989]]. (This has since been shown for many other mutations in *PRNP*, and none in any other gene).
+ Hamster PrP transgenes allow mice to be infected with hamster prions. Thus, PrP amino acid sequence is what governs the species barrier (now more often called a transmission barrier) [[Scott 1989]].
+ Homozygous *PRNP* genotype is a risk factor for sporadic prion disease in humans [[Palmer 1991]].
+ PrP knockout mice are incapable of being infected with prions. They neither propagate prions nor fall ill. Thus, PrP is required for prion replication and disease progression [[Bueler 1993]].
+ PrP<sup>C</sup> is primarily alpha helical, while PrP<sup>Sc</sup> is primarily beta sheet. Thus, conformational change is a feature of prion conversion [[Pan 1993]].
+ PrP<sup>Sc</sup> does not seem to have any post-translational modifications when compared to PrP<sup>C</sup>. Thus, prion conversion appears to be strictly conformational [[Stahl 1993]].
+ PrP can be converted to a protease-resistant form in a cell-free reaction, indicating the conformational change results from direct interactions between PrP molecules, rather than being a side effect of some cellular process [[Kocisko 1994]].

Here's a quick aside about nomenclature. Along the way as you read these papers, you'll notice there are a ton of different names for prion disease. In humans, some of these names refer to different clinical presentations, others to specific strains or genetic mutations or etiologies. Most of these names originated by accident of history, and while they are not totally meaningless, they in no way represent any sort of logical or systematic organization of prion disease subtypes that one would generate from first principles knowing everything we know today. And then in non-human mammals, people just call all prion disease in that animal one thing, even though other animals, like humans, have multiple strains and multiple etiologies of prion disease. The naming system is a mess, which is why I almost exclusively use the term "prion disease".

| species | name |
| ---- | ---- |
| human | Creutzfeldt-Jakob disease<br>fatal familial insomnia<br>Gerstmann-Straussler-Scheinker disease<br>variant Creutzfeldt-Jakob disease<br>kuru<br>Huntington disease-like 1<br>variably protease-sensitive prionopathy<br>PrP cerebral amyloid angiopathy<br>PrP systemic amyloidosis |
| sheep and goats | scrapie |
| deer, elk, and other cervids | chronic wasting disease |
| cattle | bovine spongiform encephalopathy |
| any | transmissible spongiform encephalopathy |

*Table 1. Other names for prion disease*

Now, moving beyond that one first sentence, the next key fact to know is the existence of prion strains. My applications and such often have a second sentence somewhere in there that goes like this:

> Prions exist in phenotypically diverse strains, which are encoded in distinct conformations of PrP<sup>Sc</sup>.

So you see, there's actually an error in the first sentence at top. When I said "an autocatalytically self-propagating conformer called... PrP<sup>Sc</sup>" what I really meant was "any of a variety of autocatalytically self-propagating conformers, all of which can be referred to as PrP<sup>Sc</sup>".

![](/media/2016/06/prion_strains.png)

Prion strains have defined operationally by a range of features: differences in incubation times, transmission properties to different species, neuropathological profiles and attendant symptomatic presentations, protease sensitivities and cleavage sites, and sensitivity to inhibition by small molecules. But at the root of all of these phenotypic differences, we believe that what prion strains *are* is different conformations of PrP<sup>Sc</sup>.

How do we know? We still don't know the structure, at atomic resolution, of any prion strain. But there is ample indirect evidence that strains differ in conformation. Here are three of the most classic demonstrations of it:

+ The distinct protease cleavage sites of different prion strains are maintained upon cell-free propagation of prions. Thus, the cleavage sites are a property of PrP itself and not of the intact cell [[Bessen 1995]].
+ Different genetic mutations in *PRNP* give rise to different protease cleavage sites and different neuropathological profiles, and these differences are maintained upon passage into mice lacking the original mutations. Thus, conformation alone, without any difference in amino acid sequence, is sufficient to encode these strain differences [[Telling 1996]].
+ An epitope that is exposed in PrP<sup>C</sup> but buried in PrP<sup>Sc</sup> can be used to distinguish the two isoforms. Using this method it is shown that different prion strains differ in their conformational stability (resistance to guanidine denaturation) [[Safar 1998]]. As an aside, this paper is also a landmark for demonstrating the existence of protease-sensitive prions.

All the references I've cited so far have probably already convinced you that PrP is everything in prion disease. PrP *is* the pathogen, its conformation is what creates infectivity and defines strain, it is what governs incubation time and species barriers, it is what causes genetic prion disease. Every approach &mdash; biochemistry, model organism genetics, human genetics &mdash; converges on this one answer: PrP is what causes prion disease.

And all of that means that PrP is *the* obvious drug target if you want to treat prion disease. So I often also include a sentence or two along these lines:

> From first principles, PrP is the obvious drug target for treating prion disease. PrP is the major or sole component of prions, and its expression is required for disease and for neurotoxicity.

Here are a few of the foundational papers that provide proof of principle that if you can target PrP, then you can treat prion disease:

+ Overexpression of PrP in mice hastens prion disease, and heterozygous knockout slows it down [[Fischer 1996]].
+ If PrP knockout mice with a graft of PrP-expressing tissue in their brains are infected with prions, the graft will generate prions and its neurons will die, but adjacent PrP-null neurons will not. Thus, PrP is required not only for prion replication, but also for prion neurotoxicity [[Brandner 1996]].
+ Post-natal knockout of PrP (using a Cre system) in neurons after mice are infected halts prion disease [[Mallucci 2003]].
+ Post-natal supression of PrP expression (using a Tet-off system) after mice are infected dramatically slows prion disease [[Safar 2005]].
+ Monoclonal antibodies to PrP<sup>C</sup> can cure peripheral prion infections in mice. Although they don't work at all once the infection is in the brain, this still at least provides proof of principle for directly targeting PrP with a therapeutic [[White 2003]].

One key take-home message from the above work is that the less PrP, the better, and the more PrP, the worse. Here's a plot of the data from [[Fischer 1996]] to drive that home:

![](/media/2016/06/fischer-1996-prp-expression-curve.png)

In presentations I sometimes also show this handy diagram of a few key lessons from prion mouse models:

![](/media/2016/06/lessons_from_prion_mouse_models.png)

As soon as I get to talking about reducing PrP expression as a therapeutic strategy, the question arises, well, what is the knockout phenotype? Here are a few key papers on that:

+ The first-ever characterization of PrP knockout mice: they're viable, fertile, and after a large battery of behavioral tests, researchers couldn't find a single thing wrong with them [[Bueler 1992]].
+ In the years after Bueler 1992, scads of PrP knockout mouse phenotypes were reported, but most or all of them are pretty dubious (this is a review) [[Steele 2007]]. Most importantly, note the ["Caveats of a Phenotype"](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2634447/#__sec2title) section of this paper and don't believe everything you hear. 
+ 18 years after the first PrP knockout mouse, we finally get to an undeniably real phenotype of PrP knockout mice: a defect in peripheral myelin maintenance [[Bremer 2010]]. As you read, notice the sheer number of experiments required to show that this phenotype is actually real: four different knockout lines, bred to multiple different mouse strain backgrounds, rescued (or not rescued) with several different transgenes. None of the other knockout phenotypes reported to date have come close to this level of evidence.

My ultimate reason for interest in knockout phenotypes, of course, is to know whether reducing PrP levels would be safe. I think the clear answer is yes. The myelin defect reported here begins early in life and appears histopathologically severe, but in terms of consequences, it's still pretty mild: at 60 weeks of age, the difference in hot plate response among the mice is tiny, to the point of not even being detectable in some mouse strains. And the defects are not seen at all in heterozygous knockout mice. So in the face of how terrible prion disease is, nothing here reduces my enthusiasm for reducing PrP expression as a therapeutic strategy. (We now have some, albeit very limited, evidence that heterozygous knockout is tolerated in humans too [[Minikel 2016]]).

While the proof of concept for therapeutic targeting of PrP is very strong, the small molecules that have proven most effective at delaying prion disease in mice don't reduce PrP levels, and most, in fact, don't seem to interact directly with PrP at all. They were discovered in phenotypic screens, and their mechanisms of action are still unknown. When I describe the current state of the field I usually say something like this:

> Phenotypic screening in prion-infected mouse cells has yielded small molecules that reduce prion replication in cell culture and extend life in prion-infected mice by 2-4X. This success demonstrates, in principle, the feasibilty of small molecule therapy for prion disease. None of these molecules, however, has shown efficacy in humanized mice infected with human prions. 

![](/media/2016/06/strain_specific_therapeutics.png)

*Above: three molecules discovered in phenotypic screens, with unknown mechanisms of action, that extend survival in mice infected with mouse prions but are useless in humanized mice infected with human prions.*

That's the current state of the field. To learn more about that current state and how we got here, I offer you just a tiny fraction of the many excellent papers out there about prion therapeutics:

+ The first phenotypic screen of any appreciable scale in prion-infected cells [[Kocisko 2003]]. They screened ~2,000 bioactives, and none of the hits proved effective *in vivo*, but this nonetheless formed a template for much of what came after.
+ Demonstration of *in vivo* efficacy of pentosan polysulfate (PPS) [[Doh-Ura 2004]]. PPS is not a small molecule &mdash; it's a huge molecule. Until the first effective small molecules came along a few years later, this was the best preclinical success out there. One recurring theme, of which this is an early example, is that the earlier you treat, the more efficacy you get, and if you treat after onset of symptoms, you get zero efficacy.
+ The identification of cpd-b, the first small molecule effective against prion infections in the brain [[Kawasaki 2007]]. This provided the first hint that small molecules can have differential effects against different prion strains.
+ The first report of prions evolving drug resistance, in this case to quinacrine [[Ghaemmaghami & Ahn 2009]]. This is a phenomenon which has since been observed for many other compounds.
+ The story of 2-aminothiazole antiprion compounds, which pretty much shows the current state of the field: people have found small molecules that are orally bioavailable and remarkably effective against prion infections in the brain, but they only work against some strains of prions, and even then, their efficacy can in some cases be limited by the evolution of drug-resistant strains [[Berry 2013]].
+ A very thorough battery of experiments documenting what we know about the 2-aminothiazole antiprion compounds, particularly how their efficacy changes as a function of disease timepoint, dosing regimen, and PrP expression level [[Giles 2015]]. While there is still no efficacy against human prion strains, the demonstration of a 4X increase in survival time for prophylactic treatment should convince you, if nothing above did, that therapy for prion disease is possible.

To summarize all of the above considerations, I often include a table something like the following. It includes a few more references not mentioned above, but you don't necessarily need to read all of them to get the gist &mdash; they mostly just validate and shore up conclusions mentioned above.

| therapeutic strategy | proofs of concept |
| ---- | ---- |
| Reduce PrP<sup>C</sup> levels | PrP knockout mice are resistant to prion disease [[Bueler 1993]]<br>PrP expression level and incubation time are inversely correlated [[Fischer 1996]]<br>Disruption of PrP expression using Cre or Tet-off systems can delay or reverse disease [[Mallucci 2003], [Safar 2005]]<br>PrP knockout is tolerated in mice, cows, and goats, and there exist healthy older humans heterozygous for *PRNP* loss-of-function variants [[Bueler 1992], [Manson 1994], [Richt 2007], [Yu 2009], [Benestad 2012], [Minikel 2016]] |
| Stabilize PrP<sup>C</sup> conformation | Partial denaturation of PrP<sup>C</sup>, for instance with guanidine, facilitates in vitro conversion to PrP<sup>Sc</sup> [[Kocisko 1994]]<br>"Stapling" of PrP<sup>C</sup> with certain non-native disulfide bonds prevents conversion to PrP<sup>Sc</sup>[[Hafner-Bratkovic 2011]]<br>Monoclonal antibodies against PrP<sup>C</sup> cure prion-infected cells and peripheral prion infections [[Peretz 2001], [White 2003]] |
| Antagonize PrP<sup>C</sup> to PrP<sup>Sc</sup> conversion | Certain heterozygous missense variants in humans, and PrP transgenes from different species in mice, act as dominant negatives, inhibiting PrP<sup>Sc</sup> formation [[Palmer 1991], [Telling 1995]]<br>Small molecules discovered in phenotypic screens, which reduce PK-resistant PrP<sup>Sc</sup> formation in cell culture, extend life in mice infected with prions [[Kawasaki 2007], [Berry 2013], [Wagner 2013]] |

In thinking about therapeutics, it will also help you to know some basics about PrP. Let me help with one that non-prion people constantly forget: PrP is a GPI-anchored protein that can be found transiting through the secretory pathway, living on the outside surface of the cell, or in the endosomal/lysosomal pathway. Here is a handy diagram to help you remember some things about PrP's localization and life cycle:

![](/media/2016/06/life_of_prp.png)

Above I've only depicted PrP<sup>C</sup> and have not depicted where in the cell PrP<sup>Sc</sup> replication occurs. That's in part because there isn't total agreement or clarify on this point, though as I reviewed in [this MoA post](/2016/05/08/a-mechanism-of-action-hypothesis/) it seems like PrP<sup>Sc</sup> replication probably occurs somewhere in the endosomal/lysosomal pathway at right.

Here are just a few classics on prion cell biology:

+ In prion-infected cultured cells, PrP<sup>C</sup> appears to transit to the cell surface before being re-internalized and then converting to PrP<sup>Sc</sup> in some internal compartment; PrP<sup>Sc</sup> is degraded in these cells, but it has a longer half-life than PrP<sup>C</sup>. [[Caughey 1990], [Borchelt 1990], [Caughey & Raymond 1991]].
+ PrP<sup>Sc</sup> undergoes N-terminal truncation by lysosomal proteases, implying it reaches the lysosome at some point in its life cycle [[Caughey 1991]].
+ Characterization of alpha cleavage, shedding, and endocytic recycling of PrP<sup>C</sup> [[Harris 1993], [Shyng 1993]].

And you might also want to know a bit about two oft-mentioned tools of the prion trade:

+ Protein misfolding cyclic amplification (PMCA) is a process of cyclic sonication and incubation that allows cell-free amplifcation, or generation, of PK-resistant PrP<sup>Sc</sup> and prion infectivity [[Saborio 2001], [Castilla 2005]].
+ Real-time quaking-induced conversion (RT-QuIC) is a process of cyclic shaking and incubation that detects prions with remarkable sensitivity, while not generating any new infectivity [[Wilham 2010], [Atarashi 2011]].

Again, there's a whole world of other amazing scientific literature out there on prions that I haven't even touched on here. If you had to pick a rare disease to have, prion disease really is amazingly well-studied and a lot is known. But for an "introductory" reading list like what I was asked for, this post is already way too long.

[Prusiner 1982]: http://www.ncbi.nlm.nih.gov/pubmed/6801762 "Prusiner SB. Novel proteinaceous infectious particles cause scrapie. Science.  1982 Apr 9;216(4542):136-44. PubMed PMID: 6801762."

[Prusiner 1984]: http://www.ncbi.nlm.nih.gov/pubmed/6432339 "Prusiner SB, Groth DF, Bolton DC, Kent SB, Hood LE. Purification and structural studies of a major scrapie prion protein. Cell. 1984 Aug;38(1):127-34. PubMed PMID: 6432339."

[Oesch 1985]: http://www.ncbi.nlm.nih.gov/pubmed/2859120 "Oesch B, Westaway D, Wälchli M, McKinley MP, Kent SB, Aebersold R, Barry RA, Tempst P, Teplow DB, Hood LE, et al. A cellular gene encodes scrapie PrP 27-30 protein. Cell. 1985 Apr;40(4):735-46. PubMed PMID: 2859120."

[Chesebro 1985]: http://www.ncbi.nlm.nih.gov/pubmed/3923361 "Chesebro B, Race R, Wehrly K, Nishio J, Bloom M, Lechner D, Bergstrom S, Robbins K, Mayer L, Keith JM, et al. Identification of scrapie prion protein-specific mRNA in scrapie-infected and uninfected brain. Nature. 1985 May  23-29;315(6017):331-3. PubMed PMID: 3923361."

[Carlson 1986]: http://www.ncbi.nlm.nih.gov/pubmed/3015416 "Carlson GA, Kingsbury DT, Goodman PA, Coleman S, Marshall ST, DeArmond S, Westaway D, Prusiner SB. Linkage of prion protein and scrapie incubation time genes. Cell. 1986 Aug 15;46(4):503-11. PubMed PMID: 3015416."

[Westaway 1987]: http://www.ncbi.nlm.nih.gov/pubmed/2890436 "Westaway D, Goodman PA, Mirenda CA, McKinley MP, Carlson GA, Prusiner SB. Distinct prion proteins in short and long scrapie incubation period mice. Cell. 1987 Nov 20;51(4):651-62. PubMed PMID: 2890436."

[Hsiao 1989]: http://www.ncbi.nlm.nih.gov/pubmed/2564168 "Hsiao K, Baker HF, Crow TJ, Poulter M, Owen F, Terwilliger JD, Westaway D, Ott J, Prusiner SB. Linkage of a prion protein missense variant to Gerstmann-Sträussler syndrome. Nature. 1989 Mar 23;338(6213):342-5. PubMed PMID:  2564168."

[Scott 1989]: http://www.ncbi.nlm.nih.gov/pubmed/2574076 "Scott M, Foster D, Mirenda C, Serban D, Coufal F, Wälchli M, Torchia M, Groth  D, Carlson G, DeArmond SJ, Westaway D, Prusiner SB. Transgenic mice expressing hamster prion protein produce species-specific scrapie infectivity and amyloid plaques. Cell. 1989 Dec 1;59(5):847-57. PubMed PMID: 2574076."

[Caughey 1990]: http://www.ncbi.nlm.nih.gov/pubmed/1968104 "Caughey B, Neary K, Buller R, Ernst D, Perry LL, Chesebro B, Race RE. Normal and scrapie-associated forms of prion protein differ in their sensitivities to phospholipase and proteases in intact neuroblastoma cells. J Virol. 1990 Mar;64(3):1093-101. PubMed PMID: 1968104; PubMed Central PMCID: PMC249222."

[Borchelt 1990]: http://www.ncbi.nlm.nih.gov/pubmed/1968466 "Borchelt DR, Scott M, Taraboulos A, Stahl N, Prusiner SB. Scrapie and cellular prion proteins differ in their kinetics of synthesis and topology in cultured cells. J Cell Biol. 1990 Mar;110(3):743-52. PubMed PMID: 1968466; PubMed Central  PMCID: PMC2116048."

[Palmer 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1677164 "Palmer MS, Dryden AJ, Hughes JT, Collinge J. Homozygous prion protein genotype predisposes to sporadic Creutzfeldt-Jakob disease. Nature. 1991 Jul 25;352(6333):340-2. Erratum in: Nature 1991 Aug 8;352(6335):547. PubMed PMID: 1677164."

[Caughey & Raymond 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1680859 "Caughey B, Raymond GJ. The scrapie-associated form of PrP is made from a cell surface precursor that is both protease- and phospholipase-sensitive. J Biol Chem. 1991 Sep 25;266(27):18217-23. PubMed PMID: 1680859."

[Caughey 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1682507 "Caughey B, Raymond GJ, Ernst D, Race RE. N-terminal truncation of the scrapie-associated form of PrP by lysosomal protease(s): implications regarding the site of conversion of PrP to the protease-resistant state. J Virol. 1991 Dec;65(12):6597-603. PubMed PMID: 1682507; PubMed Central PMCID: PMC250721."

[Bueler 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1373228 "Büeler H, Fischer M, Lang Y, Bluethmann H, Lipp HP, DeArmond SJ, Prusiner SB,  Aguet M, Weissmann C. Normal development and behaviour of mice lacking the neuronal cell-surface PrP protein. Nature. 1992 Apr 16;356(6370):577-82. PubMed PMID: 1373228."

[Stahl 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8448158 "Stahl N, Baldwin MA, Teplow DB, Hood L, Gibson BW, Burlingame AL, Prusiner SB. Structural studies of the scrapie prion protein using mass spectrometry and amino acid sequencing. Biochemistry. 1993 Mar 2;32(8):1991-2002. PubMed PMID: 8448158."

[Pan 1993]: http://www.ncbi.nlm.nih.gov/pubmed/7902575/ "Pan KM, Baldwin M, Nguyen J, Gasset M, Serban A, Groth D, Mehlhorn I, Huang Z, Fletterick RJ, Cohen FE, et al. Conversion of alpha-helices into beta-sheets features in the formation of the scrapie prion proteins. Proc Natl Acad Sci U S A. 1993 Dec 1;90(23):10962-6. PubMed PMID: 7902575; PubMed Central PMCID: PMC47901."

[Bueler 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8100741 "Büeler H, Aguzzi A, Sailer A, Greiner RA, Autenried P, Aguet M, Weissmann C. Mice devoid of PrP are resistant to scrapie. Cell. 1993 Jul 2;73(7):1339-47. PubMed PMID: 8100741."

[Harris 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8093841 "Harris DA, Huber MT, van Dijken P, Shyng SL, Chait BT, Wang R. Processing of a cellular prion protein: identification of N- and C-terminal cleavage sites. Biochemistry. 1993 Feb 2;32(4):1009-16. PubMed PMID: 8093841."

[Shyng 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8101844 "Shyng SL, Huber MT, Harris DA. A prion protein cycles between the cell surface and an endocytic compartment in cultured neuroblastoma cells. J Biol Chem. 1993 Jul 25;268(21):15922-8. PubMed PMID: 8101844."

[Manson 1994]: http://www.ncbi.nlm.nih.gov/pubmed/7999308 "Manson JC, Clarke AR, Hooper ML, Aitchison L, McConnell I, Hope J. 129/Ola mice carrying a null mutation in PrP that abolishes mRNA production are developmentally normal. Mol Neurobiol. 1994 Apr-Jun;8(2-3):121-7. PubMed PMID: 7999308."

[Kocisko 1994]: http://www.ncbi.nlm.nih.gov/pubmed/7913989 "Kocisko DA, Come JH, Priola SA, Chesebro B, Raymond GJ, Lansbury PT, Caughey B. Cell-free formation of protease-resistant prion protein. Nature. 1994 Aug 11;370(6489):471-4. PubMed PMID: 7913989."

[Bessen 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7791905 "Bessen RA, Kocisko DA, Raymond GJ, Nandan S, Lansbury PT, Caughey B. Non-genetic propagation of strain-specific properties of scrapie prion protein. Nature. 1995 Jun 22;375(6533):698-700. PubMed PMID: 7791905."

[Telling 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7553876 "Telling GC, Scott M, Mastrianni J, Gabizon R, Torchia M, Cohen FE, DeArmond SJ, Prusiner SB. Prion propagation in mice expressing human and chimeric PrP transgenes implicates the interaction of cellular PrP with another protein. Cell. 1995 Oct 6;83(1):79-90. PubMed PMID: 7553876."

[Brandner 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8552188 "Brandner S, Isenmann S, Raeber A, Fischer M, Sailer A, Kobayashi Y, Marino S,  Weissmann C, Aguzzi A. Normal host prion protein necessary for scrapie-induced neurotoxicity. Nature. 1996 Jan 25;379(6563):339-43. PubMed PMID: 8552188."

[Fischer 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8635458 "Fischer M, Rülicke T, Raeber A, Sailer A, Moser M, Oesch B, Brandner S, Aguzzi A, Weissmann C. Prion protein (PrP) with amino-proximal deletions restoring susceptibility of PrP knockout mice to scrapie. EMBO J. 1996 Mar 15;15(6):1255-64. PubMed PMID: 8635458; PubMed Central PMCID: PMC450028."

[Telling 1996]: http://www.ncbi.nlm.nih.gov/pubmed/8953038 "Telling GC, Parchi P, DeArmond SJ, Cortelli P, Montagna P, Gabizon R, Mastrianni J, Lugaresi E, Gambetti P, Prusiner SB. Evidence for the conformation  of the pathologic isoform of the prion protein enciphering and propagating prion  diversity. Science. 1996 Dec 20;274(5295):2079-82. PubMed PMID: 8953038."

[Safar 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9771749 "Safar J, Wille H, Itri V, Groth D, Serban H, Torchia M, Cohen FE, Prusiner SB. Eight prion strains have PrP(Sc) molecules with different conformations. Nat Med. 1998 Oct;4(10):1157-65. PubMed PMID: 9771749."

[Prusiner 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9811807 "Prusiner SB. Prions. Proc Natl Acad Sci U S A. 1998 Nov 10;95(23):13363-83. Review. PubMed PMID: 9811807; PubMed Central PMCID: PMC33918."

[Saborio 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11459061 "Saborio GP, Permanne B, Soto C. Sensitive detection of pathological prion protein by cyclic amplification of protein misfolding. Nature. 2001 Jun 14;411(6839):810-3. PubMed PMID: 11459061."

[Peretz 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11507642 "Peretz D, Williamson RA, Kaneko K, Vergara J, Leclerc E, Schmitt-Ulms G, Mehlhorn IR, Legname G, Wormald MR, Rudd PM, Dwek RA, Burton DR, Prusiner SB. Antibodies inhibit prion propagation and clear cell cultures of prion infectivity. Nature. 2001 Aug 16;412(6848):739-43. PubMed PMID: 11507642."

[Mallucci 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14593181 "Mallucci G, Dickinson A, Linehan J, Klöhn PC, Brandner S, Collinge J. Depleting neuronal PrP in prion infection prevents disease and reverses spongiosis. Science. 2003 Oct 31;302(5646):871-4. PubMed PMID: 14593181."

[White 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12621436 "White AR, Enever P, Tayebi M, Mushens R, Linehan J, Brandner S, Anstee D, Collinge J, Hawke S. Monoclonal antibodies inhibit prion replication and delay the development of prion disease. Nature. 2003 Mar 6;422(6927):80-3. PubMed PMID: 12621436."

[Kocisko 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12970413 "Kocisko DA, Baron GS, Rubenstein R, Chen J, Kuizon S, Caughey B. New inhibitors of scrapie-associated prion protein formation in a library of 2000 drugs and natural products. J Virol. 2003 Oct;77(19):10288-94. PubMed PMID: 12970413; PubMed Central PMCID: PMC228499."

[Doh-ura 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15113880 "Doh-ura K, Ishikawa K, Murakami-Kubo I, Sasaki K, Mohri S, Race R, Iwaki T. Treatment of transmissible spongiform encephalopathy by intraventricular drug infusion in animal models. J Virol. 2004 May;78(10):4999-5006. PubMed PMID: 15113880; PubMed Central PMCID: PMC400350."

[Castilla 2005]: http://www.ncbi.nlm.nih.gov/pubmed/15851027 "Castilla J, Saá P, Hetz C, Soto C. In vitro generation of infectious scrapie prions. Cell. 2005 Apr 22;121(2):195-206. PubMed PMID: 15851027."

[Safar 2005]: http://www.ncbi.nlm.nih.gov/pubmed/16186247 "Safar JG, DeArmond SJ, Kociuba K, Deering C, Didorenko S, Bouzamondo-Bernstein E, Prusiner SB, Tremblay P. Prion clearance in bigenic mice. J Gen Virol. 2005 Oct;86(Pt 10):2913-23. PubMed PMID: 16186247."

[Steele 2007]: http://www.ncbi.nlm.nih.gov/pubmed/19164918/ "Steele AD, Lindquist S, Aguzzi A. The prion protein knockout mouse: a phenotype under challenge. Prion. 2007 Apr-Jun;1(2):83-93. Epub 2007 Apr 25. PubMed PMID: 19164918; PubMed Central PMCID: PMC2634447."

[Kawasaki 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17881452/ "Kawasaki Y, Kawagoe K, Chen CJ, Teruya K, Sakasegawa Y, Doh-ura K. Orally administered amyloidophilic compound is effective in prolonging the incubation periods of animals cerebrally infected with prion diseases in a prion strain-dependent manner. J Virol. 2007 Dec;81(23):12889-98. Epub 2007 Sep 19. PubMed PMID: 17881452; PubMed Central PMCID: PMC2169081."

[Richt 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17195841/ "Richt JA, Kasinathan P, Hamir AN, Castilla J, Sathiyaseelan T, Vargas F, Sathiyaseelan J, Wu H, Matsushita H, Koster J, Kato S, Ishida I, Soto C, Robl JM, Kuroiwa Y. Production of cattle lacking prion protein. Nat Biotechnol. 2007 Jan;25(1):132-8. Epub 2006 Dec 31. PubMed PMID: 17195841; PubMed Central PMCID: PMC2813193."

[Yu 2009]: http://www.ncbi.nlm.nih.gov/pubmed/18951376 "Yu G, Chen J, Xu Y, Zhu C, Yu H, Liu S, Sha H, Chen J, Xu X, Wu Y, Zhang A, Ma J, Cheng G. Generation of goats lacking prion protein. Mol Reprod Dev. 2009 Jan;76(1):3. doi: 10.1002/mrd.20960. PubMed PMID: 18951376."

[Ghaemmaghami & Ahn 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19956709 "Ghaemmaghami S, Ahn M, Lessard P, Giles K, Legname G, DeArmond SJ, Prusiner SB. Continuous quinacrine treatment results in the formation of drug-resistant prions. PLoS Pathog. 2009 Nov;5(11):e1000673. doi: 10.1371/journal.ppat.1000673.  Epub 2009 Nov 26. PubMed PMID: 19956709; PubMed Central PMCID: PMC2777304."

[Bremer 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20098419 "Bremer J, Baumann F, Tiberi C, Wessig C, Fischer H, Black P, Steele AD, Toyka KV, Nave KA, Weis J, Aguzzi A. Axonal prion protein is required for peripheral myelin maintenance. Nat Neurosci. 2010 Mar, 13 (3): 310-8. doi: 10.1038 / nn.2483. Epub 2010 Jan 24 PubMed PMID: 20098419"

[Wilham 2010]: http://www.ncbi.nlm.nih.gov/pubmed/21152012 "Wilham JM, Orrú CD, Bessen RA, Atarashi R, Sano K, Race B, Meade-White KD, Taubner LM, Timmes A, Caughey B. Rapid end-point quantitation of prion seeding activity with sensitivity comparable to bioassays. PLoS Pathog. 2010 Dec 2;6(12):e1001217. doi: 10.1371/journal.ppat.1001217. PubMed PMID: 21152012; PubMed Central PMCID: PMC2996325."

[Atarashi 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21278748 "Atarashi R, Satoh K, Sano K, Fuse T, Yamaguchi N, Ishibashi D, Matsubara T, Nakagaki T, Yamanaka H, Shirabe S, Yamada M, Mizusawa H, Kitamoto T, Klug G, McGlade A, Collins SJ, Nishida N. Ultrasensitive human prion detection in cerebrospinal fluid by real-time quaking-induced conversion. Nat Med. 2011 Feb;17(2):175-8. doi: 10.1038/nm.2294. Epub 2011 Jan 30. PubMed PMID: 21278748."

[Hafner-Bratkovic 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21324909 "Hafner-Bratkovic I, Bester R, Pristovsek P, Gaedtke L, Veranic P, Gaspersic J, Mancek-Keber M, Avbelj M, Polymenidou M, Julius C, Aguzzi A, Vorberg I, Jerala R. Globular domain of the prion protein needs to be unlocked by domain swapping to support prion protein conversion. J Biol Chem. 2011 Apr 8;286(14):12149-56. doi:  10.1074/jbc.M110.213926. Epub 2011 Feb 15. PubMed PMID: 21324909; PubMed Central  PMCID: PMC3069419."

[Benestad 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23249298 "Benestad SL, Austbø L, Tranulis MA, Espenes A, Olsaker I. Healthy goats naturally devoid of prion protein. Vet Res. 2012 Dec 18;43:87. doi: 10.1186/1297-9716-43-87. PubMed PMID: 23249298; PubMed Central PMCID: PMC3542104."

[Wagner 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23604588 "Wagner J, Ryazanov S, Leonov A, Levin J, Shi S, Schmidt F, Prix C, Pan-Montojo F, Bertsch U, Mitteregger-Kretzschmar G, Geissen M, Eiden M, Leidel F, Hirschberger T, Deeg AA, Krauth JJ, Zinth W, Tavan P, Pilger J, Zweckstetter M, Frank T, Bähr M, Weishaupt JH, Uhr M, Urlaub H, Teichmann U, Samwer M, Bötzel K,  Groschup M, Kretzschmar H, Griesinger C, Giese A. Anle138b: a novel oligomer modulator for disease-modifying therapy of neurodegenerative diseases such as prion and Parkinson's disease. Acta Neuropathol. 2013 Jun;125(6):795-813. doi: 10.1007/s00401-013-1114-9. Epub 2013 Apr 19. PubMed PMID: 23604588; PubMed Central PMCID: PMC3661926."

[Berry 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24128760 "Berry DB, Lu D, Geva M, Watts JC, Bhardwaj S, Oehler A, Renslo AR, DeArmond SJ, Prusiner SB, Giles K. Drug resistance confounding prion therapeutics. Proc Natl Acad Sci U S A. 2013 Oct 29;110(44):E4160-9. doi: 10.1073/pnas.1317164110. Epub 2013 Oct 15. PubMed PMID: 24128760; PubMed Central PMCID: PMC3816483."

[Giles 2015]: http://www.ncbi.nlm.nih.gov/pubmed/26224882 "Giles K, Berry DB, Condello C, Hawley RC, Gallardo-Godoy A, Bryant C, Oehler A, Elepano M, Bhardwaj S, Patel S, Silber BM, Guan S, DeArmond SJ, Renslo AR, Prusiner SB. Different 2-aminothiazole therapeutics produce distinct patterns of  scrapie prion neuropathology in mouse brains. J Pharmacol Exp Ther. 2015 Jul 29.  pii: jpet.115.224659. [Epub ahead of print] PubMed PMID: 26224882."

[Minikel 2016]: http://www.ncbi.nlm.nih.gov/pubmed/26791950 "Minikel EV, Vallabh SM, Lek M, Estrada K, Samocha KE, Sathirapongsasuti JF, McLean CY, Tung JY, Yu LP, Gambetti P, Blevins J, Zhang S, Cohen Y, Chen W, Yamada M, Hamaguchi T, Sanjo N, Mizusawa H, Nakamura Y, Kitamoto T, Collins SJ, Boyd A, Will RG, Knight R, Ponto C, Zerr I, Kraus TF, Eigenbrod S, Giese A, Calero M, de Pedro-Cuesta J, Haïk S, Laplanche JL, Bouaziz-Amar E, Brandel JP, Capellari S, Parchi P, Poleggi A, Ladogana A, O'Donnell-Luria AH, Karczewski KJ,  Marshall JL, Boehnke M, Laakso M, Mohlke KL, Kähler A, Chambert K, McCarroll S, Sullivan PF, Hultman CM, Purcell SM, Sklar P, van der Lee SJ, Rozemuller A, Jansen C, Hofman A, Kraaij R, van Rooij JG, Ikram MA, Uitterlinden AG, van Duijn  CM; Exome Aggregation Consortium (ExAC), Daly MJ, MacArthur DG. Quantifying prion disease penetrance using large population control cohorts. Sci Transl Med. 2016 Jan 20;8(322):322ra9. doi: 10.1126/scitranslmed.aad5169. PubMed PMID: 26791950."

