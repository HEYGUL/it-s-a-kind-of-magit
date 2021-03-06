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

# configure git template
git config --local commit.template ../../.stCommitMsg

# switch to Roger's branch
git switch -c a-kind-of-magic

# copy new files from hidden folder
mkdir -p ./albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/
cp ../remote-repo/albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/.new-files/*.md ./albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/

# change git user to Roger Taylor
git config user.name "Roger Taylor"
git config user.email roger@queenonline.com

# demo untracked files management
pe "git status"
pe "git status --untracked-files=all"
pe "git add --interactive"
pe "git commit"
cmd
pe "git push -u origin a-kind-of-magic"

# enters interactive mode and allows newly typed command to be executed
# cmd

# show a prompt so as not to reveal our true nature after
# the demo has concluded
p ""

cd ..

open -a "Keynote"
./2-small-commits.sh
