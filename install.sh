#!/usr/bin/env bash
# Symlink these configs into place. Existing files are backed up with a .bak suffix.
set -e
cd "$(dirname "$0")"
link() { # src dst
  mkdir -p "$(dirname "$2")"
  [ -e "$2" ] && [ ! -L "$2" ] && mv "$2" "$2.bak"
  ln -sfn "$PWD/$1" "$2"
  echo "linked $2"
}
link kitty/kitty.conf        ~/.config/kitty/kitty.conf
link cava/config             ~/.config/cava/config
link fastfetch/config.jsonc  ~/.config/fastfetch/config.jsonc
link .bashrc                 ~/.bashrc
