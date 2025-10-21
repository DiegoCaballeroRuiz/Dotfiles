vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'cpp', 'c', 'h', 'hpp' },
  callback = function(opts)
    vim.keymap.set('n', '<leader>r', '<cmd>w<CR><cmd>!./run<CR>', { desc = '[R]un c or c++ code with runfile' })
    vim.keymap.set('n', '<leader>o', '<cmd>LspClangdSwitchSourceHeader<CR>', {desc = 'Go to [O]ther (source-header)'})
  end,
})
