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
vim.lsp.config('ltex_plus', {
  settings = {
    ltex = {
      language = 'en-GB',
    },
  },
})

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",
          "ruff",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })

            local on_attach_pyright = function(client, _)
        -- Disable all capabilities except hoverProvider
        -- client.server_capabilities.completionProvider = false
        -- client.server_capabilities.definitionProvider = false
        -- client.server_capabilities.typeDefinitionProvider = false
        -- client.server_capabilities.implementationProvider = false
        -- client.server_capabilities.referencesProvider = false
        -- client.server_capabilities.documentSymbolProvider = false
        -- client.server_capabilities.workspaceSymbolProvider = false
        -- client.server_capabilities.codeActionProvider = false
        -- client.server_capabilities.documentFormattingProvider = false
        -- client.server_capabilities.documentRangeFormattingProvider = false
        -- client.server_capabilities.renameProvider = false
        -- client.server_capabilities.signatureHelpProvider = false
        -- client.server_capabilities.documentHighlightProvider = false
        -- client.server_capabilities.foldingRangeProvider = false
        -- client.server_capabilities.semanticTokensProvider = false
        -- client.server_capabilities.declarationProvider = false
        -- client.server_capabilities.callHierarchyProvider = false
        -- client.server_capabilities.diagnosticProvider = false

        -- Enable hoverProvider
        client.server_capabilities.hoverProvider = true
      end


      -- Configure pyright
      lspconfig.pyright.setup({
        on_attach = on_attach_pyright,
        capabilities = (function()
          local capabilities = vim.lsp.protocol.make_client_capabilities()
          capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
          return capabilities
        end)(),
        settings = {
          python = {
            analysis = {
              useLibraryCodeForTypes = true,
              diagnosticSeverityOverrides = {
                reportUnusedVariable = "warning",
              },
              typeCheckingMode = "off", -- Set type-checking mode to off
              diagnosticMode = "off", -- Disable diagnostics entirely
            },
          },
        },
      })

      local on_attach_ruff = function(client, _)
        if client.name == "ruff" then
          -- disable hover in favor of pyright
          client.server_capabilities.hoverProvider = false
        end
      end

      lspconfig.ruff.setup({
        on_attach = on_attach_ruff,
        init_options = {
          settings = {
            args = {
              "--ignore",
              "F821",
              "--ignore",
              "E402",
              "--ignore",
              "E722",
              "--ignore",
              "E712",
            },
          },
        },
      })
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded",
        width = 70,
        height = 15,
      })
      vim.lsp.handlers["textDocument/signatureHelp"] =
        vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
