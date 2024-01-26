return {
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        theme = 'vscode',
        component_separators = '|',
        section_separators = '',
        offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },
        extensions = {"trouble", "fugitive", "lazy"},
      },
      sections = {
        lualine_a = {
          {
            'filename',
            path = 1,
            symbols = {
              modified = '~~> ● <~~'
            },
          },
        },
        lualine_c = {
          'none'
        },
        lualine_x = {
          'codeium'
        }
      },
    },
  },

  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  }
}
