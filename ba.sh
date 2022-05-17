#!/bin/bash

MESSAGE=$(git log -1 HEAD --pretty=format:%s)
if [ "$MESSAGE"!="release to isi" ]; then
    act=$(git diff --quiet && git diff --staged --quiet)
    echo "$act"
else
    rel=$(git commit -am 'release to isi')
    echo "$rel"
fi
