return {
    src = "https://github.com/iamcco/markdown-preview.nvim.git",
    config = function ()
        vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<CR>", { desc = "[M]arkdown [P]review"})
    end
}
