-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Setup godot integration automatically
-- local socket_path = './godothost'
-- local gdproject = io.open(vim.fn.getcwd() .. '/project.godot', 'r')
-- if gdproject then
--   io.close(gdproject)
--
--   -- Check if the socket file exists but is not in use
--   if vim.fn.filereadable(socket_path) == 1 then
--     -- Try to remove it (assume it's stale)
--     local ok, err = os.remove(socket_path)
--     if not ok then
--       print('Failed to remove stale GodotHost socket:', err)
--     end
--   end
--
--   print 'In a Godot project, now listening to GodotHost!'
--   vim.fn.serverstart(socket_path)
-- end

-- vim: ts=2 sts=2 sw=2 et
