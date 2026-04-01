  return {
      src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim',
      dependencies = { 'https://github.com/nvim-treesitter/nvim-treesitter', 'https://github.com/nvim-mini/mini.nvim' },

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
}
