local b     = hl.bind
local dsp   = hl.dsp
local exec  = hl.dsp.exec_cmd

-- apps
b("SUPER + Escape", exec("kitty"))
b("XF86AudioMedia", exec("termspace.sh 23"))
b("F12", exec("termspace.sh 23"))
b("SHIFT + XF86AudioMedia", exec("kitty -d ~/Documents/job/staph-code nvim"))
b("CONTROL + XF86AudioMedia", exec("kitty -d ~/Documents/obsidian/uni nvim"))

b("SUPER + SHIFT + A", exec("termspace.sh 21"))
b("SUPER + SHIFT + B", exec("termspace.sh 16"))
b("SUPER + SHIFT + C", exec("noctalia msg panel-open control-center calendar"))
b("SUPER + SHIFT + D", exec("termspace.sh 13"))
b("SUPER + SHIFT + F", exec("noctalia msg panel-open nightwatch75/file-search:panel"))
b("SUPER + SHIFT + G", exec("termspace.sh 22"))
b("SUPER + SHIFT + M", exec("proton-mail"))
b("SUPER + SHIFT + N", exec("termspace.sh 17"))
b("SUPER + SHIFT + O", exec("termspace.sh 18"))
b("SUPER + SHIFT + P", exec("termspace.sh 15"))
b("SUPER + SHIFT + Q", exec("qbittorrent"))
b("SUPER + SHIFT + R", exec("kitty -d ~/Pictures/reaction yazi"))
b("SUPER + SHIFT + S", exec("termspace.sh 24"))
b("SUPER + SHIFT + T", exec("termspace.sh 12"))
b("SUPER + SHIFT + V", exec("termspace.sh 19"))
b("SUPER + SHIFT + Y", exec("termspace.sh 14"))
b("SUPER + SHIFT + Z", exec("termspace.sh 20"))

-- launcher

-- b("SUPER + A", exec("~/.config/rofi/binds.sh"))
b("SUPER + B", exec("noctalia msg panel-open control-center bluetooth"))
b("SUPER + C", exec("noctalia msg panel-open clipboard"))
b("SUPER + D", exec("noctalia msg panel-open launcher"))
b("SUPER + E", exec("noctalia msg panel-open launcher /emo"))
b("SUPER + F", hl.dsp.window.fullscreen())
b("SUPER + G", exec("noctalia msg panel-open wallpaper"))
-- H reserved for movement
b("SUPER + I", exec("noctalia msg caffeine-toggle"))
-- J reserved for movement
-- K reserved for movement
-- L reserved for movement
b("SUPER + M", hl.dsp.window.fullscreen())
b("SUPER + N", exec("noctalia msg notification-dnd-toggle"))
b("SUPER + O", exec("hyprctl dispatch setprop active opaque toggle"))
b("SUPER + P", exec("hyprpicker --autocopy"))
b("SUPER + Q", hl.dsp.window.close())
b("SUPER + R", hl.dsp.layout("togglesplit"))
b("SUPER + S", exec("noctalia msg nightlight-force-toggle"))
b("SUPER + T", hl.dsp.window.float())
b("SUPER + U", exec("noctalia msg panel-open launcher '/bw '"))
b("SUPER + V", exec("~/.config/hypr/scripts/togglevpn.sh"))
b("SUPER + W", exec("noctalia msg panel-open control-center network"))
b("SUPER + X", exec("easyeffects --bypass-toggle"))
b("SUPER + Y", exec("~/.config/hypr/scripts/toggledeco.sh"))
b("SUPER + Z", exec("hyprmag"))

b("SUPER + Return", exec("noctalia msg panel-open control-center"))
b("SUPER + CONTROL + L", exec("noctalia msg session lock"))
b("SUPER + CONTROL + C", exec("~/.config/hypr/scripts/togglecaps.sh"))
b("SUPER + CONTROL + Q", hl.dsp.window.kill())
b("SUPER + CONTROL + R", exec("hyprctl reload"))

-- power menu

b("XF86PowerOff", exec("noctalia msg panel-open session"))
b("CONTROL + Delete", exec("noctalia msg panel-open session"))
b("SUPER + Delete", exec("noctalia msg panel-open session"))

--Functions

b("XF86AudioLowerVolume", exec("noctalia msg volume-down 5"))
b("XF86AudioRaiseVolume", exec("noctalia msg volume-up 5"))
b("XF86AudioMute", exec("noctalia msg volume-mute"))

-- multimedia

b("XF86AudioPlay", exec("playerctl play-pause"))
b("Pause", exec("playerctl play-pause"))
b("XF86AudioPause", exec("playerctl play-pause"))
b("XF86AudioNext", exec("playerctl next"))
b("XF86AudioPrev", exec("playerctl previous"))
b("SHIFT + XF86AudioPlay", exec("playerctl play-pause"))
b("SHIFT + XF86AudioPause", exec("playerctl play-pause"))
b("SHIFT + XF86AudioNext", exec("playerctl next"))
b("SHIFT + XF86AudioPrev", exec("playerctl previous"))

-- screenshot

b("SHIFT + Print", exec("slurp | grim -c -g - - | satty -f - "))
b("Print", exec("slurp | grim -g - - | wl-copy"))
b("CONTROL + Print", exec("grim -c - | wl-copy"))

-- brightness

b("XF86MonBrightnessUp", exec("brightnessctl s +5%"))
b("XF86MonBrightnessDown", exec("brightnessctl s 5%-"))
b("SHIFT + XF86MonBrightnessUp", exec("brightnessctl s +1%"))
b("SHIFT + XF86MonBrightnessDown", exec("brightnessctl s 1%-"))
b("CONTROL + XF86MonBrightnessUp", exec("brightnessctl s +20%"))
b("CONTROL + XF86MonBrightnessDown", exec("brightnessctl s 20%-"))

-- explode

b("SUPER + SHIFT + CONTROL + ALT + K", hl.dsp.exit())

--misc

b("switch:Lid Switch", exec("noctalia msg session lock"), { locked = true })

-- hyprland binds

-- Move focus with mainMod + arrow keys

b("SUPER + h", hl.dsp.focus({ direction = "left" }))
b("SUPER + l", hl.dsp.focus({ direction = "right" }))
b("SUPER + k", hl.dsp.focus({ direction = "up" }))
b("SUPER + j", hl.dsp.focus({ direction = "down" }))

-- move window binds

b("SUPER + SHIFT + h", hl.dsp.window.move({ direction = "l" }))
b("SUPER + SHIFT + l", hl.dsp.window.move({ direction = "r" }))
b("SUPER + SHIFT + k", hl.dsp.window.move({ direction = "u" }))
b("SUPER + SHIFT + j", hl.dsp.window.move({ direction = "d" }))

-- Switch workspaces with mainMod + [0-9]

b("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
b("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
b("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
b("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
b("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
b("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
b("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
b("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
b("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
b("SUPER + 0", hl.dsp.focus({ workspace = 0 }))

-- hidden workspaces

b("SUPER + Tab", exec("termspace.sh 11"))

-- bind = $mainMod, Escape,  exec, termspace.sh 14

-- bind = $mainMod, Space,   exec, termspace.sh 15

b("SUPER + SHIFT + Tab", hl.dsp.window.move({ workspace = 11 }))

-- bind = SUPER + SHIFT, Escape,  movetoworkspace, 14

-- bind = SUPER + SHIFT, Space,   movetoworkspace, 15

-- Move active window to a workspace with mainMod + SHIFT + [0-9]

b("SUPER + SHIFT + " .. 1, hl.dsp.window.move({ workspace = 1 }))
b("SUPER + SHIFT + " .. 2, hl.dsp.window.move({ workspace = 2 }))
b("SUPER + SHIFT + " .. 3, hl.dsp.window.move({ workspace = 3 }))
b("SUPER + SHIFT + " .. 4, hl.dsp.window.move({ workspace = 4 }))
b("SUPER + SHIFT + " .. 5, hl.dsp.window.move({ workspace = 5 }))
b("SUPER + SHIFT + " .. 6, hl.dsp.window.move({ workspace = 6 }))
b("SUPER + SHIFT + " .. 7, hl.dsp.window.move({ workspace = 7 }))
b("SUPER + SHIFT + " .. 8, hl.dsp.window.move({ workspace = 8 }))
b("SUPER + SHIFT + " .. 9, hl.dsp.window.move({ workspace = 9 }))
b("SUPER + SHIFT + " .. 0, hl.dsp.window.move({ workspace = 10 }))

b("SUPER + SHIFT + Tab", hl.dsp.window.move({ workspace = 11 }))

-- Move/resize windows with mainMod + LMB/RMB and dragging

b("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
b("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

b("SUPER + Up", exec("hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j| jq '.float* 1.1')"))
b("SUPER + Down", exec("hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j| jq '(.float* 0.9)| if . < 1 then 1 else . end')"))

b("SUPER + CONTROL + Down", exec("hyprctl -q keyword cursor:zoom_factor 1"))

-- :^)

b("SUPER + ALT + ALT_L", exec("feh /home/glow/wall/coconut.jpg"), { repeating = true })

b("ALT + Tab", exec("feh /home/glow/wall/coconut.jpg"))

b("ALT + XF86AudioPrev", exec("feh /home/glow/wall/coconut.jpg"))

b("CONTROL + ALT + Delete", exec("feh /home/glow/wall/coconut.jpg"))

-- external keyboard specific binds

-- add bindk flag on next hyprland update

b("CONTROL + Page_Up", exec("playerctl next"))
b("CONTROL + Page_Down", exec("playerctl previous"))

b("SHIFT + Page_Up", exec("pamixer -i 5"))
b("SHIFT + Page_Down", exec("pamixer -d 5"))
