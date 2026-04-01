-- Live markdown previwer with Github styling on a browser
return {
    src = 'https://github.com/iamcco/markdown-preview.nvim',
    config = function()
        vim.g.mkdp_filetypes = { 'markdown' }
        vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreviewToggle<CR>', { desc = '[M]arkdown [P]review' })
    end,
}
