return {
    src = "https://github.com/ej-shafran/compile-mode.nvim",

    dependencies = {
        "https://github.com/nvim-lua/plenary.nvim"
    },

    config = function ()
        vim.g.compile_mode = {
            -- blink-cmp compatibility
            input_word_completion = true,

            -- to make `:Compile` replace special characters (e.g. `%`) in
            bang_expansion = true,

            vim.keymap.set("n", "<leader>r", "<cmd>Compile<CR>", { desc = "[R]un with compile command"}),
            vim.keymap.set("n", "<leader>R", "<cmd>Recompile<CR>", { desc = "[R]ecompile"}),
            vim.keymap.set("n", "<leader>ce", "<cmd>NextError<CR>", { desc = "[C]ompilaton [E]rror"})
        }
    end
}
