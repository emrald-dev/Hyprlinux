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
# zsh stow fzf fastfetch tree zed neovim swww firefox rofi-wayland obsidian \
# pavucontrol p7zip ark noto-fonts xdg-user-dirs exa \


# Start AUR helper installation
# sudo pacman -S --needed git base-devel
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si

# Start AUR upgrade
# yay -Syu


# Start AUR packages installation
# yay -S --needed otf-geist-mono-nerd ttf-jetbrains-mono-nerd ttf-geist-mono-nerd


##########################
### FILES INSTALLATION ###
##########################
# Use xdg to maker user directories
# xdg-user-dirs-update

# Symlink files where they are needed
# sudo rm -r ~/.config/hypr
# sudo rm -r ~/.config/kitty
stow -d ~/Hyprlinux/ -t ~/ dotfiles

#################################
### USER CHOSEN INSTALLATIONs ###
#################################
# uv python installation
# curl -LsSf https://astral.sh/uv/install.sh | sh

# nvm installation (Node Version Manager)
# sudo pacman -S nvm

# ohmyzh installation
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# powerlevel10k installation
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
