-- NOTE: Setting leader here to prevent plugins or keymaps from using the wrong one
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Setting up nerd font
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Auto-commands ]]
require 'autocmds'

-- [[ Custom-commands ]]
require 'customcmds'

-- [[ Plugins ]]
require 'pack-plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
