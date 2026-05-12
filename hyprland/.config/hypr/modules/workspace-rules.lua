
-- "Smart gaps" / "No gaps when only"
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })

-- Ignore maximize requests from all apps. You'll probably like this.
hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },

    no_focus = true,
})

-- Borderless, workspace attached
hl.window_rule({ match = { class = "zen" }, border_size = 0, workspace = 2 })
hl.window_rule({ match = { class = "discord" }, border_size = 0, workspace = 4 })
hl.window_rule({ match = { class = "Spotify" }, border_size = 0, workspace = 5 })
hl.window_rule({ match = { class = "code" }, border_size = 0, workspace = 1 })

-- Floating by default
hl.window_rule({ match = { class = "org.gnome.Nautilus" }, float = true, center = true, size = { 1000, 650 } })
hl.window_rule({ match = { class = "org.gnome.Calculator" }, float = true, center = true, size = { 1000, 650 } })
hl.window_rule({ match = { class = "org.gnome.Calendar" }, float = true, center = true, size = { 1000, 650 } })
hl.window_rule({ match = { class = "org.gnome.TextEditor" }, float = true, center = true, size = { 1000, 650 } })
hl.window_rule({ match = { class = "blueman-manager" }, float = true, center = true, size = { 1000, 650 } })
hl.window_rule({ match = { class = "org.pulseaudio.pavucontrol" }, float = true, center = true, size = { 1000, 650 } })
hl.window_rule({ match = { class = "blender" }, float = true, center = true, size = { 1000, 650 } })
hl.window_rule({ match = { class = "godot" }, float = true, center = true, size = { 1000, 650 } })

-- Pinned by default
hl.window_rule({ match = { title = "LiveSplit" }, opacity = 0.5, pin = true, border_size = 0, workspace = 1 })
