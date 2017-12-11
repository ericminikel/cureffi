#!/usr/bin/env python

import sys
import re
import urllib
import datetime

# usage: ./citedown.py <PUBMEDID>
pmid = sys.argv[1]

# get the citation from pubmed
pubmed_base = "https://www.ncbi.nlm.nih.gov/pubmed/"
url = pubmed_base + str(pmid) + "?report=docsum&format=text"
f = urllib.urlopen(url)
text = f.read()

# strip html tags
text = re.sub('<[^<]+?>', '', text) # https://stackoverflow.com/a/4869782

# remove multiple consecutive whitespace
text = ' '.join(text.split())

# remove the "1: " at the beginning
text = text[3:]

# find the first author's name and then just surname
fa = text.split(',')[0] # split on comma, first thing is first author
fa_surname = ' '.join(fa.split()[:-1]) # initials are last (-1) index, rest is surname

# find the year
potential_years = [int(x) for x in text.split() if x.isdigit() and int(x) >= 1900 and int(x) <= datetime.datetime.now().year + 1]

if len(potential_years) == 0:
	year = ''
elif len(potential_years) >= 1:
	year = str(potential_years[0])

markdown_citation = '[' + fa_surname + ' ' + year + ']: ' + pubmed_base + pmid + "/ \"" + text + "\"\n"

print markdown_citation