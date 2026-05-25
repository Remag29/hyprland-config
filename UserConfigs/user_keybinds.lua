-- User keybinds
-- https://wiki.hypr.land/Configuring/Basics/Binds/

local mainMod    = "SUPER"
local term       = "kitty"
local files      = "kitty -e yazi"
local scriptsDir = os.getenv("HOME") .. "/.config/hypr/scripts"

-- App launcher
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("pkill rofi || rofi -show drun -show-icons"))

-- Terminal & file manager
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + T",      hl.dsp.exec_cmd(files))

-- Hyprlock
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

-- Layout
hl.bind(mainMod .. " + Y", hl.dsp.layout("togglesplit"))

-- Screenshot
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region"))

-- NixOS rebuild
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("kitty --hold -e sudo nixos-rebuild switch --flake /home/tristan/nixos#SamsungGBook"))
