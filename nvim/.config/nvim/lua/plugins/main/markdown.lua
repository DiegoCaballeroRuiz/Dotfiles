return {
  -- Render markdown as you type
  -- Not quite org mode but close enough
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  -- Extremely powerful table edit plugin
  {
    'SCJangra/table-nvim',
    ft = 'markdown',
    opts = {},
  },
}
