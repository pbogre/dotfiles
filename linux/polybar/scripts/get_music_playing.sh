#!/bin/bash

if [[ -z $(playerctl -s -l) ]]; 
then
  echo ""
elif [[ $(playerctl status) = "Paused" ]];
then
  echo " ";
elif [[ $(playerctl status) = "Playing" ]];
then
  echo " "
fi
