-- config files
require('config.lazy')
require('config.opts')
require('config.binds')
require('config.lspconfig')

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "typst",
                       "python", "html", "javascript",
                       "css", "fish", "java",
                       "markdown", "markdown_inline",
                       "ruby", "hyprlang", "kotlin", },
}
require('lualine').setup() -- lualine (statusline)
require('mason').setup() -- mason (lsp installer/manager)
require('eagle').setup() -- eagle (lsp context)
require('colorizer').setup()
require("ibl").setup({ -- indent blanklines needs setup here
  exclude = {
    filetypes = {
      'dashboard',
    },
  },
})
