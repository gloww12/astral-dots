return {

  { 'nvim-telescope/telescope.nvim' },

  { 'neovim/nvim-lspconfig' },

  { 'catppuccin/nvim' },

  { 'nvim-lualine/lualine.nvim' },

  { '3rd/image.nvim' },

  { 'doctorfree/cheatsheet.nvim' },

  { 'akinsho/toggleterm.nvim', config = true },

  { 'HiPhish/rainbow-delimiters.nvim' },

  { 'swaits/universal-clipboard.nvim' },

  {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
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

  { 
    'nvimdev/dashboard-nvim',
    opts = {
      theme = 'doom',
      config = {
        header = {
  "",
  "",
  "",
  "",
  "",
  "",
  [[  ` : | | | |:  ||  :     `  :  |  |+|: | : : :|   .        `              .]],
  [[     ` \: | :|  ||  |:  :    `  |  | :| : | : |:   |  .                    :]],
  [[ .       .' ':  ||  |:  |  '       ` || | : | |: : |   .  `           .   :.]],
  [[            `'  ||  |  ' |   *    ` : | | :| |*|  :   :               :|    ]],
  [[      *    *       `  |  : :  |  .      ` ' :| | :| . : :         *   :.||  ]],
  [[           .`            | |  |  : .:|       ` | || | : |: |          | ||  ]],
  [[    '          .         + `  |  :  .: .         '| | : :| :    .   |:| ||  ]],
  [[       .                 .    ` *|  || :       `    | | :| | :      |:| |   ]],
  [[  *             .          .        || |.: *          | || : :     :|||     ]],
  [[      .            .   . *    .   .  ` |||.  +        + '| |||  .  ||`      ]],
  [[   .             *              .     +:`|!             . ||||  :.||`       ]],
  [[            +         .                ..!|*          . | :`||+ |||`        ]],
  [[   .                         +      : |||`        .| :| | | |.| ||`     .   ]],
  [[     *     +   '               +  :|| |`     :.+. || || | |:`|| `           ]],
  [[                          .      .||` .    ..|| | |: '` `| | |`  +          ]],
  [[.       +++                      ||        !|!: `       :| |                ]],
  [[            +         .      .    | .      `|||.:      .||    .      .    ` ]],
  [[        '                           `|.   .  `:|||   + ||'     `            ]],
  [[__    +      *                         `'       `'|.    `:                  ]],
  [[  `---"""----....____,..^---`^``----.,.___          `.    `.  .    ____,.,- ]],
  [[  ___,--'""`---"'   ^  ^ ^        ^       """'---,..___ __,..---""'         ]],
  [[--"'                                     ^                     ``--..,__    ]],
  "",
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

  {
      "catgoose/nvim-colorizer.lua",
      event = "BufReadPre",
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
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

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },

  { 'windwp/nvim-ts-autotag' },
}
