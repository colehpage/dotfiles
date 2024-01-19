#!/bin/bash

POPUP_OFF='sketchybar --set apple.logo popup.drawing=off'
POPUP_CLICK_SCRIPT='sketchybar --set $NAME popup.drawing=toggle'

apple_logo=(
  icon=$APPLE
  icon.font="$FONT:Black:16.0"
  icon.color=$APPLE_COLOR
  label.drawing=off
  click_script="$POPUP_CLICK_SCRIPT"
  popup.height=35
  icon.padding_left=10
  icon.padding_right=10
  background.padding_left=4
  background.color=$ITEM_BACKGROUND_COLOR
  background.height=33
  background.border_width=2
  background.border_color=$BAR_BORDER_COLOR
  background.corner_radius=$ITEM_BORDER_RADIUS
)

apple_prefs=(
  icon=$PREFERENCES
  label="Preferences"
  click_script="open -a 'System Preferences'; $POPUP_OFF"
  padding_left=10
  padding_right=10
)

apple_activity=(
  icon=$ACTIVITY
  label="Activity"
  click_script="open -a 'Activity Monitor'; $POPUP_OFF"
  padding_left=10
  padding_right=10
)

apple_lock=(
  icon=$LOCK
  label="Lock Screen"
  click_script="pmset displaysleepnow; $POPUP_OFF"
  padding_left=10
  padding_right=10
)

sketchybar --add item apple.logo left                  \
           --set apple.logo "${apple_logo[@]}"         \
                                                       \
           --add item apple.prefs popup.apple.logo     \
           --set apple.prefs "${apple_prefs[@]}"       \
                                                       \
           --add item apple.activity popup.apple.logo  \
           --set apple.activity "${apple_activity[@]}" \
                                                       \
           --add item apple.lock popup.apple.logo      \
           --set apple.lock "${apple_lock[@]}"