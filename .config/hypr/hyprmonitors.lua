-- monitors

hl.monitor({
  -- right
  output = "DP-4",
  mode = "1920x1080@100.00Hz",
  position = "auto-right",
  scale = 1,
})

hl.monitor({
  -- mid
  output = "DP-1",
  mode = "1920x1080@144.00Hz",
  sdrsaturation = 1.5,
  position = "0x0",
  scale = 1,
})

hl.monitor({
    -- internal (left)
    output = "eDP-1",
    mode = "2256x1504@60.00Hz",
    position = "auto-left",
    scale = 1.175,
})

hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})
