local M = {
    "lukas-reineke/virt-column.nvim", 
    -- enabled = false,
    event = {
        "BufReadPre", "BufNewFile", "BufEnter",
    },
    opts = {
      char = { "┆" },
      virtcolumn = "80, 92, 120",
      highlight = { "NonText" },
    },
}

return M

