---
layout: post
title:  "Chemical biology 09: Immunophilins and small-molecule modulators"
date:   2015-10-06 12:00:00
author: ericminikel
tag: chem-101
location: Cambridge, MA
summary200: ""
---

*These are my notes from lecture 9 of Harvard's Chemistry 101: Chemical Biology Towards Precision Medicine course, taught by Dr. Stuart Schreiber on October 6, 2015.*

Today's readings are [[Schreiber 1998], [Knight & Shokat 2007], [Di Stasi 2011], [Rutkowska & Schultz 2012]].

Before their targets were identified, rapamycin, FK506, etc. were simply known as immunosuppressive agents. Therefore their hypothetical targets were referred to as "immunophilins" (immuno\[suppressive\]-philic). It was a huge surprise when it turned out that rapamycin actually binds two proteins at once, mTOR and FKBP12, inducing their dimerization to bring about a new biological activity, a gain of function. It eventually turned out that this sort of mechanism was more general than just this one example. These discoveries also helped to change our ideas of what classes of proteins are or are not druggable.

Big themes for today:

1. Gain-of-function by small molecules
2. Elucidation of signaling pathways by using probes
3. Bump/hole strategy for probes
4. Small molecule dimerizers

Our story begins with cyclosporin A (CsA). This is a natural product that eventually got named sandimmune after Sandoz, the company that brought it to FDA approval in 1988. It became a $1 billion per year drug, and Sandoz eventually became Novartis. Despite its mechanism being totally unknown, this became the first drug used to prevent organ transplant rejection. Its hypothetical target was referred to as cyclophilin. Note that cyclosporin is wildly in violation of Lipinski's rules.

Aside: Dr. Schreiber's theory of how small molecule synthesis pathways arose in nature is as follows. Because fatty acids are so fundamental to life, the fatty acid synthesis pathway, where carbons are added two at a time, probably became first. Mutations in the synthases may then have led to variations such as retaining ketones and other intermediates.

FK506, another natural product, was later discovered by Fujisawa as an inhibitor of T-cell receptor signaling. This touched off a race to develop a total synthesis of FK506. A convergent total synthesis was achieved in 1990 [[Nakatsuka 1990]]. This led to renewed interest in rapamycin, a natural product discovered earlier.

However, one of the most revolutionary breakthroughs was actually a completely trivial synthesis. The acylation of FK506 and of rapamycin allowed these compounds to be conjugated to an affigel solid support so that you could then pull down proteins with it and run them on a gel. This was the proteomic technology of the day, and over the course of years, it led to the progressive identification of more and more FK506-binding proteins, dubbed FKBPs. Today, you could do all of this in a day: just one [SILAC](/2015/09/22/chemical-biology-06/) experiment can pull out all of the FKBP family members at the top of the enrichment list. All three of these immunosuppressive agents acted on T cells. FK506 and rapamycin were structurally similar. Yet, surprisingly, it turned out that FK506 and CsA block one signaling pathway, while rapamycin blocks a different pathway. This was quite counterintuitive and many people did not believe it at first. How could two such similar molecules be doing such different things?

Answering this question required a synthetic chemistry approach, using target-oriented synthesis to dissect out the parts of each molecule responsible for their activity. This led to FK506 being pared down to just 506BD, the binding domain that was shared between FK506 and rapamycin. FK506 and rapamycin could each (or even moreso in concert) inhibit the proliferation of T cells, but pre-incubation of the cells with 506BD blocked the effects of the two compounds. This demonstrated that FK506 and rapamycin couldn't just be binding and inhibiting something; they were actually bringing about a new function. Thus, FK506 and rapamycin might have different activities because they share 506BD yet have two different effector domains. What did those different effector domains do? Vertex Pharmaceuticals' earliest goal was to solve this question, on the theory that the answer would lead them to a billion dollar drug (which it didn't). 

With this knowledge in hand, it was possible to affix FKBP12 *and* FK506 or rapamycin to a solid support, and look for the other protein(s) that bound to the complex. This finally led to a full characterization of the targets. CsA and FK506 each brought FKBP12 into affinity with calcineurin A and B, while rapamycin brought FKBP12 into proximity with a novel protein dubbed mechanistic target of rapamycin (mTOR). You can see a crystal structure of rapamycin and FKBP12 bound to just a domain of mTOR called FRB (the FKBP12-rapamycin-binding domain). These tools allowed elucidation of the calcium/calcineurin/NF-AT pathway, the first membrane-to-nucleus signaling pathway to be worked out.

Calcineurin was a protein phosphatase, so the discovery that an existing blockbuster drug, CsA, targeted a phosphatase, forced acceptance of the idea that phosphatases were druggable. Likewise, mTOR is a kinase, and rapamycin was soon approved as sirolimus, so this demonstrated that kinases were also druggable.

It turns out there are lots of natural and synthetic products that are dimerizers. For instance, plants make a molecule called abscisic acid (ABA) that dimerizes a phosphatase, PP2C, and a receptor, PYR/PYL/RCAR. This dimerization sequesters the phosphatase, allowing SnRK2 kinase to autophosphorylate and thus activate a transcription factor called ABF. And more recently, we learned that [lenalidomide](/2015/08/24/thalidomides-renaissance/) dimerizes cereblon with Ikaros and Aiolos. The chemistry community has long accepted that ~30% of drugs have gain-of-function mechanisms, but awareness among biologists has been slower to grow, and many people still incorrectly believe that almost all drugs are inhibitors.

The identification of rapamycin's binding site on mTOR allowed mutagenesis experiments. An S2035T mutation at the binding site abolished binding, and this mutant became the perfect control to prove that mTOR was indeed the target and what changes occurred downstream of rapamycin binding to mTOR. An additional mutation D2338A destroyed the kinase activity of mTOR, and S2035T/D2338A double mutants behaved the same as rapamycin-bound wild-type mTOR, proving that the kinase activity was what was required. These sort of experiments were called the **bump/hole strategy** - mutating one residue to add a bump (such as a methyl group) or a hole to make proteins that are or are not sensitive to a drug. The fact that this strategy requires both chemistry and genetics led to it also being called **chemical genetics**. Similar experiments were used to elucidate calcineurin's function. 

Recently, a crystal structure of the whole intact mTOR protein was solved, and revealed in greater detail how rapamycin inhibits kinase activity [[Yang 2013]]. Turns out, ATP can bind to mTOR regardless of rapamycin's presence, but rapamycin actually brings FKBP12 into a place where it sterically blocks the target protein from coming into proximity with the ATP.

A fundamental physical principle to understand is **effective molarity**. The precise definition is the concentration of a reactant needed to achieve the rate of a reaction comparable to its intramolecular version. This was originally defined by chemists, hence the word "reactant", but for our purposes, this could be a protein. Sometimes effective molarity is purely theoretical - for instance, water itself has a molarity of 55M, yet sometimes if you extrapolate from observations, you find the effective molarity for a reactant can be something impossible like 200M. Effective molarity can be broken down into proximity and orientation. For instance, consider methanol and a methyl acetate groups hanging off of a molecule in exactly the right position and orientation - they will react with each other very fast, maybe with an effective molarity as high as 100M. In other words, you would need 100M of just methanol and methyl acetate in order to have the reaction happen that fast *without* it being intramolecular. If the groups are intramolecular and are proximate but in the wrong orientation, the rate can be orders of magnitude slower.

With this in mind, the discovery of the immunosuppressive drugs' mechanism led to the idea that inducing proximity could be a powerful way to drive things to occur in a cell. Some biologists initially rejected this idea, because the insulin receptor is constitutively dimerized, yet is only active when insulin is bound. Turns out, the issue there is orientation - in its baseline state, the insulin receptor has the relevant domains pointed away from one another; insulin binding orients them towards each other.

It was now possible to cut and paste probe-binding domains of proteins onto other proteins of interest in order to study what would happen if you dimerized them (**chemical induction of dimerization**). For instance, fusing the FK506-binding domain to your protein of interest and then applying FK1012 (two copies of FK506) is a useful trick to get your protein of interest to dimerize. The ingredients for this sort of experiment are now sold as a kit. One useful trick was to fuse FKBP12 to Fas (aka APO1), which induces apoptosis when dimerized. Therefore you can express FKBP12-Fas in mice under a cell type-specific promoter, and then administer FK1012 to kill all the cells expressing that protein. This allowed spatial and temporal control *in vivo*. This trick has even been used in humans, as a safety switch for bone marrow transplants [[Di Stasi 2011]]. The hematopoeitic stem cells are made to express a mutant of FKBP12 fused to &Delta;Caspase9, an apoptotic pro-molecule. The cells are transplanted into patients, and if the transplant works, great, but in the few patients who develop graft-versus-host disease, however, administration of a dimerizer of the mutant FKBP12 kills all of the transplanted cells. This was done as a proof-of-concept in just a few patients and was quite successful, but has not been approved by FDA yet. You'd think that this would also put you back to square one of having no immune system, but surprisingly, the treatment eliminated 90% of transplanted cells and ended the graft-versus-host disease, yet the 10% of cells that survived managed to reconstitute the immune system without graft-versus-host.

To avoid your dimerizer also possessing (or antagonizing) the activity of the original molecule, a bump/hole strategy can be used to design a mutant protein and a modified probe that are affine for each other but such that the new probe doesn't bind the wild-type protein. This was done in the graft-versus-host study above, for instance.

[Schreiber 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9784856 "Schreiber SL. Chemical genetics resulting from a passion for synthetic organic chemistry. Bioorg Med Chem. 1998 Aug;6(8):1127-52. PubMed PMID: 9784856."

[Knight & Shokat 2007]: http://www.ncbi.nlm.nih.gov/pubmed/17289560 "Knight ZA, Shokat KM. Chemical genetics: where genetics and pharmacology meet. Cell. 2007 Feb 9;128(3):425-30. PubMed PMID: 17289560."

[Di Stasi 2011]: http://www.ncbi.nlm.nih.gov/pubmed/22047558 "Di Stasi A, Tey SK, Dotti G, Fujita Y, Kennedy-Nasser A, Martinez C, Straathof K, Liu E, Durett AG, Grilley B, Liu H, Cruz CR, Savoldo B, Gee AP, Schindler J, Krance RA, Heslop HE, Spencer DM, Rooney CM, Brenner MK. Inducible apoptosis as a safety switch for adoptive cell therapy. N Engl J Med. 2011 Nov 3;365(18):1673-83. doi: 10.1056/NEJMoa1106152. PubMed PMID: 22047558; PubMed Central PMCID: PMC3236370."

[Rutkowska & Schultz 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22689479 "Rutkowska A, Schultz C. Protein tango: the toolbox to capture interacting partners. Angew Chem Int Ed Engl. 2012 Aug 13;51(33):8166-76. doi: 10.1002/anie.201201717. Epub 2012 Jun 11. Review. PubMed PMID: 22689479."

[Nakatsuka 1990]: http://dx.doi.org/10.1021/ja00170a024 "Nakatsuka, M., Ragan, J. A., Sammakia, T., Smith, D. B., Uehling, D. E., & Schreiber, S. L. (1990). Total synthesis of FK506 and an FKBP probe reagent,[C (8), C (9)-13C2]-FK506. Journal of the American Chemical Society, 112(14), 5583-5601."

[Yang 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23636326 "Yang H, Rudge DG, Koos JD, Vaidialingam B, Yang HJ, Pavletich NP. mTOR kinase  structure, mechanism and regulation. Nature. 2013 May 9;497(7448):217-23. doi: 10.1038/nature12122. Epub 2013 May 1. PubMed PMID: 23636326; PubMed Central PMCID: PMC4512754."



