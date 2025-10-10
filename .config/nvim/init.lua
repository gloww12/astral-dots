-- config files
require('config.lazy')
require('config.opts')
require('config.binds')
require('config.lspconfig')

require('lualine').setup() -- lualine (statusline)
require('mason').setup() -- mason (lsp installer/manager)
require('eagle').setup() -- eagle (lsp context)
require("ibl").setup({ -- indent blanklines needs setup here
  exclude = {
    filetypes = {
      'dashboard',
    },
  },
})
