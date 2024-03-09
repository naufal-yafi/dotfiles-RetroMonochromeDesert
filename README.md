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
    - [2.1 Install Shell](#21-install-shell)
      - [2.1.1 Install ZSH](#211-install-zsh)
      - [2.1.2 Change default shell](#212-change-default-shell)
    - [2.2 Customize shell](#22-customize-shell)
      - [2.2.1 Download Font](#221-download-font)
      - [2.2.2 Change default theme zsh on `.zshrc`](#222-change-default-theme-zsh-on-zshrc)
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

### 2.1 Install Shell

#### 2.1.1 Install ZSH
```sh
sudo apt install zsh
```

#### 2.1.2 Change default shell
```sh
zsh
```

- Type `1`  
  (1) Continue to the main menu.
- Type `1`  
  (1) Configure setting for history...  
- Type `1`  
  (1) Number of lines of history...  
  then press `enter`
- Type `2`  
  (2) File where history...  
  then press `enter`
- Type `3`
  (3) Member of lines of history...  
  then press `enter`
- Type `0`  
  (0) ...return main menu
- Type `2`  
  (2) Configure the new...
- Type `1`  
  (1) ...default options.
- Type `0`  
  (0) Exit, saving the new settings...
- Type `sudo -s`
- Type `chsh -s /bin/zsh your_name`
- Then `reboot`

[[Table of Contents](#table-of-contents)]

### 2.2 Customize shell

#### 2.2.1 [Download Font](https://www.nerdfonts.com/)

- Move to `/usr/local/share/fonts`

- Regenerate font cache
```sh
fc-cache -f -v
```

- Verify installation
```sh
fc-list | grep "MesloLGS"
```

[[Table of Contents](#table-of-contents)]

#### 2.2.2 Change default theme zsh on `.zshrc`

```
ZSH_THEME="gnzh"
```

[[Table of Contents](#table-of-contents)]

## 3. Customize BSPWM Theme

Theme by: [Me](https://github.com/naufal-yafi/dotfiles-RetroMonochromeDesert)

### 3.1 Install Dependency

[[Table of Contents](#table-of-contents)]

### 3.2 Copy config

[[Table of Contents](#table-of-contents)]

## Require Dependencies

| Dependency | *                     |
|------------|-----------------------|
| bspwm      | tiling window manager |
| sxhkd      | input event           |
| polybar    | status bar            |
| picom      | compositor            |
| rofi       | launcher search app   |
| kitty      | terminal              |
| nitrogen   |                       |

[[Table of Contents](#table-of-contents)]

## Keybindings

### Key Maps
| No | Key                         | *                        |
|----|-----------------------------|--------------------------|
| 1  | super + *enter*             | open terminal            |
| 2  | super + *shift* + `q`       | close window             |
| 3  | super + *space*             | open menu or search apps |
| 4  | super + *alt* + `r`         | `restart` bspwm          |
| 5  | super + *alt* + `q`         | `quit` bspwm             |
|    | **Type window** :           |
| 6  | super + `f`                 | `fullscreen` window      |
| 7  | super + `p`                 | `pseudo tiled` window    |
| 8  | super + `s`                 | `floating` window        |
| 9  | super + `t`                 | `tiled` fullscreen       |
|    | **Maximize window** :       |
| 10 | super + *alt* + `h`         | expand window `left`     |
| 11 | super + *alt* + `j`         | expand window `bottom`   |
| 12 | super + *alt* + `k`         | expand window `top`      |
| 12 | super + *alt* + `l`         | expand window `right`    |
|    | **Minimize window** :       |
| 13 | super + *alt* + `h`         | contract window `left`   |
| 14 | super + *alt* + `j`         | contract window `bottom` |
| 15 | super + *alt* + `k`         | contract window `top`    |
| 16 | super + *alt* + `l`         | contract window `right`  |
|    | **Moving floating window** :|
| 17 | super + *Left*              | move to `left`           |
| 18 | super + *Up*                | move to `top`            |
| 19 | super + *Right*             | move to `right`          |
| 20 | super + *Down*              | move to `bottom`         |
|    | **Workspace** :             |
| 21 | super + `[`                 | `previous` workspace     |
| 22 | super + `]`                 | `next` workspace         |
| 23 | super + {1 - 0}             | move workspace by index  |

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