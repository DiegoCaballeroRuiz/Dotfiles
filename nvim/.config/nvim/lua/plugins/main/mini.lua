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

      -- Which-key like popup
      local miniclue = require 'mini.clue'
      miniclue.setup {
        triggers = {
          -- Leader triggers
          { mode = 'n', keys = '<Leader>' },
          { mode = 'x', keys = '<Leader>' },

          -- `g` key
          { mode = 'n', keys = 'g' },
          { mode = 'x', keys = 'g' },

          -- Marks
          { mode = 'n', keys = "'" },
          { mode = 'n', keys = '`' },
          { mode = 'x', keys = "'" },
          { mode = 'x', keys = '`' },

          -- Registers
          { mode = 'n', keys = '"' },
          { mode = 'x', keys = '"' },
          { mode = 'i', keys = '<C-r>' },
          { mode = 'c', keys = '<C-r>' },

          -- Window commands
          { mode = 'n', keys = '<C-w>' },

          -- `z` key
          { mode = 'n', keys = 'z' },
          { mode = 'x', keys = 'z' },
        },

        clues = {
          -- Default descriptions
          miniclue.gen_clues.builtin_completion(),
          miniclue.gen_clues.g(),
          miniclue.gen_clues.marks(),
          miniclue.gen_clues.registers(),
          miniclue.gen_clues.windows(),
          miniclue.gen_clues.z(),

          -- Personal groups
          { mode = 'n', keys = '<leader>f', desc = '[F]ind' },
          { mode = 'n', keys = '<leader>t', desc = '[T]oggle' },
          { mode = 'n', keys = '<leader>b', desc = '[B]uffers' },
          -- { mode = 'n', keys = '<leader>v', desc = 'LÖ[V]E' },
          -- { mode = 'n', keys = '<leader>h', desc = '[H]arpoon' },
          { mode = 'n', keys = '<leader>s', desc = '[S]plits' },
        },

        -- Popup configuration
        window = {
          config = {
            width = 60,
          },

          -- Delay before showing clue window
          delay = 0,

          -- Keys to scroll inside the clue window
          scroll_down = '<C-d>',
          scroll_up = '<C-u>',
        },
      }
    end,
  },
}
