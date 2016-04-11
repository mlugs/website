#!/bin/bash

cd website
pelican -ds publishconf.py .
echo "www.mlugs.de" > output/CNAME
ghp-import output
git push -f git@github.com:mlugs/website.git gh-pages
