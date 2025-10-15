vim.api.nvim_create_autocmd('FileType', {
  desc = 'Add runfile command in cpp files',
  pattern = { 'cpp', 'c', 'h', 'hpp' },
  callback = function(opts)
    print("cpp file loaded")
    vim.keymap.set('n', '<leader>r', '<cmd>w<CR><cmd>!./run<CR>', { desc = '[R]un c or c++ code with runfile' })
  end,
})
