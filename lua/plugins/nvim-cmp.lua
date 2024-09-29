local M = {
    "hrsh7th/nvim-cmp",
    -- enabled = false,
    event = "InsertEnter",
    dependencies = {
        "L3MON4D3/LuaSnip",
        "kdheepak/cmp-latex-symbols",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-emoji"
    },
    config = function()
        local cmp = require("cmp")

        cmp.setup({
            sources = {
                { name = "nvim_lsp" },
                {
                    name = "latex_symbols",
                    option = {
                        strategy = 1
                    },
                },
                { name = "buffer", keyword_length = 2 },
                { name = "path", keyword_length = 2 },
                { name = "emoji" }
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.close(),
                ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                ["<C-d>"] = cmp.mapping.scroll_docs(4),
                ["<CR>"] = cmp.mapping.confirm({select=true})
            }),
            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body)
                end,
            },
        })
    end
}

return M
