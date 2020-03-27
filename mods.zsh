#!/bin/sh

# ==========================
# Tools
# ==========================

export PATH="$HOME/.yarn/bin:$PATH"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# ==========================
# Functions
# ==========================

# Checkout and update master branch
function upm {
    git checkout master && git remote prune origin && git fetch -p && git pull origin master && yarn install
}

## Update current working branch
function upb {
    git pull -r origin master && yarn install
}

# Create a new branch with name prefix
function cb() {
	git checkout -b jon/"$@";
}

# Convert video to animated Gifs
# Example: vid2gif src.mp4 "00:00:00" "00:00:10" out.gif
function vid2gif() {
	ffmpeg -i "$1" -ss $2 -t $3 -pix_fmt rgb24 -r 10 -s 720x480 "$4"  ;
}


# ==========================
# Plugins
# ==========================

# plugins=(colorize git node osx python javascript zsh_reload zsh-syntax-highlighting)


# ==========================
# Aliases
# ==========================

# Shortcuts
alias c='cd ~/code'
alias dt="cd ~/Desktop"
alias dl="cd ~/Downloads"
alias dot="cd ~/dotfiles"
alias h="history"
alias work='function _work(){ cd ~/code/work/"$1"; };_work'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Git
alias add="git add"
alias branch="git branch"
alias ca="git commit --amend --no-edit"
alias checkout="git checkout"
alias clone="git clone"
alias co="git checkout"
alias commit="git commit"
alias diff="git diff"
alias fetch="git fetch"
alias graph="git log --graph --all --decorate --stat --date=iso"
alias glog="git log --format='%Cgreen%h%Creset %C(cyan)%an%Creset - %s' --graph"
alias log="git log"
alias merge="git merge"
alias overview="git log --all --since='2 weeks' --oneline --no-merges"
alias praise="git blame"
alias pull="git pull"
alias push="git push"
alias puhs=push
alias psuh=push
alias pshu=push
alias spuh=push
alias sphu=push
alias rebase="git rebase"
alias recap="git log --all --oneline --no-merges --author=${1-$(git config user.email)}"
alias remote="git remote"
alias show="git show"
alias stash="git stash"
alias stats="git shortlog -sn --all --no-merges"
alias status="git status -sb"
alias tag="git tag"
alias today="git log --all --since=00:00:00 --oneline --no-merges --author=${1-$(git config user.email)}"
alias unstage="git reset HEAD --"
alias pr='!f() { git fetch -fu ${2:-upstream} refs/pull/$1/head:pr/$1 && git checkout pr/$1; }; f'
alias pr-clean='!git checkout master ; git for-each-ref refs/heads/pr/* --format="%(refname)" | while read ref ; do branch=${ref#refs/heads/} ; git branch -D $branch ; done'

# MySQL
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias mystart="mysql.server start"
alias mystop="mysql.server stop"

# PSQL
alias psql='/Applications/Postgres.app/Contents/Versions/9.3/bin/psql';
alias pg_dump='/Applications/Postgres.app/Contents/Versions/9.3/bin/pg_dump';

# HTTP Server
alias server='python -m SimpleHTTPServer';

# VirtualBox
alias vboxstart='sudo /Library/StartupItems/VirtualBox/VirtualBox restart';
alias vboxstop='sudo /Library/StartupItems/VirtualBox/VirtualBox stop';

# Misc.
alias today="curl wttr.in"
