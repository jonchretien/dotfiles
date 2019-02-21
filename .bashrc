#!/bin/bash
[ -n "$PS1" ] && source ~/.bash_profile;

export PATH="$HOME/.yarn/bin:$PATH"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Checkout and update master branch
function upm {
    checkout master && remote prune origin && fetch -p && pull origin master && yarn install
}

# Update current working branch
function upb {
    pull -r origin master && yarn install
}
