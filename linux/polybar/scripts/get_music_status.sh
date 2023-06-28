#!/bin/bash

PARENT_BAR="top"
PARENT_BAR_PID=$(pgrep -a "polybar" | grep "$PARENT_BAR" | cut -d" " -f1)

# Set the source audio player here.
# Players supporting the MPRIS spec are supported.
# Examples: spotify, vlc, chrome, mpv and others.
# Use `playerctld` to always detect the latest player.
# See more here: https://github.com/altdesktop/playerctl/#selecting-players-to-control
PLAYER="playerctld"

# Format of the information displayed
# Eg. {{ artist }} - {{ album }} - {{ title }}
# See more attributes here: https://github.com/altdesktop/playerctl/#printing-properties-and-metadata
FORMAT="{{ title }} - {{ artist }}"

update_hooks() {
    while IFS= read -r id
    do
        polybar-msg -p "$id" hook music-play-pause $2 1>/dev/null 2>&1
    done < <(echo "$1")
}

PLAYERCTL_STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS=$PLAYERCTL_STATUS
else
    update_hooks "$PARENT_BAR_PID" 3
fi

if [ "$1" == "--status" ]; then
    echo "$STATUS"
else
    if [ "$STATUS" = "Stopped" ]; then
	update_hooks "$PARENT_BAR_PID" 2
        echo "No music is playing"
    elif [ "$STATUS" = "Paused"  ]; then
	update_hooks "$PARENT_BAR_PID" 2
        playerctl --player=$PLAYER metadata --format "$FORMAT"
    elif [ "$STATUS" = "Playing"  ]; then
	update_hooks "$PARENT_BAR_PID" 1
        playerctl --player=$PLAYER metadata --format "$FORMAT"
    else
	update_hooks "$PARENT_BAR_PID" 3
        echo "$STATUS"
    fi
fi
