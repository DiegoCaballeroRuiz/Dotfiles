return {
  src = 'https://github.com/mfussenegger/nvim-dap',
  dependencies = {
    'https://github.com/rcarriga/nvim-dap-ui',
    'https://github.com/nvim-neotest/nvim-nio',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/jay-babu/mason-nvim-dap.nvim',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    -- Keymaps (moved from keys field)
    vim.keymap.set('n', '<F5>', function() dap.continue() end, { desc = 'Debug: Start/Continue' })
    vim.keymap.set('n', '<F10>', function() dap.step_into() end, { desc = 'Debug: Step Into' })
    vim.keymap.set('n', '<F11>', function() dap.step_over() end, { desc = 'Debug: Step Over' })
    vim.keymap.set('n', '<F12>', function() dap.step_out() end, { desc = 'Debug: Step Out' })
    vim.keymap.set('n', '<leader>tb', function() dap.toggle_breakpoint() end, { desc = '[T]oggle [B]reakpoint' })

    -- everything else stays the same
    require('mason-nvim-dap').setup {
      automatic_installation = true,
      handlers = {},
      ensure_installed = { 'lldb' },
    }

    dapui.setup {
      layouts = {
        {
          elements = {
            { id = 'scopes', size = 0.5 },
            { id = 'breakpoints', size = 0.5 },
          },
          position = 'right',
          size = 40,
        },
        {
          elements = { { id = 'console', size = 1.0 } },
          position = 'bottom',
          size = 10,
        },
      },
    }

    dap.adapters.lldb = {
      type = 'executable',
      command = '/usr/bin/lldb-vscode',
      name = 'lldb',
    }

    vim.api.nvim_set_hl(0, 'DapBreak', { fg = '#e51400' })
    vim.api.nvim_set_hl(0, 'DapStop', { fg = '#ffcc00' })
    local breakpoint_icons = vim.g.have_nerd_font
      and { Breakpoint = '', BreakpointCondition = '', BreakpointRejected = '', LogPoint = '', Stopped = '' }
      or  { Breakpoint = '●', BreakpointCondition = '⊜', BreakpointRejected = '⊘', LogPoint = '◆', Stopped = '⭔' }
    for type, icon in pairs(breakpoint_icons) do
      local tp = 'Dap' .. type
      local hl = (type == 'Stopped') and 'DapStop' or 'DapBreak'
      vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl })
    end

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close
  end,
}
