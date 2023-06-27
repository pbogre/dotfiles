#!/usr/bin/env bash

BLUR="8x8"

PICTURE=/tmp/i3lockimg.png
scrot $PICTURE
convert $PICTURE -blur $BLUR $PICTURE

i3lock -i $PICTURE &
rm $PICTURE
