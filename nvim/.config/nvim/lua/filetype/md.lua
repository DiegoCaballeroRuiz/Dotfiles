vim.api.nvim_create_autocmd('FileType', {
  desc = 'Add runfile command in md files',
  pattern = 'markdown',
  callback = function(opts)
    vim.keymap.set('i', '*', '**<Left>')
  end,
})
