hl.config({
    input = {
        -- Only works if you dont have multiple devices
        --kb_layout  = "es",

        follow_mouse = 1,
        numlock_by_default = true,
        mouse_refocus = false,

        -- No mouse accel
        sensitivity = 0,

        touchpad = {
            natural_scroll = true,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

-- Default laptop keyboard
hl.device({
    name = "at-translated-set-2-keyboard",
    kb_layout = "es",
})

-- Wireless keyboard with us layout
hl.device({
    name = "at-translated-set-2-keyboard",
    kb_layout = "es",
})
