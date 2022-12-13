#!/bin/bash
echo "checking for updates..."

# Search for brancges
if [ "$1" ==  "b" ]; then
	git branch -r | grep -v '\->' | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
fi

# Fetching and Pulling
git fetch --all
git pull --all
