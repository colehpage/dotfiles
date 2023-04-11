sketchybar	--add	item weather.moon q \
            --set	weather.moon \
                    	background.color=0x667dc4e4 \
                    	background.padding_right=-7 \
                    	icon.color=0xff181926 \
                    	icon.font="$FONT:Bold:22.0" \
                    	label.drawing=off \
                    	script="$PLUGIN_DIR/moon.sh" \
            --subscribe weather.moon mouse.clicked