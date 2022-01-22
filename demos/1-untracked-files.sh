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
# clone the repo from local

mkdir local-repo
git clone --local remote-repo local-repo
cd local-repo

# switch to Roger's branch
git switch a-kind-of-magic

# copy new files from hidden folder
cp ./albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/.new-files/*.md ./albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/

# change git user to Roger Taylor
git config user.name "Roger Taylor"
git config user.email roger@queenonline.com

# demo untracked files management
pe "git status --untracked-files=all"
pe "git add --interactive"
pe "git commit"

# enters interactive mode and allows newly typed command to be executed
# cmd

# show a prompt so as not to reveal our true nature after
# the demo has concluded
p ""

cd ..
