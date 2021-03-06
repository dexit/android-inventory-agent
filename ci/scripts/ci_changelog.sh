#!/usr/bin/env bash

# get gh-pages branch
git fetch origin gh-pages

# move to gh-pages
git checkout gh-pages

# clean unstage file on gh-pages to remove all others files gets on checkout
sudo git clean -fdx

# remove local CHANGELOG.md on gh-pages
sudo rm CHANGELOG.md

# get changelog from branch
git checkout $CIRCLE_BRANCH CHANGELOG.md

# add changelog
git add CHANGELOG.md

# create a commit
git commit -m "ci(changelog): update ChangeLog"

# got back to original branch
git checkout $CIRCLE_BRANCH