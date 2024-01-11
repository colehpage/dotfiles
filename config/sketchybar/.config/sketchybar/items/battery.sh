#!/bin/bash

battery=(
  update_freq=1
  icon.font="Font Awesome 6 Free:Solid:15.4"
  icon.padding_right=4
  icon.color=$BATTERY_COLOR
  icon.padding_left=16
  label.padding_right=16
  label.font="$FONT:Medium:12.0"
  label.color=$BATTERY_COLOR
  background.color=$ITEM_BACKGROUND_COLOR
  background.height=33
  background.border_width=2
  background.border_color=$BAR_BORDER_COLOR
  background.corner_radius=$ITEM_BORDER_RADIUS
  script="$PLUGIN_DIR/battery.sh"
)

sketchybar --add item battery right       \
           --set battery "${battery[@]}" \
           --subscribe battery system_woke