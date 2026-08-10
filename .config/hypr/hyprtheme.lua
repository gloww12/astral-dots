hl.config({

    general = {
        gaps_in = 4,
        gaps_out = 8,
        border_size = 6,
        -- col.active_border = rgb(a6e3a1)  # catp green
        -- col.active_border   = rgb(cba6f7) rgb(f9e2af) 45deg # catp purple/yellow
        -- col.active_border = rgb(D70071) rgb(9C4E97) rgb(0035AA) 45deg # bi
        -- col.active_border = rgb(E18A00) rgb(EAC901) rgb(FBFAFF) rgb(62ACDC) rgb(1E3658) 45deg # aa
        -- col.active_border = rgb(72CEF2) rgb(E9ADBF) rgb(FDFDFD) rgb(E9ADBF) rgb(72CEF2) # trans
        layout = "dwindle",
        allow_tearing = false,
        col = {
            active_border = yellow,
            inactive_border = "rgba(595959aa)",
        },
    },

    decoration = {
        rounding = 8,
        blur = { enabled = false },
    },

    animations = { enabled = true },

})


hl.window_rule({
    match = {
      class = "^(WebApp-MonkeyType2910)",
    },
    opacity = "opacity 0.8",
})

hl.window_rule({
    match = {
      class = "^(kitty)",
    },
    opacity = "opacity 0.8",
})
