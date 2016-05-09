---
layout: post
title:  "A mechanism of action hypothesis"
date:   2016-05-08 12:01:00
author: ericminikel
location: Cambridge, MA
thumb120: http://www.cureffi.org/media/2016/05/moa_thumbnail.png
summary200: "Quinacrine and chlorpromazine are two potent antiprion compounds that weren't invented to target prions. What is their mechanism of action?"
---

![](/media/2016/05/cinchona_bark.png)

*Crushed cinchona bark is the source of the natural product quinine, an antiprion compound whose mechanism of action is discussed in this post.*

### introduction

In the past couple of years, I've blogged a few times about proposed mechanisms of action (MoA) of known antiprion compounds. After some more pondering and several conversations with very smart people, I have a hypothesis about the MoA of a few of the compounds. From reading the literature, I can't for the life of me tell whether this hypothesis is A) crazy, B) so obvious that everyone else already assumed it was true and hadn't bothered to say it out loud, or C) somewhere in between. But in the hopes of finding out, I'll share my thinking here.

### background on antiprion compounds discussed in this post

This post is about [**quinine, quinacrine and their analogs**](http://www.cureffi.org/2015/06/19/the-curious-antiprion-activity-of-antimalarial-quinolines/) and [**chlorpromazine**](http://www.cureffi.org/2012/12/17/chlorpromazine-another-prion-therapeutic-of-yesteryea/). I will also touch on a few other antiprion compounds along the way, including protease inhibitors such as E-64d. All of these compounds have antiprion activity in cell culture, by which I mean, they reduce the amount of immunodetectable protease-resistant PrP produced in continuously dividing murine cell lines infected with mouse RML prions [[Doh-Ura 2000], [Korth 2001]]. None of them seem to be active *in vivo* [[Collins 2002], [Barret 2003], [Ghaemmaghami & Ahn 2009]]. To the extent that it's been studied, some of these compounds, such as quinacrine, don't work in non-dividing cultured cells either [[Ghaemmaghami & Ahn 2009]]. Quinacrine also has strain-specific effects. For instance, it seems to actually promote CWD prion propagation, or at least protease resistance [[Bian 2014]], and it engenders drug resistance even among RML prions [[Ghaemmaghami & Ahn 2009]]. We don't know whether any of these compounds are active against human prions because we lack a human prion-infected cell model and, as far as I know, no one has tested them in mice infected with human prions.

Given that these compounds don't work *in vivo*, I've debated whether their MoA is interesting or important enough to spend time thinking about, but I've tended to come down on the side that this line of inquiry could yield some insights into prion biology and potential points for therapeutic intervention.

So what do and don't know about the MoA of these compounds?

### quinolines

![](/media/2016/05/quinolines.png)

*Just a few of the quinoline compounds that possess antiprion activity.*

[The antimalarial quinolines](/2015/06/19/the-curious-antiprion-activity-of-antimalarial-quinolines/) &mdash; quinacrine and its analogs, including the original natural product quinine &mdash; are probably the best-studied antiprion compounds, and several potential MoAs have been proposed, including binding PrP<sup>C</sup>, binding PrP<sup>Sc</sup>, and redistributing cholesterol. All of these proposed explanations are unsatisfying, with a combination of weak evidence and low prior probabilities. 

A key conversation that got me thinking about writing this post was when Stuart Schreiber pointed out to me that the cinchona tree spent millions of years developing quinine as a highly optimized defense against something, and that something was certainly not PrP. In general, natural products are exceptionally good at doing the one thing they evolved to do. For them to do a second thing equally well just by chance would be a fairly unlikely coincidence. So if they do a second thing well, Occam's razor says the MoA for the second thing is probably somehow related to the first thing. 

So what is that "first thing" that quinine evolved to do? And, by extension, that all its synthetic analogues, such as quinacrine and chloroquine, also do?

They alkalinize acidic compartments in cells.

These compounds all have the unique property of **lysosomotropism**. They are membrane-permeable as bases, but not as their conjugate acids. So they just drift around between different cellular compartments until they become protonated, at which point they're stuck. As a result, they accumulate in the most acidic cellular compartment, soaking up protons, increasing the pH. It was shown decades ago that this property is required for the antimalarial effects of chloroquine, which accumulates in the *P. falciparum*'s acidic vacuole [[Yayon 1984], [Yayon 1985]]. The parasite lives on human hemoglobin, but cannot digest heme, and must instead crystallize it into a structure called "hemozoin" to triage its toxicity [[Slater & Cerami 1992]]. Hemozoin forms spontaneously in acidic conditions but not in neutral conditions [[Rush 2009]]. So you could imagine how a base that gets into the vacuole and raises the pH would unleash the toxicity of heme, killing the parasite. Although, curiously, in the case of malaria, experts who know more than I do seem to think that the MoA is more complicated than that, and that alkalinization of the vacuole is necessary but not sufficient for efficacy of these compounds [[Francis 1997], [Foley & Tilley 1998]]. Yet it really does appear that these compounds have no protein target, as the only known resistance mechanism in *P. falciparum* is the upregulation of xenobiotic transporters that pump the compounds back out of the vacuole [[Fidock 2000]]. If there were a protein target, one would expect the gene encoding that protein to be found mutated in some resistant isolates.

In mammalian cells, where hemozoin is not a factor, the main effect of raising lysosomal pH seems to be to inactivate proteases. Lysosomal proteases, like other secretory pathway proteins, are co-translationally translocated across the ER membrane and mature in steps through the ER and Golgi. Their inability to function at the neutral pH of those compartments is what keeps them from chewing up the whole secreted proteome [[Cooper 2000 Chapter 9 - Lysosomes]]. Instead, they only turn on when the compartment they are in matures into a lysosome and proton pumps turn on and acidify it. Thus, quinine et al inactivate lysosomal proteases. Apparently this is widely known. Last month I attended a talk totally unrelated to prions, where on one slide the speaker briefly touched on the effects of inhibiting autophagy in a particular cancer cell line. The slide named chloroquine as the tool compound used for this purpose, without further explanation, as if everyone in the audience simply knew this was how things worked.

Once I realized how widely accepted this was, I wondered, is this in fact precisely why people tested these compounds against prions in the first place? It appears the answer is probably yes.

The earliest reference I could find to the use of any quinine analog in the study of PrP or prions was in [[Shyng 1993]], the classic cell biology paper where David Harris first reported alpha cleavage and shedding of PrP. That study used pulse-chase, Western blots, immunofluorescence, and a few tool compounds to elucidate the cellular metabolism of PrP<sup>C</sup> in (uninfected) chicken cells. Pulse-chase showed that PrP<sup>C</sup> cycles repeatedly between the cell surface and an endocytic compartment, with about 5% of it undergoing alpha cleavage while in that endocytic compartment. When 300 &mu;M chloroquine was applied to the cells, alpha cleavage was diminished. (As an aside, already in 1993, the fact that chloroquine alkalinizes acidic compartments was so well-known that it was mentioned without citation.) Ammonium chloride (NH<sub>4</sub>Cl) and leupeptin also inhibited this cleavage event. Ammonia is, like quinine and quinacrine, a lysosomotropic weak base that can alkalinize acidic cellular compartments, and leupeptin is an inhibitor of cysteine, serine, and threonine proteases &mdash; both are considered tool compounds for inhibiting lysosomal function [[Seglen 1983]]. Aprotinin, another protease inhibitor, also inhibited the cleavage, whereas EDTA (to chelate metals and thus inactivate metalloproteinases) and pepstatin (an aspartyl protease inhibitor) had no discernible effect, so the conclusion was that alpha cleavage was performed by pH-sensitive serine proteases in an acidic endocytic compartment. (I'm not sure how this squares with the nowadays conventional wisdom that alpha cleavage is performed by ADAMs, which are metalloproteinases [[Liang & Kong 2012]]). The study never touched on PrP<sup>Sc</sup>, but it established that PrP<sup>C</sup> does normally cycle between the cell surface and someplace acidic inside the cell, and that this cycling is part of its endogenous metabolism.

The next time these compounds turn up is when Katsumi Doh-Ura and Byron Caughey test quinacrine and chloroquine in prion-infected ScN2a cells several years later [[Doh-Ura 2000]]. They don't cite the Shyng paper, but they do refer to the compounds as "lysosomotropic agents", and they cite work from the Caughey lab indicating that PrP<sup>Sc</sup> undergoes beta cleavage in the lysosome \[[Caughey 1991]\] (more on this below). In addition to the lysosomotropic compounds, they also test the cysteine protease inhibitors leupeptin, E-64, and E-64d. So although the hypothesis / reason for interest in these compounds is never explicitly stated, the thought process seems to be similar to David Harris' thought process: pH-sensitive proteases are doing something, and here are two orthogonal ways to inactivate them. Doh-Ura et al contemplated a few different hypotheses as to why the inactivation of these proteases might be inhibiting prion propagation. For instance, in one model, there exists a chaperone that breaks down prions, but that chaperone is itself degraded by lysosomal proteases, so inhibiting the proteases results in increased destruction of prions.

### chlorpromazine

![](/media/2016/05/chlorpromazine_et_al.png)

*Chlorpromazine and a couple of analogs that also possess antiprion activity.*

I have discussed the literature on these compounds in a few previous posts. Chlorpromazine's antiprion MoA was largely unspeculated-upon until 2014, when a crystal structure was published showing chlorpromazine bound to PrP<sup>C</sup> [[Baral 2014]]. At the time, I took this at face value and [entertained](/2014/09/03/chlorpromazine-a-new-mechanism-of-action/) the possibility that PrP<sup>C</sup> binding might really mediate chlorpromazine's antiprion effects. But having learned more about both chemical biology and structural biology over the past two years, I now consider that explanation very unlikely. While crystallography is a powerful tool for determining the exact binding mode of known ligands, it suffers from an excess of sensitivity: the conditions of crystallization are so extreme that compounds can be seen bound to a target for which they bear no affinity measurable by any other means. Meanwhile, chlorpromazine is quite potent against prion infection in cell culture, with low micromolar efficacy (EC<sub>50</sub> &asymp; 3 &mu;M [[Korth 2001]]) whereas chemical shift changes in NMR were only observed at millimolar concentrations (6-12 mM promazine [[Baral 2014]]). And of course, the prior probability of chlorpromazine binding PrP<sup>C</sup> with affinity sufficient to explain its bioactivity seems very low considering that chlorpromazine was not invented with PrP<sup>C</sup> in mind.

Here too, a key conversation has shaped my thinking. This conversation was over breakfast with Emiliano Biasini one morning at Prion2015. He rejected out of hand the notion that chlorpromazine binds PrP<sup>C</sup>, and pointed out that cell biologists use chlorpromazine as an inhibitor of endocytosis, so that has to be the way it works for prions.

Chlorpromazine, mind you, wasn't developed as an endocytosis inhibitor. It is the original "typical antipsychotic" drug developed to treat schizophrenia [[Meltzer 2013]], and most people seem to agree that its mechanistic target in the treatment of that disorder is the D2 dopamine receptor, encoded by *DRD2* [[Hyman 2012]]. At first glance, the fact that a drug developed for the dopamine receptor also happens to inhibit endocytosis seems to contradict my Occam's razor rule discussed for quinine above, but apparently it's all a matter of potency. 

One classic paper [[Creese 1976]] measured chlorpromazine's potency against dopamine receptors indirectly through displacement of radiolabeled haloperidol, which is another, more potent, typical antipsychotic with reported a K<sub>D</sub> of 2 nM for dopamine receptors. That paper reported a K<sub>i</sub> value of 10 nM for chlorpromazine. A more recent work I came across reported that chlorpromazine has a K<sub>i</sub> of 4 nM for the D2 dopamine receptor [[Kroeze 2003]]. But chlorpromazine is highly promiscuous: that paper also showed that it has nanomolar affinities for a dozen other receptors, including serotonin and histamine receptors (see [this table](http://www.nature.com/npp/journal/v28/n3/fig_tab/1300027t1.html#figure-title)), some of which appear to underlie the drug's notorious side effects [[Kroeze 2003]].

In contrast to all of those nanomolar values, inhibition of endocytosis only occurs when you get into the micromolar range. The original papers showing that trifluoperazine (an analog of chlorpromazine) interferes with receptor recycling [[DiPaola 1984]] and then that chlorpromazine blocks endocytosis of the LDL receptor [[Wang 1993]] used concentrations of 20 and 30 &mu;M. The mechanistic target of chlorpromazine with respect to endocytosis is, therefore, not the D2 dopamine receptor, but presumably some other target for which it has three orders of magnitude weaker affinity.

That other target might be the dynamins, a group of proteins (encoded by [_DNM1_](http://exac.broadinstitute.org/gene/ENSG00000106976), [_DNM2_](http://exac.broadinstitute.org/gene/ENSG00000079805), and [_DNM3_](http://exac.broadinstitute.org/gene/ENSG00000197959) in humans) that are required for scission (cutting off) of membranes during endocytosis [[Sweitzer & Hinshaw 1998], [Hinshaw 2002]]. Emiliano Biasini sent me an interesting paper published last year showing that chlorpromazine and a few other atypical antipsychotics inhibit dynamin's GTPase activity *in vitro* with EC<sub>50</sub> values on the order of 10 &mu;M [[Daniel 2015]]. The structure-activity relationship among the molecules is compelling: their potency at inhibiting dynamin GTPase activity is correlated with their potency at inhibiting endocytosis in cells, and both of those values are uncorrelated with their potency as dopamine antagonists [[Daniel 2015]].

So chlorpromazine, originally a drug for the dopamine receptor, happens to bind some other target, maybe dynamins, with much weaker affinity, and is thus a micromolar inhibitor of endocytosis. And "inhibitor" may not be quite the right word, because what the drug actually does is complicated. When fibroblasts were treated with chlorpromazine, the LDL receptor was visualized as being redistributed away from the cell surface and trapped in some intracellular compartment [[Wang 1993]]. So what chlorpromazine really seems to do is to introduce a blockade and a pileup at some particular step in the endocytic pathway.

In further support of this being the antiprion MoA of chlorpromazine, I emailed with Emiliano Biasini again while writing this post, and he gave me permission to share here that he now has a manuscript in preparation showing that chlorpromazine does indeed cause trapping of PrP<sup>C</sup> in intracellular compartments. 

### a review of some cell biology

What I think I know so far, then, is that chlorpromazine inhibits prion formation by introducing a blockade in the endocytic pathway, and quinacrine inhibits prion accumulation by inactivating acid-dependent proteases. How do we interpret this information? In other words, why would these MoAs affect prion propagation?

To try to get to the bottom of this, I started reading up on the cell biology of PrP, of endocytosis, and of lysosomes,. Cell biology is not my strong suit, so I've probably gotten some things wrong here, and please let me know if you find mistakes.

A few useful resources included an NCBI Book [[Cooper 2000]] and a couple of reviews [[Maxfield & McGraw 2004], [Grant & Donaldson 2009]]. All of these contain diagrams of the endocytic pathway, minor variations on the same general picture. Here's my very simple rendition of roughly what that diagram looks like:

![](/media/2016/05/endocytic_pathway.png)

*Disclaimer: I'm not a cell biologist.*

As a general note before we move on, I just want to acknowledge this diagram is quite a simplification. The term "early endosome" includes at least two different organelles, a sorting endosome and an endocytic recycling compartment. I haven't depicted multivesicular bodies. And as Maxfield & McGraw point out, even the organelles that are depicted here can be a moving target. What we call "late endosomes", for instance, might be defined operationally by staining for a particular protein marker, but at the end of the day, they are "a heterogeneous collection of compartments with different properties, and the functional consequences of this heterogeneity are not well understood" [[Maxfield & McGraw 2004]].

A major role of the endocytic pathway is the degradation or recycling of cell surface receptors &mdash; in fact, a lot of this pathway was worked out through the study of the LDL receptor. First I'm going to walk through some key points from [[Cooper 2000 Chapter 12 - Endocytosis]] to make sure I understand them. When a ligand binds a receptor, it can undergo endocytosis, where the endocytic vesicles first fuse with early endosomes, which have an internal pH around 6.0-6.2. This pH is low enough to cause many ligands to dissociate from their receptors, such that the ligand can continue its journey inward into the cell while the receptor may be recycled back to the cell surface. This pH, however, is not low enough to lead to activation of any proteases. Some contents of the early endosomes can then be transported, in carrier vesicles, to the late endosomes deeper inside the cell. These have a lower pH of 5.5-6.0 and also accept infusions of transport vesicles directly from the Golgi, containing lysosomal acid hydrolases. "Acid hydrolases" simply means enzymes that break covalent bonds ([hydrolases](https://en.wikipedia.org/wiki/Hydrolase)) and that are active only at low pH (~5.0). As the late endosomes further mature and acidify to pH ~5.0 with help of the V-ATPase proton pump, the hydrolases awaken, contents begin to be degraded, and people begin to call the organelle a lysosome. If you don't like my diagram, [Figure 12.41](http://www.ncbi.nlm.nih.gov/books/NBK9831/figure/A2028/?report=objectonly) is another useful depiction.

People always talk about recycling from the early endosomes back to the cell surface, but the textbook view of the endocytic pathway does not often include recycling from late endosomes or lysosomes back to the cell surface. For instance, in [Figure 1](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3038567/figure/F1/) of [[Grant & Donaldson 2009]], the late endosomes are depicted as a dead end. [Figure 9.36](http://www.ncbi.nlm.nih.gov/books/NBK9953/figure/A1524/?report=objectonly) of [[Cooper 2000]] depicts the cation-independent mannose-6-phosphate receptor (CI-MPR) &mdash; receptors for the signal that targets acid hydrolases from the Golgi to the late endosome &mdash; as recycling out of late endosomes, but only back to the Golgi, not the cell surface. Of course, the Golgi are also part of the secretory pathway, and not just the endocytic pathway, which is why in my diagram above I've drawn an arrow for exocytosis, the process by which secreted and membrane proteins get to the cell surface. If you were an enterprising protein in the late endosome looking to avoid a fate of being degraded in the lysosome, you can imagine a loophole where you hop a vesicle back to the Golgi, and then from there find a way to get exocytosed back to the cell surface.

Do any proteins actually exploit such a loophole? Figure 2 of [[Maxfield & McGraw 2004]] suggests this possibility and more, by showing a bidirectional arrow between late endosomes and lysosomes (which I've included in gray with a question mark above), and then a network of arrows that in principle lead from late endosomes to the trans-Golgi network, then to the endocytic recycling compartment, and finally to the cell surface. The text mentions two examples of proteins that can traverse this whole pathway. One protein, furin, recycles repeatedly between the late endosomes and the trans-Golgi; they state that furin's "net rate of export back to the cell surface is low", but "low" presumably means non-zero. The other protein is CI-MPR itself, and like furin, its "net rate of... return to the cell surface is low." So according to this source, it is at least possible, though perhaps not common, for proteins from at least the late endosomes to recycle back to the cell surface. Curiously, that bidirectional arrow between lysosomes and late endosomes is never explained, so it is still not clear to me whether it is possible to get out of the lysosome and back to the cell surface.

A brief detour before we move on: at the beginning of this section I glossed over how endocytosis occurs. The reviews cited above focus mostly on clathrin-mediated endocytosis, where the protein clathrin forms a lattice that physically deforms the membrane, causing it to bubble inward.  This is one area where PrP may or may not be special. It is generally held that GPI-anchored proteins are endocytosed by clathrin-independent mechanisms [[Dutta & Donaldson 2012]], which seems intuitive, since clathrin is cytosolic, and GPI-anchored proteins such as PrP lack a cytosolic domain by which to signal to it. Yet there are also several lines of evidence to indicate that PrP<sup>C</sup> does undergo clathrin-mediated endocytosis [[Harris 2003]]. There seems to be no consensus in the literature, and the introduction of one paper I read says "there is no consensus" [[Kang 2009]].

### cell biology of prion propagation

Earlier in this post I touched on some of David Harris's early work characterizing the normal cellular metabolism of PrP<sup>C</sup> [[Shyng 1993]]. A number of people in the early 1990s were also working on understanding the cell biology of when, where, and how PrP<sup>Sc</sup> was formed, and several discoveries supported the notion that PrP<sup>Sc</sup> was to be found somewhere along the endocytic pathway.

The Caughey and Prusiner labs had both discovered that [PIPLC](https://en.wikipedia.org/wiki/Phosphoinositide_phospholipase_C), an enzyme that can cleave GPI anchors, would release PrP<sup>C</sup>, but not proteinase K-resistant PrP<sup>Sc</sup>, from the surface of prion-infected cells, thus implying that whereas PrP<sup>C</sup> could be found on the cell surface, PrP<sup>Sc</sup> was buried somewhere inside the cell [[Caughey 1990], [Borchelt 1990], [Taraboulos 1990]]. Similarly, PrP<sup>C</sup>, but not PrP<sup>Sc</sup>, could be labeled by sulfo-NHS-biotin, a cell-impermeable biotinylation reagent, again implying PrP<sup>Sc</sup> was intracellular [[Borchelt 1990]]. It was also found that PrP<sup>Sc</sup> co-localized at least partly with fluorescently labeled wheat germ agglutinin ([background here](https://www.thermofisher.com/us/en/home/references/molecular-probes-the-handbook/probes-for-organelles/probes-for-the-endoplasmic-reticulum-and-golgi-apparatus.html)), a lecithin that binds N-acetyl-glucosamine, considered a marker of the Golgi [[Taraboulos 1990]]. In contrast, there is also an obscure paper for which I can't find full text [[McKinley 1991]] where they apparently did electron microscopy and found PrP<sup>Sc</sup> localized in "secondary lysosomes" and not Golgi. (Secondary lysosomes must be a term that has fallen from favor, because there weren't many recent Google hits for it; it seems to refer to lysosomes that have fused with phagosomes or other vesicles bringing in cargo from the cell surface).

The Caughey lab also characterized the N-terminal truncation (what we now call [beta cleavage](/2013/06/26/proteolysis-of-prion-protein-in-the-central-region-alpha-and-beta-cleavage/)) of PrP<sup>Sc</sup> in cultured cells, and found that this proteolytic event (just like alpha cleavage) could be inhibited by either ammonium chloride (NH<sub>4</sub>Cl) or leupeptin [[Caughey 1991]]. The fact that PrP<sup>Sc</sup> was truncated, but not destroyed, by lysosomal proteases was interpreted to mean that PrP<sup>Sc</sup> did encounter the lysosome, but only after its acquisition of protease resistance [[Caughey 1991]].

A caveat to all of these studies is that they only considered proteinase K-resistant PrP<sup>Sc</sup>, as this was years before the existence of protease-sensitive prions was demonstrated [[Safar 1998]]. Nevertheless, these studies certainly showed that at least some PrP<sup>Sc</sup> is found in an intracellular compartment somewhere along the endocytic pathway. This left the question of whether the substrate for conversion to PrP<sup>Sc</sup> is is newly synthesized PrP just headed out to the plasma membrane for its first time ever (and getting intercepted by PrP<sup>Sc</sup> in the Golgi, perhaps), or PrP<sup>C</sup> that has already reached the cell surface and then been re-internalized. Early experiments showed that pulse radiolabeling PrP<sup>C</sup> and then treating with PIPLC prevents the appearance of radiolabeled PrP<sup>Sc</sup>, indicating that cell surface PrP<sup>C</sup> is incorporated into PrP<sup>Sc</sup> [[Caughey & Raymond 1991], [Borchelt 1992]]. Indeed, subsequent experiments showed that longer treatments with either PIPLC or monoclonal antibodies to PrP<sup>C</sup> can cure infected cell cultures [[Peretz 2001], [Enari 2001]], suggesting that, at least in ScN2a cells, re-internalized PrP<sup>C</sup> is the predominant substrate for conversion to PrP<sup>Sc</sup>, with little or no contribution from nascent PrP just coming up the secretory pathway. 

As an aside, while reading all this literature, I noticed that some of the same treatments used to understand the metabolism and localization of PrP<sup>C</sup> or PrP<sup>Sc</sup> also reduce PrP<sup>Sc</sup> accumulation in cells. At first I was troubled as to how these results could be interpretable. For instance, how can you study differences in the N-terminal truncation of PrP<sup>Sc</sup> upon leupeptin treatment if leupeptin also makes PrP<sup>Sc</sup> go away altogether? The difference, it turns out, lies mostly in the length of time for which cells are exposed to the compounds. For instance, leupeptin's impact on alpha cleavage was demonstrated after a 16 hour treatment [[Shyng 1993]] and its impact on beta cleavage was demonstrated after a 20 hour treatment [[Caughey 1991]], whereas its impact on PrP<sup>Sc</sup> levels was only demonstrated after a 4 day treatment [[Doh-Ura 2000]]. Similarly, PIPLC releases PrP<sup>C</sup> but not PrP<sup>Sc</sup> from the cell surface after 5 hours [[Taraboulos 1990]], but it does eventually cure cells of PrP<sup>Sc</sup> infection (presumably by depletion of PrP<sup>C</sup> substrate) after 3 days [[Enari 2001]].

### interpretation

With all of that background, what is our interpretation? How can we put these puzzle pieces together into a coherent story about what quinacrine and chlorpromazine are doing to reduce prion formation?

A fairly minimalist explanation would be that PrP<sup>Sc</sup> formation occurs in an acidic endocytic compartment and its formation requires pH-dependent protease activity. But what exactly do we mean by "formation"? In my early days of trying to understand what prions are, I internalized this simplistic vision that autocatalytic templating meant the equation PrP<sup>C</sup> + PrP<sup>Sc</sup> &rarr; 2 PrP<sup>Sc</sup>. I later learned that this is referred to as the heterodimer model:

![](/media/2016/05/heterodimer-model.png)

While I still use a graphic like this occasionally in slides when I am introducing the concept of autocatalytic post-translational conformational change to people who aren't familiar with it, I think most prion scientists agree this isn't really what goes on. If you can only ever *add* molecules of PrP<sup>Sc</sup>, then how do you ever get exponential growth? We know that prion titers grow exponentially, so it must be that the fibrils also break to create more sticky ends for recruiting more monomers. Enter the breakable filament model (see for instance [[Knowles 2009], [Aguzzi & Falsig 2012]]):

![](/media/2016/05/breakable-filament-model.png)

We know that this is how it works for the <i>\[PSI<sup>+</sup>\]</i> prion in yeast, with the chaperone Hsp104 responsible for doing the fragmenting [[Chernoff 1995]] &mdash; see [this backgrounder](/2014/09/30/the-conformation-holds-the-information/). We also know that creating any appreciable titer of infectious PrP<sup>Sc</sup> *in vitro* requires sonication (in PMCA) to do the fragmenting. Even to efficiently generate non-infectious PrP amyloid *in vitro*, for instance in RT-QuIC, requires shaking, perhaps to fill the same role. But no one seems to know exactly which proteins do the fragmenting of PrP<sup>Sc</sup> fibrils *in vivo*.

With that framework in mind, do quinacrine and chlorpromazine affect elongation, fragmentation, or both? Many explanations are possible, but I reason as follows.

I find it relatively difficult to imagine why the activity of lysosomal proteases would be required for the elongation step, because A) what would they do? and B) because if active proteases are found in the same time and place as not-yet-converted PrP<sup>C</sup>, why don't they just digest it? Instead, I find it relatively easy to imagine that proteases are involved in fragmenting PrP<sup>Sc</sup>. Granted, PrP<sup>Sc</sup> fibrils are held together by hydrogen bonds, not covalent bonds, so perhaps it would be more satisfying if some sort of "disaggregase", rather than a protease, were responsible for the fragmentation. But couldn't partial proteolysis, some sort of nicking of the largely protease-resistant fibril backbone, be enough to lead to fibril fragmentation? I speculate.

And if proteases are involved in fragmentation, then elongation must happen in a different compartment, because otherwise (as argued earlier), PrP<sup>C</sup> is protease sensitive and the proteases would just digest it. So I arrive at a model where elongation happens in one compartment, and then the elongated fibrils must be trafficked inward to an acidic compartment where pH-dependent proteases fragment them, and then the fragmented fibrils must re-emerge to undergo elongation again. We don't know exactly which compartment is the site for either of these processes, and as noted above, definitions of the various organelles can sometimes be a moving target anyway. But for the sake of illustration, here are a couple of ways this could look.

![](/media/2016/05/one_possibility.png)

In this first model, endocytosis is required to deliver PrP<sup>C</sup> to an internal compartment where elongation takes place. Chlorpromazine works because it keeps PrP<sup>C</sup> from getting to where elongation occurs.

![](/media/2016/05/another_possibility.png)

In this second model, elongation occurs on the cell surface, and endocytosis is required to internalize elongated fibrils for fragmentation in an internal compartment. Chlorpromazine works because it keeps fibrils from getting internalized and fragmented.

In either case, the exact identity of the acidic compartment where fragmentation hypothetically takes place is unclear. From all the reading I've done, I've only ever heard mention of acid hydrolases that become active at lysosomal pH, so pH &le; 5.0 or so &mdash; see for instance [[Cooper 2000 Chapter 9 - Lysosomes]]. I have never heard of a protease that is pH-dependent yet which activates at a higher pH threshold such as 6.0 or 5.5. For this reason, I'm slightly inclined to think that the fragmentation occurs in lysosomes. On the other hand, as discussed above, it's not clear whether proteins ever escape from the lysosome alive, so to suggest that prions fragment in the lysosome and then get back out to the cell surface might be heresy.

This general model, I believe, is consistent with the strange properties observed for quinacrine treatment: the fact that it is strain-specific and engenders drug resistance [[Ghaemmaghami & Ahn 2009]]. Different prion strains might have different degrees of "frangibility" (how easily they break). So perhaps upon chronic quinacrine treatment in non-dividing cells, a prion strain emerges that is more brittle and more readily breaks without the help of lysosomal proteases. That would make some sense in light of observations in yeast: Jonathan Weissman's lab has shown that <i>\[PSI<sup>+</sup>\]</i> prions differ in how good they are at elongation and at fragmentation, and in their sensitivitiy to Hsp104 overexpression [[Tanaka 2004], [Tanaka 2006]].

### how to test it

This is all just a hypothesis. How could we determine if these are indeed the MoAs of chlorpromazine and quinacrine? I have done a bit of thinking on this, though I don't necessarily have the most thorough answer yet.

One basic question I'd want to answer first, a step zero of sorts, would be to test whether these compounds actually reduce the number of propagons in cells (this hypothesis would imply yes), as opposed to just reducing the protease resistance of prions (a plausible alternative). As far as I know, all the reports of activity of these compounds have been based on proteinase K-resistant PrP<sup>Sc</sup> as a readout; I don't know that anyone has done bioassay, or scrapie cell assay, or RT-QuIC, or any other measure of seed number. Treating cells with these compounds and doing RT-QuIC on the cell lysates would be easy enough to do.

Then, my first idea would be to test a battery of tool compounds that have similar bioactivities, and see if they also inhibit prion accumulation. For instance, there are a whole series of trademarked small molecule dynamin inhibitors marketed to inhibit endocytosis (see for instance [abcam's collection](http://www.abcam.com/dynamin-inhibitors-toolbox-ab120468.html) or the list in the introduction of [[Daniel 2015]]), although the specificity of some of them has been called into question [[Park 2013]]. People also use a dominant negative mutant of dynamin 1 (K44A) to perturb endocytosis &mdash; in fact, it's been used to study trafficking of PrP<sup>C</sup> [[Magalhaes 2002]]. Likewise, there are orthogonal ways to raise lysosomal pH, such as the V-ATPase inhibitors bafilomycin A1 or BRD1240 [[Aldrich & Kuo 2015]].

Note that NH<sub>4</sub>Cl has already been tested and found *not* to inhibit prion propagation in ScN2a cells, although this could just be for lack of potency [[Doh-Ura 2000]]. Which brings us to a bit of a problem with the experimental plan I have outlined so far &mdash; the experiments all have a bit of a confirmatory flavor to them, where it would be easy to get excited about the results that agree with the hypothesis while waving away those that don't. Ideally I would like to also take a more negative approach and think of what would be the quickest experiment to disprove this hypothesis, but I haven't come up with a good answer yet.

I'd also like to learn more details about which steps and compartments in the endocytic pathway are involved, but I'm not sure how far one could go with this. Certainly there are a [battery of different protease inhibitors](https://www.thermofisher.com/us/en/home/life-science/protein-biology/protein-biology-learning-center/protein-biology-resource-library/pierce-protein-methods/protease-phosphatase-inhibitors.html) out there to see which proteases are involved. There are also inhibitors of closely related pathways, for instance, [wortmannin](https://en.wikipedia.org/wiki/Wortmannin), [LY294002](https://en.wikipedia.org/wiki/LY294002), and [3-methyladenine](http://www.sigmaaldrich.com/catalog/product/sigma/m9281?lang=en&region=US) inhibit PI3K, blocking autophagosome formation [[Wu & Tan 2010]]. But from Googling around I haven't found much in the way of probes for specific steps in the endocytic pathway in particular.

Is it worth developing these ideas further and doing some experiments? I'm not sure yet. As mentioned at top, neither quinacrine nor chlorpromazine actually works *in vivo* against any prion strain as far as we know, so I debate whether understanding their MoA is A) an irrelevant distraction, or B) critical for understanding why they don't work and for finding compounds that do. The "B" side of me wrote this post, but the "A" side of me is wary of putting more time in. Maybe you, the reader, have suggestions for how to prove, disprove, or improve this hypothesis, and maybe your suggestions will make it worthwhile to take some next steps.






[Kocisko 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12970413 "Kocisko DA, Baron GS, Rubenstein R, Chen J, Kuizon S, Caughey B. New inhibitors of scrapie-associated prion protein formation in a library of 2000 drugs and natural products. J Virol. 2003 Oct;77(19):10288-94. PubMed PMID: 12970413; PubMed Central PMCID: PMC228499."

[Poncet-Montange 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21610081/ "Poncet-Montange G, St Martin SJ, Bogatova OV, Prusiner SB, Shoichet BK, Ghaemmaghami S. A survey of antiprion compounds reveals the prevalence of non-PrP molecular targets. J Biol Chem. 2011 Aug 5;286(31):27718-28. doi: 10.1074/jbc.M111.234393. Epub 2011 May 24. PubMed PMID: 21610081; PubMed Central  PMCID: PMC3149362."

[Dutta & Donaldson 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23538558/ "Dutta D, Donaldson JG. Search for inhibitors of endocytosis: Intended specificity and unintended consequences. Cell Logist. 2012 Oct 1;2(4):203-208. PubMed PMID: 23538558; PubMed Central PMCID: PMC3607622."

[Wang 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8245121/ "Wang LH, Rothberg KG, Anderson RG. Mis-assembly of clathrin lattices on endosomes reveals a regulatory switch for coated pit formation. J Cell Biol. 1993 Dec;123(5):1107-17. PubMed PMID: 8245121; PubMed Central PMCID: PMC2119875."

[Vercauteren 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20010917/ "Vercauteren D, Vandenbroucke RE, Jones AT, Rejman J, Demeester J, De Smedt SC, Sanders NN, Braeckmans K. The use of inhibitors to study endocytic pathways of gene carriers: optimization and pitfalls. Mol Ther. 2010 Mar;18(3):561-9. doi: 10.1038/mt.2009.281. Epub 2009 Dec 15. PubMed PMID: 20010917; PubMed Central PMCID: PMC2839427."

[McPherson 2012]: http://www.ncbi.nlm.nih.gov/books/NBK6479/ "Peter S. McPherson, Brigitte Ritter, and Beverly Wendland. Clathrin-Mediated Endocytosis. NCBI Books, Madame Curie Bioscience Database [Internet]. Austin (TX): Landes Bioscience; 2000-2013."

[Chernoff 1995]: http://www.ncbi.nlm.nih.gov/pubmed/7754373 "Chernoff YO, Lindquist SL, Ono B, Inge-Vechtomov SG, Liebman SW. Role of the chaperone protein Hsp104 in propagation of the yeast prion-like factor [psi+]. Science. 1995 May 12;268(5212):880-4. PubMed PMID: 7754373."

[Imming 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17016423 "Imming P, Sinning C, Meyer A. Drugs, their targets and the nature and number of drug targets. Nat Rev Drug Discov. 2006 Oct;5(10):821-34. Review. Erratum in:  Nat Rev Drug Discov. 2007 Feb;6(2):126. PubMed PMID: 17016423."

[Overington 2006]: http://www.ncbi.nlm.nih.gov/pubmed/17139284 "Overington JP, Al-Lazikani B, Hopkins AL. How many drug targets are there? Nat Rev Drug Discov. 2006 Dec;5(12):993-6. Review. PubMed PMID: 17139284."

[Hinshaw 2002]: http://www.ncbi.nlm.nih.gov/books/NBK2233/ "Dynamin and its Role in Membrane Fission. J. E Hinshaw. Laboratory of Cell Biochemistry and Biology, National Institutes of Health, Bethesda, Maryland 20892. Reproduced from Annu. Rev. Cell Dev. Biol. 2000. 16:483-519."

[Creese 1976]: http://www.ncbi.nlm.nih.gov/pubmed/3854 "Creese I, Burt DR, Snyder SH. Dopamine receptor binding predicts clinical and  pharmacological potencies of antischizophrenic drugs. Science. 1976 Apr 30;192(4238):481-3. PubMed PMID: 3854."

[Kroeze 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12629531 "Kroeze WK, Hufeisen SJ, Popadak BA, Renock SM, Steinberg S, Ernsberger P, Jayathilake K, Meltzer HY, Roth BL. H1-histamine receptor affinity predicts short-term weight gain for typical and atypical antipsychotic drugs. Neuropsychopharmacology. 2003 Mar;28(3):519-26. PubMed PMID: 12629531."

[Daniel 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25693808 "Daniel JA, Chau N, Abdel-Hamid MK, Hu L, von Kleist L, Whiting A, Krishnan S,  Maamary P, Joseph SR, Simpson F, Haucke V, McCluskey A, Robinson PJ. Phenothiazine-derived antipsychotic drugs inhibit dynamin and clathrin-mediated endocytosis. Traffic. 2015 Jun;16(6):635-54. doi: 10.1111/tra.12272. Epub 2015 Apr 9. PubMed PMID: 25693808."

[Meltzer 2013]: http://www.ncbi.nlm.nih.gov/pubmed/23020880 "Meltzer HY. Update on typical and atypical antipsychotic drugs. Annu Rev Med.  2013;64:393-406. doi: 10.1146/annurev-med-050911-161504. Epub 2012 Sep 27. Review. PubMed PMID: 23020880."

[Cooper 2000]: http://www.ncbi.nlm.nih.gov/books/NBK9839/ "Cooper GM. The Cell: A Molecular Approach. 2nd edition. Sunderland (MA): Sinauer Associates; 2000. Available from: http://www.ncbi.nlm.nih.gov/books/NBK9839/"

[Cooper 2000 Chapter 9 - Lysosomes]: http://www.ncbi.nlm.nih.gov/books/NBK9953/ "Cooper GM. The Cell: A Molecular Approach. 2nd edition. Sunderland (MA): Sinauer Associates; 2000. Lysosomes. Available from: http://www.ncbi.nlm.nih.gov/books/NBK9953/"

[Cooper 2000 Chapter 12 - Endocytosis]: http://www.ncbi.nlm.nih.gov/books/NBK9831/ "Cooper GM. The Cell: A Molecular Approach. 2nd edition. Sunderland (MA): Sinauer Associates; 2000. Endocytosis. Available from: http://www.ncbi.nlm.nih.gov/books/NBK9831/"

[Maxfield & McGraw 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15040445 "Maxfield FR, McGraw TE. Endocytic recycling. Nat Rev Mol Cell Biol. 2004 Feb;5(2):121-32. Review. PubMed PMID: 15040445."

[Grant & Donaldson 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19696797/ "Grant BD, Donaldson JG. Pathways and mechanisms of endocytic recycling. Nat Rev Mol Cell Biol. 2009 Sep;10(9):597-608. doi: 10.1038/nrm2755. Review. PubMed PMID: 19696797; PubMed Central PMCID: PMC3038567."

[Encalada 2011]: http://www.ncbi.nlm.nih.gov/pubmed/21335237 "Encalada SE, Szpankowski L, Xia CH, Goldstein LS. Stable kinesin and dynein assemblies drive the axonal transport of mammalian prion protein vesicles. Cell.  2011 Feb 18;144(4):551-65. doi: 10.1016/j.cell.2011.01.021. PubMed PMID: 21335237; PubMed Central PMCID: PMC3576050."

[Shyng 1995]: http://www.ncbi.nlm.nih.gov/pubmed/8530433 "Shyng SL, Lehmann S, Moulder KL, Harris DA. Sulfated glycans stimulate endocytosis of the cellular isoform of the prion protein, PrPC, in cultured cells. J Biol Chem. 1995 Dec 15;270(50):30221-9. PubMed PMID: 8530433."

[Collins 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12325081 "Collins SJ, Lewis V, Brazier M, Hill AF, Fletcher A, Masters CL. Quinacrine does not prolong survival in a murine Creutzfeldt-Jakob disease model. Ann Neurol. 2002 Oct;52(4):503-6. PubMed PMID: 12325081."

[Barret 2003]: http://www.ncbi.nlm.nih.gov/pubmed/12857915/ "Barret A, Tagliavini F, Forloni G, Bate C, Salmona M, Colombo L, De Luigi A, Limido L, Suardi S, Rossi G, Auvré F, Adjou KT, Salès N, Williams A, Lasmézas C,  Deslys JP. Evaluation of quinacrine treatment for prion diseases. J Virol. 2003 Aug;77(15):8462-9. PubMed PMID: 12857915; PubMed Central PMCID: PMC165262."

[Ghaemmaghami & Ahn 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19956709 "Ghaemmaghami S, Ahn M, Lessard P, Giles K, Legname G, DeArmond SJ, Prusiner SB. Continuous quinacrine treatment results in the formation of drug-resistant prions. PLoS Pathog. 2009 Nov;5(11):e1000673. doi: 10.1371/journal.ppat.1000673.  Epub 2009 Nov 26. PubMed PMID: 19956709; PubMed Central PMCID: PMC2777304."

[DiPaola 1984]: http://www.ncbi.nlm.nih.gov/pubmed/6319437 "DiPaola M, Keith CH, Feldman D, Tycko B, Maxfield FR. Loss of alpha 2-macroglobulin and epidermal growth factor surface binding induced by phenothiazines and naphthalene sulfonamides. J Cell Physiol. 1984 Feb;118(2):193-202. PubMed PMID: 6319437."

[Zhang 2016]: http://www.ncbi.nlm.nih.gov/pubmed/26947064 "Zhang T, Shen S, Qu J, Ghaemmaghami S. Global Analysis of Cellular Protein Flux Quantifies the Selectivity of Basal Autophagy. Cell Rep. 2016 Mar 15;14(10):2426-39. doi: 10.1016/j.celrep.2016.02.040. Epub 2016 Mar 3. PubMed PMID: 26947064."

[Sweitzer & Hinshaw 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9635431 "Sweitzer SM, Hinshaw JE. Dynamin undergoes a GTP-dependent conformational change causing vesiculation. Cell. 1998 Jun 12;93(6):1021-9. PubMed PMID: 9635431."

[Caughey 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1682507 "Caughey B, Raymond GJ, Ernst D, Race RE. N-terminal truncation of the scrapie-associated form of PrP by lysosomal protease(s): implications regarding the site of conversion of PrP to the protease-resistant state. J Virol. 1991 Dec;65(12):6597-603. PubMed PMID: 1682507; PubMed Central PMCID: PMC250721."

[Seglen 1983]: http://www.ncbi.nlm.nih.gov/pubmed/6361463 "Seglen PO. Inhibitors of lysosomal function. Methods Enzymol. 1983;96:737-64.  PubMed PMID: 6361463."

[Hare 1990]: http://www.ncbi.nlm.nih.gov/pubmed/2407292 "Hare JF. Mechanisms of membrane protein turnover. Biochim Biophys Acta. 1990 Feb 28;1031(1):71-90. Review. PubMed PMID: 2407292."

[Borchelt 1990]: http://www.ncbi.nlm.nih.gov/pubmed/1968466 "Borchelt DR, Scott M, Taraboulos A, Stahl N, Prusiner SB. Scrapie and cellular prion proteins differ in their kinetics of synthesis and topology in cultured cells. J Cell Biol. 1990 Mar;110(3):743-52. PubMed PMID: 1968466; PubMed Central  PMCID: PMC2116048."

[Caughey 1990]: http://www.ncbi.nlm.nih.gov/pubmed/1968104 "Caughey B, Neary K, Buller R, Ernst D, Perry LL, Chesebro B, Race RE. Normal and scrapie-associated forms of prion protein differ in their sensitivities to phospholipase and proteases in intact neuroblastoma cells. J Virol. 1990 Mar;64(3):1093-101. PubMed PMID: 1968104; PubMed Central PMCID: PMC249222."

[Safar 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9771749 "Safar J, Wille H, Itri V, Groth D, Serban H, Torchia M, Cohen FE, Prusiner SB. Eight prion strains have PrP(Sc) molecules with different conformations. Nat Med. 1998 Oct;4(10):1157-65. PubMed PMID: 9771749."

[Liang & Kong 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23052041/ "Liang J, Kong Q. α-Cleavage of cellular prion protein. Prion. 2012 Nov-Dec;6(5):453-60. doi: 10.4161/pri.22511. Epub 2012 Oct 10. Review. PubMed PMID: 23052041; PubMed Central PMCID: PMC3510859."

[Enari 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11470893 "Enari M, Flechsig E, Weissmann C. Scrapie prion protein accumulation by scrapie-infected neuroblastoma cells abrogated by exposure to a prion protein antibody. Proc Natl Acad Sci U S A. 2001 Jul 31;98(16):9295-9. Epub 2001 Jul 24.  PubMed PMID: 11470893; PubMed Central PMCID: PMC55414."

[Peretz 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11507642 "Peretz D, Williamson RA, Kaneko K, Vergara J, Leclerc E, Schmitt-Ulms G, Mehlhorn IR, Legname G, Wormald MR, Rudd PM, Dwek RA, Burton DR, Prusiner SB. Antibodies inhibit prion propagation and clear cell cultures of prion infectivity. Nature. 2001 Aug 16;412(6848):739-43. PubMed PMID: 11507642."

[Caughey & Raymond 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1680859 "Caughey B, Raymond GJ. The scrapie-associated form of PrP is made from a cell  surface precursor that is both protease- and phospholipase-sensitive. J Biol Chem. 1991 Sep 25;266(27):18217-23. PubMed PMID: 1680859."

[McKinley 1991]: http://www.ncbi.nlm.nih.gov/pubmed/1684401 "McKinley MP, Taraboulos A, Kenaga L, Serban D, Stieber A, DeArmond SJ, Prusiner SB, Gonatas N. Ultrastructural localization of scrapie prion proteins in cytoplasmic vesicles of infected cultured cells. Lab Invest. 1991 Dec;65(6):622-30. PubMed PMID: 1684401."

[Aguzzi & Falsig 2012]: http://www.ncbi.nlm.nih.gov/pubmed/22735515 "Aguzzi A, Falsig J. Prion propagation, toxicity and degradation. Nat Neurosci. 2012 Jun 26;15(7):936-9. doi: 10.1038/nn.3120. Review. PubMed PMID: 22735515."

[Knowles 2009]: http://www.ncbi.nlm.nih.gov/pubmed/20007899 "Knowles TP, Waudby CA, Devlin GL, Cohen SI, Aguzzi A, Vendruscolo M, Terentjev EM, Welland ME, Dobson CM. An analytical solution to the kinetics of breakable filament assembly. Science. 2009 Dec 11;326(5959):1533-7. doi: 10.1126/science.1178250. PubMed PMID: 20007899."

[Park 2013]: http://www.ncbi.nlm.nih.gov/pubmed/24046449 "Park RJ, Shen H, Liu L, Liu X, Ferguson SM, De Camilli P. Dynamin triple knockout cells reveal off target effects of commonly used dynamin inhibitors. J Cell Sci. 2013 Nov 15;126(Pt 22):5305-12. doi: 10.1242/jcs.138578. Epub 2013 Sep  17. PubMed PMID: 24046449; PubMed Central PMCID: PMC3828596."

[Aldrich & Kuo 2015]: http://www.ncbi.nlm.nih.gov/pubmed/25860544/ "Aldrich LN, Kuo SY, Castoreno AB, Goel G, Kuballa P, Rees MG, Seashore-Ludlow  BA, Cheah JH, Latorre IJ, Schreiber SL, Shamji AF, Xavier RJ. Discovery of a Small-Molecule Probe for V-ATPase Function. J Am Chem Soc. 2015 Apr 29;137(16):5563-8. doi: 10.1021/jacs.5b02150. Epub 2015 Apr 20. PubMed PMID: 25860544; PubMed Central PMCID: PMC4416280."

[Tanaka 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15029196 "Tanaka M, Chien P, Naber N, Cooke R, Weissman JS. Conformational variations in an infectious protein determine prion strain differences. Nature. 2004 Mar 18;428(6980):323-8. PubMed PMID: 15029196."

[Tanaka 2006]: http://www.ncbi.nlm.nih.gov/pubmed/16810177 "Tanaka M, Collins SR, Toyama BH, Weissman JS. The physical basis of how prion  conformations determine strain phenotypes. Nature. 2006 Aug 3;442(7102):585-9. Epub 2006 Jun 28. PubMed PMID: 16810177."

[Wu & Tan 2010]: http://www.ncbi.nlm.nih.gov/pubmed/20123989/ "Wu YT, Tan HL, Shui G, Bauvy C, Huang Q, Wenk MR, Ong CN, Codogno P, Shen HM.  Dual role of 3-methyladenine in modulation of autophagy via different temporal patterns of inhibition on class I and III phosphoinositide 3-kinase. J Biol Chem. 2010 Apr 2;285(14):10850-61. doi: 10.1074/jbc.M109.080796. Epub 2010 Feb 1. PubMed PMID: 20123989; PubMed Central PMCID: PMC2856291."

[Shyng 1995]: http://www.ncbi.nlm.nih.gov/pubmed/8530433 "Shyng SL, Lehmann S, Moulder KL, Harris DA. Sulfated glycans stimulate endocytosis of the cellular isoform of the prion protein, PrPC, in cultured cells. J Biol Chem. 1995 Dec 15;270(50):30221-9. PubMed PMID: 8530433."

[Kim 2004]: http://www.ncbi.nlm.nih.gov/pubmed/15483265 "Kim CL, Karino A, Ishiguro N, Shinagawa M, Sato M, Horiuchi M. Cell-surface retention of PrPC by anti-PrP antibody prevents protease-resistant PrP formation. J Gen Virol. 2004 Nov;85(Pt 11):3473-82. PubMed PMID: 15483265."

[Borchelt 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1353761 "Borchelt DR, Taraboulos A, Prusiner SB. Evidence for synthesis of scrapie prion proteins in the endocytic pathway. J Biol Chem. 1992 Aug 15;267(23):16188-99. PubMed PMID: 1353761."

[Magalhaes 2002]: http://www.ncbi.nlm.nih.gov/pubmed/12070160 "Magalhães AC, Silva JA, Lee KS, Martins VR, Prado VF, Ferguson SS, Gomez MV, Brentani RR, Prado MA. Endocytic intermediates involved with the intracellular trafficking of a fluorescent cellular prion protein. J Biol Chem. 2002 Sep 6;277(36):33311-8. Epub 2002 Jun 17. PubMed PMID: 12070160."

[Doh-Ura 2000]: http://www.ncbi.nlm.nih.gov/pubmed/10775631 "Doh-Ura K, Iwaki T, Caughey B. Lysosomotropic agents and cysteine protease inhibitors inhibit scrapie-associated prion protein accumulation. J Virol. 2000 May;74(10):4894-7. PubMed PMID: 10775631; PubMed Central PMCID: PMC112015."

[Korth 2001]: http://www.ncbi.nlm.nih.gov/pubmed/11504948 "Korth C, May BC, Cohen FE, Prusiner SB. Acridine and phenothiazine derivatives as pharmacotherapeutics for prion disease. Proc Natl Acad Sci U S A. 2001 Aug 14;98(17):9836-41. PubMed PMID: 11504948; PubMed Central PMCID: PMC55539."

[Bian 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24711410 "Bian J, Kang HE, Telling GC. Quinacrine promotes replication and conformational mutation of chronic wasting disease prions. Proc Natl Acad Sci U S A. 2014 Apr 22;111(16):6028-33. doi: 10.1073/pnas.1322377111. Epub 2014 Apr 7. PubMed PMID: 24711410; PubMed Central PMCID: PMC4000840."

[Yayon 1984]: http://www.ncbi.nlm.nih.gov/pubmed/6391917 "Yayon A, Cabantchik ZI, Ginsburg H. Identification of the acidic compartment of Plasmodium falciparum-infected human erythrocytes as the target of the antimalarial drug chloroquine. EMBO J. 1984 Nov;3(11):2695-700. PubMed PMID: 6391917; PubMed Central PMCID: PMC557751."

[Yayon 1985]: http://www.ncbi.nlm.nih.gov/pubmed/3887411 "Yayon A, Cabantchik ZI, Ginsburg H. Susceptibility of human malaria parasites  to chloroquine is pH dependent. Proc Natl Acad Sci U S A. 1985 May;82(9):2784-8.  PubMed PMID: 3887411; PubMed Central PMCID: PMC397650."

[Slater & Cerami 1992]: http://www.ncbi.nlm.nih.gov/pubmed/1729651 "Slater AF, Cerami A. Inhibition by chloroquine of a novel haem polymerase enzyme activity in malaria trophozoites. Nature. 1992 Jan 9;355(6356):167-9. PubMed PMID: 1729651."

[Fidock 2000]: http://www.ncbi.nlm.nih.gov/pubmed/11090624 "Fidock DA, Nomura T, Talley AK, Cooper RA, Dzekunov SM, Ferdig MT, Ursos LM, Sidhu AB, Naudé B, Deitsch KW, Su XZ, Wootton JC, Roepe PD, Wellems TE. Mutations in the P. falciparum digestive vacuole transmembrane protein PfCRT and evidence for their role in chloroquine resistance. Mol Cell. 2000 Oct;6(4):861-71. PubMed  PMID: 11090624; PubMed Central PMCID: PMC2944663."

[Foley & Tilley 1998]: http://www.ncbi.nlm.nih.gov/pubmed/9719345 "Foley M, Tilley L. Quinoline antimalarials: mechanisms of action and resistance and prospects for new agents. Pharmacol Ther. 1998 Jul;79(1):55-87. Review. PubMed PMID: 9719345."

[Francis 1997]: http://www.ncbi.nlm.nih.gov/pubmed/9343345 "Francis SE, Sullivan DJ Jr, Goldberg DE. Hemoglobin metabolism in the malaria  parasite Plasmodium falciparum. Annu Rev Microbiol. 1997;51:97-123. Review. PubMed PMID: 9343345."

[Rush 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19307367/ "Rush MA, Baniecki ML, Mazitschek R, Cortese JF, Wiegand R, Clardy J, Wirth DF. Colorimetric high-throughput screen for detection of heme crystallization inhibitors. Antimicrob Agents Chemother. 2009 Jun;53(6):2564-8. doi: 10.1128/AAC.01466-08. Epub 2009 Mar 23. PubMed PMID: 19307367; PubMed Central PMCID: PMC2687197."

[Shyng 1993]: http://www.ncbi.nlm.nih.gov/pubmed/8101844 "Shyng SL, Huber MT, Harris DA. A prion protein cycles between the cell surface and an endocytic compartment in cultured neuroblastoma cells. J Biol Chem. 1993 Jul 25;268(21):15922-8. PubMed PMID: 8101844."

[Baral 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24373770 "Baral PK, Swayampakula M, Rout MK, Kav NN, Spyracopoulos L, Aguzzi A, James MN. Structural basis of prion inhibition by phenothiazine compounds. Structure. 2014 Feb 4;22(2):291-303. doi: 10.1016/j.str.2013.11.009. Epub 2013 Dec 26. PubMed PMID: 24373770."

[Hyman 2012]: http://www.ncbi.nlm.nih.gov/pubmed/23052291 "Hyman SE. Revolution stalled. Sci Transl Med. 2012 Oct 10;4(155):155cm11. doi: 10.1126/scitranslmed.3003142. PubMed PMID: 23052291."

[Kang 2009]: http://www.ncbi.nlm.nih.gov/pubmed/19843586 "Kang YS, Zhao X, Lovaas J, Eisenberg E, Greene LE. Clathrin-independent internalization of normal cellular prion protein in neuroblastoma cells is associated with the Arf6 pathway. J Cell Sci. 2009 Nov 15;122(Pt 22):4062-9. doi: 10.1242/jcs.046292. Epub 2009 Oct 20. PubMed PMID: 19843586; PubMed Central PMCID: PMC2798124."

[Harris 2003]: http://www.ncbi.nlm.nih.gov/pubmed/14522850 "Harris DA. Trafficking, turnover and membrane topology of PrP. Br Med Bull. 2003;66:71-85. Review. PubMed PMID: 14522850."

[Taraboulos 1990]: http://www.ncbi.nlm.nih.gov/pubmed/1693623 "Taraboulos A, Serban D, Prusiner SB. Scrapie prion proteins accumulate in the  cytoplasm of persistently infected cultured cells. J Cell Biol. 1990 Jun;110(6):2117-32. PubMed PMID: 1693623; PubMed Central PMCID: PMC2116143."

