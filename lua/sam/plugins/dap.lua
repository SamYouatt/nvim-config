return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "leoluz/nvim-dap-go",
    "williamboman/mason.nvim",
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require "dap"
    local ui = require "dapui"

    ui.setup({})
    require("dap-go").setup({})
    require("nvim-dap-virtual-text").setup({})

    vim.keymap.set("n", "<space>b", dap.toggle_breakpoint)
    vim.keymap.set("n", "<space>gb", dap.run_to_cursor)
    vim.keymap.set("n", "<space>cb", dap.clear_breakpoints)
    vim.keymap.set("n", "<space>dx", ui.close)

    -- Eval var under cursor
    vim.keymap.set("n", "<space>?", function()
      require("dapui").eval(nil, { enter = true })
    end)

    -- TODO: make these the same as rider
    vim.keymap.set("n", "<F1>", dap.continue)
    vim.keymap.set("n", "<F2>", dap.step_into)
    vim.keymap.set("n", "<F3>", dap.step_over)
    vim.keymap.set("n", "<F4>", dap.step_out)
    vim.keymap.set("n", "<F5>", dap.step_back)
    -- This is actually shift-f5. To see literal keycodes: enter insert mode; press ctrl+v; type keycode
    vim.keymap.set("n", "<F17>", dap.terminate)
    vim.keymap.set("n", "<F13>", dap.restart)

    -- Auto handling of open and closing when exit/entering debugging
    dap.listeners.before.attach.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      ui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      ui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      ui.close()
    end

    vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'DapBreakpoint', linehl = '', numhl = '' })
  end
}
