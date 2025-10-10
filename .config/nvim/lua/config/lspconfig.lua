-- not working but ill figure it out one day >:(
vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        flake8 = {
          enable = true,
          indentWidth = 2,
          indentSize = 2,
          indent_width = 2,
          indent_size = 2,
        },
        pycodestyle = {
          enable = true,
          ignore = {'E111'},
          indentWidth = 2,
          indentSize = 2,
          indent_width = 2,
          indent_size = 2,

        }
      }
    }
  }
})
