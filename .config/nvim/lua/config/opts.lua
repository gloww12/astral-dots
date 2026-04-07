local v = vim
local o = v.o
local a = v.api
local c = require("catppuccin.palettes").get_palette "mocha"

o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true

v.cmd.colorscheme 'catppuccin'
o.relativenumber = true
o.number = true
o.cursorline = true
o.termguicolors = true

a.nvim_set_hl(0, 'NormalMode', {fg=c['text']})
a.nvim_set_hl(0, 'InsertMode', {fg=c['green']})
a.nvim_set_hl(0, 'VisualMode', {fg=c['mauve']})
a.nvim_set_hl(0, 'CommandMode', {fg=c['orange']})
a.nvim_set_hl(0, 'ReplaceMode', {fg=c['red']})

o.clipboard = 'unnamedplus'
o.mousemoveevent = true

-- fold configs
o.foldenable = false
o.foldmethod = "expr"
o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
o.foldlevel = 99
o.foldlevelstart = 99
o.foldcolumn = '5'
o.fillchars = 'fold: ,foldopen:⌄,foldclose:>'
v.cmd('highlight Folded guibg=' .. c['mantle'] .. ' guifg=' .. c['overlay1'])

a.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = a.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() v.hl.on_yank() end,
})
