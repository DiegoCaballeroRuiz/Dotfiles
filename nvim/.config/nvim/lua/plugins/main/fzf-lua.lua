return {
  {
    -- Amazing fuzzy finder for files, text, lsp references, etc. Using the default fzf config
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional
    opts = {},
    config = function()
      local fzf = require 'fzf-lua'

      -- Sets up fzf lua to look and feel just like telescope!
      fzf.setup { 'telescope' }

      -- My keybindings
      vim.keymap.set('n', '<leader>fh', fzf.helptags, { desc = '[F]ind [H]elp' })
      vim.keymap.set('n', '<leader><leader>', fzf.files, { desc = 'Find a file in cwd' })
      vim.keymap.set('n', '<leader>fs', fzf.builtin, { desc = '[F]ind [S]elect Fzf-lua builtin' })
      vim.keymap.set('n', '<leader>fw', fzf.grep_cword, { desc = '[F]ind current [W]ord' })
      vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = '[F]ind by [G]rep' })
      vim.keymap.set('n', '<leader>fr', fzf.oldfiles, { desc = '[F]ind [R]ecent Files' })
      vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = '[F]ind [B]uffers' })
      vim.keymap.set('n', '<leader>fl', fzf.lsp_references, { desc = '[F]ind [L]SP References' })
      vim.keymap.set('n', '<leader>ff', fzf.blines, { desc = '[Find] [F]uzzily in current buffer' })
    end,
  },
}
