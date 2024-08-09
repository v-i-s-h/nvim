local M = {
    'nvim-lualine/lualine.nvim',
    -- enabled = false,
    lazy = false,
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    opts = {
        theme = "vscode"
    },
    config = function()
        require("lualine").setup()
    end,
}

return M
