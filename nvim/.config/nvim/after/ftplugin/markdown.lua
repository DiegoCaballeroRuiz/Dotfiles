-- Faster italics/bold
vim.keymap.set('i', '*', '**<Left>')

-- Bullet points
vim.keymap.set('n', 'gx', "mt0ci[x<esc>`t", { desc = 'Marks todo item as done' })
vim.keymap.set('n', 'g-', "mt0ci[-<esc>`t", { desc = 'Marks todo item as delayed' })
vim.keymap.set('n', 'g<leader>', "mt0ci[ <esc>`t", { desc = 'Unmarks todo item' })
