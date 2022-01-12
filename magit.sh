#!/usr/bin/env bash

########################
# include the magic
########################
. ./demo-magic.sh

########################
# Configure the options
########################

#
# speed at which to simulate typing. bigger num = faster
#
TYPE_SPEED=30

#
# custom prompt
#
# see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/bash-prompt-escape-sequences.html for escape sequences
#
DEMO_PROMPT="${GREEN}➜ ${CYAN}\W "

# text color
# DEMO_CMD_COLOR=$BLACK

clear


p "git clone git@github:HEYGUL/a-kind-of-magit.git local-repo"

if [ -d "local-repo" ]; then
  rm -rf "local-repo"
fi

if [ ! -d "remote-repo/.git" ]; then
  cp -r "remote-repo/git" "remote-repo/.git"
fi

mkdir local-repo
git clone --local remote-repo local-repo

pe "cd local-repo"

pe "git switch --create a-feature-branch --track origin"

pe "touch src/other-source-file.js"
pe "git add --interactive"

pe "vim src/other-source-file.js"
pe "git add --patch"
pe "git commit"

pe "vim src/source-file.js"
pe "git add --patch"
pe "git commit"

pe "vim src/other-source-file.js"
pe "git add --patch"
pe "tig"
# pe "git commit --fixup="
cmd
pe "git rebase --interactive --autosquash main"
pe "vim src/source-file.js"

# commit from coworker in the background
cd ../remote-repo
echo "added by co-worker" >> src/source-file.js
git add src/source-file.js
git commit -m "modify a file by a coworker"
cd -
# end of commit from coworker in the background

pe "git add --patch"
pe "git commit"
pe "git push --set-upstream origin main"
pe "git push --set-upstream origin main --force"
pe "git reflog"
pe "git push --force-with-lease"
pe "git pull --rebase --autostash"
pe "git push --force-with-lease"

# enters interactive mode and allows newly typed command to be executed
# cmd

# show a prompt so as not to reveal our true nature after
# the demo has concluded
p ""

cd ..
cp "remote-repo/.git" "remote-repo/git"
