#!/bin/bash

git_branch= $(git show-branch)
if [[ "${git-branch}" == *master* ]]
then
    git checkout gh-pages
    git checkout master README.md
    echo -e "---\nlayout: index\n---\n" > index.md.temp
    cat index.md.temp README.md >index.md
    rm index.md.temp
    git commit -am "Sync gh-pages with master"
    git checkout master
fi
