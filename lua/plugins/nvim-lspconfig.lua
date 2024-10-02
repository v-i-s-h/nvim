local M = {
    "neovim/nvim-lspconfig",
    -- enabled = false,
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "VonHeikemen/lsp-zero.nvim",
    },
    cmd = {
        "LspInfo",
        "LspInstall",
        "LspStart"
    },
    event = {
        "BufReadPre", "BufNewFile"
    },
    config = function()
        local lsp_zero = require("lsp-zero")

        local lsp_attach = function(client, bufnr)
            local opts = { buffer = bufnr }

            vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
            vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
            vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
            vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
            vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
            vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
            vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
        end

        lsp_zero.extend_lspconfig({
            sign_text = true,
            lsp_attach = lsp_attach,
            capabilities = require("cmp_nvim_lsp").default_capabilities()
        })

        require("mason-lspconfig").setup({
            ensure_installed = { "julials", "pylsp" },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            }
        })
    end
}

return M
