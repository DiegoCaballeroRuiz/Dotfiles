return {
  {
    -- Soothing pastel theme that I like to use in everything
    'catppuccin/nvim',
    name = 'catppuccin',
    flavour = 'mocha',
    priority = 1000, -- Must be one of the first plugins that load
    opts = function()
      vim.cmd.colorscheme 'catppuccin' -- Must set itself as a colorscheme to persist on load
    end,
  },
}
