#!/bin/bash
set -euxo pipefail

TEMP=$(mktemp -d)
git clone https://github.com/nwoythal/dotfiles.git --recurse-submodules $TEMP
rsync -r -l $TEMP/.config/ ~/.config/
rsync -r -l $TEMP/.includes/ ~/.includes/
rsync -r -l $TEMP/ohmyzsh/ ~/.oh-my-zsh/
cp $TEMP/.zshrc ~/.zshrc
