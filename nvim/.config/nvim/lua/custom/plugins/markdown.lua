return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
  {
    'iamcco/markdown-preview.nvim',
    ft = { 'markdown' },

    build = 'cd app && npm install',
    config = function()
      vim.g.mkdp_filetypes = { 'markdown' }
      vim.g.mkdp_browser = 'firefox'
      vim.keymap.set('n', '<leader>mp', ':MarkdownPreviewToggle <CR>', {})
    end,
  },
  {
    'timantipov/md-table-tidy.nvim',
    -- default config
    opts = {
      padding = 2, -- number of spaces for cell padding
      key = '<leader>tt', -- key for command :TableTidy<CR>
    },
  },
}
