local map = vim.keymap.set

-- generic
map('n', ';', ':')
map('n', '<Esc>',
  function()
    vim.cmd('EagleWinToggleHeaders')
    vim.cmd('noh')
  end
)

-- terminal
map('n', '<C-t>', '<cmd>ToggleTerm<CR>')
map('t', '<Esc>', '<C-\\><C-n>')

-- lsp popups
map('n', '<C-c>', '<cmd>EagleWin<CR>', { noremap = true, silent = true })
map('n', '<Tab>', ':EagleWin<CR>', { noremap = true, silent = true })

-- pane movement
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

--  JUST USE :qa INSTEAD (ty areeb 🫶)
--
-- map('n', 'q!',
--   function()
--     vim.cmd('NvimTreeClose')
--     vim.cmd('q')
--     vim.cmd('q')
--     vim.cmd('q')
--     vim.cmd('q')
--     vim.cmd('q')
--     vim.cmd('q')
--     vim.cmd('q')
--     vim.cmd('q')
--     vim.cmd('q')
--     -- it works ok dont judge me ;-;
--   end
-- )

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- Comment
map('n', "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map('v', "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- telescope
map('n', '<leader>tf', '<cmd>Telescope find_files<CR>')
map('n', '<leader>tw', '<cmd>Telescope live_grep<CR>')
