#!/bin/bash
#
# SETUP SCRIPT
#

#############################
### PACKAGES INSTALLATION ###
#############################
# Start system upgrade
# sudo pacman -Syu


# Start official packages installation
# sudo pacman -S --needed git curl wget base-devel brightnessctl \
# zsh stow fzf fastfetch tree zed neovim swww firefox rofi obsidian \


# Start AUR helper installation


# Start AUR upgrade
# yay -Syu


# Start AUR packages installation
# yay -S --needed


##########################
### FILES INSTALLATION ###
##########################
# Symlink files where they are needed
# sudo rm -r "path"
stow -d ~/Hyprlinux/ -t ~/ dotfiles
