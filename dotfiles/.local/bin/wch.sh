#!/bin/bash

WALLDIR="$HOME/Hyprlinux/dotfiles/.local/share/Wallpapers"
PROMPT="Wallpapers"

# Where we keep the "current" wallpaper image
CURRENT_IMG="$HOME/.local/share/image.png"

# Build list of wallpaper choices with icons
choices=""
while IFS= read -r file; do
    name=$(basename "$file")
    # Rofi icon metadata format: "<display>\0icon\x1f<icon-path>"
    choices+="${name}\0icon\x1f${file}\n"
done < <(find "$WALLDIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.webp" \))

# Show rofi menu
selected=$(printf "%b" "$choices" | rofi -dmenu -i -p "$PROMPT" -show-icons)
[ -z "$selected" ] && exit 0

full="$WALLDIR/$selected"

# Copy to the fixed location, converting extension to .png
mkdir -p "$(dirname "$CURRENT_IMG")"
cp "$full" "$CURRENT_IMG"

# Start swww if needed
pgrep -x swww-daemon >/dev/null || swww-daemon &

# Set wallpaper
swww img "$CURRENT_IMG" \
  --transition-type grow \
  --transition-fps 60 \
  --transition-duration 0.7
