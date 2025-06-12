return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-python",
    },
    keys = {
      {
        "<leader>tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Run Last Test",
      },
    },
    opts = {
      adapters = {
        ["neotest-python"] = {
          runner = "pytest",
          args = {
            "--capture=no",
          },
          python = ".venv/bin/python",
          cwd = vim.fn.getcwd(),
          env = {
            -- Set PYTHONPATH to the project root, NOT src itself
            PYTHONPATH = vim.fn.getcwd(),
          },
          dap = {
            justMyCode = false,
          },
          pytest_discover_instances = true,
        },
      },
    },
  },
}
