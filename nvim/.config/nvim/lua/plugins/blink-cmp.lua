-- Autocompletion
return {
  src = 'https://github.com/saghen/blink.cmp',
  config = function()
    require('blink-cmp').setup {

      keymap = {
        preset = 'default',
        ['<c-y>'] = { 'accept', 'fallback' },
        ['<Tab>'] = { 'accept', 'fallback' },
        ['<c-j>'] = { 'select_next', 'fallback' },
        ['<c-k>'] = { 'select_prev', 'fallback' },
      },

      appearance = {
        nerd_font_variant = 'mono',
      },

      completion = {
        documentation = { auto_show = false, auto_show_delay_ms = 500 },
      },

      sources = {
        default = { 'lsp', 'path', 'snippets' },
        providers = {},
      },

      fuzzy = { implementation = 'lua' },
      signature = { enabled = true },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
