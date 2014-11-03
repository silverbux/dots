#!/usr/bin/env bash
#
# Application installer (via brew-cask)
#

set -e

# Specify the location of the apps
appdir="/Applications"

main() {
  # install apps
  echo "installing apps..."
  brew cask install --appdir=$appdir ${apps[@]}

  # install fonts
  echo "installing fonts..."
  brew cask install ${fonts[@]}

  cleanup
}

cleanup() {
  brew cleanup
}

main "$@"