#!/usr/bin/env bash

. ./common.sh

# initialize file system
if [ -d "local-repo" ]; then
  rm -rf local-repo
fi

if [ -d "remote-repo/.git" ]; then
  rm -rf remote-repo/.git
fi

cp -r remote-repo/git remote-repo/.git

