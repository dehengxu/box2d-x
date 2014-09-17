#!/usr/bin/env bash

remote=$1
tagname=$2

echo "Usage:"
echo "./pubtag.sh remote tagname"

if [ -z $remote ]
then
  echo "Please input remote"
  exit 0
elif [ -z $tagname ]
then
  echo "Please input tagname"
  exit 0
fi

git add --all
git commit -m "update commit"
git push $remote master && git tag -f $tagname && git push -f $remote $tagname
