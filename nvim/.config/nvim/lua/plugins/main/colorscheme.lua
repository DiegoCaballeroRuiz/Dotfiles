return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    flavour = 'mocha',
    priority = 1000,
    opts = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
