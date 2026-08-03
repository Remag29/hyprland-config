#!/usr/bin/env bash
# Rofi menu for Quick Edit / View of Settings (SUPER E)

# define your preferred text editor and terminal to use
editor=vim
tty=kitty

configs="$HOME/.config/hypr/configs"
UserConfigs="$HOME/.config/hypr/userConfigs"

menu(){
  printf "0. view Nixos Home.nix\n"
  printf "1. view Env-variables\n"
  printf "2. view Window-Rules\n"
  printf "3. view Startup_Apps\n"
  printf "4. view User-Keybinds\n"
  printf "5. view Monitors\n"
  printf "6. view Laptop-Keybinds\n"
  printf "7. view User-Settings\n"
  printf "8. view Workspace-Rules\n"
  printf "9. view Default-Settings\n"
  printf "10. view Default-Keybinds\n"
}

main() {
    choice=$(menu | rofi -i -dmenu -config ~/.config/rofi/config.rasi | cut -d. -f1)
    case $choice in
				0)	$tty $editor "/home/tristan/nixos/hosts/SamsungGBook/home.nix"
						;;
        1)
            $tty $editor "$UserConfigs/ENVariables.conf"
            ;;
        2)
            $tty $editor "$UserConfigs/window_rules.lua"
            ;;
        3)
            $tty $editor "$UserConfigs/startup_app.lua"
            ;;
        4)
            $tty $editor "$UserConfigs/user_keybinds.lua"
            ;;
        5)
            $tty $editor "$UserConfigs/monitors.lua"
            ;;
        6)
            $tty $editor "$UserConfigs/laptops.lua"
            ;;
        7)
            $tty $editor "$UserConfigs/user_settings.lua"
            ;;
        8)
            $tty $editor "$UserConfigs/workspace_rules.lua"
            ;;
				9)
            $tty $editor "$configs/settings.lua"
            ;;
        10)
            $tty $editor "$configs/keybinds.conf"
            ;;
        *)
            ;;
    esac
}

main
