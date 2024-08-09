local M = {
    "romgrk/barbar.nvim",
    -- enabled = false,
    lazy = false,
    dependencies = {
        'lewis6991/gitsigns.nvim',   -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
        vim.g.barbar_auto_setup = false
    end,
    opts = {
        animation = false,
        auto_hide = false, -- whether to hide when there is only a single buffer
        tabpages = true,   -- current/total tabpages indicator (top-right corner)
        icons = {
            buffer_index = true,
            -- buffer_number = true,
            filetype = {
                enabled = true
            }
        },
        semantic_letters = true,
        letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
        sidebar_filetypes = {
            ['neo-tree'] = { event = 'BufWipeOut' },
        }
    }
}

return M
