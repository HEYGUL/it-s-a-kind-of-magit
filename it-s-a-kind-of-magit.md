# It's a kind of magit

## Intro

  Whether we are a front-end developer, a back-end developer or a full-stack developer.
  Whether we spend our workday inside Vim, Emacs, VSCode, or any IDE of your choice.
  Wathever language we are coding with.

  There is still **one** tool we **all** use on daily basis: Git.

  I had the chance so far to meet many developers in many context and yet Git - even for more senior people - might still appear as *magic*.
  The underlying concept are not always known and thus Git might appear to not work as expected.


## Presentation of myself

  I am Guillaume Lagorce, aka GUL.
  I am currently working in Turbulent where I am the Lead Developer of a product called PleaseFix.
  PleaseFix is the place where gamers can report issues and contribute to other issues reports. So game developers know what matters to their players.
  If you are a Rainbow6 or a StarCitizen player you might have interacted with PleaseFix as it is the product these games are using.

  Little disclaimer: as you surely guessed it, English is not my mother tongue so I might sometimes take time to find my words.

  In this talk, I will try to show you my personal tips and make you fall in love with Git - at least stop hating it.


## Overall Git principles

  Demistifying Git: it's a simple file system with a dedicated folder named `.git` which stores historical states of the file system.

  A commit is a list of differences between two states of the file system and a reference to one or several parent commits.

  A branch is a name given to a series of commits with a common ancestor.
  A tag is a label on a given commit.

  Git it a decentralized version manager.
  It is said decentralized as there is no single source of truth.
  GitHub, GitLab, Bitbucket, etc, are services offering to store a remote git repository. Thus, we can share and collaborate on the same source code from anywhere.


## Problems with Git

1. I forgot to remove a `console.log` in the third previous commit!

*show git commit --fixup and git rebase --autorebase*
Queen wants to remove extra annotation in the guitar tabs introduced three commits before.

2. I cannot push my changes as a coworker added some commits!

*show git pull --rebase --autostash and autorebase config*
Brian May wants to add some fix to the guitar tab but Freddy couldn't avoid him to add some changes before.

3. I have multiple changes in a single file and I want to do two commits rather than only one commit!

*show git add --patch*
Freddy made some changes to the lyrics, at two different locations.

4. I rebase commits already on remote, how can I ensure myself to not erase commits from coworker?

*show git push --force-with-lease*


5. I created new files, how to deal with them?

*show git add --interactive and git status --untracked-files=all*


6. I fed up with typing errors, how can I improve?

*show option help.autocorrect*


7. I erased commits from my coworker!

*show git reflog & git reset*


## Conclusion

  I hope you enjoy and learn things about Git.
  Like any tools we used in our daily job, it is mandatory to us to raise our awareness of what Git is so we can take the most of it.
  Take time to practice and read the documentation, it's worth it.
  You can also learn a lot by showing your habits and looking at others.

  Taking care of your tool is one of fundamentals of software craftsmanship movement.

## References

Git documentation:
Tools used for this presentation:

