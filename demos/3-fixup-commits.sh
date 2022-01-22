#!/usr/bin/env bash

. ./common.sh

cd local-repo

git config user.name "Roger Taylor"
git config user.email roger@queenonline.com

# demo fixup and autosquash
pe "vim albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/lyrics.md"
pe "git add --patch"
pe "tig"
cmd # do the commit --fixup by hand
pe "git rebase --interactive origin/main --autosquash"
pe "tig"

# create a commit by Freddie on remote that will be erased
git config user.name "Freddie Mercury"
git config user.email freddie@queenonline.com

cd ../remote-repo/
git switch a-kind-of-magic
cd albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic
sed '1 i ---' lyrics.md
sed '1 i title: A Kind Of Magic' lyrics.md
sed '1 i ---' lyrics.md
git commit -am 'add metadata to a kind of magic'

git config user.name "Roger Taylor"
git config user.email roger@queenonline.com

# back to demo
pe "git push"
pe "git push --force"

# show a prompt so as not to reveal our true nature after
# the demo has concluded
p ""

cd ..
