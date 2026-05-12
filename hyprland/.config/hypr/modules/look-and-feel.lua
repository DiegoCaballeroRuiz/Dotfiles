local colorscheme = require('modules.colorscheme')

hl.config({
    general = {
        gaps_in = 10,
        gaps_out = 0,

        border_size = 1,

        col = {
            active_border = colorscheme.purple,
            inactive_border = colorscheme.bg0,
        },

        resize_on_border = false,
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding = 10,
        rounding_power = 2,

        -- Change transparency of focused and unfocused windows
        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = 0xee1a1a1a,
        },

        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },

    animations = {
        enabled = false,
    },
})

hl.config({
    dwindle = {
        preserve_split = true,
        force_split = 2,
    },

    cursor = {
        no_warps = true,
        persistent_warps = false,
        warp_on_change_workspace = 0,
    }
})

hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
    },
})
