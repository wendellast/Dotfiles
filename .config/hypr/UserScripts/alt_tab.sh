#!/bin/bash
windows=$(hyprctl clients -j | jq -r '.[].title')
selected=$(echo "$windows" | rofi -dmenu -p "Windows:")

if [ -n "$selected" ]; then
  hyprctl dispatch focuswindow "$selected"
fi
