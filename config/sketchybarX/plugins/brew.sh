#!/bin/bash

source "$CONFIG_DIR/colors.sh"

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

sketchybar -m \
--set $NAME label=$COUNT \
# --set $NAME icon.color=$COLOR \
# --set $NAME label.color="$COLOR"

# SIMPLE VERSION JUST COUNT NO COLOR #

# OUTDATED=$(brew outdated | grep . -c)

# sketchybar --set $NAME label="$OUTDATED"
