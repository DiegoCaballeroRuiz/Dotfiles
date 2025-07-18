return {
  -- Super minimal plugin that allow to swap between Header and source files in an instant
  'jakemason/ouroboros',
  requires = { { 'nvim-lua/plenary.nvim' } },
  ft = { 'c', 'cpp', 'h', 'hpp' }, --Only load it in C/C++ enviroments
  opts = {
    vim.keymap.set('n', '<leader>o', ':Ouroboros <CR>', { desc = '[O]uroboros' }),
  },
}
