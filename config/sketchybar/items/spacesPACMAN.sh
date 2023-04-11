#!/usr/bin/env sh

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8")
export SPACE_CLICK_SCRIPT="yabai -m space --focus \$SID 2>/dev/null"

sketchybar --add   space          space_template left                \
           --set   space_template icon.color=0xff583794              \
           label.padding_left=33                        \
                                  icon.highlight_color=0xffe0af68    \
                                  label.drawing=off                  \
                                  drawing=on                        \
                                  updates=on                         \
                                  associated_display=1               \
                                  label.font="$FONT:Black:10.0"      \
                                  icon.font="Pacman-Dots:Regular:9.0"        \
                                  background.corner_radius=33       \
                                  background.color=0xff252630        \
                                  background.height=33               \
                                  click_script="$SPACE_CLICK_SCRIPT" \
                                  ignore_association=on              \
                                  icon.padding_left=0               \
                                  icon.padding_right=64               \
                                  background.padding_right=-24              \
                                  background.padding_left=3              \
                                                                     \
           --clone spaces_1.terminal  space_template                     \
           --set   spaces_1.terminal  associated_space=1                 \
                                  background.padding_left=-24                            \
                                  icon=⬤                            \
                                  script="$PLUGIN_DIR/space.sh"      \
                                  icon.padding_left=8               \
                                                                     \
           --clone spaces_1.web  spaces_1.terminal                     \
           --set   spaces_1.web  associated_space=2                 \
                                  icon=⬤                           \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --clone spaces_1.code   spaces_1.terminal                     \
           --set   spaces_1.code   associated_space=3                 \
                                  icon=⬤                           \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --clone spaces_1.slack  spaces_1.terminal                     \
           --set   spaces_1.slack  associated_space=4                 \
                                  icon=⬤                           \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                     \
           --clone spaces_1.calendar spaces_1.terminal                     \
           --set   spaces_1.calendar associated_space=5                 \
                                  icon=⬤                           \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                      \
           --clone spaces_1.linear spaces_1.terminal                     \
           --set   spaces_1.linear associated_space=6                 \
                                  icon=⬤                           \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                      \
           --clone spaces_1.misc spaces_1.terminal                     \
           --set   spaces_1.misc associated_space=7                 \
                                  icon=⬤                           \
                                  script="$PLUGIN_DIR/space.sh"      \
                                                                      \
           --clone spaces_2.music  spaces_1.terminal                     \
           --set   spaces_2.music  associated_space=8                 \
                                  icon=⬤                          \
                                  script="$PLUGIN_DIR/space.sh"      \
                                  icon.padding_right=0               \
                                                                     \
           --add   bracket        spaces_1                           \
                                  spaces_1.terminal                     \
                                  spaces_1.web                      \
                                  spaces_1.code                     \
                                  spaces_1.slack                      \
                                  spaces_1.calendar                       \
                                  spaces_1.linear                       \
                                  spaces_1.misc                       \
                                  spaces_1.music                       \
