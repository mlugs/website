#!/bin/bash

export SSH_KEY="travis_ci_mlugs_website"
eval `ssh-agent -s`
ssh-add $SSH_KEY

cd website
git config user.name "travis"
git config user.email "travis"
pelican -ds publishconf.py .
echo "www.mlugs.de" > output/CNAME
ghp-import output
git push -f git@github.com:mlugs/website.git origin gh-pages
