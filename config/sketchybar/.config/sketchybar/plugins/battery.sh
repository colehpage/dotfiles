#!/bin/bash

source "$HOME/.config/colors.sh"

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep "AC Power")

case ${BATT_PERCENT} in
   100) ICON=""; COLOR=$COLOR_GREEN ;;
    9[0-9]) ICON=""; COLOR=$COLOR_GREEN ;;
    8[0-9]) ICON=""; COLOR=$COLOR_GREEN ;;
    7[0-9]) ICON=""; COLOR=$COLOR_YELLOW ;;
    6[0-9]) ICON=""; COLOR=$COLOR_YELLOW ;;
    5[0-9]) ICON=""; COLOR=$COLOR_YELLOW ;;
    4[0-9]) ICON=""; COLOR=$COLOR_ORANGE ;;
    3[0-9]) ICON=""; COLOR=$COLOR_ORANGE ;;
    2[0-9]) ICON=""; COLOR=$COLOR_ORANGE ;;
    1[0-9]) ICON=""; COLOR=$COLOR_RED ;;
    *) ICON=""; COLOR=$COLOR_RED
esac

if [[ $CHARGING != "" ]]; then
    ICON="";
    COLOR=$COLOR_GREEN
fi

sketchybar -m --set battery             \
  icon="$ICON"                          \
  label="${BATT_PERCENT}%" \
  icon.color="$COLOR"              \
  label.color="$COLOR"              \