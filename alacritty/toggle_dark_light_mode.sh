#!/bin/bash
CONFIG_PATH=~/Developer/github/dotfiles/alacritty/alacritty.toml
TIMEOUT=3000
set -e
notify () {
  osascript -e "display notification \"${1}\" with title \"Changing Alacritty Theme\" subtitle \"Switched Alacritty theme\""
}
grep -q light $CONFIG_PATH &&
    notify "setting to dark" &&
    sed -i -e "s/pencil_light/hyper/" $CONFIG_PATH &&
    notify "dark" &&
    exit
grep -q hyper $CONFIG_PATH &&
    notify "setting to light" &&
    sed -i -e "s/hyper/pencil_light/" $CONFIG_PATH &&
    notify "light"
