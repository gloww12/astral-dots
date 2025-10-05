return {

  -- treesitter 
  { 'nvim-treesitter/nvim-treesitter' },

  -- telescope for file/word find
  { 'nvim-telescope/telescope.nvim' },

  --
  -- LSP
  --
  { 'neovim/nvim-lspconfig' },

  -- LSP server manager
  { 'mason-org/mason.nvim' },
  {
      'mason-org/mason-lspconfig.nvim',
      opts = {},
      dependencies = {
          { "mason-org/mason.nvim", opts = {} },
          "neovim/nvim-lspconfig",
      },
  },
  {
    'soulis-1256/eagle.nvim',
    opts = {
      keyboard_mode = true,
      mouse_mode = true,
      detect_idle_timer = 3,
    }
  },

  -- theme
  { 'catppuccin/nvim' },

  -- statusline
  { 'nvim-lualine/lualine.nvim' },

  -- image preview (not working i think)
  { '3rd/image.nvim' },

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
    version = '1.*',
    opts = {},
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
      theme = 'doom',
      config = {
        header = {
  "",
  "",
  "",
[[      ,-.,-.                  ]],
[[      (  (  (                 ]],
[[      \  )  ) _..-.._         ]],
[[     __)/ ,','       `.       ]],
[[   ,"     `.     ,--.  `.     ]],
[[ ,"   @        .'    `   \    ]],
[[(Y            (           ;''.]],
[[ `--.____,     \          ,  ;]],
[[ ((_ ,----' ,---'      _,'_,' ]],
[[     (((_,- (((______,-'      ]],
  "",
        },
        center = {
          {
            desc = 'piss yourself'
          },
        },
      }
    }
  },

  -- highlights word under cursor
  {
    'ya2s/nvim-cursorline',
    opts = {
      cursorline = {
        enable = true,
        timeout = 1000,
        number = false,
      },
      cursorword = {
        enable = true,
        min_length = 3,
        hl = { underline = true },
      },
    },
  },

  -- colour preview on hex codes
  {
      "catgoose/nvim-colorizer.lua",
      event = "BufReadPre",
  },

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

  -- keybind screen on keypress
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
}
