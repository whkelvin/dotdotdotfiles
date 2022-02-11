#!/bin/bash
# Installation Script for Arch Based Distro

function confirm {
  echo "CONTINUE?[y/n]"
  read cont
  if [[ $cont != "y" || $cont != "Y"]]; then
    exit
  fi
}


if (($EUID != 0)); then
  echo "Please Run Me As Root"
  exit
fi

echo "Update and Upgrade"
confirm
pacman -Syu


echo "INSTALLING NEOVIM"
confirm
pacman -S neovim

echo "INSTALLING FISH"
confirm
pacman -S fish

echo "INSTALLING ALACRITTY"
confirm
pacman -S alacritty

echo "INSTALLING i3 gaps"
confirm
pacman -S i3-gaps

echo "INSTALLING ROFI"
confirm
pacman -S rofi

echo "INSTALLING TMUX"
confirm
pacman -S tmux

echo "INSTALLING fzf"
confirm
pacman -S fzf

echo "INSTALLING bat"
confirm
pacman -S bat

echo "INSTALLING fd"
confirm
pacman -S fd

echo "stow"
confirm
pacman -S stow


echo "INSTALLING GIT and base-devel"
confirm
pacman -S base-devel
pacman -S git

echo "INSTALLING yay"
# yay is in com in manjaro
pacman -S yay
#arch install
#cd ~
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

echo "MAKE SURE YAY IS INSTALLED PROPERLY BEFORE PROCEEDING"
yay --version
confirm

echo "INSTALLING POLYBAR"
confirm
yay -S polybar

echo "INSTALLING powerline-shell"
confirm
cd ~
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
python setup.py install

echo "INSTALLING brave"
confirm
yay -S brave

echo "INSTALLING spotify"
confirm
yay -S spotify

echo "Pull Down Dot Files"
cd ~
git clone https://github.com/whkelvin/dotdotdotfiles.git
cd dotdotdotfiles
stow *

echo "Listing out ~/.config/"
ls -la ~/.config

echo "DONE!!!"




