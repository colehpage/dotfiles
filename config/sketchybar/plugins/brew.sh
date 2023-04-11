#!/bin/bash

source "$HOME/.config/sketchybar/colors.sh"

COUNT=$(brew outdated | wc -l | tr -d ' ')

COLOR=$RED

case "$COUNT" in
  [3-5][0-9]) COLOR=$ORANGE
  ;;
  [1-2][0-9]) COLOR=$YELLOW
  ;;
  [1-9]) COLOR=$WHITE
  ;;
  0) COLOR=$GREEN
    #  COUNT=􀆅 # CHECKMARK
    COUNT=0
  ;;
esac

sketchybar --set $NAME label=$COUNT icon.color=$COLOR


# SIMPLE VERSION JUST COUNT NO COLOR #

# OUTDATED=$(brew outdated | grep . -c)

# sketchybar --set $NAME label="$OUTDATED"
