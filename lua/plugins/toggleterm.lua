local M = {
  'akinsho/toggleterm.nvim',
  version = "*",
  lazy = false,
  config = function()
    require("toggleterm").setup({
        size = 10,
        start_in_insert = true,
        shading_factor = 2,
        direction = "float",
        float_opts = {
            border = "curved",
            highlights = {
                border = "Normal",
                background = "Normal",
            },
        },
    }) 

  end,
}

return M

