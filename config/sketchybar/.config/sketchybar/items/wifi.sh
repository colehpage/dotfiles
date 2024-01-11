### WIFI ###
sketchybar --add item  ip_address left                              \
           --set ip_address   update_freq=10                                              \
                       icon.font="Font Awesome 6 Free:Solid:15.4"                  \
                       icon.padding_right=4                                        \
                       label.font="$FONT:Medium:12.0"                                \
                       label.padding_right=8                                       \
                       background.color=$ITEM_BACKGROUND_COLOR                                 \
                       background.height=33                                      \
                       background.border_width=2 \
                       background.border_color=$BAR_BORDER_COLOR \
                       background.corner_radius=$ITEM_BORDER_RADIUS \
                       script="$PLUGIN_DIR/ip_address.sh"                                 \
                       icon.padding_left=16 label.padding_right=16
           --subscribe ip_address wifi_change                        \