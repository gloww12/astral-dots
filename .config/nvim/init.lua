-- config files
require('config.lazy')
require('config.opts')
require('config.binds')
require('config.lspconfig')
require('config.theme')

require('nvim-treesitter').setup()
require('mason').setup() -- mason (lsp installer/manager)
require('eagle').setup() -- eagle (lsp context)
require('colorizer').setup() -- coloriser, go figure
require('modicator').setup() -- coloured line number
require('image').enable()
require("ibl").setup({ -- indent blanklines needs setup here
  exclude = {
    filetypes = {
      'dashboard',
    },
  },
})
require('blink.cmp').setup({
  enabled = function() return not vim.tbl_contains({ "lua", "java", "python", "markdown" }, vim.bo.filetype) end,
})
