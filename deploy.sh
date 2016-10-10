#!/bin/bash

set -e

git config user.name "travis"
git config user.email "travis"
cd website
make html
echo "www.mlugs.de" > output/CNAME
ghp-import output
git push -f --quiet "https://${GH_TOKEN}@github.com/mlugs/website.git" gh-pages
