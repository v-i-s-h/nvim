local M = {
    "lewis6991/gitsigns.nvim",
    -- enabled = false,
    event = "BufReadPre",
    opts = {
        -- current_line_blame = true,
        current_line_blame = false,
        current_line_blame_opts = {
            virt_text = true,
            -- virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
            virt_text_pos = 'right_align',
            delay = 1000,
            ignore_whitespace = false,
            virt_text_priority = 100,
        },
        -- current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
        current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
        signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
        numhl = false,     -- Toggle with `:Gitsigns toggle_numhl`
        linehl = false,    -- Toggle with `:Gitsigns toggle_linehl`
        word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir = {
            interval = 1000,
            follow_files = true
        },
        attach_to_untracked = true,
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, -- Use default
        max_file_length = 40000,
        preview_config = {
            -- Options passed to nvim_open_win
            border = "rounded",
            style = "minimal",
            relative = "cursor",
            row = 0,
            col = 1,
        },
    },
}

return M
