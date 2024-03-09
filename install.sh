#!/bin/bash

banner() {
  echo "-----------------------------------------"
  echo "    Welcome to automatic installation"
  echo "-----------------------------------------"
  echo "Available commands:"
  echo "--grub   or  -g  : installing grub theme"
  echo "--bspwm  or  -b  : installing window manager theme"
}

grub_installation() {
  echo "Installing Grub..."

  # cloning github repo grub theme
  cd /boot/grub/themes
  sudo git clone https://github.com/Jacksaur/CRT-Amber-GRUB-Theme.git

  # change default grub theme
  sudo sed -i 's/^#GRUB_THEME=.*/GRUB_THEME=\/boot\/grub\/themes\/CRT-Amber-GRUB-Theme\/theme.txt/' /etc/default/grub

  # update grub
  sudo update-grub
  echo "Finish installing grub theme"
  sudo reboot
}

bspwm_installation() {
  echo "Wait maintenance.."
}

banner

while [ $# -gt 0 ]; do
  case "$1" in
    --grub)
      grub_installation
    ;;
    --bspwm)
      bspwm_installation
    ;;
    -g)
      grub_installation
    ;;
    -b)
      bspwm_installation
    ;;
    *)
      echo ""
      echo "[!] Command not available"
      echo ""
      banner
      exit 1
    ;;
  esac
    shift
done