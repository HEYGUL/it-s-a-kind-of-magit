# It's a kind of magit

## Intro

  Whether we are a front-end developer, a back-end developer or a full-stack developer.
  Whether we spend our workday inside Vim, Emacs, VSCode, or any IDE of your choice.
  Wathever language we are coding with.

  There is still **one** tool we **all** use on daily basis: Git.

  I had the chance so far to meet many developers in many context and yet Git - even for more senior people - might still appear as *magic*.
  The underlying concept are not always known and thus Git might appear to work as expected.


## Presentation of myself

  I am Guillaume Lagorce, aka GUL.
  I am currently working in Turbulent where I am the Lead Developer of a product called PleaseFix.
  PleaseFix is the place where gamers can report issues and contribute to other issues reports. So game developers know what matters to their players.
  If you are a Rainbow6 or a StarCitizen player you might have interacted with PleaseFix as it is the product these games are using.

  Little disclaimer: as you surely guessed it, English is not my mother tongue so I might sometimes take time to find my words.

  In this talk, I will try to show you my personal tips and make you fall in love with Git - at least stop hating it.

  Ready? Let's go for a magic trick!

## The magic trick

  git clone abcd
  git switch -c new-branch
  *create a file*
  git add --interactive
  *add something in file*
  git add --patch
  git commit
  *modify other file*
  git add --patch
  git commit
  *oups I missed something in first commit*
  git add --patch
  tig #copy sha1
  git commit --fixup
  git rebase --interactive --autosquash
  *modify other file*
  *on background, new commit from other dev*
  git push
  *error while pushing*
  git push --force
  *damn! I erase commit from my co-worker!*
  git reflog
  git reset *from reflog*
  git push --force-with-lease
  git pull --rebase --autostash
  git push --force-with-lease

  **And voila!**

## The magic trick explainations

  Demistifying Git: it's a simple file system with a dedicated folder named `.git` which stores historical states of the file system.

  A commit is a list of differences between two states of the file system and a reference to one or several parent commits.

  A branch is a name given to a series of commits on the with a common ancestor.

  A tag is a label on a given commit.

  Git it a decentralized version manager.
  It is said decentralized as there is no single source of truth.
  *Add some explainations about remote, GitHub, GitLab, Bitbucket, etc...*

  Explain each command with a schema showing:
    - local file system
    - stage area
    - local repo
    - remote repo

  Add a documentation link to each command.

## Conclusion

  I hope you enjoy and learn things about Git.
  Like any tools we used in our daily job, it is mandatory to us to raise our awareness of what Git is so we can take the most of it.

  

## References

Git documentation:
Tools used for this presentation:
