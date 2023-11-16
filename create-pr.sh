#!/bin/sh

git checkout main
git checkout -b "$PREFIX-$1"
echo "Change for $PREFIX $1" > "$PREFIX-$1.txt"
git add .
git commit -m "Change for $PREFIX $1"
git push
gh pr create --title "PR for $PREFIX $1" --body "PR body"
