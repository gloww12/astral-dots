-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",
  hl_override = {
    NvDashAscii = {
      fg = "green",
    },
  },
}



M.nvdash = {

  load_on_startup = true,
  header = {
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
}

M.ui = {
  telescope = {
    style = "bordered",
  },
  tabufline = {
    enabled = false,
  },
  statusline = {
    enabled = true,
    theme   = "minimal",
  },
}

return M
