#!/bin/bash

source "$CONFIG_DIR/sb_colors.sh"

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep "AC Power")

case ${BATT_PERCENT} in
   100) ICON=""; COLOR=$SB_GREEN ;;
    9[0-9]) ICON=""; COLOR=$SB_GREEN ;;
    8[0-9]) ICON=""; COLOR=$SB_GREEN ;;
    7[0-9]) ICON=""; COLOR=$SB_YELLOW ;;
    6[0-9]) ICON=""; COLOR=$SB_YELLOW ;;
    5[0-9]) ICON=""; COLOR=$SB_YELLOW ;;
    4[0-9]) ICON=""; COLOR=$SB_ORANGE ;;
    3[0-9]) ICON=""; COLOR=$SB_ORANGE ;;
    2[0-9]) ICON=""; COLOR=$SB_ORANGE ;;
    1[0-9]) ICON=""; COLOR=$SB_RED ;;
    *) ICON=""; COLOR=$SB_RED
esac

if [[ $CHARGING != "" ]]; then
    ICON="";
    COLOR=$SB_GREEN
fi

sketchybar -m --set battery             \
  icon="$ICON"                          \
  label="${BATT_PERCENT}%" \
  icon.color="$COLOR"              \
  label.color="$COLOR"              \