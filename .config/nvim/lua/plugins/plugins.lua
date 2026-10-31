return {

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    build = ':TSUpdate',
  },

  -- telescope for file/word find
  { 'nvim-telescope/telescope.nvim' },

  --
  -- LSP
  --
  { 'neovim/nvim-lspconfig' },

  -- LSP manager
  { 'mason-org/mason.nvim' },
  {
      'mason-org/mason-lspconfig.nvim',
      opts = {},
      dependencies = {
          { "mason-org/mason.nvim", opts = {} },
          "neovim/nvim-lspconfig",
      },
  },

  -- context window
  {
    'soulis-1256/eagle.nvim',
    opts = {
      keyboard_mode = true,
      mouse_mode = true,
      detect_idle_timer = 3,
    }
  },

  -- lsp error tabs
  {
    'folke/trouble.nvim',
    opts = {},
    cmd = "Trouble",
  },

  -- theme
  -- { 'catppuccin/nvim' },
  { 'RRethy/base16-nvim' },

  -- statusline
  { 'nvim-lualine/lualine.nvim' },

  -- image preview (not working i think)
  {
    '3rd/image.nvim',
    build = false,
    opts = {
      processor = "magick_cli",
    }
  },
  { 'HakonHarnes/img-clip.nvim' },

  -- inline markdown
  -- {
  --   'OXY2DEV/markview.nvim',
  --   opts = {
  --     preview = {
  --       enable = true,
  --       enable_hybrid_mode = true,
  --       modes = { 'n', 'v', 'i', 'c'},
  --       hybrid_modes = { 'n', 'v', 'i', 'c'},
  --       linewise_hybrid_mode = true,
  --     }
  --   }
  -- },

  { 'OXY2DEV/tree-sitter-comment' },

  -- cheatsheet for keybinds
  { 'doctorfree/cheatsheet.nvim' },

  -- toggleable terminal
  { 'akinsho/toggleterm.nvim', config = true },

  -- rainbow brackets
  { 'HiPhish/rainbow-delimiters.nvim' },

  -- git blame
  { 'lewis6991/gitsigns.nvim' },

  -- completions (WIP)
  {
    'Saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*', -- this is here to stop it from breaking idk why it works it just does
    opts = {
      -- enabled = function() return vim.g.blink_cmp ~= false end,
      enabled = function() return not vim.tbl_contains({ "markdown" }, vim.bo.filetype) end,
      keymap = {
        preset = 'enter',
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<S-Esc>'] = { 'cancel', 'fallback' },
      },
    },
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
  },

  {
    "garymjr/nvim-snippets",
    opts = {
      friendly_snippets = true,
    },
    dependencies = { "rafamadriz/friendly-snippets" },
  },

  -- startup screen
  {
    'nvimdev/dashboard-nvim',
    opts = {
      theme = 'hyper',
      config = {
        -- shortcut = {},
        shortcut = {
          {desc = 'Dots 󱗿', group = 'DashboardShortCutIcon', key='d', action='cd /home/glow/.dots | Telescope find_files hidden=true'},
          {desc = 'CELLS N SHIT 󰻖', group = 'RainbowDelimiterBlue', key='j', action='cd /home/glow/Documents/job/sa-codebase/ | Telescope find_files hidden=true'},
          {desc = 'Update ', group = 'DashboardPink', key='u', action='Lazy update'},
          {desc = 'Exit ', group = 'DashboardRed', key='q', action='q'},
        },
        project = {enable = false},
        packages = {enable = false},
        header = {
          "","","",
[[     ,_       ]],
[[    (`/\      ]],
[[    \_\/\     ]],
[[     \_\/\    ]],
[[      \_\/    ]],
[[         \    ]],
          "",
        },
        footer = {
          "",
          "go be productive queen 🫡",
          "",
          "or dont who gaf",
          "","","","","","","","", 
          "","","","","","","","", 
          "","","","","","","","", 
          "","","","","","","","",
        },
      }
    }
  },

  -- highlights word under cursor
  -- {
  --   'ya2s/nvim-cursorline',
  --   opts = {
  --     cursorline = {
  --       enable = true,
  --       timeout = 1000,
  --       number = false,
  --     },
  --     cursorword = {
  --       enable = true,
  --       min_length = 3,
  --       hl = { underline = true },
  --     },
  --   },
  -- },

  -- colour preview on hex codes
  -- {
  --     "catgoose/nvim-colorizer.lua",
  --     event = "BufReadPre",
  -- },
  -- { 'norcalli/nvim-colorizer.lua' },
  { 'brenoprata10/nvim-highlight-colors' },


  -- keybind screen on keypress
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
    end,
  },

  -- cursor smear
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      scroll_buffer_space = true,
      legacy_computing_symbols_support = false,
      smear_insert_mode = true,
    },
  },

  -- autopair brackets
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },

  -- autopair tags
  { 'windwp/nvim-ts-autotag' },

  -- -- blackjack
  -- { 'alanfortlink/blackjack.nvim'},

  -- indent plugin
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },

  -- cleaner folds
  { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' },

  -- fold colours
  { 'emiasims/foldhue.nvim' },

  -- latex support
  -- { 'let-def/texpresso.vim', },
  -- { 'lervag/vimtex' },
  --
  -- { 'brianhuster/live-preview.nvim' },

  { 'nvim-tree/nvim-web-devicons', opts = {} },

  -- { 'folke/twilight.nvim' },
  --
  -- -- arduino for iot
  -- { 'sbatin/platformio.nvim' },

  -- line number colouring
  {
    'mawkler/modicator.nvim',
    -- dependencies = 'catppuccin/nvim',
  },

  -- camelcase motion
  { 'chaoren/vim-wordmotion' },

  -- -- TODO highlighting
  -- { 
  --   "folke/todo-comments.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "ibhagwan/fzf-lua",
  --     "folke/trouble.nvim",
  --     "nvim-telescope/telescope.nvim"
  -- },
  --   opts = {}
  -- }
}
