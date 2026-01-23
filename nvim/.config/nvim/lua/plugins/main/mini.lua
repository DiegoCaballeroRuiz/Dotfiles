return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      require('mini.ai').setup { n_lines = 500 }

      -- Operate with surrounding brackets, quotes, etc
      require('mini.surround').setup {}
      -- Add surrounding with sa
      -- Delete surrounding with sd
      -- Replace surrounding with sr
      -- Find surrounding with sf(right) or sF(left)
      -- Highlight surrounding with sh

      -- Small autopair plugin
      require('mini.pairs').setup {}

      -- Fancy status line
      require('mini.statusline').setup {}

      -- Use the catppuccin palette (if it exists) for the statusline
      local cs = require 'catppuccin'
      if cs ~= nil then
        local cp = require('catppuccin.palettes').get_palette 'mocha'

        vim.api.nvim_set_hl(0, 'MiniStatuslineModeNormal', { fg = cp.base, bg = cp.mauve, bold = true })
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = cp.base, bg = cp.blue, bold = true })
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = cp.base, bg = cp.yellow, bold = true })
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeReplace', { fg = cp.base, bg = cp.red, bold = true })
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = cp.base, bg = cp.peach, bold = true })
        vim.api.nvim_set_hl(0, 'MiniStatuslineModeOther', { fg = cp.base, bg = cp.teal, bold = true })
      end
    end,
  },
}
