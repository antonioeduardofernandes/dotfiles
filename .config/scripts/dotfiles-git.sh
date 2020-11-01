#!/bin/bash

#manage local dotfiles in sync with github

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

dotfiles add $HOME/fonts $HOME/scripts $HOME/.config/alacritty $HOME/.config/bspwm $HOME/.config/picom $HOME/.config/polybar $HOME/.config/rofi $HOME/.config/sxhkd $HOME/Imagens/wp $HOME/.xinitrc $HOME/.gitconfig $HOME/.zshrc $HOME/.vimrc && dotfiles commit --amend --no-edit && dotfiles push -f origin master && echo dotfiles saved successfuly

