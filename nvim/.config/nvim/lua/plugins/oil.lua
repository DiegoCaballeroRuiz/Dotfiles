-- File 'manager' as a vim buffer
return {
    src = { src = 'https://github.com/stevearc/oil.nvim', name = 'oil' },
    config = function()
        require('oil').setup {
            vim.keymap.set('n', '-', ':Oil <CR>', { desc = '[E]xplorer (oil.nvim)' }),

            keymaps = {
                ['<C-h>'] = false,
                ['<C-j>'] = false,
                ['<C-k>'] = false,
                ['<C-l>'] = false,
            },
        }

        -- Function that opens oil resized in the left with a preview split, just like a file explorer plugin
        local function oil_tree()
            vim.api.nvim_create_autocmd("WinEnter", {
                once = true,
                callback = function()
                    local win = vim.fn.bufwinid("oil://")

                    if win ~= -1 then
                        vim.api.nvim_set_option_value("winfixwidth", true, { win = win })
                        vim.api.nvim_win_set_width(
                            win,
                            math.floor(vim.o.columns * 0.2)
                        )
                    end
                end,
            })
            require("oil").open()
            require("oil.actions").preview.callback()
        end

        vim.keymap.set('n', '<leader>e', oil_tree, { desc = '[E]xplorer' })
    end,
}
