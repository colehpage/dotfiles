#!/bin/bash

POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

github_bell=(
  update_freq=180
  icon=$BELL
  icon.font="$FONT:Bold:15.0"
  icon.padding_right=4
  icon.color=$GITHUB_COLOR
  label=$LOADING
  label.color=$GITHUB_COLOR
  label.highlight_color=$BLUE
  popup.align=right
  script="$PLUGIN_DIR/github.sh"
  click_script="$POPUP_CLICK_SCRIPT"
  background.color=$ITEM_BACKGROUND_COLOR
  background.height=33
  background.border_width=2
  background.border_color=$BAR_BORDER_COLOR
  background.corner_radius=$ITEM_BORDER_RADIUS
  icon.padding_left=16
  label.padding_right=16
)

github_template=(
  drawing=off
  background.corner_radius=12
  padding_left=7
  padding_right=7
  icon.background.height=2
  icon.background.y_offset=-12
)

sketchybar --add item github.bell right                 \
           --set github.bell "${github_bell[@]}"        \
           --subscribe github.bell  mouse.entered       \
                                    mouse.exited        \
                                    mouse.exited.global \
                                                        \
           --add item github.template popup.github.bell \
           --set github.template "${github_template[@]}"
