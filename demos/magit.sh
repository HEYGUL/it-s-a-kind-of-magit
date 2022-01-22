#!/usr/bin/env bash

. ./common.sh

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

pe "git switch --create feature-branch"
pe "git push --set-upstream origin feature-branch"

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
git switch feature-branch
git add src/source-file.js
git commit -m "modify a file by a coworker"
cd -
# end of commit from coworker in the background

pe "git add --patch"
pe "git commit"
pe "git push"
pe "git push --force"
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
