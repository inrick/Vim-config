require('colorizer').setup()

local luasnip = require 'luasnip'

-- Automatic completion
local cmp = require 'cmp'
cmp.setup({
  preselect = cmp.PreselectMode.None,
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-6),
    ['<C-f>'] = cmp.mapping.scroll_docs(6),
    ['<C-Space>'] = cmp.mapping.complete(),
    --['<C-g>'] = cmp.mapping.abort(),
    ['<C-g>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ['<PageUp>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        for _ = 1, 6 do cmp.select_prev_item() end
      else
        fallback()
      end
    end),
    ['<PageDown>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        for _ = 1, 6 do cmp.select_next_item() end
      else
        fallback()
      end
    end),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  }, {
    { name = 'path' },
  })
})

-- Search and command completion
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  },
})
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities())

-- LSP
for key, cmd in pairs({
  ['<space>e'] = '<cmd>lua vim.diagnostic.open_float()<CR>',
  ['[d']       = '<cmd>lua vim.diagnostic.goto_prev()<CR>',
  [']d']       = '<cmd>lua vim.diagnostic.goto_next()<CR>',
  ['<space>q'] = '<cmd>lua vim.diagnostic.setloclist()<CR>',
}) do
  vim.api.nvim_set_keymap('n', key, cmd, { noremap = true, silent = false })
end

local on_attach = function(client, bufnr)
  -- TODO: only enable for whitelisted file types
  --if client.resolved_capabilities.document_formatting then
  --vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync({}, 500)]]
  --end

  -- Keys
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  for key, cmd in pairs({
    ['gD']        = '<cmd>lua vim.lsp.buf.declaration()<CR>',
    ['gd']        = '<cmd>lua vim.lsp.buf.definition()<CR>',
    ['<C-]>']     = '<cmd>lua vim.lsp.buf.definition()<CR>',
    ['gy']        = '<cmd>lua vim.lsp.buf.type_definition()<CR>',
    ['K']         = '<cmd>lua vim.lsp.buf.hover()<CR>',
    ['gi']        = '<cmd>lua vim.lsp.buf.implementation()<CR>',
    ['<C-k>']     = '<cmd>lua vim.lsp.buf.signature_help()<CR>',
    ['<space>f']  = '<cmd>lua vim.lsp.buf.format({})<CR>',
    ['<space>rn'] = '<cmd>lua vim.lsp.buf.rename()<CR>',
    ['<space>ca'] = '<cmd>lua vim.lsp.buf.code_action()<CR>',
    ['gr']        = '<cmd>lua vim.lsp.buf.references()<CR>',
  }) do
    vim.api.nvim_buf_set_keymap(
      bufnr, 'n', key, cmd, { noremap = true, silent = false })
  end
end

-- LSP config
local lspservers = {
  'clangd', 'gopls', 'pyright', 'ruff_lsp',
  rust_analyzer = {
    -- See https://rust-analyzer.github.io/manual.html
    settings = {
      ['rust-analyzer'] = {
        assist = {
          importGranularity = 'module',
          importPrefix = 'self',
        },
        cargo = {
          allFeatures = true,
          loadOutDirsFromCheck = true,
        },
        --checkOnSave = {
          --command = 'clippy',
        --},
        completion = {
          autoimport = {
            enable = true,
          },
        },
        procMacro = {
          enable = true,
        },
      },
    },
  },
  -- Lua LSP config, taken from
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua
  lua_ls = {
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
          path = runtime_path,
        },
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = {
          enable = false,
        },
      },
    },
  },
}
local lspconfig = require 'lspconfig'
for k, v in pairs(lspservers) do
  local name, settings
  if type(k) == 'number' then
    name = v
  else
    name = k
    settings = v.settings
  end
  lspconfig[name].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities,
    settings = settings,
  }
end

-- LSP icons
local lspkind = require 'lspkind'
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',
      maxwidth = 50,
    }),
  },
}

require('nvim-tree').setup({
  view = {
    width = 35,
  },
})

require('nvim-web-devicons').setup({
  color_icons = false,
})

require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'go', 'lua', 'c', 'python', 'rust',
  }
})

require('ibl').setup({
  enabled = true,
  indent = {
    char = '▏',
    highlight = { 'IndentBlanklineIndent' },
  },
  scope = {
    enabled = false,
    char = '▎',
  },
})
