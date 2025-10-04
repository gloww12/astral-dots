local map = vim.keymap.set


map('n', ';', ':')
map('n', '<C-t>', '<cmd>ToggleTerm<CR>')
map('t', '<Esc>', '<C-\\><C-n>')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', 'qq', 
  function()
    vim.cmd('NvimTreeClose')
    vim.cmd('q')
    vim.cmd('q')
    vim.cmd('q')
    vim.cmd('q')
    vim.cmd('q')
    vim.cmd('q')
    vim.cmd('q')
    vim.cmd('q')
    vim.cmd('q')
    -- it works ok dont judge me ;-;
  end
)

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- Comment
map('n', "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map('v', "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- telescope
map('n', '<leader>tf', '<cmd>Telescope find_files<CR>')
map('n', '<leader>tw', '<cmd>Telescope live_grep<CR>')
