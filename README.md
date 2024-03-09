# Theme : Retro Monochrome Desert

# Table of Contents

- [Theme : Retro Monochrome Desert](#theme--retro-monochrome-desert)
- [Table of Contents](#table-of-contents)
  - [Preview](#preview)
  - [Installing Grub Theme](#installing-grub-theme)
  - [Installation BSPWM Theme](#installation-bspwm-theme)
  - [Require Dependencies](#require-dependencies)

## Preview

## Installing Grub Theme

Theme by: [Jacksaur](https://github.com/Jacksaur/CRT-Amber-GRUB-Theme)  

1. Move to directory `/boot/grub/themes`
```sh
cd /boot/grub/themes
```
2. Cloning repository
```sh
sudo git clone https://github.com/Jacksaur/CRT-Amber-GRUB-Theme.git
```
3. Change config default GRUB theme `/etc/default/grub`
```sh
GRUB_THEME=/boot/grub/themes/CRT-Amber-GRUB-Theme/theme.txt
```
4. Updating config GRUB
```sh
sudo update-grub
```
5. Reboot system
```sh
sudo reboot
```

## Installation BSPWM Theme

Theme by: [Me](https://github.com/naufal-yafi/dotfiles-RetroMonochromeDesert)

## Require Dependencies

| Dependency | *  |
|------------|----|
| bspwm      | |
| sxhkd      | |
| polybar    | |
| picom      | |
| rofi       | |
| nitrogen   | |
| kitty      | |