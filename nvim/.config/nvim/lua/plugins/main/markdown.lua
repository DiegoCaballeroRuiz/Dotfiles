return {
  -- Render markdown as you type
  -- Not quite org mode but close enough
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},

    config = function()
      require('render-markdown').setup {
        latex = {
          enabled = true,
          render_modes = { 'n', 'c', 't' },
          converter = { 'utftex', 'latex2text' },
          highlight = 'RenderMarkdownMath',
          position = 'center',
          top_pad = 0,
          bottom_pad = 0,
        },
        code = {
          width = 'block',
          right_pad = 4,
        },
      }
    end,
  },
  -- Extremely powerful table edit plugin
  {
    'SCJangra/table-nvim',
    ft = 'markdown',
    opts = {},
  },
}
