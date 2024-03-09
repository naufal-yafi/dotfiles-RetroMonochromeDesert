# Theme : Retro Monochrome Desert

# Table of Contents

- [Theme : Retro Monochrome Desert](#theme--retro-monochrome-desert)
- [Table of Contents](#table-of-contents)
  - [Preview](#preview)
  - [Installing Grub Theme](#installing-grub-theme)
    - [Automatic Installation](#automatic-installation)
    - [Manual Installation](#manual-installation)
  - [Installation BSPWM Theme](#installation-bspwm-theme)
  - [Require Dependencies](#require-dependencies)

## Preview

## Installing Grub Theme

Theme by: [Jacksaur](https://github.com/Jacksaur/CRT-Amber-GRUB-Theme)  

### Automatic Installation

Only use on `ubuntu`, `debian` or `apt command`.

```sh
sh install.sh --grub
```

or

```sh
sh install.sh -g
```

### Manual Installation

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
sudo sed -i 's/^#GRUB_THEME=.*/GRUB_THEME=\/boot\/grub\/themes\/CRT-Amber-GRUB-Theme\/theme.txt/' /etc/default/grub
```
4. Updating config GRUB
```sh
sudo update-grub
```
5. Reboot system

## Installation BSPWM Theme

Theme by: [Me](https://github.com/naufal-yafi/dotfiles-RetroMonochromeDesert)
Only use on `ubuntu`, `debian` or `apt command`.

```sh
sh install.sh --bspwm
```

or

```sh
sh install.sh -b
```
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