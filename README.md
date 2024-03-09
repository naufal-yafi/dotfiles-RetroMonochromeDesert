# Theme : Retro Monochrome Desert

![distro](https://img.shields.io/badge/distro-mx_linux-black) ![window manager](https://img.shields.io/badge/wm-bspwm-blue) ![compositor](https://img.shields.io/badge/compositor-picom-white) ![launcher](https://img.shields.io/badge/launcher-rofi-black) ![status bar](https://img.shields.io/badge/bar-polybar-red) ![terminal](https://img.shields.io/badge/terminal-kitty-brown) ![keybinding](https://img.shields.io/badge/key-sxhkd-black) ![shell](https://img.shields.io/badge/shell-zsh-black) ![zsh theme](https://img.shields.io/badge/zsh_theme-powerlevel10k-black)

# Table of Contents

- [Theme : Retro Monochrome Desert](#theme--retro-monochrome-desert)
- [Table of Contents](#table-of-contents)
  - [Preview](#preview)
  - [1. Installing Grub Theme](#1-installing-grub-theme)
    - [1.1 Move to directory `/boot/grub/themes`](#11-move-to-directory-bootgrubthemes)
    - [1.2 Cloning repository](#12-cloning-repository)
    - [1.3 Change config default GRUB theme `/etc/default/grub`](#13-change-config-default-grub-theme-etcdefaultgrub)
    - [1.4 Updating config GRUB](#14-updating-config-grub)
    - [1.5 Reboot system](#15-reboot-system)
  - [2. Configuration ZSH](#2-configuration-zsh)
    - [2.1 Install ZSH](#21-install-zsh)
    - [2.2 Customize using Powerlevel10k](#22-customize-using-powerlevel10k)
  - [3. Customize BSPWM Theme](#3-customize-bspwm-theme)
    - [3.1 Install Dependency](#31-install-dependency)
    - [3.2 Copy config](#32-copy-config)
  - [Require Dependencies](#require-dependencies)
  - [Keybindings](#keybindings)
    - [Key Maps](#key-maps)
    - [Configuration](#configuration)
      - [1. Open terminal](#1-open-terminal)
      - [2. Close window](#2-close-window)
      - [3. Open menu or search apps](#3-open-menu-or-search-apps)
      - [4. Quit or Restart](#4-quit-or-restart)
      - [5. Change type window tiled, floating, fullscreen](#5-change-type-window-tiled-floating-fullscreen)
      - [6. Expand window](#6-expand-window)
      - [7. Contract window](#7-contract-window)
      - [8. Move floating window](#8-move-floating-window)
      - [9. Move next or previous workspace](#9-move-next-or-previous-workspace)
      - [10. Move workspace by index](#10-move-workspace-by-index)

## Preview

## 1. Installing Grub Theme

Theme by: [Jacksaur](https://github.com/Jacksaur/CRT-Amber-GRUB-Theme)  

### 1.1 Move to directory `/boot/grub/themes`
```sh
cd /boot/grub/themes
```

[[Table of Contents](#table-of-contents)]

### 1.2 Cloning repository
```sh
sudo git clone https://github.com/Jacksaur/CRT-Amber-GRUB-Theme.git
```

[[Table of Contents](#table-of-contents)]

### 1.3 Change config default GRUB theme `/etc/default/grub`
```sh
GRUB_THEME=/boot/grub/themes/CRT-Amber-GRUB-Theme/theme.txt
```

[[Table of Contents](#table-of-contents)]

### 1.4 Updating config GRUB
```sh
sudo update-grub
```

[[Table of Contents](#table-of-contents)]

### 1.5 Reboot system
```sh
sudo reboot
```

[[Table of Contents](#table-of-contents)]

## 2. Configuration ZSH

### 2.1 Install ZSH

[[Table of Contents](#table-of-contents)]

### 2.2 Customize using Powerlevel10k

[[Table of Contents](#table-of-contents)]

## 3. Customize BSPWM Theme

Theme by: [Me](https://github.com/naufal-yafi/dotfiles-RetroMonochromeDesert)

### 3.1 Install Dependency

[[Table of Contents](#table-of-contents)]

### 3.2 Copy config

[[Table of Contents](#table-of-contents)]

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

[[Table of Contents](#table-of-contents)]

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
| super + {1 - 0}             | move workspace by index  |

[[Table of Contents](#table-of-contents)]

### Configuration

#### 1. Open terminal
```sh
super + Return
	kitty
```

[[Table of Contents](#table-of-contents)]

#### 2. Close window
```sh
super + shift + {q,k}
	bspc node -{c,k}
```

[[Table of Contents](#table-of-contents)]

#### 3. Open menu or search apps
```sh
super + space
	rofi -show drun
```

[[Table of Contents](#table-of-contents)]

#### 4. Quit or Restart
```sh
super + alt + {q,r}
	bspc {quit,wm -r}
```

[[Table of Contents](#table-of-contents)]

#### 5. Change type window tiled, floating, fullscreen
```sh
super + {t,p,s,f}
	bspc node -t {tiled,pseudo_tiled,floating,fullscreen}
```

[[Table of Contents](#table-of-contents)]

#### 6. Expand window
```sh
super + alt + {h,j,k,l}
	bspc node -z {left -20 0, bottom 0 20, top 0 -20, right 20 0}
```

[[Table of Contents](#table-of-contents)]

#### 7. Contract window
```sh
super + alt + shift + {h,j,k,l}
	bspc node -z {left 20 0, bottom 0 -20, top 0 20, right -20 0}
```

[[Table of Contents](#table-of-contents)]

#### 8. Move floating window
```sh
super + {Left,Down,Up,Right}
	bspc node -v {-20 0, 0 20, 0 -20, 20 0}
```

[[Table of Contents](#table-of-contents)]

#### 9. Move next or previous workspace
```sh
super + bracket{left,right}
	bspc desktop -f {prev,next}.local
```

[[Table of Contents](#table-of-contents)]

#### 10. Move workspace by index
```sh
super + {_,shift + }{1-9,0}
	bspc {desktop -f,node -d} '^{1-9,10}'
```

[[Table of Contents](#table-of-contents)]