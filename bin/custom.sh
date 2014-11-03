#!/usr/bin/env bash
ST3="$HOME/Library/Application Support/Sublime Text 3/Packages"

echo "Installing Sublime Text 3 Package Control"
git clone https://github.com/wbond/sublime_package_control.git "$ST3/Package Control"

echo "Installing Customized Spacegray"
git clone https://github.com/silverbux/spacegray.git "$ST3/Theme - Spacegray"

echo ""
echo "Install Sublime Text 3 Preferences:"
echo "Preferences.sublime-settings"
cp -f "assets/Preferences.sublime-settings" "$ST3/User/Preferences.sublime-settings"

echo ""
echo "Install Sublime Text 3 Keymaps:"
echo "Default (OSX).sublime-keymap"
cp -f "$DOT/bin/subl/Default (OSX).sublime-keymap" "$ST3/User/Default (OSX).sublime-keymap"

echo ""
echo "Install Sublime Text 3 Packages:"
echo "Package Control.sublime-settings"
cp -f "$DOT/bin/subl/Package Control.sublime-settings" "$ST3/User/Package Control.sublime-settings"


DOT="$HOME/.dotfiles"

echo "Initializing .bash_aliases"
cp -RfXv $DOT/bin/shell/.bash_aliases $HOME/.bash_aliases

echo "Initializing .bash_profile"
cp -RfXv $DOT/bin/shell/.bash_profile $HOME/.bash_profile

# Install zsh & oh-my-zsh
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh"
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

# Open Terminal Settings
echo ""
echo "Install Pongstr Base-16 Theme"
open "$DOT/bin/shell/Pongstr Base-16.terminal"
sleep 1 # Wait a bit to make sure the theme is loaded
# Set Terminal Custom Theme
echo ""
echo "Setting Pongstr Base-16.terminal as the default theme."
defaults write com.apple.terminal "Default Window Settings" -string "Pongstr Base-16.terminal"
defaults write com.apple.terminal "Startup Window Settings" -string "Pongstr Base-16.terminal"
# Link .zshrc
echo ""
echo "Install Pongstr zsh-theme"
cp -RfXv "$DOT/bin/shell/Pongstr Base-16.zsh-theme" "$HOME/.oh-my-zsh/themes/pongstr.zsh-theme"
cp -RfXv "$DOT/bin/shell/.zshrc" "$HOME/.zshrc" && source $HOME/.zshrc