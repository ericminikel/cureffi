---
layout: page
title: Javascript widgets to generate PubMed markdown citations
permalink: /tools/pubmed-markdown-citations/
---

*Update 2017-11-30*: Updates to Chrome in June 2017 broke this code by making alert text non-selectable. I've filed [a bug report](https://bugs.chromium.org/p/chromium/issues/detail?id=729881#). Until if/when Google fixes this, I am now using [this python script](https://github.com/ericminikel/citedown) instead.

<hr>

This blog is written in [redcarpet markdown](https://github.com/vmg/redcarpet) and I cite papers in PubMed *a lot*. I wanted a quick way to convert a PubMed link into a citation that I could paste into my posts. This is the best I've figured out so far - it takes a few steps and it's not perfect.

For starters, make sure your bookmarks bar is showing. In Chrome:

![How to show the bookmarks bar in Chrome](/media/2014/08/chrome-show-bookmarks-bar.png)

Or in Firefox:

![How to show the bookmarks toolbar in Firefox](/media/2014/08/firefox-show-bookmarks-toolbar.png)

Then, drag both of these buttons onto your bookmarks bar:

<a class="btn" href="javascript:location.assign(location.href+'?report=docsum&format=text')">Cite step 1</a>

<a class="btn" href="javascript:link=location.href.split('?')[0];full=document.documentElement.outerText.replace(/\n/g,' ').substring(3).trim();firstauth=full.split(',')[0].split(' ').slice(0,-1);year=full.split('.')[3].trim().split(' ')[0];shortname=firstauth+' '+year;fullcitation='['+shortname+']: '+link+' &quot;'+full+'&quot;';alert(fullcitation)
">Cite step 2</a>

(The original javascript for these buttons is [here](https://github.com/ericminikel/cureffi/blob/gh-pages/javascripts/cite-step-1.js) and [here](https://github.com/ericminikel/cureffi/blob/gh-pages/javascripts/cite-step-2.js)).

Now go to your favorite PubMed citation, for instance [http://www.ncbi.nlm.nih.gov/pubmed/24699458](http://www.ncbi.nlm.nih.gov/pubmed/24699458) and click **Cite step 1**. This will load the plain text, minimalist version of the citation. Once the page has loaded, next click **Cite step 2**. This will (for most articles) parse it into a markdown "reference-style" link as described [here](http://daringfireball.net/projects/markdown/syntax#link), and show this text to you in an alert window. Highlight and copy the alert text, click OK to make it go away, and paste the text into the bottom of your post. If your text editor has good syntax highlighting for markdown, it should look something like this:

![markdown citation example](/media/2015/04/markdown-citation-example.png)

The purple is the name you can use to reference the citation throughout your post; the white is the destination URL; and the yellow is the mouseover text, which I figure allows your reader to see the entire citation if they want to know what journal it's in or something but don't want to click through to PubMed.

For some journals (particularly *Science*), **Cite step 2** often fails, and you end up wth the link and citation formatted properly but the link name (the purple part) is garbage. I haven't figured out a cure-all for this so I just edit those manually. Then you can cite your reference anywhere in the document by simply referencing the name in brackets, for instance writing `[Watts 2014]` produces the link [Watts 2014].

[Watts 2014]: http://www.ncbi.nlm.nih.gov/pubmed/24699458 "Watts JC, Giles K, Patel S, Oehler A, DeArmond SJ, Prusiner SB. Evidence that  bank vole PrP is a universal acceptor for prions. PLoS Pathog. 2014 Apr 3;10(4):e1003990. doi: 10.1371/journal.ppat.1003990. eCollection 2014 Apr. PubMed PMID: 24699458; PubMed Central PMCID: PMC3974871."


