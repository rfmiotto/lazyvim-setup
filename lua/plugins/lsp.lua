return {
  {
    "p00f/clangd_extensions.nvim",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        clangd = {
          cmd = { "clangd", "--clang-tidy" },
        },
      },
    },
  },
}
