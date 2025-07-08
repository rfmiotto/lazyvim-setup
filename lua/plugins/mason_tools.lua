-- This file configures Mason to automatically install tools
return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = { "williamboman/mason.nvim" },
  opts = {
    ensure_installed = {
      -- LSP Servers (often handled by mason-lspconfig, but good to be explicit)
      "pyright", -- For Python LSP
      "clangd", -- For C/C++ LSP

      -- Linters/Formatters (these should match your pyproject.toml dev deps)
      "ruff",
      "cpplint",
      "clang-format",

      -- Debug Adapters Protocols
      "debugpy",
      "codelldb",
    },
  },
}
