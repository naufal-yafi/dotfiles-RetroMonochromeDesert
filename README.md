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
      - [Expand window](#expand-window)
      - [Contract window](#contract-window)
      - [Move floating window](#move-floating-window)
      - [Move next or previous](#move-next-or-previous)

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
| Key                         | *                        |
|-----------------------------|--------------------------|
| super + *enter*             | open terminal            |
| super + *shift* + `q`       | close window             |
| super + *space*             | open menu or search apps |
| super + *alt* + `r`         | `restart` bspwm          |
| super + *alt* + `q`         | `quit` bspwm             |
| **Type window** :           |
| super + `f`                 | `fullscreen` window      |
| super + `p`                 | `pseudo tiled` window    |
| super + `s`                 | `floating` window        |
| super + `t`                 | `tiled` fullscreen       |
| **Maximize window** :       |
| super + *alt* + `h`         | expand window `left`     |
| super + *alt* + `j`         | expand window `bottom`   |
| super + *alt* + `k`         | expand window `top`      |
| super + *alt* + `l`         | expand window `right`    |
| **Minimize window** :       |
| super + *alt* + `h`         | contract window `left`   |
| super + *alt* + `j`         | contract window `bottom` |
| super + *alt* + `k`         | contract window `top`    |
| super + *alt* + `l`         | contract window `right`  |
| **Moving floating window** :|
| super + *Left*              | move to `left`           |
| super + *Up*                | move to `top`            |
| super + *Right*             | move to `right`          |
| super + *Down*              | move to `bottom`         |
| **Workspace** :             |
| super + `[`                 | `previous` workspace     |
| super + `]`                 | `next` workspace         |

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

#### Expand window
```sh
super + alt + {h,j,k,l}
	bspc node -z {left -20 0, bottom 0 20, top 0 -20, right 20 0}
```

#### Contract window
```sh
super + alt + shift + {h,j,k,l}
	bspc node -z {left 20 0, bottom 0 -20, top 0 20, right -20 0}
```

#### Move floating window
```sh
super + {Left,Down,Up,Right}
	bspc node -v {-20 0, 0 20, 0 -20, 20 0}
```

#### Move next or previous 
```sh
super + bracket{left,right}
	bspc desktop -f {prev,next}.local
```