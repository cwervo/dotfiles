#! /bin/zsh

SETTINGSPATH=~/Library/Application\ Support/Code/User
if [ -d "$SETTINGSPATH" ]; then
    ln -s ~/dotfiles/vscode/settings.json $SETTINGSPATH/settings.json
else
    echo "VSCode isn't installed, please run this script again after it is!"
fi
