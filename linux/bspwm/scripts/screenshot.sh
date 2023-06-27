#!/bin/bash

picture_dir=$(xdg-user-dir PICTURES)

if [ ! -d "$picture_dir/screenshots"];
then
  mkdir -p "$picture_dir/screenshots"
fi

file="$picture_dir/screenshots/screenshot-$(date +%F_%T).png"

if [ "$1" = "screen" ]
then
  scrot -F "$file" && paplay ~/.config/bspwm/assets/screenshot.mp3;
  exit 0;
fi

# options to be displayed
option0='screen'
option1='select area or window'
option2='currently focused window'
options="$option0\n$option1\n$option2"

selected="$(echo -e "$options" | rofi -lines 3 -dmenu -p 'scrot')"
case $selected in
  "$option0")
    scrot -F "$file" && paplay ~/.config/bspwm/assets/screenshot.mp3;;
  "$option1")
    scrot -s -F "$file" && paplay ~/.config/bspwm/assets/screenshot.mp3;;
  "$option2")
    scrot -u -F "$file" && paplay ~/.config/bspwm/assets/screenshot.mp3;;
esac
