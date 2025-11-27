local v = vim
local o = vim.o
local c = require("catppuccin.palettes").get_palette "mocha"

o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true

v.cmd.colorscheme 'catppuccin'
v.wo.number = true

o.clipboard = 'unnamedplus'
o.mousemoveevent = true

-- fold configs
o.foldenable = false
-- o.foldmethod = "expr"
-- o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- o.foldlevel = 99
-- o.foldlevelstart = 2
-- o.foldcolumn = '5'
-- o.fillchars = 'fold: ,foldopen:⌄,foldclose:>'
-- v.cmd('highlight Folded guibg=' .. c['mantle'] .. ' guifg=' .. c['overlay1'])
