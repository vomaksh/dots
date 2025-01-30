# vomaksh/dots

## Introduction

This repository contains my personal configuration files and scripts, 
designed to set up a consistent and efficient coding environment. 
It supports a variety of tools and applications to enhance productivity and streamline workflows.

## Supported Tools

This repository includes configurations for a variety of tools and applications listed below:

### 🖥️ Terminal Emulators

- [Ghostty](https://github.com/ghostty-org/ghostty) – Minimalist terminal emulator.
- [Alacritty](https://github.com/alacritty/alacritty) – GPU-accelerated terminal emulator.
- [WezTerm](https://wezfurlong.org/wezterm/) – Highly configurable terminal emulator.
- [Foot](https://codeberg.org/dnkl/foot) – Lightweight Wayland terminal emulator.

### 🪟 Wayland Tiling Compositors

- [Hyprland](https://hyprland.org/) – Dynamic tiling Wayland compositor.
- [Niri](https://github.com/YaLTeR/niri) – A scrollable tiling wayland compositor
- [Sway](https://swaywm.org/) – i3-compatible Wayland compositor.

### 🎨 Enhancements for Tiling Compositors

- [Waybar](https://github.com/Alexays/Waybar) – Highly customizable top bar for Wayland.
- [Fuzzel](https://codeberg.org/dnkl/fuzzel) – A dmenu replacement for Wayland.
- [Mako](https://github.com/emersion/mako) – Lightweight Wayland notification daemon.
- [Hyprpaper](https://github.com/hyprwm/hyprpaper) – Wallpaper management tool for Hyprland.
- [Swaylock](https://github.com/swaywm/swaylock) – Screen locker for Wayland.
- [SwayNotificationCenter](https://github.com/ErikReider/SwayNotificationCenter) – GTK based notification daemon for wayland compositors.
- [SwayOSD](https://github.com/ErikReider/SwayOSD) – A GTK based OSD for wayland compositors.
- [Wlogout](https://github.com/ArtsyMacaw/wlogout) – Customizable logout menu.

### 💻 Coding and Productivity

- [Neovim](https://neovim.io/) – Powerful and extensible code editor.
- [Tmux](https://github.com/tmux/tmux) – Terminal multiplexer.
- [Zsh](https://www.zsh.org/) – Configurable shell.
- [Posh](https://github.com/JanDeDobbeleer/oh-my-posh) – Shell prompt customization.

### 🛠️ System Utilities

- [Gammastep](https://gitlab.com/chinstrap/gammastep) – Adjusts screen color temperature for eye comfort.
- [qt5ct](https://sourceforge.net/projects/qt5ct/) – Qt5 configuration tool.
- [qt6ct](https://github.com/trialuser02/qt6ct) – Qt6 configuration tool.

## Usage Instructions

You need to have [Rake](https://github.com/ruby/rake) installed on your system.

Remove your previous configuration files which are already added in this repository otherwise symlinks will fail to be created.

### Install

To install the dotfiles, run:
```sh
rake install
```

### Uninstall

To remove the dotfiles run:
```sh
rake uninstall
```

## License

This project is licensed under the **MIT License**. 
For more details, see the [LICENSE](https://github.com/vomaksh/dotfiles/blob/master/LICENSE).
