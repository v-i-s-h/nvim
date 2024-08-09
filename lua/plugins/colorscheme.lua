local M = {
    "Mofiqul/vscode.nvim",
    -- enabled = false,
    lazy = false,
    priority = 1000,
    name = "vscode",
    opts = function()
        local c = require("vscode.colors").get_colors()
        return {
            -- Set style
            style = 'dark',

            -- Enable transparent background
            transparent = false,
            -- transparent = true,

            -- Enable italic comment
            italic_comments = true,

            -- Disable nvim-tree background color
            -- disable_nvimtree_bg = true,

            -- Override colors (see ./lua/vscode/colors.lua)
            color_overrides = {
                -- vscLineNumber = '#FFFFFF',
                vscLineNumber = '#808080'
            },

            -- Override highlight groups (see ./lua/vscode/theme.lua)
            group_overrides = {
                -- this supports the same val table as vim.api.nvim_set_hl
                -- use colors from this colorscheme by requiring vscode.colors!
                Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
            }
        }
    end,
    config = function()
        vim.cmd("colorscheme vscode")
    end
}

return M
