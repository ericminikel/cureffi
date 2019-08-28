#!/usr/bin/env python
# file: recite.py -- finds just one line matching the citedown citation for an already-cited work on this blog
import re, sys

for l in sys.stdin:
	if re.match("^\["+sys.argv[1]+"\]:",l):
		sys.stdout.write(l)
		break

# adapted from this one-liner from this awesome StackOverflow post: https://stackoverflow.com/a/25181706
# map(sys.stdout.write,(l for l in sys.stdin if re.match("^\["+sys.argv[1]+"\]:",l)))