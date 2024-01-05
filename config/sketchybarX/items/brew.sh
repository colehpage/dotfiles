sketchybar --add item updates right                                                  \
           --set updates update_freq=3600                                               \
                       icon=""                                                   \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=4                                        \
                       icon.color=$BAR_COLOR                                       \
                       icon.y_offset=1                                              \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=$BAR_COLOR                                      \
                       label.padding_right=8                                       \
                       background.color=$BREW_COLOR                                 \
                       background.height=33                                      \
                       background.border_width=2 \
                       background.border_color=$BAR_BORDER_COLOR \
                       background.corner_radius=$ITEM_BORDER_RADIUS \
                       script="$PLUGIN_DIR/brew.sh"                                 \
                       icon.padding_left=16 label.padding_right=16                   \
