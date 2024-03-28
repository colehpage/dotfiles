#!/usr/bin/env bash

source "$CONFIG_DIR/sb_colors.sh"
source "$CONFIG_DIR/sb_icons.sh"

getIPAddress=$(TARGET_PATH="."
scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)


getIsVPN=$(TARGET_PATH="."
scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

IP_ADDRESS=$(echo $getIPAddress)
IS_VPN=$(echo $getIsVPN)

if [[ $IS_VPN != "" ]]; then
    COLOR=$SB_ORANGE
    ICON=
    LABEL="VPN"
elif [[ $IP_ADDRESS != "" ]]; then
    COLOR=$SB_PURPLE
    ICON=
    LABEL=$IP_ADDRESS
else
    COLOR=$SB_WHITE
    ICON=
    LABEL="OFFLINE"
fi

sketchybar --set $NAME icon.color=$COLOR \
    label.color=$COLOR \
    icon=$ICON \
    label="$LABEL"
