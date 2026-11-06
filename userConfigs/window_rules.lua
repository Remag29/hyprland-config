-- Window rules
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.window_rule({
    name    = "Global 98% Opacity",
    match   = { class = ".+" },
    opacity = "0.98",
})

hl.window_rule({
    name    = "Float Proton Pass",
    match   = { class = "proton-pass" },
    float   = true,
    center  = true,
    size    = "1170 730",
    opacity = "0.95 0.50",
})

hl.window_rule({
    name    = "Float terminal",
    match   = { class = "kitty" },
    float   = true,
    center  = true,
    size    = "1170 730",
    opacity = "0.95 0.50",
})

hl.window_rule({
    name    = "Zen Browser Blur",
    match   = { class = "zen.*" },
    opacity = "1",
})

hl.window_rule({
    name    = "VsCode",
    match   = { class = "code" },
    opacity = "0.95",
})

hl.window_rule({
    name    = "Moonlight streaming",
    match   = { class = "com.moonlight_stream.Moonlight" },
    opacity = "1",
})
