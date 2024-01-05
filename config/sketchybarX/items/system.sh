### cpu Widget ###
sketchybar --add item  cpu left                                                   \
           --set cpu   update_freq=10                                              \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=4                                        \
                       icon.color=$BAR_COLOR                                       \
                       icon.y_offset=1                                             \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=$BAR_COLOR                                      \
                       label.padding_right=8                                       \
                       background.color=$CPU_COLOR                                 \
                       background.height=33                                      \
                       background.border_width=2 \
                       background.border_color=$BAR_BORDER_COLOR \
                       background.corner_radius=$ITEM_BORDER_RADIUS \
                       script="$PLUGIN_DIR/cpu.sh"                                 \
                       icon.padding_left=16 label.padding_right=16                   \
                       background.padding_left=4                                  \


### mem Widget ###
sketchybar --add item  mem left                                                   \
           --set mem   update_freq=10                                              \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=4                                        \
                       icon.color=$BAR_COLOR                                       \
                       icon.y_offset=1                                              \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=$BAR_COLOR                                      \
                       label.padding_right=8                                       \
                       background.color=$MEMORY_COLOR                                 \
                       background.height=33                                      \
                       background.border_width=2 \
                       background.border_color=$BAR_BORDER_COLOR \
                       background.corner_radius=$ITEM_BORDER_RADIUS \
                       script="$PLUGIN_DIR/mem.sh"                                 \
                       icon.padding_left=16 label.padding_right=16                   \

### ssd Widget ###
sketchybar --add item  ssd left                                                   \
           --set ssd   update_freq=10                                              \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=4                                        \
                       icon.color=$BAR_COLOR                                       \
                       icon.y_offset=1                                              \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=$BAR_COLOR                                      \
                       label.padding_right=8                                       \
                       background.color=$HD_COLOR                                 \
                       background.height=33                                      \
                       background.border_width=2 \
                       background.border_color=$BAR_BORDER_COLOR \
                       background.corner_radius=$ITEM_BORDER_RADIUS \
                       script="$PLUGIN_DIR/disk.sh"                                 \
                       icon.padding_left=16 label.padding_right=16                   \
