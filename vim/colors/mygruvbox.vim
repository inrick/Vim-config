" Vim colorscheme
"
" Colorscheme based on gruvbox palette. Expects the terminal's palette to be
" set to gruvbox, compare to gui colors to get an idea of what's intended.
"
hi clear
set background=light
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mygruvbox'

hi ColorColumn      ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi Comment          ctermfg=8    ctermbg=none cterm=none      guifg=#504945 guibg=#f9f5d7 gui=none
hi Conceal          ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi Constant         ctermfg=6    ctermbg=none cterm=none      guifg=#427b58 guibg=#f9f5d7 gui=none
hi lCursor          ctermfg=none ctermbg=none cterm=none      guifg=#f9f5d7 guibg=#000000 gui=none
hi Cursor           ctermfg=none ctermbg=none cterm=none      guifg=#f9f5d7 guibg=#000000 gui=none
hi CursorIM         ctermfg=none ctermbg=none cterm=none      guifg=#f9f5d7 guibg=#000000 gui=none
hi CursorColumn     ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi CursorLine       ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi DiffAdd          ctermfg=2    ctermbg=none cterm=none      guifg=#79740e guibg=#f9f5d7 gui=none
hi DiffChange       ctermfg=5    ctermbg=none cterm=none      guifg=#8f3f71 guibg=#f9f5d7 gui=none
hi DiffDelete       ctermfg=1    ctermbg=none cterm=none      guifg=#9d0006 guibg=#f9f5d7 gui=none
hi DiffText         ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi Directory        ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi EndOfBuffer      ctermfg=15   ctermbg=none cterm=none      guifg=#928374 guibg=#f9f5d7 gui=none
hi Error            ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi ErrorMsg         ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi FoldColumn       ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi Folded           ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi Identifier       ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi Ignore           ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi IncSearch        ctermfg=7    ctermbg=8    cterm=none      guifg=#ebdbb2 guibg=#504945 gui=none
hi LineNr           ctermfg=15   ctermbg=none cterm=none      guifg=#928374 guibg=#f9f5d7 gui=none
hi CursorLineNr     ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi MatchParen       ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi ModeMsg          ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi MoreMsg          ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi NonText          ctermfg=15   ctermbg=none cterm=none      guifg=#928374 guibg=#f9f5d7 gui=none
hi Normal           ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi NormalNC         ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi Pmenu            ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi PmenuSbar        ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi PmenuSel         ctermfg=7    ctermbg=8    cterm=none      guifg=#ebdbb2 guibg=#504945 gui=none
hi PmenuThumb       ctermfg=none ctermbg=8    cterm=none      guifg=#000000 guibg=#504945 gui=none
hi PreProc          ctermfg=8    ctermbg=none cterm=none      guifg=#504945 guibg=#f9f5d7 gui=none
hi Question         ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi QuickFixLine     ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi Search           ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi SignColumn       ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi Special          ctermfg=1    ctermbg=none cterm=none      guifg=#9d0006 guibg=#f9f5d7 gui=none
hi SpecialKey       ctermfg=1    ctermbg=none cterm=none      guifg=#9d0006 guibg=#f9f5d7 gui=none
hi SpellBad         ctermfg=none ctermbg=none cterm=underline guifg=#000000 guibg=#f9f5d7 gui=underline
hi SpellCap         ctermfg=none ctermbg=none cterm=underline guifg=#000000 guibg=#f9f5d7 gui=underline
hi SpellLocal       ctermfg=none ctermbg=none cterm=underline guifg=#000000 guibg=#f9f5d7 gui=underline
hi SpellRare        ctermfg=5    ctermbg=none cterm=underline guifg=#8f3f71 guibg=#f9f5d7 gui=underline
hi Statement        ctermfg=1    ctermbg=none cterm=none      guifg=#9d0006 guibg=#f9f5d7 gui=none
hi StatusLine       ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi StatusLineNC     ctermfg=15   ctermbg=7    cterm=none      guifg=#928374 guibg=#ebdbb2 gui=none
hi StatusLineTerm   ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi StatusLineTermNC ctermfg=15   ctermbg=7    cterm=none      guifg=#928374 guibg=#ebdbb2 gui=none
hi Substitute       ctermfg=15   ctermbg=none cterm=reverse   guifg=#000000 guibg=#928374 gui=none
hi TabLine          ctermfg=8    ctermbg=7    cterm=none      guifg=#504945 guibg=#ebdbb2 gui=none
hi TabLineFill      ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi TabLineSel       ctermfg=15   ctermbg=none cterm=reverse   guifg=#000000 guibg=#928374 gui=none
hi Terminal         ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi TermCursor       ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi TermCursorNC     ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi Title            ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi Todo             ctermfg=1    ctermbg=none cterm=none      guifg=#9d0006 guibg=#f9f5d7 gui=none
hi Type             ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi Underlined       ctermfg=none ctermbg=none cterm=underline guifg=#000000 guibg=#f9f5d7 gui=underline
hi VertSplit        ctermfg=15   ctermbg=none cterm=none      guifg=#928374 guibg=#f9f5d7 gui=none
hi Visual           ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi VisualNOS        ctermfg=none ctermbg=7    cterm=none      guifg=#000000 guibg=#ebdbb2 gui=none
hi WarningMsg       ctermfg=none ctermbg=none cterm=none      guifg=#000000 guibg=#f9f5d7 gui=none
hi Whitespace       ctermfg=15   ctermbg=none cterm=none      guifg=#928374 guibg=#f9f5d7 gui=none
hi WildMenu         ctermfg=15   ctermbg=none cterm=reverse   guifg=#000000 guibg=#928374 gui=none

" Curiously, diff.vim links groups below to Identifier/Special/PreProc. Why?
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange
