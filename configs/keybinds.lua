-- Default keybinds
-- https://wiki.hypr.land/Configuring/Basics/Binds/

local mainMod    = "SUPER"
local scriptsDir = os.getenv("HOME") .. "/.config/hypr/scripts"
local UserScripts = os.getenv("HOME") .. "/.config/hypr/userScripts"

-- Session
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("hyprctl dispatch exit 0"))
hl.bind(mainMod .. " + Q",     hl.dsp.window.close())
hl.bind(mainMod .. " + M",     hl.dsp.exec_cmd("hyprctl dispatch exit 0"))

-- Window state
hl.bind(mainMod .. " + F",         hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + ALT + F",   hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))

-- Quick edit
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(UserScripts .. "/QuickEdit.sh"))

-- Groups
hl.bind(mainMod .. " + G",         hl.dsp.group.toggle())
hl.bind(mainMod .. " + SHIFT + tab", hl.dsp.group.next())

-- Cycle windows
hl.bind("ALT + tab", hl.dsp.window.cycle_next())
hl.bind("ALT + tab", hl.dsp.window.bring_to_top())

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --inc"),        { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --dec"),        { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --toggle-mic"), { locked = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd(scriptsDir .. "/Volume.sh --toggle"),     { locked = true })

-- Resize windows
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.resize({ x = -50, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 50,  y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.resize({ x = 0,   y = -50, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.resize({ x = 0,   y = 50, relative = true }),  { repeating = true })

-- Move windows
hl.bind(mainMod .. " + CTRL + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + CTRL + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + CTRL + down",  hl.dsp.window.move({ direction = "down" }))

-- Move focus
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Workspace navigation
hl.bind(mainMod .. " + tab",         hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + SHIFT + tab", hl.dsp.focus({ workspace = "m-1" }))

-- Special workspace
hl.bind(mainMod .. " + U",         hl.dsp.workspace.toggle_special())
hl.bind(mainMod .. " + SHIFT + U", hl.dsp.window.move({ workspace = "special" }))

-- Switch workspaces (keyboard codes for French layout compatibility)
-- code:10 = 1, code:11 = 2, ..., code:19 = 10
for i = 1, 10 do
    local code = "code:" .. (i + 9)
    hl.bind(mainMod .. " + " .. code,         hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. code, hl.dsp.window.move({ workspace = i }))
    hl.bind(mainMod .. " + CTRL + " .. code,  hl.dsp.window.move({ workspace = i, silent = true }))
end

hl.bind(mainMod .. " + SHIFT + bracketleft",  hl.dsp.window.move({ workspace = -1 }))
hl.bind(mainMod .. " + SHIFT + bracketright", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + CTRL + bracketleft",   hl.dsp.window.move({ workspace = -1, silent = true }))
hl.bind(mainMod .. " + CTRL + bracketright",  hl.dsp.window.move({ workspace = 1,  silent = true }))

-- Scroll through workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + period",     hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + comma",      hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize with mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
