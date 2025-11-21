#!/bin/bash

# Directories
IMAGES_DIR=~/Imágenes
PROGRAMS_DIR=~/Programs
SCRIPTS_DIR=~/.scripts

echo
echo "The current images, programs and script directories are $IMAGES_DIR, $PROGRAMS_DIR and $SCRIPTS_DIR, note that if you change any of those, some config routes may break"

# Installing AUR helper (yay)
echo
if  pacman -Q yay > /dev/null 2>&1; then
  echo "yay found, skipping instalation";
else 
  echo "Installing AUR helper and dependencies"
  echo
  sudo pacman -S --needed git base-devel curl wlogout
  echo

  echo "Installing yay"
  mkdir -p $PROGRAMS_DIR/yay
  git clone https://aur.archlinux.org/yay.git ~/Programs/yay/
  cd $PROGRAMS_DIR/yay/ 
  makepkg -si
  cd -

  echo "yay installed, continuing with setup instalation"
fi

# Sway vs hyprland warning
echo
echo "WARNING, current setup uses hyperland as the main window manager, if you want to install and use the sway setup you will have to install sway and swaybg manually and then stow the sway config and change the waybar workspaces config and css"

# Install mandatory apps
echo
echo "Installing all required apps for the setup"
sudo pacman -Sy alacritty fastfetch hyprland hyprpaper hyprlock swaync swayosd swayidle nvim tmux waybar pavucontrol blueman networkmanager swappy grim slurp starship ttf-dejavu-nerd stow fastfetch nautilus eza fzf
yay -Sy zen-browser-bin ulauncher catppuccin-gtk-theme-mocha wlogout 

# Install optional apps
echo "Do you wish to install some extra apps that I always like to have? [y/N]"
read INPUT

if [[ $INPUT == y ]]; then
  echo "Instalando las aplicaciones extra"
  sudo pacman -Sy kolourpaint obs-studio discord steam warpinator
fi

echo "Instalation complete, applying configuration files now"

# Stow dotfiles
echo "Updating dotfiles for alacritty"
stow alacritty

echo "Updating dotfiles for fastfetch"
stow fastfetch

echo "Updating dotfiles for hyprland"
stow hyprland

echo "Updating dotfiles for nvim"
stow nvim

echo "Updating dotfiles for starship"
stow starship

echo "Updating dotfiles for swaync"
stow swaync

echo "Updating dotfiles for waybar"
stow waybar

echo "Updating dotfiles for wlogout"
stow wlogout

echo "Changing .bashrc"
cp ./bash/.bashrc ~/.bashrc

echo "Updating dotfiles for tmux"
stow tmux

# Media and scripts
echo 
echo "Copying bash scripts and media"
cp ./images/* $IMAGES_DIR
cp ./scripts/* $SCRIPTS_DIR

# Done
echo
echo "Dotfiles instalation complete"
