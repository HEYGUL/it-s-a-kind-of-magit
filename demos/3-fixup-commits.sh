#!/usr/bin/env bash

. ./common.sh

cd local-repo

git config user.name "Roger Taylor"
git config user.email roger@queenonline.com

# demo fixup and autosquash
pe "vim albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/lyrics.md"
pe "git add --patch"
pe "tig"
pe "git commit --fixup=HEAD~2"
cmd # do the commit --fixup by hand
pe "git rebase --interactive origin/main --autosquash"
pe "tig"

cd ../remote-repo/albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic
# create a commit by Freddie on remote that will be prevent pushing
git config user.name "Freddie Mercury"
git config user.email freddie@queenonline.com

git switch a-kind-of-magic
# cd albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic
sed -i '' '1s/^/---\'$'\n/g' lyrics.md
sed -i '' '1s/^/Title: A Kind Of Magic\'$'\n/g' lyrics.md
sed -i '' '1s/^/---\'$'\n/g' lyrics.md
git commit -am 'add metadata to a kind of magic'
git switch main
cd -

git config user.name "Roger Taylor"
git config user.email roger@queenonline.com

# back to demo
pe "git push --force-with-lease"

# show origin to understand why we cannot push
pe "git fetch origin"
pe "tig origin/a-kind-of-magic"
p ""

cd ..

open -a "Keynote"

./4-reflog.sh
