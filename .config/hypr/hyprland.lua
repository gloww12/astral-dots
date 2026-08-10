-- imports
local hyprbinds = require("hyprbinds")
local hyprrules = require("hyprrules")
local hyprtheme = require("hyprtheme")
local hyprmonitors = require("hyprmonitors")


-- env vars

hl.env("LC_ALL", "C")
hl.env("XCURSOR_SIZE", 32)
hl.env("XCURSOR_THEME", "Banana")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("HYPRCURSOR_THEME", "Banana")
hl.env("HYPRCURSOR_SIZE", 32)
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")

-- For all categories, see https://wiki.hyprland.org/Configuring/Variables/
hl.device({
    name = "royuan-keycool-keyboard",
    kb_options = "altwin:swap_alt_win",
})

hl.config({

    input = {
        kb_layout = "us",
        kb_options = "caps:escape",
        follow_mouse = 1,
        touchpad = { natural_scroll = true },
        sensitivity = 0,
    },

    dwindle = { preserve_split = true },

    misc = {
        force_default_wallpaper = 0,
        font_family = "Fairiesevka Nerd Font",
    },

    debug = {
        disable_logs = false,
        vfr = true,
    },

    cursor = { zoom_factor = 1 },
})

-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("hyprctl setcursor Banana 48")
    hl.exec_cmd("wl-paste --watch cliphist store")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("mullvad connect")
    hl.exec_cmd("easyeffects --service-mode")
end)

-- For Noctalia Color templates
require("noctalia").apply_theme()
