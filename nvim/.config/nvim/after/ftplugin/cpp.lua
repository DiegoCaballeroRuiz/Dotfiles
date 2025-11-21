vim.o.makeprg = "./run"

vim.keymap.set("n", "<leader>o", "<cmd>LspClangdSwitchSourceHeader<CR>", { desc = "Switch to [o]ther file" })
