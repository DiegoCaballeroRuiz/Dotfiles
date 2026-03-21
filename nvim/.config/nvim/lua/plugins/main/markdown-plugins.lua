return {
  -- Render markdown as you type
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },
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
    opts = {
      mappings = {
        insert_table = '<leader>mt', -- [M]arkdown [T]able
        insert_row_up = '<leader>mk', -- [M]arkdown (up)
        insert_row_down = '<leader>mj', -- [M]arkdown (down)
        move_row_up = '<leader>mK', -- [M]arkdown (move up)
        move_row_down = '<leader>mJ', -- [M]arkdown (move down)
        insert_column_left = '<leader>mh', -- [M]arkdown (left)
        insert_column_right = '<leader>ml', -- [M]arkdown (right)
        move_column_left = '<leader>mH', -- [M]arkdown (move left)
        move_column_right = '<leader>mL', -- [M]arkdown (move right)
        delete_column = '<leader>md', -- [M]arkdown [D]elete row
      },
    },
  },

  -- Live markdown previwer with Github styling on a browser
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },

    config = function()
      vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreviewToggle<CR>', { desc = '[M]arkdown [P]review' })
    end,
  },
}
