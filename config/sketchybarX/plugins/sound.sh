#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")


if [[ $MUTED != "false" ]]; then
ICON=""
COLOR=$LUXCIUM_RED
else
case ${VOLUME} in
  100) ICON=""; COLOR=$LUXCIUM_BLUELIGHT ;;
  9[0-9]) ICON=""; COLOR=$LUXCIUM_GREENBLUE ;;
  8[0-9]) ICON=""; COLOR=$LUXCIUM_GREEN ;;
  7[0-9]) ICON=""; COLOR=$LUXCIUM_GREENYELLOW ;;
  6[0-9]) ICON=""; COLOR=$LUXCIUM_YELLOW ;;
  5[0-9]) ICON=""; COLOR=$LUXCIUM_YELLOWORANGE ;;
  4[0-9]) ICON=""; COLOR=$LUXCIUM_ORANGE ;;
  3[0-9]) ICON=""; COLOR=$LUXCIUM_REDPINK ;;
  2[0-9]) ICON=""; COLOR=$LUXCIUM_REDLIGHT ;;
  1[0-9]) ICON=""; COLOR=$LUXCIUM_RED ;;
  *) ICON=""; COLOR=$LUXCIUM_RED
esac
fi

sketchybar -m --set $NAME             \
    icon=$ICON \
    label="$VOLUME" \
    background.color="$COLOR"