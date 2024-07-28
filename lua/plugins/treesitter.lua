local M = {
  "nvim-treesitter/nvim-treesitter",
  enabled = vim.g.os ~= "Windows",
  lazy = false,
  build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "javascript", "html" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}

return M
