vim.o.background = 'dark'

local c = require('vscode.colors').get_colors()

require("vscode").setup({
  transparent = true,
  italic_coments = true,
  disable_nvimtree_bg = true,

  color_overrides = {
    vscLineNumber = '#777777'
  },

  group_overrides = {
    Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true }
  }
})

function RemoveBackground()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
end

RemoveBackground()
require('vscode').load()
