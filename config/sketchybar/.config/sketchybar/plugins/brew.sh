#!/bin/bash

source "$CONFIG_DIR/sb_colors.sh"
source "$HOME/.config/colors.sh"

COUNT=$(brew outdated | wc -l | tr -d ' ')

COLOR=$BREW_COLOR

case "$COUNT" in
  [3-5][0-9]) COLOR=$COLOR_RED
  ;;
  [1-2][0-9]) COLOR=$COLOR_ORANGE
  ;;
  [1-9]) COLOR=$COLOR_YELLOW
  ;;
  0) COLOR=$BREW_COLOR
     COUNT=􀆅 # CHECKMARK
    # COUNT=0
  ;;
esac

sketchybar -m \
--set $NAME label=$COUNT \
--set $NAME icon.color=$COLOR \
--set $NAME label.color="$COLOR"

# SIMPLE VERSION JUST COUNT NO COLOR #

# OUTDATED=$(brew outdated | grep . -c)

# sketchybar --set $NAME label="$OUTDATED"
