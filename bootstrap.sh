#!/usr/bin/env bash

open_apps() {
  echo 'Opening app links:'
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
  echo '>> Grunt'
  open http://gruntjs.com/getting-started
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

echo 'Should I give you links for system applications (e.g. Chrome, Dropbox, etc...)?'
echo 'y/n'
read give_links
[[ "$give_links" == 'y' ]] && open_apps