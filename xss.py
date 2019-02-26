#!/usr/bin/python
import urllib
import sys
import webbrowser

url = sys.argv[1]
vectors = sys.argv[2]
with open(vectors, 'r') as f:
	for i in f:
		try:
			XSS = url + i
			webbrowser.get('firefox')
			webbrowser.open_new_tab(XSS)
		except Exception as e:
			print "Cannot open url"
