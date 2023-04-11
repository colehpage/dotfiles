sketchybar	--add	item weather q \
            --set	weather \
                    	icon= \
                    	icon.color=0xfff5bde6 \
                        icon.font="$FONT:Bold:15.0" \
                    	update_freq=1800 \
                    	script="$PLUGIN_DIR/weather.sh" \
            --subscribe weather system_woke