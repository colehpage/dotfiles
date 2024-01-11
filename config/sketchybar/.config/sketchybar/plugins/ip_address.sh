#!/usr/bin/env bash

source "$CONFIG_DIR/sb_colors.sh"
source "$CONFIG_DIR/sb_icons.sh"
source "$HOME/.config/colors.sh"

getIPAddress=$(TARGET_PATH="."
scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)


getIsVPN=$(TARGET_PATH="."
scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

IP_ADDRESS=$(echo $getIPAddress)
IS_VPN=$(echo $getIsVPN)

if [[ $IS_VPN != "" ]]; then
    COLOR=$COLOR_CYAN
    ICON=
    LABEL="VPN"
elif [[ $IP_ADDRESS != "" ]]; then
    COLOR=$COLOR_BLUE
    ICON=
    LABEL=$IP_ADDRESS
else
    COLOR=$COLOR_WHITE
    ICON=
    LABEL="OFFLINE"
fi

sketchybar --set $NAME icon.color=$COLOR \
    label.color=$COLOR \
    icon=$ICON \
    label="$LABEL"
