local M = {
    "kevinhwang91/nvim-ufo",
    -- enabled = false,
    -- enabled = vim.g.os ~= "Windows",
    dependencies = {
        "kevinhwang91/promise-async"
    },
    -- lazy = false,
    event = {
        "BufReadPre", "BufNewFile"
    },
    opts = {
        provider_selector = function(bufnr, filetype, buftype)
            return { 'treesitter', 'indent' }
        end,
        close_fold_kinds_for_ft = { 'imports', 'comment' }
    }
}

return M
