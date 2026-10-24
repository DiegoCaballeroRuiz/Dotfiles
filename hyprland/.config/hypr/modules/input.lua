hl.config({
    input = {
        -- Default setup for external US-layout keyboards
        kb_layout  = "us",
        kb_variant = "",
        kb_model = "",

        -- Enable compose key
        kb_options = "compose:rctrl",

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
