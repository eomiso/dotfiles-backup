local status_ok, lspconfig = pcall(require, 'lspconfig')

if not status_ok then
  vim.notify('There is no lspconfig')
  return
end

lspconfig.clangd.setup{
  cmd = { 'clangd' };
  filetypes = { "c", "cpp", "objc", "objcpp" };
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git")
}

local opts = {
  on_attach = require('user.lsp.handlers').on_attach,
  capabilities = require('user.lsp.handlers').capabilities,
}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'clangd' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = opts.on_attach,
    capabilities = opts.capabilities,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
  }
end

-- for python 
vim.cmd [[
  if has('nvim') && !empty($CONDA_PREFIX)
    let g:python3_host_prog = $CONDA_PREFIX . '/bin/python'
  endif
]]
require("user.lsp.lsp-installer")
require("user.lsp.handlers").setup()
