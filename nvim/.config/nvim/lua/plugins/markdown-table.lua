-- Extremely powerful table edit plugin
return {
    src = 'https://github.com/SCJangra/table-nvim',
    config = function()
        require('table-nvim').setup {
            mappings = {
                insert_table = '<leader>mt', -- [M]arkdown [T]able
                insert_row_up = '<leader>mk', -- [M]arkdown (up)
                insert_row_down = '<leader>mj', -- [M]arkdown (down)
                move_row_up = '<leader>mK', -- [M]arkdown (move up)
                move_row_down = '<leader>mJ', -- [M]arkdown (move down)
                insert_column_left = '<leader>mh', -- [M]arkdown (left)
                insert_column_right = '<leader>ml', -- [M]arkdown (right)
                move_column_left = '<leader>mH', -- [M]arkdown (move left)
                move_column_right = '<leader>mL', -- [M]arkdown (move right)
                delete_column = '<leader>md', -- [M]arkdown [D]elete row
            },
        }
    end
}
