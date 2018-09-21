#!/usr/bin/env bash

# get git directory
ROOT=$(git rev-parse --show-toplevel)

# set hook files to copy
FILES=( "commit-msg" )

# do it!
for i in "${FILES[@]}"
do
  :
  if [ -f "$ROOT/.git/hooks/$i" ];then
    echo "WARNING: File .git/hooks/$i already exists! Overwriting previous version..."
  else
    echo "Installing hook $i ..."
  fi
  cp "$ROOT/.githooks/$i.sh" "$ROOT/.git/hooks/$i"
  chmod +x "$ROOT/.git/hooks/$i"
done
