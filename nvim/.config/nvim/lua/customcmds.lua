local compile_cmd = nil

local function compile()
  local default_cmd = compile_cmd or vim.o.makeprg

  vim.ui.input({
    prompt = 'Compile command: ',
    default = default_cmd,
    completion = 'shellcmd',
  }, function(cmd)
    if not cmd or cmd == '' then
      return
    end

    vim.o.makeprg = cmd
    compile_cmd = cmd
    vim.cmd 'silent make!'
    vim.cmd 'botright copen'
  end)
end

vim.api.nvim_create_user_command('Compile', compile, {})
vim.keymap.set('n', '<leader>r', compile, { desc = '[R]un with compile command' })
