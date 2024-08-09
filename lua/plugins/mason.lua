local M = {
    "williamboman/mason.nvim",
    -- enabled = false,
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
}

return M
