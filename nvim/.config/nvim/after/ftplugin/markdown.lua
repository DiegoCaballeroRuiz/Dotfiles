-- Bullet points
vim.keymap.set('n', 'gx', "mt0ci[x<esc>`t", { desc = 'Marks todo item as done' })
vim.keymap.set('n', 'g-', "mt0ci[-<esc>`t", { desc = 'Marks todo item as delayed' })
vim.keymap.set('n', 'g<leader>', "mt0ci[ <esc>`t", { desc = 'Unmarks todo item' })

-- Better line navigation
vim.keymap.set({'n', 'v', 'x'}, 'j', 'gj')
vim.keymap.set({'n', 'v', 'x'}, 'k', 'gk')
