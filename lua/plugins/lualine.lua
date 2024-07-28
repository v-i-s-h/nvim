local M = {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    opts = {
        theme = "vscode"
    },
    config = function ()
        require("lualine").setup()
    end,
}

return M
