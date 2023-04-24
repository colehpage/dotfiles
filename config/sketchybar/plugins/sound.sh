#!/usr/bin/env bash

VOLUME=$(osascript -e "output volume of (get volume settings)")
MUTED=$(osascript -e "output muted of (get volume settings)")

if [[ $MUTED != "false" ]]; then
ICON=""
else
case ${VOLUME} in
  100) ICON=""; COLOR="0xff9ac868" ;;
  9[0-9]) ICON=""; COLOR="0xff9ac868" ;;
  8[0-9]) ICON=""; COLOR="0xff9ac868" ;;
  7[0-9]) ICON=""; COLOR="0xfffbc62d" ;;
  6[0-9]) ICON=""; COLOR="0xfffbc62d" ;;
  5[0-9]) ICON=""; COLOR="0xfffbc62d" ;;
  4[0-9]) ICON=""; COLOR="0xfffbc62d" ;;
  3[0-9]) ICON=""; COLOR="0xfffbc62d" ;;
  2[0-9]) ICON=""; COLOR="0xfffbc62d" ;;
  1[0-9]) ICON=""; COLOR="0xfff65e51" ;;
  [0-9]) ICON=""; COLOR="0xfff65e51" ;;
  *) ICON=""; COLOR="0xfff65e51"
esac
fi

sketchybar -m \
--set $NAME icon=$ICON \
--set $NAME label="$VOLUME" \
--set $NAME label.color="$COLOR"
