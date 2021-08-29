#!/bin/sh
mkdir -v $HOME/.config/Code/User
cp -PRv $HOME/.dotfiles/links/. $HOME
cp -Pv $HOME/snippets $HOME/settings.json $HOME/keybindings.json $HOME/.config/Code/User/
rm $HOME/snippets $HOME/settings.json $HOME/keybindings.json
echo "Task completed successfully..."
