#!/bin/bash

source "$CONFIG_DIR/colors.sh"

COUNT=$(brew outdated | wc -l | tr -d ' ')

COLOR=$RED

case "$COUNT" in
  [3-5][0-9]) COLOR=$LUXCIUM_ORANGE
  ;;
  [1-2][0-9]) COLOR=$LUXCIUM_YELLOW
  ;;
  [1-9]) COLOR=$LUXCIUM_GREENYELLOW
  ;;
  0) COLOR=$BREW_COLOR
    #  COUNT=􀆅 # CHECKMARK
    COUNT=0
  ;;
esac

sketchybar -m \
--set $NAME label=$COUNT \
--set $NAME icon.color=$COLOR \
--set $NAME label.color="$COLOR"

# SIMPLE VERSION JUST COUNT NO COLOR #

# OUTDATED=$(brew outdated | grep . -c)

# sketchybar --set $NAME label="$OUTDATED"
