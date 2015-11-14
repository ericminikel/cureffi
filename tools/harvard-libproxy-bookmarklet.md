---
layout: page
title: Harvard libraries proxy server bookmarklet
permalink: /tools/harvard-libproxy-bookmarklet/
summary200: "A javascript widget that lives in your bookmarks bar and lets you access full text of paywalled journal articles through Harvard's proxy server with just one click."
---

The easiest way to access full-text articles through Harvard libraries is via the proxy server. This means that you navigate to the publisher's website and then add **.ezp-prod1.hul.harvard.edu** after the domain name. Harvard will prompt you for your HUID and PIN. For instance:

[http://www.nature.com/nature/journal/v356/n6370/abs/356577a0.html](http://www.nature.com/nature/journal/v356/n6370/abs/356577a0.html)

becomes

[http://www.nature.com<b><u>.ezp-prod1.hul.harvard.edu</u></b>/nature/journal/v356/n6370/abs/356577a0.html</a>](http://www.nature.com.ezp-prod1.hul.harvard.edu/nature/journal/v356/n6370/abs/356577a0.html)

To avoid having to type this in every time, you can create a bookmark. First, show the Bookmarks bar in your browser. In Chrome:

![How to show the bookmarks bar in Chrome](/media/2014/08/chrome-show-bookmarks-bar.png)

Or in Firefox:

![How to show the bookmarks toolbar in Firefox](/media/2014/08/firefox-show-bookmarks-toolbar.png)

Then drag this button onto that bookmarks toolbar:

<a class="btn" href="javascript:arr=location.href.split('/');if(arr[2]=='www.ncbi.nlm.nih.gov'){arr[2]='ncbi.nlm.nih.gov';};arr[2]=arr[2]+'.ezp-prod1.hul.harvard.edu';location.assign(arr.join('/'));">EZP</a>

Each time you click it, it will redirect you to the same page on the Harvard proxy server.

Credit: This was inspired by [a similar tool by Nikhil Srinivasan](http://nikhilsrinivasan.github.io/harvard-fulltext-bookmarklet/). Harvard's proxy server has stopped accepting [www.ncbi.nlm.nih.gov](www.ncbi.nlm.nih.gov) but will still redirect from [ncbi.nlm.nih.gov](ncbi.nlm.nih.gov) so I now lop off the www for that particular domain.

<div id="disqus_thread"></div>
<script type="text/javascript">
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    var disqus_shortname = 'cureffi'; // required: replace example with your forum shortname

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
