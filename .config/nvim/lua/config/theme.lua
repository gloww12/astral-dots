require('base16-colorscheme').setup({
    base00 = '#001D3D', --bg
    base01 = '#003566', --line highlight
    base02 = '#003566', --line highlight (ui)
    base03 = '#ACABFB', --comment / indent guide
    base04 = '#FFD60A', --line num
    base05 = '#FAFAFA', --base text
    base06 = '#FF00FF', --unsure
    base07 = '#FAFAFA',
    base08 = '#F92672', 
    base09 = '#FFC300', 
    base0A = '#FFD60A', 
    base0B = '#50FA7B', --string
    base0C = '#66D9EF', 
    base0D = '#66D9EF', 
    base0E = '#AE81FF', 
    base0F = '#FFC300',
    bg      = '#001D3D',
    fg      = '#FAFAFA',
    acc     = '#FFd60A',
    alt     = '#FFC300',
    light   = '#003566',
    dark    = '#000814',
    red     = '#F92672',
    orange  = '#FF8766',
    yellow  = '#FFD60A',
    green   = '#50FA7B',
    blue    = '#66D9EF',
    purple  = '#AE81FF',
    comment = '#ACABFB',
})

local theme = require('lualine.themes.gruvbox')
local c = require('base16-colorscheme').colors

theme = {
  normal = {
    a = {bg = c.light, fg = c.yellow},
    b = {bg = c.bg, fg = c.fg},
    c = {bg = c.light, fg = c.fg},
  },

  insert = {
    a = {bg = c.green, fg = c.dark},
    b = {bg = c.bg, fg = c.fg},
    c = {bg = c.light, fg = c.fg},
  },

  visual = {
    a = {bg = c.purple, fg = c.dark},
    b = {bg = c.bg, fg = c.fg},
    c = {bg = c.light, fg = c.fg},
  },

  replace = {
    a = {bg = c.orange, fg = c.dark},
    b = {bg = c.bg, fg = c.fg},
    c = {bg = c.light, fg = c.fg},
  },

  command = {
    a = {bg = c.red, fg = c.fg},
    b = {bg = c.bg, fg = c.fg},
    c = {bg = c.light, fg = c.fg},
  },

  inactive = {
    a = {bg = c.comment, fg = c.dark},
    b = {bg = c.dark, fg = c.comment},
    c = {bg = c.bg, fg = c.comment},
  },
}


-- rainbow brackets
vim.api.nvim_set_hl(0, "RainbowDelimiterRed", { fg=c.red})
vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg=c.yellow})
vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg=c.orange})
vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg=c.green})
vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg=c.blue})
vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", { fg=c.purple})
vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", { fg=c.base06})

-- telescope
vim.api.nvim_set_hl(0, "TelescopeNormal", { fg=c.base05})
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg=c.base05})
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg=c.yellow})
vim.api.nvim_set_hl(0, "TelescopeMatching", { fg=c.alt})
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg=c.yellow})
vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg=c.alt})
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg=c.green})
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg=c.yellow})
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg=c.fg})
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg=c.comment})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg=c.fg})
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg=c.comment})

require('lualine').setup{
  options = {
    theme = theme,
    component_separators = { left = '\\', right = '/'},
    section_separators = { left = '◣', right = '◢'},
  }
}
