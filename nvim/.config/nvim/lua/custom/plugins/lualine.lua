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
        --If noice.nvim is enabled, this makes it so recording a macro is displayed in the status bar
        sections = {
          lualine_x = {
            {
              require('noice').api.statusline.mode.get,
              cond = require('noice').api.statusline.mode.has,
              color = { fg = '#ff9e64' },
            },
          },
        },
      }
    end,
  },
}
