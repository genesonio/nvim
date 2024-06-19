return {
  'jose-elias-alvarez/null-ls.nvim',
  'MunifTanjim/prettier.nvim',
  config = function() 
    require('null-ls').setup({
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.keymap.set("n", "<Leader>f", function()
            vim.lsp.buf.format({ bufnr = bufnr, async = true })
            vim.cmd.update()
          end, { buffer = bufnr, desc = "[lsp] format", silent = true, noremap = true })
        end
      end,
    })

    require('prettier').setup({
      bin = 'prettierd',
      filetypes = {
        'css',
        'graphql',
        'html',
        'javascript',
        'javascriptreact',
        'json',
        'less',
        'markdown',
        'scss',
        'typescript',
        'typescriptreact',
        'yaml',
      },
    })
  end,
}
