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

hi ColorColumn      ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi Comment          ctermfg=8    ctermbg=NONE cterm=NONE      guifg=#504945 guibg=NONE    gui=NONE
hi Conceal          ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi Constant         ctermfg=6    ctermbg=NONE cterm=NONE      guifg=#427b58 guibg=NONE    gui=NONE
hi lCursor          ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi Cursor           ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi CursorIM         ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=NONE    guibg=NONE    gui=NONE
hi CursorColumn     ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi CursorLine       ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi DiffAdd          ctermfg=2    ctermbg=NONE cterm=reverse   guifg=#79740e guibg=NONE    gui=reverse
hi DiffChange       ctermfg=5    ctermbg=NONE cterm=reverse   guifg=#8f3f71 guibg=NONE    gui=reverse
hi DiffDelete       ctermfg=1    ctermbg=NONE cterm=reverse   guifg=#9d0006 guibg=NONE    gui=reverse
hi DiffText         ctermfg=7    ctermbg=NONE cterm=reverse   guifg=fg      guibg=NONE    gui=reverse
hi Directory        ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi EndOfBuffer      ctermfg=15   ctermbg=NONE cterm=NONE      guifg=#928374 guibg=NONE    gui=NONE
hi Error            ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi ErrorMsg         ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi FoldColumn       ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi Folded           ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi Identifier       ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi Ignore           ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi IncSearch        ctermfg=7    ctermbg=8    cterm=NONE      guifg=#ebdbb2 guibg=#504945 gui=NONE
hi LineNr           ctermfg=15   ctermbg=NONE cterm=NONE      guifg=#928374 guibg=NONE    gui=NONE
hi CursorLineNr     ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi MatchParen       ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi ModeMsg          ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi MoreMsg          ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi NonText          ctermfg=15   ctermbg=NONE cterm=NONE      guifg=#928374 guibg=NONE    gui=NONE
hi Normal           ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=#000000 guibg=#f9f5d7 gui=NONE
hi NormalFloat      ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi NormalNC         ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi Pmenu            ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi PmenuSbar        ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi PmenuSel         ctermfg=8    ctermbg=NONE cterm=reverse   guifg=#ebdbb2 guibg=#504945 gui=NONE
hi PmenuThumb       ctermfg=NONE ctermbg=8    cterm=NONE      guifg=fg      guibg=#504945 gui=NONE
hi PreProc          ctermfg=8    ctermbg=NONE cterm=NONE      guifg=#504945 guibg=NONE    gui=NONE
hi Question         ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi QuickFixLine     ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi Search           ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi SignColumn       ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi Special          ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#9d0006 guibg=NONE    gui=NONE
hi SpecialKey       ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#9d0006 guibg=NONE    gui=NONE
hi SpellBad         ctermfg=NONE ctermbg=NONE cterm=underline guifg=fg      guibg=NONE    gui=underline
hi SpellCap         ctermfg=NONE ctermbg=NONE cterm=underline guifg=fg      guibg=NONE    gui=underline
hi SpellLocal       ctermfg=NONE ctermbg=NONE cterm=underline guifg=fg      guibg=NONE    gui=underline
hi SpellRare        ctermfg=5    ctermbg=NONE cterm=underline guifg=#8f3f71 guibg=NONE    gui=underline
hi Statement        ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#9d0006 guibg=NONE    gui=NONE
hi StatusLine       ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi StatusLineNC     ctermfg=15   ctermbg=7    cterm=NONE      guifg=#928374 guibg=#ebdbb2 gui=NONE
hi StatusLineTerm   ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi StatusLineTermNC ctermfg=15   ctermbg=7    cterm=NONE      guifg=#928374 guibg=#ebdbb2 gui=NONE
hi Substitute       ctermfg=15   ctermbg=NONE cterm=reverse   guifg=fg      guibg=#928374 gui=NONE
hi TabLine          ctermfg=8    ctermbg=7    cterm=NONE      guifg=#504945 guibg=#ebdbb2 gui=NONE
hi TabLineFill      ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi TabLineSel       ctermfg=15   ctermbg=NONE cterm=reverse   guifg=fg      guibg=#928374 gui=NONE
hi Terminal         ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi TermCursor       ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi TermCursorNC     ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi Title            ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi Todo             ctermfg=1    ctermbg=NONE cterm=NONE      guifg=#9d0006 guibg=NONE    gui=NONE
hi Type             ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi Underlined       ctermfg=NONE ctermbg=NONE cterm=underline guifg=fg      guibg=NONE    gui=underline
hi VertSplit        ctermfg=15   ctermbg=NONE cterm=NONE      guifg=#928374 guibg=NONE    gui=NONE
hi Visual           ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi VisualNOS        ctermfg=NONE ctermbg=7    cterm=NONE      guifg=fg      guibg=#ebdbb2 gui=NONE
hi WarningMsg       ctermfg=NONE ctermbg=NONE cterm=NONE      guifg=fg      guibg=NONE    gui=NONE
hi Whitespace       ctermfg=15   ctermbg=NONE cterm=NONE      guifg=#928374 guibg=NONE    gui=NONE
hi WildMenu         ctermfg=15   ctermbg=NONE cterm=reverse   guifg=#928374 guibg=bg      gui=reverse

" Curiously, diff.vim links groups below to Identifier/Special/PreProc. Why?
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange

hi! link luaFunction Special

hi! link NvimTreeExecFile         Special
hi! link NvimTreeSpecialFile      Special
hi! link NvimTreeRootFolder       LineNr
hi! link NvimTreeFolderIcon       LineNr
hi! link NvimTreeIndentMarker     LineNr
hi! link NvimTreeGitDirty         LineNr
hi! link NvimTreeGitStaged        LineNr
hi! link NvimTreeGitMerge         LineNr
hi! link NvimTreeGitRenamed       LineNr
hi! link NvimTreeGitNew           LineNr
hi! link NvimTreeGitDeleted       LineNr
hi! link NvimTreeSymlink          Normal
hi! link NvimTreeFolderName       Normal
hi! link NvimTreeEmptyFolderName  Normal
hi! link NvimTreeOpenedFolderName Normal
hi! link NvimTreeOpenedFile       Normal
hi! link NvimTreeSpecialFile      Normal
hi! link NvimTreeImageFile        Normal
