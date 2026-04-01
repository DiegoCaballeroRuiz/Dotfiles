#!/bin/bash 
# Directories
IMAGES_DIR=~/Imágenes/Wallpaper/
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
  sudo pacman -S --needed git base-devel curl wget
  echo

  echo "Installing yay"
  mkdir -p $PROGRAMS_DIR/yay
  git clone https://aur.archlinux.org/yay.git ~/Programs/yay/
  cd $PROGRAMS_DIR/yay/ 
  makepkg -si
  cd -

  echo "yay installed, continuing with setup instalation"
fi

echo "Checking if filesystem is ready"
if pacman -Q xdg-user-dirs > /dev/null 2>&1; then
    echo "User directories already created"
else
    echo "Setting up user directories"
    sudo pacman -S xdg-user-dirs --noconfirm
    xdg-user-dirs-update 
fi

echo "Installing hyprland dependencies"
yay -Sy hyprland xdg-desktop-portal-hyprland hyprpolkitagent hyprlock hypridle hyprpaper swaync swayosd waybar --noconfirm --needed

echo "Installing basic (and not so basic) utils"
yay -Sy nautilus rofi zen-browser-bin pavucontrol  blueman swappy grim slurp --noconfirm --needed

echo "Installing terminal goodies"
yay -Sy foot fastfetch nvim tmux starship ttf-dejavu-nerd stow fastfetch nautilus eza fzf fd zen-browser-bin rofi-wayland catppuccin-gtk-theme-mocha wlogout --noconfirm --needed

echo "Installing system and nvidia utils"
yay -Sy bluez libinput xf86-inpuy-libinput ffmpeg egl-wayland nvidia-open nvidia-utils nvidia-settings mesa vulkan-intel intel-media-driver pipewire pipewire-pulse pipewire-alsa wireplumber --needed --noconfirm

echo "Installing other apps"
yay -Sy lazygit discord kolourpaint steam --noconfirm --needed

echo "Installing stow to apply dotfiles"
yay -Sy stow --needed --noconfirm

echo "Instalation complete, applying configuration files now"

# Stow dotfiles
echo "Updating dotfiles for foot"
stow foot

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

echo "Updating dotfiles for tmux"
stow tmux

echo "Updating rofi"
stow rofi

echo "Changing .bashrc"
cp ./bash/.bashrc ~/.bashrc

# Media and scripts
echo 
echo "Copying bash scripts and media"
cp -r ./images/* $IMAGES_DIR
cp -r ./scripts/* $SCRIPTS_DIR

# Done
echo
echo "Dotfiles instalation complete"
