#!/bin/bash
pelican -s publishconf.py .
ghp-import output
git push origin gh-pages
