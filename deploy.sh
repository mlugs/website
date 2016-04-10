#!/bin/bash

cp travis_ci_mlugs_website ~/.ssh/id_ed25519
chmod 600 ~/.ssh/id_ed25519
eval `ssh-agent -s`
ssh-add ~/.ssh/id_ed25519
ssh-add -L
git config user.name "travis"
git config user.email "travis"

cd website
pelican -ds publishconf.py .
echo "www.mlugs.de" > output/CNAME
ghp-import output
git push -f git@github.com:mlugs/website.git gh-pages
