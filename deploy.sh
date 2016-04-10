#!/bin/bash

REPO=$(git config remote.origin.url)

# switch both git and https protocols as we don't know which travis is using
REPO=${REPO/git:\/\/github.com\//git@github.com:}
REPO=${REPO/https:\/\/github.com\//git@github.com:}

cp travis_ci_mlugs_website ~/.ssh/id_ed25519
chmod 600 ~/.ssh/id_ed25519
#eval `ssh-agent -s`
#ssh-add
git config user.name "travis"
git config user.email "travis"

cd website
pelican -ds publishconf.py .
echo "www.mlugs.de" > output/CNAME
ghp-import output
git push -f $REPO gh-pages
