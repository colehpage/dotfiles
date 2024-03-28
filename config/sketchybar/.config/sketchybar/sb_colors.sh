#!/bin/bash

source "$HOME/.config/colors.sh"

rgb_to_argb() {
    rgb_color="$1"
    argb_color="0xff${rgb_color:2}"
    echo "$argb_color"
}

export GREY=$(rgb_to_argb $COLOR_GREY)
export TRANSPARENT=$(rgb_to_argb $COLOR_TRANSPARENT)

# ICONS/TEXT FOR SECTIONS
export APPLE_COLOR=$(rgb_to_argb $COLOR_WHITE)
export CPU_COLOR=$(rgb_to_argb $COLOR_RED)
export MEMORY_COLOR=$(rgb_to_argb $COLOR_BLUE)
export HD_COLOR=$(rgb_to_argb $COLOR_YELLOW)
export VOLUME_COLOR=$(rgb_to_argb $COLOR_GREEN)
export BATTERY_COLOR=$(rgb_to_argb $COLOR_WHITE)
export GITHUB_COLOR=$(rgb_to_argb $COLOR_CYAN)
export BREW_COLOR=$(rgb_to_argb $COLOR_YELLOW)
export CALENDAR_COLOR=$(rgb_to_argb $COLOR_BLUE)
export TIME_COLOR=$(rgb_to_argb $COLOR_RED)

# ITEMS
export ITEM_BACKGROUND_COLOR=0xff1b1d27
export BAR_COLOR=$(rgb_to_argb $COLOR_BACKGROUND)
export BAR_BORDER_COLOR=0xff414556
export BAR_OUTER_BORDER_COLOR=0xff8f8f8f
export ICON_COLOR=$(rgb_to_argb $COLOR_FOREGROUND) # Color of all icons
export LABEL_COLOR=$(rgb_to_argb $COLOR_FOREGROUND) # Color of all labels
export BACKGROUND_1=0x603c3e4f
export BACKGROUND_2=0x60494d64

export SB_WHITE=$(rgb_to_argb $COLOR_WHITE)
export SB_BLACK=$(rgb_to_argb $COLOR_BLACK)
export SB_GREY=$(rgb_to_argb $COLOR_GREY)
export SB_RED=$(rgb_to_argb $COLOR_RED)
export SB_GREEN=$(rgb_to_argb $COLOR_GREEN)
export SB_YELLOW=$(rgb_to_argb $COLOR_YELLOW)
export SB_BLUE=$(rgb_to_argb $COLOR_BLUE)
export SB_MAGENTA=$(rgb_to_argb $COLOR_MAGENTA)
export SB_CYAN=$(rgb_to_argb $COLOR_CYAN)
export SB_WHITE_BRIGHT=$(rgb_to_argb $COLOR_WHITE_BRIGHT)
export SB_BLACK_BRIGHT=$(rgb_to_argb $COLOR_BLACK_BRIGHT)
export SB_RED_BRIGHT=$(rgb_to_argb $COLOR_RED_BRIGHT)
export SB_GREEN_BRIGHT=$(rgb_to_argb $COLOR_GREEN_BRIGHT)
export SB_YELLOW_BRIGHT=$(rgb_to_argb $COLOR_YELLOW_BRIGHT)
export SB_BLUE_BRIGHT=$(rgb_to_argb $COLOR_BLUE_BRIGHT)
export SB_MAGENTA_BRIGHT=$(rgb_to_argb $COLOR_MAGENTA_BRIGHT)
export SB_CYAN_BRIGHT=$(rgb_to_argb $COLOR_CYAN_BRIGHT)
export SB_ORANGE=$(rgb_to_argb $COLOR_ORANGE)
export SB_PURPLE=$(rgb_to_argb $COLOR_PURPLE)

export POPUP_BACKGROUND_COLOR=$(rgb_to_argb $COLOR_BACKGROUND))
export POPUP_BORDER_COLOR=$(rgb_to_argb $COLOR_WHITE)

export SHADOW_COLOR=$(rgb_to_argb $COLOR_BLACK)