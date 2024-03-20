#!/bin/bash
CONFIG_PATH=~/Developer/github/dotfiles/alacritty/alacritty.toml
TIMEOUT=3000

DARK_THEME="catppuccin_mocha"
LIGHT_THEME="catppuccin_latte"
set -e
notify () {
  osascript -e "display notification \"${1}\" with title \"Changing Alacritty Theme\" subtitle \"Switched Alacritty theme\""
}

grep -q $LIGHT_THEME $CONFIG_PATH &&
    notify "setting to dark" &&
    sed -i -e "s/$LIGHT_THEME/$DARK_THEME/" $CONFIG_PATH &&
    notify "dark" &&
    exit
grep -q $DARK_THEME $CONFIG_PATH &&
    notify "setting to light" &&
    sed -i -e "s/$DARK_THEME/$LIGHT_THEME/" $CONFIG_PATH &&
    notify "light"
