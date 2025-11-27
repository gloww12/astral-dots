vim.lsp.config('pylsp', {
  settings = {
    pylsp = {
      plugins = {
        flake8 = {
          enable = false,
          maxLineLength = 100,
        },
        pycodestyle = {
          enable = false,
          ignore = {'E126', 'W504', 'W503'},
          maxLineLength = 100,
        }
      }
    }
  }
})
