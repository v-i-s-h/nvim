local M =  {
  "williamboman/mason.nvim",
  -- cmd = {
  --   "Mason",
  --   "MasonInstall",
  --   "MasonUninstall",
  --   "MasonUninstallAll",
  --   "MasonLog",
  -- },
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_uninstalled = "✗",
        package_pending = "⟳",
      },
    },
  },
  build = ":MasonUpdate",
  config = true,
  -- enabled = False
}

return M

