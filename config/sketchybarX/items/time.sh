sketchybar --add item clock right                                                  \
           --set clock update_freq=1                                               \
                       icon=""                                                   \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=4                                        \
                       icon.color=$BAR_COLOR                                       \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=$BAR_COLOR                                      \
                       label.padding_right=8                                       \
                       background.color=$TIME_COLOR                                 \
                       background.height=33                                      \
                       background.border_width=2 \
                       background.border_color=$BAR_BORDER_COLOR \
                       background.corner_radius=$ITEM_BORDER_RADIUS                                   \
                       background.padding_right=4                                  \
                       script="$PLUGIN_DIR/clock.sh"                                 \
                       icon.padding_left=16 label.padding_right=16                   \
