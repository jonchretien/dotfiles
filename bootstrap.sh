#!/usr/bin/env bash
.vim#!/usr/bin/env bash

###############################################################################
# Variables
###############################################################################

# directory paths
BACKUP_DIR="dotfiles_backup"
CURRENT_DIR=$(pwd)

###############################################################################
# Functions
###############################################################################

create_backup_dir() {
  echo "Creating backup directory."
  mkdir -p ~/$BACKUP_DIR
}

install_dotfiles() {
  echo "Archiving old dotfiles and creating symlinks for new ones."
  files=( ".aliases" ".bash_profile" ".bash_prompt" ".bashrc" ".editorconfig" ".exports" ".functions" ".gitconfig" ".gitignore" ".gvimrc" ".vimrc" ".vimr" ".vim" )

  for file in "${files[@]}"
  do
     echo "Moving ~/$file to ~/$BACKUP_DIR/$file"
     mv ~/$file ~/$BACKUP_DIR/$file
     ln -s $CURRENT_DIR/$file ~/$file
  done

  echo "Done installing dotfiles!"
}

open_tabs() {
  echo "Opening links to apps."
  echo ">> Chrome"
  open https://www.google.com/intl/en/chrome/browser/
  echo ">> Chrome Canary"
  open http://www.google.com/intl/en/chrome/browser/canary.html
  echo ">> Dropbox"
  open https://www.dropbox.com
  echo ">> Firefox"
  open http://www.mozilla.org/en-US/firefox/new/
  echo ">> Git"
  open http://git-scm.com/downloads
  echo ">> iTerm2"
  open http://www.iterm2.com/
  echo ">> Sequel Pro"
  open http://www.sequelpro.com
}

install_homebrew() {
  echo "Installing Homebrew, MySQL, ack, wget, & tree."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  brew update
  brew install mysql ack wget tree
}

###############################################################################
# User Prompts
###############################################################################

echo "Should I create a folder to backup your current dotfiles?"
echo "y/n"
read prompt_backup
[[ "$prompt_backup" == 'y' ]] && create_backup_dir

echo "Should I create symlinks to the new dotfiles?"
echo "y/n"
read prompt_symlinks
[[ "$prompt_symlinks" == 'y' ]] && install_dotfiles

echo "Should I open tabs for system applications (e.g. Chrome, Dropbox, etc...)?"
echo "y/n"
read prompt_links
[[ "$prompt_links" == 'y' ]] && open_tabs

echo "Should I install Homebrew and MySQL?"
echo "y/n"
read prompt_homebrew
[[ "$prompt_homebrew" == 'y' ]] && install_homebrew
