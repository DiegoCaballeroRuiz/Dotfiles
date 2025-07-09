-- [[ Basic Keymaps ]]

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = '[Q]uickfix list' })

-- Save all buffers with ctrl+s
vim.keymap.set('n', '<C-s>', '<cmd>wa<CR>')

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Escape insert mode
vim.keymap.set('i', 'jj', '<Escape>')

-- Enter command mode through ñ
vim.keymap.set({ 'n', 'v' }, 'ñ', ':')

-- Buffer operations:
--
--
vim.keymap.set('n', '<leader>bb', '<cmd>b#<CR>', { desc = '[B]uffer [B]efore' }) -- Go to the last edited buffer before the current one
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = '[B]uffer [D]elete' }) -- Delete currendt buffer
vim.keymap.set('n', '<leader>bn', '<cmd>bnext<CR>', { desc = '[B]uffer [N]ext' }) -- Go to the next buffer
vim.keymap.set('n', '<leader>bp', '<cmd>bprev<CR>', { desc = '[B]uffer [P]revious' }) -- Go to the previous buffer
vim.keymap.set('n', '<leader>ba', '<cmd>%bd<CR>', { desc = '[B]uffer [P]revious' }) -- Delete all active buffers

-- A little function to close all buffers but the one currently in use
local function closeOtherBuffers()
  local current = vim.api.nvim_get_current_buf()
  local buffers = vim.api.nvim_list_bufs()

  for _, buf in ipairs(buffers) do
    if vim.api.nvim_buf_is_loaded(buf) and buf ~= current then
      vim.api.nvim_buf_delete(buf, {})
    end
  end
end
vim.keymap.set('n', '<leader>bo', closeOtherBuffers, { desc = '[B]uffer delete [O]thers' }) -- Delete all other buffers
--
--

-- Autopairs
-- NOTE: This is meant for using nvim pluginless: mini.pairs works great and is tiny af
--
-- vim.keymap.set('i', '(', '()<Escape>i')
-- vim.keymap.set('i', '[', '[]<Escape>i')
-- vim.keymap.set('i', '{', '{}<Escape>i')
-- vim.keymap.set('i', '{', '{}<Escape>i')
-- vim.keymap.set('i', "'", "''<Escape>i")
-- vim.keymap.set('i', '"', '""<Escape>i')

-- vim: ts=2 sts=2 sw=2 et
