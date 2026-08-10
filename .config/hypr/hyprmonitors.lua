-- monitors

hl.monitor({
  -- mid
  output = "DP-4",
  mode = "1920x1080@144.00Hz",
  position = "0x0",
  scale = 1,
})

hl.monitor({
  -- right
  output = "DP-3",
  mode = "1920x1080@100.00Hz",
  sdrsaturation = 1.5,
  position = "-1920x0",
  scale = 1,
})

hl.monitor({
    -- internal (left)
    output = "eDP-1",
    mode = "2256x1504@60.00Hz",
    position = "1920x0",
    scale = 1.175,
})

hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})

-- workspaces

hl.workspace_rule({
    workspace = 1,
    monitor = "eDP-1",
})

hl.workspace_rule({
    workspace = 2,
    monitor = "eDP-1",
})

hl.workspace_rule({
    workspace = 3,
    monitor = "eDP-1",
})

hl.workspace_rule({
    workspace = 4,
    monitor = "eDP-1",
})

