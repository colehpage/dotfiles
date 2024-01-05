status () {
  if  osascript -e 'tell application "Spotify"
    set playerState to player state as string
end tell
playerState
' | grep -q 'playing'; then
    echo "playing"
  else
    echo "paused"
  fi
}

BACK_SCRIPT="cd ~/.config/sketchybar/spotify_simple && ./back.sh"
PAUSE_PLAY_SCRIPT="cd ~/.config/sketchybar/spotify_simple/ && ./playpause.sh && source '$PLUGIN_DIR/spotify_simple.sh'"
FORWARD_SCRIPT="cd ~/.config/sketchybar/spotify_simple && ./forward.sh"

if [ $(status) = "playing" ]; then
  sketchybar --set pause icon=''
else
    sketchybar --set pause icon=''
fi
