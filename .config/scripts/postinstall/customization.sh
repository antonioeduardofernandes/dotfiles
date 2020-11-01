#!/bin/bash

#set wallpaper
feh --bg-fill Imagens/wp/cloudy-mountains.jpg

#font-manager
git clone https://aur.archlinux.org/font-manager.git 
cd font-manager/ 
makepkg -sri PKGBUILD --noconfirm
cd
rm -rf font-manager/

#white-rabbit font
wget https://ff.static.1001fonts.net/w/h/white-rabbit.regular.ttf
mv white-rabbit.regular.ttf /usr/share/fonts

#fonts
cp -r ../../fonts/* /usr/share/fonts

#polybar
git clone https://aur.archlinux.org/polybar.git 
cd polybar/ 
makepkg -sri PKGBUILD --noconfirm
cd
rm -rf polybar

