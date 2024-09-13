local M = {
    "kevinhwang91/nvim-ufo",
    -- enabled = false,
    -- enabled = vim.g.os ~= "Windows",
    dependencies = {
        "kevinhwang91/promise-async"
    },
    -- lazy = false,
    event = {
        "BufReadPre", "BufNewFile", "BufEnter",
    },
    opts = {
        provider_selector = function(bufnr, filetype, buftype)
            return { 'treesitter', 'indent' }
        end,
        close_fold_kinds_for_ft = { 
            lua = { 'imports', 'comment' }
        }
    }
}

return M
