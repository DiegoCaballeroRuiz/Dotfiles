-- Fancy status bar below the editor
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    -- NOTE: I do this to make sure that lazy loads my config BEFORE creating the status bar
    config = function()
      require('lualine').setup {

        -- Themes and icons
        options = {
          theme = 'palenight',
          icons_enabled = true,
        },
      }
    end,
  },
}
