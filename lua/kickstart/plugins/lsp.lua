-- NOTE: This is for changing the display of messages from lsp

--[[
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = true,
  update_in_insert = false,
  underline = true,
})
]]--
return {
  -- Test from guide
  vim.lsp.start_client({
    name = 'testing-lsp-config',
    cmd = {'lua-language-server'},
    root_dir = vim.fs.dirname(vim.fs.find({'pyproject.toml', 'setup.py'}, { upward = true })[1]),
  })

}

