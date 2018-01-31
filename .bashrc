#!/bin/bash
[ -n "$PS1" ] && source ~/.bash_profile;

# Bash, ~/.bashrc
eval `docker-osx env`

export PATH="$HOME/.yarn/bin:$PATH"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Update master branch
function upm {
    remote prune origin && fetch -p && pull origin master && yarn install
}

# Update current working branch
function upb {
    pull -r origin master && yarn install
}
