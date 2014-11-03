#!/usr/bin/env bash
#
# Binary installer
#

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
fi

# Update homebrew
echo "Updating brew and cask"
brew update && brew upgrade brew-cask

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
echo "Installing utilities"
brew install findutils

# Install more recent versions of some OS X tools
echo "Installing Some OS X tools"
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Install the binaries
echo "Starting to install binaries"
brew install ${binaries[@]}

# Remove outdated versions from the cellar
echo "Installing cleaning up brew"
brew cleanup

# Install homebrew-cask
echo "Installing cask..."
brew tap phinze/homebrew-cask
brew install brew-cask

# Tap alternative versions
brew tap caskroom/versions

# Tap the fonts
brew tap caskroom/fonts

# Install NPM Packages
echo "Install NPM Packages..."
npm install -g ${npmpackages[@]}

echo ""
echo "Installing RVM..."
\curl -L https://get.rvm.io | bash

echo ""
echo "Updating Ruby Gems"
gem update --system

# Install Gems Tools
# ----------------------------------------------------------------------

function installgem () {
  if ! gem spec "${@}" > /dev/null 2>&1; then
    echo "Installing ${@}..."
    gem install "${@}"
  else
    echo "${@} is already installed"
  fi
}

# Gem Install
installgem ${geminstalls[@]}

echo ""
echo "Cleaning up..."
gem cleanup

# INSTALL PHPUNIT
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
mv phpunit.phar /usr/local/bin/phpunit