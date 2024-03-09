# Theme : Retro Monochrome Desert

# Table of Contents

- [Theme : Retro Monochrome Desert](#theme--retro-monochrome-desert)
- [Table of Contents](#table-of-contents)
  - [Preview](#preview)
  - [Installing Grub Theme](#installing-grub-theme)
    - [1. Move to directory `/boot/grub/themes`](#1-move-to-directory-bootgrubthemes)
    - [2. Cloning repository](#2-cloning-repository)
    - [3. Change config default GRUB theme `/etc/default/grub`](#3-change-config-default-grub-theme-etcdefaultgrub)
    - [4. Updating config GRUB](#4-updating-config-grub)
    - [5. Reboot system](#5-reboot-system)
  - [Installation BSPWM Theme](#installation-bspwm-theme)
  - [Require Dependencies](#require-dependencies)
  - [Keybindings](#keybindings)
    - [Key Maps](#key-maps)
    - [Configuration](#configuration)
      - [Open terminal](#open-terminal)
      - [Close window](#close-window)
      - [Open menu or search apps](#open-menu-or-search-apps)
      - [Quit or Restart](#quit-or-restart)
      - [Change type window tiled, floating, fullscreen](#change-type-window-tiled-floating-fullscreen)

## Preview

## Installing Grub Theme

Theme by: [Jacksaur](https://github.com/Jacksaur/CRT-Amber-GRUB-Theme)  

### 1. Move to directory `/boot/grub/themes`
```sh
cd /boot/grub/themes
```
### 2. Cloning repository
```sh
sudo git clone https://github.com/Jacksaur/CRT-Amber-GRUB-Theme.git
```
### 3. Change config default GRUB theme `/etc/default/grub`
```sh
GRUB_THEME=/boot/grub/themes/CRT-Amber-GRUB-Theme/theme.txt
```
### 4. Updating config GRUB
```sh
sudo update-grub
```
### 5. Reboot system
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

## Keybindings

### Key Maps
| Key                   | *                        |
|-----------------------|--------------------------|
| super + *enter*       | open terminal            |
| super + *shift* + `q` | close window             |
| super + *space*       | open menu or search apps |
| super + *alt* + `r`   | restart bspwm            |
| super + *alt* + `q`   | quit bspwm               |
| super + `f`           | fullscreen window        |
| super + `p`           | pseudo tiled window        |
| super + `s`           | floating window          |
| super + `t`           | tiled fullscreen          |
| super + `0`           | |

### Configuration

#### Open terminal
```sh
super + Return
	kitty
```

#### Close window
```sh
super + shift + {q,k}
	bspc node -{c,k}
```

#### Open menu or search apps
```sh
super + space
	rofi -show drun
```

#### Quit or Restart
```sh
super + alt + {q,r}
	bspc {quit,wm -r}
```

#### Change type window tiled, floating, fullscreen
```sh
super + {t,p,s,f}
	bspc node -t {tiled,pseudo_tiled,floating,fullscreen}
```