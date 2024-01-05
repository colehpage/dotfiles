#!/bin/bash

calendar=(
  icon=""
  icon.font="Font Awesome 6 Free:Solid:15.4"
  icon.padding_right=4
  icon.color=$BAR_COLOR
  icon.padding_left=16
  label.padding_right=12
  label.font="$FONT:Medium:12.0"
  label.color=$BAR_COLOR
  background.color=$CALENDAR_COLOR
  background.height=33
  background.border_width=2
  background.border_color=$BAR_BORDER_COLOR
  background.corner_radius=$ITEM_BORDER_RADIUS
  update_freq=3600
  script="$PLUGIN_DIR/calendar.sh"
)

sketchybar --add item calendar right       \
           --set calendar "${calendar[@]}" \
           --subscribe calendar system_woke