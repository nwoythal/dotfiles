#!/bin/bash
set -euxo pipefail

TEMP=$(mktemp -d)
git clone https://github.com/nwoythal/dotfiles.git --recurse-submodules $TEMP
cp -R $TEMP/.tmux/ ~/.tmux/
cp -R $TEMP/.config/ ~/.config/
cp -R $TEMP/.includes/ ~/.includes/
cp $TEMP/.gitignore_global ~/.gitignore
cp $TEMP/.vimrc ~/.vimrc
cp $TEMP/.gitconfig ~/.gitconfig
