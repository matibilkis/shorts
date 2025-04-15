#!/bin/bash

if [ -z "$1" ]; then
  com="default"
else
  com="$1"
fi

if [ -z "$1" ]; then
  branch="main"
else
  branch="$2"
fi

# Git operations
git add .
git commit -m "$com"
git push origin $branch

echo "Changes added, committed as "$com" and pushed to branch "$branch" "
echo $com
echo $branch
