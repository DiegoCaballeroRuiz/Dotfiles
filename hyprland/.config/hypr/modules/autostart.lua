hl.on("hyprland.start", function()
    -- Notification daemon
    hl.exec_cmd("swaync &")

    -- Topbar
    hl.exec_cmd("waybar &")

    -- Wallpaper
    hl.exec_cmd("hyprpaper &")

    -- Brightness and volume up/down notifications
    hl.exec_cmd("swayosd-server &")

    -- Polkit agent
    hl.exec_cmd("hyprpolkitagent &")

    -- Idler
    hl.exec_cmd("hypridle &")

    -- Bluetooth gesture client
    hl.exec_cmd("mpris-proxy &")
end)
