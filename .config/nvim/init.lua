-- config files
require('config.lazy')
require('config.opts')
require('config.binds')
require('config.lspconfig')

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "typst",
                       "python", "html", "javascript",
                       "css", "fish", "java", "yaml",
                       "markdown", "markdown_inline",
                       "ruby", "hyprlang", "kotlin", 
                       "latex"},
}
require('lualine').setup() -- lualine (statusline)
require('mason').setup() -- mason (lsp installer/manager)
require('eagle').setup() -- eagle (lsp context)
require('colorizer').setup()
require('image').enable()
-- require('render-markdown').setup({
--     completions = { lsp = { enabled = true } },
--     render_modes = true,
-- })
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
