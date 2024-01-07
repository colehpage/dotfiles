#!/usr/bin/env bash

source "$CONFIG_DIR/colors.sh"
source "$CONFIG_DIR/icons.sh"

getIPAddress=$(TARGET_PATH="."
scutil --nwi | grep address | sed 's/.*://' | tr -d ' ' | head -1)


getIsVPN=$(TARGET_PATH="."
scutil --nwi | grep -m1 'utun' | awk '{ print $1 }')

IP_ADDRESS=$(echo $getIPAddress)
IS_VPN=$(echo $getIsVPN)

if [[ $IS_VPN != "" ]]; then
    COLOR=$CYAN
    ICON=
    LABEL="VPN"
elif [[ $IP_ADDRESS != "" ]]; then
    COLOR=$BLUE
    ICON=
    LABEL=$IP_ADDRESS
else
    COLOR=$WHITE
    ICON=
    LABEL="OFFLINE"
fi

sketchybar --set $NAME icon.color=$COLOR \
    label.color=$COLOR \
    icon=$ICON \
    label="$LABEL"
