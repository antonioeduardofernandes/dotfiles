#!/bin/bash

git init --bare $HOME/dotfiles
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
source $HOME/.zshrc
dotfiles config --local status.showUntrackedFiles no
