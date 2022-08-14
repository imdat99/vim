local status, null_ls = pcall(require, "null-ls")
local keymap = vim.keymap
if (not status) then return end
local formatting = null_ls.builtins.formatting
null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '#{m}\n(#{c})'
    }),
    formatting.eslint_d,
    null_ls.builtins.code_actions.statix,
    null_ls.builtins.completion.spell,
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd("autocmd BufWritePre <buffer>lua vim.lsp.buf.formatting() <CR>")
      -- vim.cmd("nnoremap <silent><buffer> <Leader>f :Prettier<CR>")
      -- format on save
      -- vim.cmd("autocmd BufWritePost <buffer> :Prettier<CR>")
    end
    --if client.resolved_capabilities.document_range_formatting then
     -- vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
    --end
  end,
})



-- nnoremap <leader>f mF:%!eslint_d --stdin --fix-to-stdout<CR>`F
-- " Autofix visual selection with eslint_d:
-- vnoremap <leader>f :!eslint_d --stdin --fix-to-stdout<CR>gv
-- autofix code-action

