-- File 'manager' as a vim buffer
return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    vim.keymap.set('n', '-', ':Oil <CR>', { desc = '[E]xplorer (oil.nvim)' }),

    keymaps = {
      ['zz'] = { 'actions.close', mode = 'n' },
      ['C-h'] = false,
      ['C-j'] = false,
      ['C-k'] = false,
      ['C-l'] = false,
    },
  },

  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
