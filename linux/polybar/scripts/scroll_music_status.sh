#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 23 \
        --delay 0.2 \
        --scroll-padding " | " \
        --match-command "`dirname $0`/get_music_status.sh --status" \
        --match-text "Playing" "--before-text '󰝚 ' --scroll 1" \
        --match-text "Paused" "--before-text '󰝛 ' --scroll 0" \
        --update-check true "`dirname $0`/get_music_status.sh" &
wait
