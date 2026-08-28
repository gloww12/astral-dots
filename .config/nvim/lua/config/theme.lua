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
    light   = '#003566',
    dark    = '#000814',
    yellow  = '#FFD60A',
    alt     = '#FFC300',
    purple  = '#AE81FF',
    blue    = '#66D9EF',
    comment = '#ACABFB',
    green   = '#50FA7B',
    red     = '#F92672',
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
    a = {bg = c.alt, fg = c.dark},
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

require('lualine').setup{
  options = {
    theme = theme,
    component_separators = { left = '|', right = '|'},
    -- section_separators = { left = '', right = ''},
    section_separators = { left = '◣', right = '◢'},
  }
} -- lualine (statusline)
