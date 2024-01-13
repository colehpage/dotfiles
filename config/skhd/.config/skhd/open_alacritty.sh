#!/usr/bin/env bash

focus_window () {
    WINDOW_ID=$(yabai -m query --windows | jq '[.[] | select(.app == "Alacritty")] | max_by(.id) | .id')
    yabai -m window --focus "${WINDOW_ID}"
}

if ! pgrep -f "alacritty" > /dev/null 2>&1; then
    open -na /Applications/Alacritty.app
else
    alacritty msg create-window || open -na /Applications/Alacritty.app && sleep 0.1 && focus_window
fi