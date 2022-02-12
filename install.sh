#!/bin/bash
# Installation Script for Arch Based Distro

function confirm {
  echo "CONTINUE? y/n"
  read -p 'Continue? [y/n] ' cont
  echo $cont
  if [ $cont != "y" ] && [ $cont != "Y" ]
  then
    exit 1
  else
    echo "hello"
  fi
}


if (($EUID != 0)); then
  echo "Please Run Me As Root"
  exit 1
fi


echo "=================="
echo "Update and Upgrade"
echo "=================="
confirm
pacman -Syu

echo "=================="
echo "INSTALLING NEOVIM"
echo "=================="
confirm
pacman -S neovim

echo "=================="
echo "INSTALLING FISH AND FISH PLUGINS"
echo "=================="
confirm
pacman -S fish
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher && fisher install PatrickF1/fzf.fish"

echo "=================="
echo "INSTALLING ALACRITTY"
echo "=================="
confirm
pacman -S alacritty

echo "=================="
echo "INSTALLING i3 gaps"
echo "=================="
confirm
pacman -S i3-gaps

echo "=================="
echo "INSTALLING ROFI"
echo "=================="
confirm
pacman -S rofi

echo "=================="
echo "INSTALLING TMUX"
echo "=================="
confirm
pacman -S tmux

echo "=================="
echo "INSTALLING fzf"
echo "=================="
confirm
pacman -S fzf

echo "=================="
echo "INSTALLING bat"
echo "=================="
confirm
pacman -S bat

echo "=================="
echo "INSTALLING fd"
echo "=================="
confirm
pacman -S fd

echo "=================="
echo "stow"
echo "=================="
confirm
pacman -S stow

echo "=================="
echo "INSTALLING GIT and base-devel"
echo "=================="
confirm
pacman -S base-devel
pacman -S git

echo "=================="
echo "INSTALLING yay"
echo "=================="
#yay is in pacman community in Manjaro
pacman -S yay

#arch install
#cd ~
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si

echo "=================="
echo "MAKE SURE YAY IS INSTALLED PROPERLY BEFORE PROCEEDING"
echo "=================="
yay --version
confirm

echo "=================="
echo "INSTALLING POLYBAR"
echo "=================="
confirm
yay -S polybar

echo "=================="
echo "INSTALLING pip"
echo "=================="
pacman -S python-pip

echo "=================="
echo "INSTALLING powerline-shell"
echo "=================="
confirm
pip install powerline-shell

echo "=================="
echo "INSTALLING brave"
echo "=================="
confirm
yay -S brave

echo "=================="
echo "INSTALLING spotify"
echo "=================="
confirm
yay -S spotify

echo "=================="
echo "Pull Down Dot Files"
echo "=================="
cd /home
git clone https://github.com/whkelvin/dotdotdotfiles.git
cd /home/dotdotdotfiles
echo "=================="
echo "Creating sym link with stow"
echo "=================="
stow */

echo "=================="
echo "Listing out ~/.config/"
echo "=================="
ls -la /home/.config

echo "DONE!!!"




