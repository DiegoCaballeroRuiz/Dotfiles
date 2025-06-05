return {
  "jakemason/ouroboros",
  requires = { { "nvim-lua/plenary.nvim" } },
  opts = {
    vim.keymap.set("n", "<leader>o", ":Ouroboros <CR>", { desc = "Change between source and header file" }),
  },
}
