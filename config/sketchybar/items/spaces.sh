#!/bin/bash

source "$HOME/.config/colors.sh"

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15")
SPACE_ICONS_MAP=("󰆍" "󰇧" "󰨞" "" "" "" "" "" "󰠱" "" "11" "12" "13" "14" "15")
# Destroy space on right click, focus space on left click.
# New space by left clicking separator (>)

sid=0
spaces=()
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))

  space=(
    associated_space=$sid
    icon="${SPACE_ICONS_MAP[i]}"
    icon.font="Font Awesome 6 Free:Solid:15.4"
    icon.padding_left=10
    icon.padding_right=10
    background.height=33
    padding_left=2
    padding_right=2
    # label.padding_right=20
    icon.color=$COLOR_WHITE
    icon.highlight_color=$COLOR_RED
    label.color=$COLOR_GREY
    label.highlight_color=$COLOR_WHITE
    label.font="sketchybar-app-font:Regular:16.0"
    label.y_offset=-1
    background.color=$BACKGROUND_1
    background.border_color=$BACKGROUND_2
    background.drawing=on
    label.drawing=off
    script="$PLUGIN_DIR/space.sh"
  )

  sketchybar --add space space.$sid center    \
             --set space.$sid "${space[@]}" \
             --subscribe space.$sid mouse.clicked
done

spaces_bracket=(
#   background.color=$BACKGROUND_1
#   background.border_color=$BACKGROUND_2
  background.border_width=2
)

separator=(
  icon=
  icon.font="Font Awesome 6 Free:Solid:15.4"
  padding_left=5
  padding_right=8
  label.drawing=on
  associated_display=active
  click_script='yabai -m space --create && sketchybar --trigger space_change'
  icon.color=$COLOR_WHITE
)

sketchybar --add bracket spaces_bracket '/space\..*/'  \
           --set spaces_bracket "${spaces_bracket[@]}" \
                                                       \
           --add item separator center                   \
           --set separator "${separator[@]}"
