# 🤖 dotfiles (Jon Chretien)

Homebase for my dev settings.

## Installation

### Step 1: prepare Mac OS X

Run through the steps in the [setup repo](https://github.com/jonchretien/setup).

### Step 2: clone and install dotfiles

```bash
git clone https://github.com/jonchretien/dotfiles.git && cd dotfiles && source bootstrap.sh
```

### Step 3: local/private Bash

Any private and custom Bash commands and configuration should be placed in a
`~/.bash_profile.local` file. This file will not be under version control or
committed to a public repository. If `~/.bash_profile.local` exists, it will be
sourced for inclusion in `bash_profile`.

First create `~/.bash_profile.local`:

```bash
$ touch ~/.bash_profile.local
$ vim ~/.bash_profile.local
```
Here is an example:

```bash
# Git credentials
# Not under version control to prevent people from
# accidentally committing with your details
GIT_AUTHOR_NAME="Jon C."
GIT_AUTHOR_EMAIL="jon@example.com"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
# Set the credentials (modifies ~/.gitconfig)
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

N.B. Because the `git/gitconfig` file is copied to `~/.gitconfig`, any private
git configuration specified in `~/.bash_profile.local` will not be committed to
your dotfiles repository.

## Credit

Much of this work is based on dotfiles from:
* [GitHub ❤ ~/](http://dotfiles.github.io)
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
* [Nicolas Gallagher](https://github.com/necolas/dotfiles)
* tips from friends and colleagues.
