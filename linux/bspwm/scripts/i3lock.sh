#!/usr/bin/env bash

BLUR="8x8"

PICTURE=/tmp/lock.png
scrot $PICTURE
convert $PICTURE -blur $BLUR $PICTURE

i3lock -i $PICTURE 
rm $PICTURE
