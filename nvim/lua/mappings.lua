--------------------------
-- Keymaps and commands --
--------------------------

vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Easier ex mode navigation. Mostly taken from :help tcsh-style.
vim.keymap.set("c", "<C-A>",     "<Home>")
vim.keymap.set("c", "<C-F>",     "<Right>")
vim.keymap.set("c", "<C-B>",     "<Left>")
vim.keymap.set("c", "<C-D>",     "<Del>")
vim.keymap.set("c", "<Esc>b",    "<S-Left>")
vim.keymap.set("c", "<Esc>f",    "<S-Right>")
vim.keymap.set("c", "<Esc>p",    "<Up>")
vim.keymap.set("c", "<Esc>n",    "<Down>")
vim.keymap.set("c", "<Esc><BS>", "<C-W>")

vim.keymap.set({ "n", "v", "o" }, "j",      "gj")
vim.keymap.set({ "n", "v", "o" }, "k",      "gk")
vim.keymap.set({ "n", "v", "o" }, "gj",     "j")
vim.keymap.set({ "n", "v", "o" }, "gk",     "k")
vim.keymap.set({ "n", "v", "o" }, "<up>",   "<C-y>")
vim.keymap.set({ "n", "v", "o" }, "<down>", "<C-e>")

vim.keymap.set("n", "Q",          "gqip")
vim.keymap.set("v", "Q",          "gq")
vim.keymap.set("x", "p",          "pgvy")
vim.keymap.set("i", "<Del>",      "<C-O>x",              { silent = true })
vim.keymap.set("n", "<BS>",       ":nohlsearch<CR>",     { silent = true })
vim.keymap.set("n", "<F5>",       ":make! debug<CR>")
vim.keymap.set("n", "<F6>",       ":make! test<CR>")
vim.keymap.set("n", "<F7>",       ":make! run<CR>")
vim.keymap.set("n", "<F8>",       ":make!<CR>")
vim.keymap.set("n", "<leader>cd", ":cd %:p:h<CR>")
vim.keymap.set("n", "<leader>gt", ":vimgrep /TODO\\|FIXME\\|XXX/j %<CR>")
vim.keymap.set("n", "<leader>l",  ":Grep<space>")
vim.keymap.set("n", "<C-s>",      ":update<CR>")
vim.keymap.set("n", "<C-q>",      ":close<CR>")

-- Terminal mode bindings
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

local function toggle_hints()
  if vim.o.colorcolumn == "" then
    vim.opt.colorcolumn = "+1"
    vim.opt.list = true
  else
    vim.opt.colorcolumn = ""
    vim.opt.list = false
  end
end

vim.keymap.set("n", "<F2>", toggle_hints)

local function create_split_scratch(split)
  if split == 1 then
    vim.cmd("split")
  elseif split == 2 then
    vim.cmd("vsplit")
  end
  vim.cmd("enew")
  -- :help special-buffers
  vim.opt_local.buftype = "nofile"
  vim.opt_local.bufhidden = "hide"
  vim.opt_local.swapfile = false
end

vim.api.nvim_create_user_command("Scratch",  function() create_split_scratch(0) end, {})
vim.api.nvim_create_user_command("HScratch", function() create_split_scratch(1) end, {})
vim.api.nvim_create_user_command("VScratch", function() create_split_scratch(2) end, {})
vim.api.nvim_create_user_command("Hints", toggle_hints, {})
vim.api.nvim_create_user_command("RemoveTrailing", "%s/\\s\\+$//", {})
vim.api.nvim_create_user_command("O", ":!xdg-open %:p:h", {})
vim.api.nvim_create_user_command("T", "split | terminal", {})
vim.api.nvim_create_user_command("Format", function() vim.lsp.buf.format({ async = false }) end, {})
vim.api.nvim_create_user_command("Grep", "silent! grep! <args> | redraw!", { nargs = "+", complete = "file", bar = true })
vim.api.nvim_create_user_command("Sqlup", "%s/\\<\\(add\\|all\\|alter\\|and\\|any\\|array\\|as\\|asc\\|at\\|begin\\|between\\|break\\|by\\|cascade\\|case\\|cast\\|check\\|checkpoint\\|close\\|cluster\\|clustered\\|coalesce\\|collate\\|column\\|commit\\|compute\\|constraint\\|contains\\|containstable\\|continue\\|convert\\|create\\|cross\\|current\\|cursor\\|declare\\|default\\|define\\|delete\\|desc\\|distinct\\|drop\\|dump\\|else\\|end\\|enum\\|escape\\|except\\|exclude\\|exec\\|execute\\|exists\\|extract\\|false\\|fetch\\|following\\|for\\|foreign\\|from\\|full\\|function\\|goto\\|grant\\|group\\|grouping\\|groups\\|hash\\|having\\|if\\|ignore\\|in\\|index\\|inner\\|insert\\|intersect\\|interval\\|into\\|is\\|join\\|key\\|kill\\|left\\|like\\|limit\\|load\\|lookup\\|merge\\|new\\|no\\|not\\|null\\|nullif\\|nulls\\|of\\|off\\|offsets\\|on\\|open\\|option\\|or\\|order\\|outer\\|over\\|partition\\|plan\\|preceding\\|primary\\|procedure\\|range\\|recursive\\|references\\|replication\\|respect\\|restore\\|restrict\\|return\\|right\\|rollback\\|rollup\\|row\\|rowcount\\|rows\\|schema\\|select\\|set\\|some\\|struct\\|table\\|then\\|to\\|top\\|transaction\\|trigger\\|true\\|truncate\\|unbounded\\|union\\|unique\\|unnest\\|update\\|use\\|using\\|values\\|varying\\|view\\|when\\|where\\|while\\|window\\|with\\|within\\)\\>/\\U\\1/g", {})
