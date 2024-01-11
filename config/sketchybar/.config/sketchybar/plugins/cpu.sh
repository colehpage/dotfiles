#!/usr/bin/env sh

source "$HOME/.config/icons.sh"

TOPPROC=$(top -l  2 | grep -E "^CPU" | tail -1 | awk '{ print $3 + $5"%" }' | cut -d "." -f1)

sketchybar --set $NAME icon=$ICON_CPU label="$TOPPROC%"
