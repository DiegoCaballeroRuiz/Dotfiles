return {
  -- Adds the love2d library to the lua-language-server and allows to run love proyects with one command
  'S1M0N38/love2d.nvim',
  event = 'VeryLazy',
  opts = {
    identify_love_projects = false,
  },

  -- The plugin sets the makeprg to run love in love projects, so there's no need for keymaps
  keys = {},
}
