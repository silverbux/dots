#!/usr/bin/env bash

# Run each program
xcode-select --install

# Install Hushlogin
echo ""
echo "Install hushlogin"
cp -f "bin/.hushlogin" $HOME/.hushlogin

source config.sh
source bin/defaults.sh
source bin/binaries.sh
source bin/apps.sh
source bin/profile.sh
source bin/custom.sh

# ----------------------------------
# APPS TO INSTALL MANUALLY
# ----------------------------------
# Ammps
# Feedly