#!/bin/bash

calendar=(
  icon=""
  icon.font="Font Awesome 6 Free:Solid:15.4"
  icon.padding_right=4
  icon.color=0xffFD5934
  icon.padding_left=16
  label.padding_right=12
  label.font="$FONT:Medium:12.0"
  label.color=0xffdfe1ea
  background.color=0xff252731
  background.height=33
  background.corner_radius=20
  background.padding_right=8
  update_freq=30
  script="$PLUGIN_DIR/calendar.sh"
  click_script="$PLUGIN_DIR/zen.sh"
)

sketchybar --add item calendar right       \
           --set calendar "${calendar[@]}" \
           --subscribe calendar system_woke