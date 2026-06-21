-- Laptop-specific keybinds
-- Note: xf86KbdBrightness binds removed (BrightnessKbd.sh script missing)

local scriptsDir = os.getenv("HOME") .. "/.config/hypr/scripts"

-- Monitor brightness
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(scriptsDir .. "/Brightness.sh --dec"), { repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd(scriptsDir .. "/Brightness.sh --inc"), { repeating = true })

-- Hyprlock on lid open/close
hl.bind("switch:on:Lid Switch",  hl.dsp.exec_cmd("hyprlock --grace 0"), { locked = true })
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("hyprlock --grace 0"), { locked = true })
