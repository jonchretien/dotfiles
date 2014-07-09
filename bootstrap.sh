#!/usr/bin/env bash

install_npm_modules() {
  echo "Installing global npm modules"
  npm install -g bower
  npm install -g browserify
  npm install -g grunt-cli
  npm install -g gulp
  npm install -g less
  npm install -g jshint
  npm install -g uglify-js
}

install_ruby_gems() {
  echo "Ruby gems"
  gem install sass
}

open_tabs() {
  echo 'Opening links to apps:'
  echo '>> Chrome'
  open https://www.google.com/intl/en/chrome/browser/
  echo '>> Chrome Canary'
  open http://www.google.com/intl/en/chrome/browser/canary.html
  echo '>> Dropbox'
  open https://www.dropbox.com
  echo '>> Evernote'
  open https://evernote.com
  echo '>> Firefox'
  open http://www.mozilla.org/en-US/firefox/new/
  echo '>> Git'
  open http://git-scm.com/downloads
  echo '>> iTerm2'
  open http://www.iterm2.com/
  echo '>> LimeChat'
  open http://limechat.net/mac/
  echo '>> Sequel Pro'
  open http://www.sequelpro.com
  echo '>> Solarized Theme'
  open https://github.com/paulcpederson/solarized-limechat
  echo '>> Sublime Text'
  open http://www.sublimetext.com
  echo '>> Transmit'
  open http://panic.com/transmit/
}

install_homebrew() {
  echo 'Installing Homebrew, MySQL, and Node.js...'
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  brew update
  brew install mysql node
}

echo 'Should I open tabs for system applications (e.g. Chrome, Dropbox, etc...)?'
echo 'y/n'
read prompt_links
[[ "$prompt_links" == 'y' ]] && open_tabs

echo 'Should I install Homebrew, MySQL, and Node.js?'
echo 'y/n'
read prompt_homebrew
[[ "$prompt_homebrew" == 'y' ]] && install_homebrew

echo 'Should I install global NPM modules?'
echo 'y/n'
read prompt_npm
[[ "$prompt_npm" == 'y' ]] && install_npm_modules

echo 'Should I install Ruby gems?'
echo 'y/n'
read prompt_ruby_gems
[[ "$prompt_ruby_gems" == 'y' ]] && install_ruby_gems