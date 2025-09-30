return {
  {
    -- Blazing fast and in-file persistent global marks, great for big proyects
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      -- Openning the list
      vim.keymap.set('n', '<leader>hh', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '[H]arpoon' })
      -- Adding current buffer to the list
      vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end, { desc = '[H]arpoon [A]dd' })

      -- Jumping through the list
      vim.keymap.set('n', '<leader>hj', function() harpoon:list():select(1) end, { desc = '[H]arpoon 1' })
      vim.keymap.set('n', '<leader>hk', function() harpoon:list():select(2) end, { desc = '[H]arpoon 2' })
      vim.keymap.set('n', '<leader>hl', function() harpoon:list():select(3) end, { desc = '[H]arpoon 3' })
      vim.keymap.set('n', '<leader>hñ', function() harpoon:list():select(4) end, { desc = '[H]arpoon 4' })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<leader>hn', function() harpoon:list():prev() end, { desc = '[H]arpoon [N]ext' })
      vim.keymap.set('n', '<leader>hp', function() harpoon:list():next() end, { desc = '[H]arpoon [P]revious' })
    end,
  },
}
