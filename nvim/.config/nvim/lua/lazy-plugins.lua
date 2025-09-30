-- [[ Configure and install plugins ]]
require('lazy').setup({

  -- Include optional plugins (not always used or in testing stage)
  -- NOTE: I load them one by one to use only what I need at the moment
  require 'plugins.optional.todo-comments',
  -- require 'plugins.optional.harpoon',
  -- require 'plugins.optional.lint'
  -- require 'plugins.optional.telescope'
  -- require 'plugins.optional.cmake-tools'
  -- require 'plugins.optional.love2d'

  -- Include main plugins folder
  { import = 'plugins.main' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
