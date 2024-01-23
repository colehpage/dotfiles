#!/usr/bin/env bash

# works but brittle, see below for signal usage

# focus_window () {
#     WINDOW_ID=$(yabai -m query --windows | jq '[.[] | select(.app == "Alacritty")] | max_by(.id) | .id')
#     yabai -m window --focus "${WINDOW_ID}"
# }

# if ! pgrep -f "alacritty" > /dev/null 2>&1; then
#     open -na /Applications/Alacritty.app
# else
#     alacritty msg create-window || open -na /Applications/Alacritty.app && sleep 0.2 && focus_window
# fi

# https://github.com/koekeishiya/yabai/issues/1858

open_and_focus () {
   LABEL=$(uuidgen) &&
   yabai -m signal --add event="window_created" label="$LABEL" app="^Alacritty$" action="yabai -m window \$YABAI_WINDOW_ID --focus && yabai -m signal --remove $LABEL" &&
   /Applications/Alacritty.app/Contents/MacOS/alacritty msg create-window || open -na /Applications/Alacritty.app
}

open_and_focus