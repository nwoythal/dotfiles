#!/bin/bash
set -euxo pipefail

TEMP=$(mktemp -d)
git clone https://github.com/nwoythal/dotfiles.git --recurse-submodules $TEMP
cp -R $TEMP/.tmux/ ~/.tmux/
cp -R $TEMP/.config/ ~/.config/
cp -R $TEMP/.includes/ ~/.includes/
cp -R $TEMP/ohmyzsh/ ~/.oh-my-zsh/
cp $TEMP/.zshrc ~/.zshrc
