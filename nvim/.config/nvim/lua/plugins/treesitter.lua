-- Highlight, edit, and navigate code
return {
  src = 'https://github.com/nvim-treesitter/nvim-treesitter',
  config = function()
    require('nvim-treesitter').setup {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
      -- Autoinstall languages that are not installed
      auto_install = true,
    }
  end
}
-- vim: ts=2 sts=2 sw=2 et
