#!/bin/bash
if [ -f $HOME/.Xdefaults ]; then
  xrdb -merge $HOME/.Xdefaults
fi

if [ -f $HOME/.Xresources ]; then
  xrdb -merge $HOME/.Xresources
  xrdb -query | egrep '(fore|back)ground'
fi

export LANG=en_US.UTF-8

xsetroot -solid '#fdf6e3'
xsetroot -cursor_name left_ptr
setxkbmap -layout en_us

synergys

feh --bg-tile ~/Pictures/platform.png
exec xmonad
