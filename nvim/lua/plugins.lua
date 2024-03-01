--------------------------
-- Plugin configuration --
--------------------------

vim.g.go_def_mapping_enabled = 0
vim.g.go_fmt_command = "goimports"
vim.g.go_fmt_experimental = 1
vim.g.go_doc_max_height = 40
vim.g.go_code_completion_enabled = 0
vim.g.go_highlight_diagnostic_errors = 0
vim.g.NERDDefaultAlign = "left"

vim.keymap.set("n",          "<F4>",             ":NvimTreeToggle<CR>",              { silent = true })
vim.keymap.set("n",          "-",                ":NvimTreeFocus<CR>",               { silent = true })
vim.keymap.set("n",          "<leader>b",        ":Buffers<CR>")
vim.keymap.set("n",          "<leader>f",        ":Files<CR>")
vim.keymap.set("n",          "<C-p>",            ":GFiles -c -o --exclude-standard<CR>")
vim.keymap.set("n",          "<leader>gb",       ":Git blame<CR>")
vim.keymap.set("n",          "<leader>gc",       ":Git commit<CR>")
vim.keymap.set("n",          "<leader>gd",       ":Gdiffsplit<CR>")
vim.keymap.set("n",          "<leader>gs",       ":Git<CR>")
vim.keymap.set({ "n", "v" }, "<leader>r",        "<Plug>NERDCommenterComment",       { remap = true })
vim.keymap.set({ "n", "v" }, "<leader>t",        "<Plug>NERDCommenterUncomment",     { remap = true })
vim.keymap.set({ "n", "v" }, "<C-_>",            "<Plug>NERDCommenterToggle",        { remap = true })
vim.keymap.set({ "n", "v" }, "<C-/>",            "<Plug>NERDCommenterToggle",        { remap = true })
vim.keymap.set({ "n", "v" }, "<leader>a=",       ":Tabularize /=<CR>",               { remap = true })
vim.keymap.set({ "n", "v" }, "<leader>a,",       ":Tabularize /,\\zs/l0l1<CR>",      { remap = true })
vim.keymap.set({ "n", "v" }, "<leader>a:",       ":Tabularize /:\\zs/l0l1<CR>",      { remap = true })
vim.keymap.set({ "n", "v" }, "<leader>a;",       ":Tabularize /;\\zs/l0l1<CR>",      { remap = true })
vim.keymap.set({ "n", "v" }, "<leader>a<space>", ":Tabularize /\\S\\ \\zs/l0l1<CR>", { remap = true })

require("colorizer").setup()

local luasnip = require("luasnip")

-- Automatic completion
local cmp = require("cmp")
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
    ["<C-b>"] = cmp.mapping.scroll_docs(-6),
    ["<C-f>"] = cmp.mapping.scroll_docs(6),
    ["<C-Space>"] = cmp.mapping.complete(),
    --["<C-g>"] = cmp.mapping.abort(),
    ["<C-g>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
    ["<PageUp>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        for _ = 1, 6 do cmp.select_prev_item() end
      else
        fallback()
      end
    end),
    ["<PageDown>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        for _ = 1, 6 do cmp.select_next_item() end
      else
        fallback()
      end
    end),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
  }, {
    { name = "buffer" },
  }, {
    { name = "path" },
  })
})

-- Search and command completion
cmp.setup.cmdline("/", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" }
  },
})
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" }
  }, {
    { name = "cmdline" }
  })
})

local capabilities = require("cmp_nvim_lsp").default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
    for key, fn in pairs({
      ["<space>e"]  = vim.diagnostic.open_float,
      ["[d"]        = vim.diagnostic.goto_prev,
      ["]d"]        = vim.diagnostic.goto_next,
      ["<space>q"]  = vim.diagnostic.setloclist,
      ["gD"]        = vim.lsp.buf.declaration,
      ["gd"]        = vim.lsp.buf.definition,
      ["<C-]>"]     = vim.lsp.buf.definition,
      ["gy"]        = vim.lsp.buf.type_definition,
      ["K"]         = vim.lsp.buf.hover,
      ["gi"]        = vim.lsp.buf.implementation,
      ["<C-k>"]     = vim.lsp.buf.signature_help,
      ["<space>f"]  = function() vim.lsp.buf.format({ async = false }) end,
      ["<space>rn"] = vim.lsp.buf.rename,
      ["<space>ca"] = vim.lsp.buf.code_action,
      ["gr"]        = vim.lsp.buf.references,
    }) do
      vim.keymap.set("n", key, fn, {
        buffer = bufnr, noremap = true, silent = false,
      })
    end
  end,
})

-- Format these file types before write.
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.rs" },
  callback = function()
    vim.lsp.buf.format({ timeout_ms = 500, async = false })
  end,
})

-- LSP config
local lspservers = {
  "clangd", "gopls", "pyright", "ruff_lsp",
  rust_analyzer = {
    -- See https://rust-analyzer.github.io/manual.html
    settings = {
      ["rust-analyzer"] = {
        assist = {
          importGranularity = "module",
          importPrefix = "self",
        },
        cargo = {
          allFeatures = true,
          loadOutDirsFromCheck = true,
        },
        --checkOnSave = {
          --command = "clippy",
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
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#lua_ls
  lua_ls = {
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
        },
        workspace = {
          checkThirdParty = false,
          library = {
            vim.env.VIMRUNTIME,
            vim.env.VIMRUNTIME .. "/lua",
          },
        },
        telemetry = {
          enable = false,
        },
      },
    },
  },
}

local lspconfig = require("lspconfig")
for k, v in pairs(lspservers) do
  local name, settings
  if type(k) == "number" then
    name = v
  else
    name = k
    settings = v.settings
  end
  lspconfig[name].setup {
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities,
    settings = settings,
  }
end

-- LSP icons
local lspkind = require("lspkind")
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text",
      maxwidth = 50,
    }),
  },
}

require("nvim-tree").setup({
  view = {
    width = 35,
  },
})

require("nvim-web-devicons").setup({
  color_icons = false,
})

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "go", "lua", "c", "python", "rust",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

require("ibl").setup({
  enabled = true,
  indent = {
    char = "▏",
    highlight = { "IndentBlanklineIndent" },
  },
  scope = {
    enabled = false,
    char = "▎",
  },
  exclude = {
    filetypes = {
      "conf",
      "haskell",
      "make",
      "ocaml",
    },
    buftypes = {},
  },
})
