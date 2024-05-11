#!/bin/bash
set -ex

git fetch origin gh-pages
git config user.name "GitHub Workflow Bot"
git config user.email "devnull@example.com"

# make 'gh-pages:' point at 'main:site'
commit=$(git commit-tree HEAD:site)
git update-ref refs/heads/gh-pages "$commit"

# but then rewrite the entirety of 'gh-pages' to fatten LFS pointers
git lfs migrate export --include-ref=gh-pages --include="*"

# to avoid pushing a rewrite of the entire branch, though, make a new
# commit that points to the same tree as HEAD, but has the current
# remote head as its parent.

commit=$(git commit-tree HEAD: -m "Regenerate" -p origin/gh-pages)
git push origin "$commit:refs/heads/gh-pages"
