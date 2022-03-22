require('colorizer').setup()

-- LSP
for key, cmd in pairs({
  ['<space>e'] = '<cmd>lua vim.diagnostic.open_float()<CR>',
  ['[d']       = '<cmd>lua vim.diagnostic.goto_prev()<CR>',
  [']d']       = '<cmd>lua vim.diagnostic.goto_next()<CR>',
  ['<space>q'] = '<cmd>lua vim.diagnostic.setloclist()<CR>',
}) do
  vim.api.nvim_set_keymap('n', key, cmd, { noremap=true, silent=false })
end

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  for key, cmd in pairs({
    ['gD']        = '<cmd>lua vim.lsp.buf.declaration()<CR>',
    ['gd']        = '<cmd>lua vim.lsp.buf.definition()<CR>',
    ['<C-]>']     = '<cmd>lua vim.lsp.buf.definition()<CR>',
    ['gy']        = '<cmd>lua vim.lsp.buf.type_definition()<CR>',
    ['K']         = '<cmd>lua vim.lsp.buf.hover()<CR>',
    ['gi']        = '<cmd>lua vim.lsp.buf.implementation()<CR>',
    ['<C-k>']     = '<cmd>lua vim.lsp.buf.signature_help()<CR>',
    ['<space>f']  = '<cmd>lua vim.lsp.buf.formatting_sync({}, 1000)<CR>',
    ['<space>rn'] = '<cmd>lua vim.lsp.buf.rename()<CR>',
    ['gr']        = '<cmd>lua vim.lsp.buf.references()<CR>',
  }) do
    vim.api.nvim_buf_set_keymap(
      bufnr, 'n', key, cmd, { noremap=true, silent=false })
  end
end

for _, s in ipairs({ 'gopls' }) do
  require('lspconfig')[s].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
  }
end

-- LSP icons
require('lspkind').init({
  mode = 'symbol_text',
  preset = 'default',
  symbol_map = {
    Text = "",
    Method = "",
    Function = "",
    Constructor = "",
    Field = "ﰠ",
    Variable = "",
    Class = "ﴯ",
    Interface = "",
    Module = "",
    Property = "ﰠ",
    Unit = "塞",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "פּ",
    Event = "",
    Operator = "",
    TypeParameter = "",
  },
})

require('nvim-tree').setup({
  view = {
    width = 35,
  },
})
