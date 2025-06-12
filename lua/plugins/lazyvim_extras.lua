-- This file defines plugins and/or enables LazyVim extras

-- Explicitly enable LazyVim extras
return {
  -- LazyVim extras are imported directly using their paths
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.test.core" },

  -- You can also add other custom plugins here, e.g.:
  -- {
  --   "some/plugin",
  --   opts = {},
  -- },
}
