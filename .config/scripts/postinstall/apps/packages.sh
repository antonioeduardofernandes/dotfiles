#!/bin/bash

function install_pkg () {
 command -v $1 || \
 (git clone $2 $HOME/package && \
 cd $HOME/package && \
 makepkg -sri --noconfirm && \
 cd .. && \
 rm -rf $HOME/package)
}

#yay
install_pkg yay https://aur.archlinux.org/yay.git

#polybar
install_pkg polybar-git https://aur.archlinux.org/yay.gi://aur.archlinux.org/polybar-git.git 

#spotify
install_pkg spotify https://aur.archlinux.org/spotify.git 
curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import - 

#picom-ibhagwan
command -v picom && sudo pacman -Rss picom 
install_pkg code-insiders https://aur.archlinux.org/picom-ibhagwan-git.git
