#!/usr/bin/env python

import sys
import re
import urllib
import datetime

citations = []

pmbase = "https://www.ncbi.nlm.nih.gov/pubmed/"
pmcbase = "https://www.ncbi.nlm.nih.gov/pmc/articles/"

path = sys.argv[1]
with open(path) as f:
	for line in f.readlines():
		ref = '.'.join(line.strip().split('.')[1:]).strip()
		# print ref
		fa_surname = ' '.join(ref.split(',')[0].split(' ')[:-1])
		potential_years = [int(x) for x in ref.split() if x.isdigit() and int(x) >= 1900 and int(x) <= datetime.datetime.now().year + 1]
		if len(potential_years) == 0:
			year = ''
		elif len(potential_years) >= 1:
			year = str(potential_years[0])
		pmidsearch = re.search('PMID: [0-9]*',ref)
		if pmidsearch is not None:
			pmidstring = pmidsearch.group(0)
			url = pmbase + re.sub('PMID: ','',pmidstring)
		else:
			pmcidsearch = re.search('PMCID: PMC[0-9]*',ref)
			if pmcidsearch is not None:
				pmcidstring = pmcidsearch.group(0)
				url = pmcbase + re.sub('PMCID: ','',pmcidstring)
			else:
				url = 'URLNEEDED'
		markdown_citation = '[' + fa_surname + ' ' + year + ']: ' + url + "/ \"" + ref + "\"\n"
		citations.append(markdown_citation)

citations.sort()
for citation in citations:
	sys.stdout.write(citation)
