vim.opt.compatible = false -- Neovim is always nocompatible
vim.opt.modeline = false   -- Security measure, do not apply file specific settings
vim.opt.encoding = "utf-8"
vim.opt.ruler = false
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.laststatus = 2
vim.opt.statusline = "%f %(%M %)%(%R %)%(  %{&ft} %)%(%{&paste?'  PASTE':''}%)%= %l,%c"
vim.opt.history = 100
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.signcolumn = "number"
vim.opt.showmatch = false
vim.opt.mouse = "a"
vim.opt.scrolloff = 3
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 8
vim.opt.virtualedit = "all"
vim.opt.list = false
vim.opt.listchars = { tab = "→ ", trail = "~", nbsp = "+" }
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "→"
vim.opt.joinspaces = false
vim.opt.textwidth = 79
vim.opt.formatoptions:append({ l = true, j = true, r = true })
vim.opt.display:append("lastline")
vim.opt.foldenable = false
vim.opt.foldmethod = "manual"
vim.opt.foldnestmax = 2
vim.opt.wildmenu = true
vim.opt.wildmode = { "list:longest", "full" }
vim.opt.wildignorecase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tags = "./tags;"
vim.opt.completeopt = { "menuone", "preview" }
vim.opt.omnifunc = "syntaxcomplete#Complete"
vim.opt.clipboard = "unnamedplus"
vim.opt.hidden = true
vim.opt.updatetime = 1000
vim.opt.inccommand = "nosplit"

vim.cmd.syntax("on")
vim.cmd.filetype("plugin indent on")
vim.opt.termguicolors = true
vim.opt.visualbell = false
vim.opt.background = "light"
vim.cmd.colorscheme("mygruvbox")

if vim.fn.executable("rg") == 1 then
  vim.opt.grepprg = "rg -i --vimgrep $*"
  vim.opt.grepformat = "%f:%l:%c:%m"
end

-- Open quickfix/location window across the bottom after running a command
-- populating them
vim.api.nvim_create_autocmd("QuickFixCmdPost", {
  pattern = { "[^l]*" },
  command = "botright cwindow",
})
vim.api.nvim_create_autocmd("QuickFixCmdPost", {
  pattern = { "l*" },
  command = "botright lwindow",
})

-- Builtin plugin configuration
vim.g.netrw_liststyle = 3  -- tree
vim.g.netrw_usetab = 1     -- enable c-tab
vim.g.ftplugin_sql_omni_key = '<C-K>'

-- Hacky matching brace insertion
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "go", "rust" },
  callback = function()
    vim.keymap.set("i", "{<S-CR>", "{<CR>}<Esc>ko", { buffer = true })
  end
})

vim.cmd.helptags("ALL")

require("mappings")
require("plugins")
