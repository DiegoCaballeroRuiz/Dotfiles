return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      -- Manipulating the list
      local add = function()
        harpoon:list():add()
      end
      vim.keymap.set('n', '<leader>ha', add, { desc = '[H]arpoon [A]dd' })

      local list = function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end
      vim.keymap.set('n', '<leader>hh', list, { desc = '[H]arpoon' })

      -- Jumping through the list
      local select1 = function()
        harpoon:list():select(1)
      end
      vim.keymap.set('n', '<leader>hj', select1, { desc = '[H]arpoon 1' })

      local select2 = function()
        harpoon:list():select(2)
      end
      vim.keymap.set('n', '<leader>hk', select2, { desc = '[H]arpoon 2' })

      local select3 = function()
        harpoon:list():select(3)
      end
      vim.keymap.set('n', '<leader>hl', select3, { desc = '[H]arpoon 3' })

      local select4 = function()
        harpoon:list():select(4)
      end
      vim.keymap.set('n', '<leader>hñ', select4, { desc = '[H]arpoon 4' })

      -- Toggle previous & next buffers stored within Harpoon list
      local prev = function()
        harpoon:list():prev()
      end
      vim.keymap.set('n', '<leader>hn', prev, { desc = '[H]arpoon [N]ext' })

      local next = function()
        harpoon:list():next()
      end
      vim.keymap.set('n', '<leader>hp', next, { desc = '[H]arpoon [P]revious' })
    end,
  },
}
