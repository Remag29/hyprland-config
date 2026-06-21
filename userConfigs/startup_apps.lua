-- Autostart applications
-- https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpanel")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("awww img /home/tristan/Pictures/wallpaper/wallpaper --transition-type=center --transition-fps=120")
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("hypridle")
end)
