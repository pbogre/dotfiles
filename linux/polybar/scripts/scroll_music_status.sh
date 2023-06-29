#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 35 \
        --delay 0.2 \
        --scroll-padding " | " \
        --match-command "`dirname $0`/get_music_status.sh --status" \
        --match-text "Playing" "--before-text '󰝚 ' --scroll 1" \
        --match-text "Paused" "--before-text '󰝛 ' --scroll 0" \
	--match-text "No player is running" "--before-text ''" \
        --update-check true "`dirname $0`/get_music_status.sh" &
wait
