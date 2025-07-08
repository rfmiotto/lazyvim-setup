return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-python",
      "alfaix/neotest-gtest",
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
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
    opts = function(_, opts)
      opts.adapters = opts.adapters or {}

      -- Add Python adapter
      table.insert(
        opts.adapters,
        require("neotest-python")({
          runner = "pytest",
          args = { "--capture=no" },
          python = ".venv/bin/python",
          cwd = vim.fn.getcwd(),
          env = {
            PYTHONPATH = vim.fn.getcwd(),
          },
          dap = {
            justMyCode = false,
          },
          pytest_discover_instances = true,
        })
      )

      -- Add GTest adapter with auto-mapping
      table.insert(
        opts.adapters,
        require("neotest-gtest").setup({
          get_gtest_executable = function(path)
            -- Automatically return the same executable for all .cpp test files
            if path and path:match("test_.+%.cpp$") then
              return vim.fn.getcwd() .. "/build/Debug/tests/run_tests"
            end
            return nil -- fallback: ignore other files
          end,
          -- Optional: always auto-configure test files on load
          configure_all_files = true,
        })
      )
    end,
  },
}
