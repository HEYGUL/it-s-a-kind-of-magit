#!/usr/bin/env bash

. ./common.sh

cd local-repo

git config user.name "Roger Taylor"
git config user.email roger@queenonline.com

# demo reflog usage
pe "git reflog"
pe "git reset --hard HEAD@{5}"
pe "git pull --rebase=interactive"
pe "git status"
pe "vim albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/lyrics.md"
pe "git add albums/1985_xx_yy_A_Kind_Of_Magic/A_Kind_Of_Magic/lyrics.md"
pe "git rebase --continue"
pe "tig"
pe "git rebase --interactive origin/main"
pe "git push --force-with-lease"
po "tig"

cd ..

open -a "Keynote"
