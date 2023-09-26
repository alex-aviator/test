#!/bin/sh

git checkout main
git checkout -b "$PREFIX-$0"
echo "Change for $PREFIX $0" > "$PREFIX-$0.txt"
git add .
git commit -m "Change for $PREFIX $0"
git push
