### cpu Widget ###
sketchybar --add item  cpu left                                                   \
           --set cpu   update_freq=10                                              \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=4                                        \
                       icon.color=$CPU_COLOR                                       \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=$CPU_COLOR                                      \
                       label.padding_right=8                                       \
                       background.color=$ITEM_BACKGROUND_COLOR                                 \
                       background.height=33                                      \
                       background.border_width=2 \
                       background.border_color=$BAR_BORDER_COLOR \
                       background.corner_radius=$ITEM_BORDER_RADIUS \
                       script="$PLUGIN_DIR/cpu.sh"                                 \
                       icon.padding_left=16 label.padding_right=16                   \


### mem Widget ###
sketchybar --add item  mem left                                                   \
           --set mem   update_freq=10                                              \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=4                                        \
                       icon.color=$MEMORY_COLOR                                       \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=$MEMORY_COLOR                                      \
                       label.padding_right=8                                       \
                       background.color=$ITEM_BACKGROUND_COLOR                                 \
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
                       icon.color=$HD_COLOR                                       \
                       label.font="$FONT:Medium:12.0"                                \
                       label.color=$HD_COLOR                                      \
                       label.padding_right=8                                       \
                       background.color=$ITEM_BACKGROUND_COLOR                                 \
                       background.height=33                                      \
                       background.border_width=2 \
                       background.border_color=$BAR_BORDER_COLOR \
                       background.corner_radius=$ITEM_BORDER_RADIUS \
                       script="$PLUGIN_DIR/disk.sh"                                 \
                       icon.padding_left=16 label.padding_right=16                   \