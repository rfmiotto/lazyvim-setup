return {
  "mfussenegger/nvim-dap",
  opts = function(_, opts)
    local dap = require("dap")

    dap.adapters.cpp = {
      type = "executable",
      command = "/usr/bin/lldb-vscode", -- or use gdb/other adapter
      name = "lldb",
    }

    dap.configurations.cpp = {
      {
        name = "Debug C++ Test Binary",
        type = "cpp",
        request = "launch",
        program = function()
          return vim.fn.input("Path to test binary: ", vim.fn.getcwd() .. "/build/Debug/tests/run_tests", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
      },
    }

    -- If you're using .c files too
    dap.configurations.c = dap.configurations.cpp
  end,
}
