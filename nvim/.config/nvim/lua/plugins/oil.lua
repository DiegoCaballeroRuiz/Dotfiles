-- File 'manager' as a vim buffer
return {
    src = { src = 'https://github.com/stevearc/oil.nvim', name = 'oil' },
    config = function() 
        require('oil').setup {
            vim.keymap.set('n', '-', ':Oil <CR>', { desc = '[E]xplorer (oil.nvim)' }),

            keymaps = {
                ['zz'] = { 'actions.close', mode = 'n' },
                ['C-h'] = false,
                ['C-j'] = false,
                ['C-k'] = false,
                ['C-l'] = false,
            },
        }
    end
}
