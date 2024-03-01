vim.opt_local.spelllang = { "en", "sv" }
vim.opt_local.spell = false
vim.opt_local.linebreak = true
vim.opt_local.suffixes:append({ ".fls", ".fdb_latexmk", ".synctex.gz", ".pdf" })

vim.cmd("syntax spell toplevel")
--vim.g.tex_comment_nospell = true
vim.g.tex_fast = ""

local function view_pdf()
  local cmd = '!okular --unique %<.pdf\\#src:' .. vim.fn.line('.') .. vim.fn.expand('%:p') .. ' > /dev/null 2>&1 &'
  vim.fn.execute(cmd)
end

-- 'ko' is used instead of 'O' below for correct indentation
vim.keymap.set("i", "<F6>", "<Esc>:s/\\([\\t ]*\\)\\(.*\\)/\\1\\\\begin{\\2}\\r\\1\\\\end{\\2}<CR>:let @/ = \"\"<CR>ko", { buffer = true })
vim.keymap.set("i", "<C-S-Up>",   "^{}<Left>", { buffer = true })
vim.keymap.set("i", "<C-S-Down>", "_{}<Left>", { buffer = true })
vim.keymap.set("n", "<F6>", "<Plug>LatexChangeEnv", { buffer = true })
vim.keymap.set("n", "<F7>", "<Plug>LatexWrapSelection", { buffer = true })
vim.keymap.set("n", "<S-F7>", "<Plug>LatexEnvWrapSelection", { buffer = true })

-- Add the following to okular for inverse search:
-- gvim --remote +%l "+normal %c|" %f
-- Or, for neovim (dropped column since it seems to have no effect):
-- nvim --remote-silent %f -c %l
vim.keymap.set("n", "<leader>v", view_pdf, { silent = true, buffer = true })

vim.g.LatexBox_viewer = 'okular --unique'
vim.g.LatexBox_output_type = 'pdf'
vim.g.LatexBox_latexmk_options = '-pvc -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode -shell-escape"'
-- Use completion also for cleveref references
vim.g.LatexBox_ref_pattern = '\\C\\\\v\\?\\(c\\|C\\|eq\\|page\\)\\?ref\\*\\?\\_\\s*{'
