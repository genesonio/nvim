require("transparent").setup({
  extra_groups = {
    "NormalFloat",
    "NvimTreeNormal"
  }
})

require("transparent").clear_prefix('NvimTree')

vim.keymap.set("n", "<leader>tt", function() require("transparent").toggle() end)
