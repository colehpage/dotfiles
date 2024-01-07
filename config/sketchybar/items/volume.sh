#!/bin/bash

volume_slider=(
  script="$PLUGIN_DIR/volume.sh"
  updates=on
  label.drawing=off
  icon.drawing=off
  slider.highlight_color=$GREEN
  slider.background.height=5
  slider.background.corner_radius=3
  slider.background.color=$ICON_COLOR
  slider.knob=􀀁
  slider.knob.drawing=off
  background.padding_right=12
)

volume_icon=(
  click_script="$PLUGIN_DIR/volume_click.sh"
  padding_left=10
  icon=$VOLUME_100
  icon.color=$ITEM_BACKGROUND_COLOR
  icon.width=0
  icon.align=left
  icon.font="$FONT:Regular:14.0"
  label.width=25
  label.align=left
  label.font="$FONT:Regular:14.0"
)

status_bracket=(
  background.color=$ITEM_BACKGROUND_COLOR
  background.height=33
  background.border_width=2
  background.border_color=$BAR_BORDER_COLOR
  background.corner_radius=$ITEM_BORDER_RADIUS
)

sketchybar --add slider volume right            \
           --set volume "${volume_slider[@]}"   \
           --subscribe volume volume_change     \
                              mouse.clicked     \
                              mouse.entered     \
                              mouse.exited      \
                                                \
           --add item volume_icon right         \
           --set volume_icon "${volume_icon[@]}"

sketchybar --add bracket status volume_icon volume \
           --set status "${status_bracket[@]}"
