#!/bin/bash

clock=(
    update_freq=1
    icon=""
    icon.font="Font Awesome 6 Free:Solid:15.4"
    icon.padding_right=4
    icon.color=$TIME_COLOR
    label.font="$FONT:Medium:12.0"
    label.color=$TIME_COLOR
    label.padding_right=8
    background.color=$ITEM_BACKGROUND_COLOR
    background.height=33
    background.border_width=2 
    background.border_color=$BAR_BORDER_COLOR
    background.corner_radius=$ITEM_BORDER_RADIUS
    background.padding_right=4
    script="$PLUGIN_DIR/time.sh"
    icon.padding_left=16
    label.padding_right=16
)

sketchybar --add item clock right                      \
           --set clock "${clock[@]}"           \
           --subscribe clock system_woke
