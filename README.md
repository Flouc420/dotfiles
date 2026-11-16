# dotfiles 🐧

My Arch Linux setup on a **ThinkPad X1 Yoga (1st gen)** — Core i5-6300U, 8 GB RAM, 256 GB SSD.

Installed with `archinstall`, **KDE Plasma** on **systemd-boot**. This laptop is my machine for music, CTF practice and flashing microcontrollers.

## What's in here

| Path | What it does |
|---|---|
| `kitty/kitty.conf` | Terminal: JetBrains Mono, 85 % transparent, no window decorations, custom teal/pink palette |
| `cava/config` | Audio visualizer: 20 thin bars at 60 fps, PipeWire input, soft white foreground |
| `fastfetch/config.jsonc` | System info at a glance: OS, kernel, DE/WM, fonts, CPU/GPU, battery, media |
| `.bashrc` | Minimal: colour aliases, `[user@host dir]$` prompt, `~/.local/bin` on PATH for pipx |
| `install.sh` | Symlinks everything into `~/.config` (backs up existing files as `.bak`) |

## Palette

A teal-and-pink theme on a deep blue-green background.

| | Hex | |
|---|---|---|
| Background | `#0B1E24` | ![#0B1E24](https://placehold.co/15x15/0B1E24/0B1E24.png) |
| Foreground | `#E0F7F5` | ![#E0F7F5](https://placehold.co/15x15/E0F7F5/E0F7F5.png) |
| Teal (green / cyan) | `#39C5BB` | ![#39C5BB](https://placehold.co/15x15/39C5BB/39C5BB.png) |
| Pink (red / cursor) | `#FF4FA3` | ![#FF4FA3](https://placehold.co/15x15/FF4FA3/FF4FA3.png) |
| Yellow | `#F5D76E` | ![#F5D76E](https://placehold.co/15x15/F5D76E/F5D76E.png) |
| Blue | `#4DA3FF` | ![#4DA3FF](https://placehold.co/15x15/4DA3FF/4DA3FF.png) |
| Purple | `#C77DFF` | ![#C77DFF](https://placehold.co/15x15/C77DFF/C77DFF.png) |

## Install

```bash
sudo pacman -S kitty cava fastfetch ttf-jetbrains-mono
git clone https://github.com/Flouc420/dotfiles.git ~/dotfiles
~/dotfiles/install.sh
```

Then open a new Kitty window — or `kitty @ load-config` in an existing one.

## Notes to self

- CAVA uses `method = pipewire`; switch to `pulse` if the bars stay flat.
- Kitty transparency needs a compositor — fine under Plasma by default.
- Fastfetch module list is the plain default order; the `$schema` line gives autocompletion in editors.
