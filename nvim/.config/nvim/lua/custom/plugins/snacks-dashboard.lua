-- Fancy customizable dashboard with some nice default utilites
return {
  'folke/snacks.nvim',
  --@type snacks.Config
  opts = {
    dashboard = {
      preset = {
        pick = nil,
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
          { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
          { icon = ' ', key = 'g', desc = 'Find Text', action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = ' ',
            key = 'c',
            desc = 'Config',
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = ' ', key = 's', desc = 'Restore Session', section = 'session' },
          { icon = '󰒲 ', key = 'l', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
          { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
        },
        header = [[

   ▄█   ▄█▄ ███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   
  ███ ▄███▀ ███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ 
  ███▐██▀   ███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ 
 ▄█████▀    ███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ 
▀▀█████▄    ███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ 
  ███▐██▄   ███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ 
  ███ ▀███▄ ███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ 
  ███   ▀█▀  ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  
  ▀                                                                           
      ]],
      },
      sections = {
        {
          padding = 0,
          indent = 5,
          { section = 'header' },
          { section = 'keys', padding = 1 },
          { section = 'startup' },
        },
        {
          section = 'terminal',
          cmd = "echo '\n\n'; cat ~/Imágenes/.asciiart/knight2.txt",
          pane = 2,
          indent = 10,
          height = 30,
          width = 52,
          padding = 0,
        },
      },
    },
  },
}
