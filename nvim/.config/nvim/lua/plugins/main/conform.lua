return {
  { -- Autoformat
    'stevearc/conform.nvim',
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>bf',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[B]uffer [F]ormat',
      },
    },
    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        lua = { 'stylua' },
        cpp = { 'clang_format' },
        -- Add more formatters
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
