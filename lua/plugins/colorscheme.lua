-- local M = {
--   "catppuccin/nvim",
--   lazy = false,
--   name = "catppuccin",
--   opts = {
--     flavour = "mocha",
--     integrations = {
--       aerial = true,
--       alpha = true,
--       cmp = true,
--       dashboard = true,
--       flash = true,
--       grug_far = true,
--       gitsigns = true,
--       headlines = true,
--       illuminate = true,
--       indent_blankline = { enabled = true },
--       leap = true,
--       lsp_trouble = true,
--       mason = true,
--       markdown = true,
--       mini = true,
--       native_lsp = {
--         enabled = true,
--         underlines = {
--           errors = { "undercurl" },
--           hints = { "undercurl" },
--           warnings = { "undercurl" },
--           information = { "undercurl" },
--         },
--       },
--       navic = { enabled = true, custom_bg = "lualine" },
--       neotest = true,
--       neotree = true,
--       noice = true,
--       notify = true,
--       semantic_tokens = true,
--       telescope = true,
--       treesitter = true,
--       treesitter_context = true,
--       which_key = true,
--     },
--   },
-- }

local M = {
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1000,
  name = "vscode",
  opts = function ()
    local c = require("vscode.colors").get_colors()
    return {
      -- Set style
      style = 'dark',

      -- Enable transparent background
      transparent = false,
      -- transparent = true,

      -- Enable italic comment
      italic_comments = true,

      -- Disable nvim-tree background color
      disable_nvimtree_bg = true,

      -- Override colors (see ./lua/vscode/colors.lua)
      color_overrides = {
          -- vscLineNumber = '#FFFFFF',
          vscLineNumber = '#808080'
      },

      -- Override highlight groups (see ./lua/vscode/theme.lua)
      group_overrides = {
          -- this supports the same val table as vim.api.nvim_set_hl
          -- use colors from this colorscheme by requiring vscode.colors!
          Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
      }
    }
  end,
  config = function ()
    vim.cmd("colorscheme vscode")
  end,
  -- enabled = false
}

return M
