#!/bin/bash
CONFIG_PATH=~/.config/alacritty/alacritty.yml
TIMEOUT=3000
notify () {
  osascript -e "display notification \"${1}\" with title \"alacritty-theme-toggle\" subtitle \"Switched alacritty theme:\""
}
notify "Switching alacritty theme..."
grep -q light $CONFIG_PATH &&
    notify "setting to dark" &&
    alacritty-themes Eighties.dark &&
    sed -i -e "s/Colormode: light/Colormode: dark/" $CONFIG_PATH &&
    notify "dark" &&
    exit
grep -q dark $CONFIG_PATH &&
    notify "setting to light" &&
    alacritty-themes Eighties.light &&
    sed -i -e "s/Colormode: dark/Colormode: light/" $CONFIG_PATH &&
    notify "light"
