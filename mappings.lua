local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>ds"] = {
      "<cmd> DapStepOver <CR>",
      "Step over",
    },
    ["<leader>di"] = {
      "<cmd> DapStepInto <CR>",
      "Step into",
    },
    ["<leader>do"] = {
      "<cmd> DapStepOut <CR>",
      "Step out",
    },
    ["<leader>dt"] = {
      "<cmd> DapTerminate <CR>",
      "Stop the debugger",
    },
    ["<leader>dx"] = {
      "<cmd> lua require('dapui').close() <CR>",
      "Close the DAP UI",
    }
  }
}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  }
}

return M
