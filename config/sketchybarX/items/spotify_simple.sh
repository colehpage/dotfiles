. "$PLUGIN_DIR/spotify_simple.sh"

sketchybar --add item           back left                                 \
           --set back           icon=""                                \
                                icon.font="Material Icons:Regular:20.0"              \
                                icon.color=0xff7aa2f7                   \
                                icon.padding_left=10                    \
                                icon.padding_right=25                    \
                                background.drawing=on                       \
                                background.height=33                    \
                                background.border_width=2 \
                                background.border_right=0 \
                                click_script="$BACK_SCRIPT"               \
           --subscribe back     mouse.clicked                             \

sketchybar --add item           pause left                                 \
           --set pause          icon=""                                \
                                icon.font="Material Icons:Regular:18.0"              \
                                icon.color=$PLAYING_COLOR                   \
                                icon.padding_right=20                    \
                                background.padding_left=-25         \
                                background.drawing=on                       \
                                background.height=33                    \
                                background.border_width=2 \
                                background.border_right=0 \
                                background.border_left=0 \
                                click_script="$PAUSE_PLAY_SCRIPT"               \
                                script="$PLUGIN_DIR/spotify_simple.sh"             \
                                update_freq=2                      \
            --subscribe back    mouse.clicked                             \

sketchybar --add item           forward left                                 \
           --set forward        icon=""                                \
                                icon.font="Material Icons:Regular:20.0"              \
                                icon.color=0xff7aa2f7                   \
                                icon.padding_left=5                    \
                                icon.padding_right=10                    \
                                background.padding_left=-23         \
                                background.drawing=on                       \
                                background.height=33                    \
                                background.border_width=2 \
                                click_script="$FORWARD_SCRIPT"               \
           --subscribe back     mouse.clicked                             \
