-- User settings
-- https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 10,

        border_size = 2,

        col = {
            active_border   = { colors = { "rgba(d30062ee)", "rgba(5724f2ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        resize_on_border = false,
        allow_tearing    = false,
        layout           = "dwindle",
    },

    decoration = {
        rounding = 10,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled  = true,
            size     = 3,
            passes   = 1,
            vibrancy = 0.1696,
        },

    },

    animations = {
        enabled = true,
    },
})

-- Custom bezier curves
-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("wind",   { type = "bezier", points = { { 0.05, 0.9 }, { 0.1,  1.05 } } })
hl.curve("winIn",  { type = "bezier", points = { { 0.1,  1.1 }, { 0.1,  1.1  } } })
hl.curve("winOut", { type = "bezier", points = { { 0.3, -0.3 }, { 0,    1    } } })
hl.curve("liner",  { type = "bezier", points = { { 1,    1   }, { 1,    1    } } })

hl.animation({ leaf = "windows",     enabled = true, speed = 6,   bezier = "wind",   style = "slide" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 5,   bezier = "winIn",  style = "slide" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 5,   bezier = "winOut", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5,   bezier = "wind",   style = "slide" })
hl.animation({ leaf = "border",      enabled = true, speed = 1,   bezier = "liner" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 100, bezier = "liner",  style = "loop" })
hl.animation({ leaf = "fade",        enabled = true, speed = 10,  bezier = "default" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 5,   bezier = "wind" })

hl.config({
    dwindle = {
        preserve_split = true,
    },

    master = {
        new_status = "master",
    },

    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = false,
    },
})

hl.config({
    input = {
        kb_layout  = "fr",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        repeat_rate  = 50,
        repeat_delay = 300,

        follow_mouse = true,
        sensitivity  = 0,

        touchpad = {
            disable_while_typing = true,
            natural_scroll       = true,
            scroll_factor        = 0.2,
        },
    },
})

hl.config({
    binds = {
        workspace_back_and_forth = true,
        allow_workspace_cycles   = true,
        pass_mouse_when_bound    = false,
    },

    xwayland = {
        force_zero_scaling = true,
    },
})
