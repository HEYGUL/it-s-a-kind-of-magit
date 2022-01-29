#!/usr/bin/env bash

. ./common.sh

cd local-repo

git config user.name "Freddie Mercury"
git config user.email freddie@queenonline.com

# copy new files from hidden folder
mkdir -p ./albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/
cp ../remote-repo/albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/.modified-lyrics/lyrics.md ./albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/

# demo breaking several modifications into small commits
pe "git status"
pe "git add --patch"
pe "git commit"
cmd
pe "git add --patch"
pe "git commit"
cmd
pe "git push"

# show a prompt so as not to reveal our true nature after
# the demo has concluded
p ""

cd ..

open -a "Keynote"

./3-fixup-commits.sh
