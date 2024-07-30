local M = {
    "kevinhwang91/nvim-ufo",
    dependencies = {
        "kevinhwang91/promise-async"
    },
    -- enabled = vim.g.os ~= "Windows",
    lazy = false,
    opts = {
        provider_selector = function(bufnr, filetype, buftype)
            return {'treesitter', 'indent'}
        end,
        close_fold_kinds_for_ft = { 'imports', 'comment' }
    }
}

return M

