return {
  -- Adds the love2d library to the lua-language-server and allows to run love proyects with one command
  'S1M0N38/love2d.nvim',
  event = 'VeryLazy',
  opts = {},
  keys = {
    { '<leader>vv', '<cmd>LoveRun<cr>', ft = 'lua', desc = 'Run LÖVE' },
    { '<leader>vs', '<cmd>LoveStop<cr>', ft = 'lua', desc = 'Stop LÖVE' },
  },
}
