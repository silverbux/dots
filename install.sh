#!/usr/bin/env bash

# Run each program
xcode-select --install

# Install Hushlogin
echo ""
echo "Install hushlogin"
cp -f ".hushlogin" $HOME/.hushlogin

source config.sh
source bin/defaults.sh
source bin/binaries.sh
source bin/apps.sh
source bin/profile.sh

# ----------------------------------
# APPS TO INSTALL MANUALLY
# ----------------------------------
# Ammps
# Feedly