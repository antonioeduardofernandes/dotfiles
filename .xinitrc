#!/bin/sh

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

xrandr --output DVI-I-1 --mode 1360x768
xrandr --output HDMI-1 --mode 1368x768
xset s off
xset s off -dpms
#picom &
numlockx &
#setxkbmap -model abnt2 -layout br -variant abnt2
xset r rate 180 40 
~/.fehbg &
/usr/bin/dunst &
exec bspwm
