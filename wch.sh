#!/bin/bash
#
# Rofi wallpaper selector (swww)
#

WALLDIR="$HOME/Pictures/Wallpapers"
PROMPT="Wallpapers"

selected=$(find "$WALLDIR" -type f \( \
  -iname "*.jpg" -o \
  -iname "*.png" -o \
  -iname "*.webp" \) \
  | rofi -dmenu -i -p "$PROMPT")

[ -z "$selected" ] && exit 0

# Ensure swww is running
pgrep -x swww-daemon >/dev/null || swww-daemon &

swww img "$selected" \
  --transition-type grow \
  --transition-fps 60 \
  --transition-duration 0.7
