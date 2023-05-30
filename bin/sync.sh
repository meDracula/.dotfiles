#!/bin/sh

git update-index --refresh
STASH_TRUE=$?
if [ $STASH_TRUE -eq 1 ]; then
	git stash
fi

git pull

if [ $STASH_TRUE -eq 1 ]; then
	git stash pop
fi
