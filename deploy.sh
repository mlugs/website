#!/bin/bash
cd website
git config user.name "travis"
git config user.email "travis"
pelican -ds publishconf.py .
echo "www.mlugs.de" > output/CNAME
export SSH_KEY="travis_ci_mlugs_website"
ghp-import output
git push origin gh-pages
