" Vim colorscheme
"
" A quieter colorscheme based on the gruvbox palette. I like the gruvbox colors
" but found the vim theme a bit too noisy and made this alternative. It might
" need to be brought down even more, time will tell.
"
hi clear
set background=dark
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mygruvbox-dark'

hi ColorColumn      guifg=fg      guibg=#3c3836 gui=NONE
hi Comment          guifg=#d5c4a1 guibg=NONE    gui=NONE
hi Conceal          guifg=fg      guibg=NONE    gui=NONE
hi Constant         guifg=#8ec07c guibg=NONE    gui=NONE
hi Number           guifg=#d3869b guibg=NONE    gui=NONE
hi String           guifg=#8ec07c guibg=NONE    gui=NONE
hi lCursor          guifg=NONE    guibg=NONE    gui=NONE
hi Cursor           guifg=NONE    guibg=NONE    gui=NONE
hi CursorIM         guifg=NONE    guibg=NONE    gui=NONE
hi CursorColumn     guifg=fg      guibg=#3c3836 gui=NONE
hi CursorLine       guifg=fg      guibg=#3c3836 gui=NONE
hi DiffAdd          guifg=#b8bb26 guibg=NONE    gui=reverse
hi DiffChange       guifg=#d3869b guibg=NONE    gui=reverse
hi DiffDelete       guifg=#fb4934 guibg=NONE    gui=reverse
hi DiffText         guifg=fg      guibg=NONE    gui=reverse
hi Directory        guifg=fg      guibg=NONE    gui=NONE
hi EndOfBuffer      guifg=#ebdbb2 guibg=NONE    gui=NONE
hi Error            guifg=fg      guibg=NONE    gui=NONE
hi ErrorMsg         guifg=fg      guibg=NONE    gui=NONE
hi FoldColumn       guifg=fg      guibg=NONE    gui=NONE
hi Folded           guifg=fg      guibg=#3c3836 gui=NONE
hi Identifier       guifg=fg      guibg=NONE    gui=NONE
hi Ignore           guifg=fg      guibg=NONE    gui=NONE
hi IncSearch        guifg=#3c3836 guibg=#d5c4a1 gui=NONE
hi LineNr           guifg=#ebdbb2 guibg=NONE    gui=NONE
hi CursorLineNr     guifg=fg      guibg=NONE    gui=NONE
hi MatchParen       guifg=fg      guibg=#3c3836 gui=NONE
hi ModeMsg          guifg=fg      guibg=NONE    gui=NONE
hi MoreMsg          guifg=fg      guibg=NONE    gui=NONE
hi NonText          guifg=#ebdbb2 guibg=NONE    gui=NONE
hi Normal           guifg=#fbf1c7 guibg=#282828 gui=NONE
hi NormalFloat      guifg=fg      guibg=#3c3836 gui=NONE
hi NormalNC         guifg=fg      guibg=NONE    gui=NONE
hi Pmenu            guifg=fg      guibg=#3c3836 gui=NONE
hi PmenuSbar        guifg=fg      guibg=#3c3836 gui=NONE
hi PmenuSel         guifg=#3c3836 guibg=#d5c4a1 gui=NONE
hi PmenuThumb       guifg=fg      guibg=#d5c4a1 gui=NONE
hi PreProc          guifg=#d5c4a1 guibg=NONE    gui=NONE
hi Question         guifg=fg      guibg=NONE    gui=NONE
hi QuickFixLine     guifg=fg      guibg=#3c3836 gui=NONE
hi Search           guifg=fg      guibg=#3c3836 gui=NONE
hi SignColumn       guifg=fg      guibg=#3c3836 gui=NONE
hi Special          guifg=#fb4934 guibg=NONE    gui=NONE
hi SpecialKey       guifg=#fb4934 guibg=NONE    gui=NONE
hi SpellBad         guifg=NONE    guibg=NONE    gui=undercurl
hi SpellCap         guifg=NONE    guibg=NONE    gui=undercurl
hi SpellLocal       guifg=NONE    guibg=NONE    gui=undercurl
hi SpellRare        guifg=#d3869b guibg=NONE    gui=undercurl
hi Statement        guifg=#fb4934 guibg=NONE    gui=NONE
hi StatusLine       guifg=fg      guibg=#3c3836 gui=NONE
hi StatusLineNC     guifg=#ebdbb2 guibg=#3c3836 gui=NONE
hi StatusLineTerm   guifg=fg      guibg=#3c3836 gui=NONE
hi StatusLineTermNC guifg=#ebdbb2 guibg=#3c3836 gui=NONE
hi Substitute       guifg=fg      guibg=#ebdbb2 gui=NONE
hi TabLine          guifg=#d5c4a1 guibg=#3c3836 gui=NONE
hi TabLineFill      guifg=fg      guibg=#3c3836 gui=NONE
hi TabLineSel       guifg=#3c3836 guibg=#ebdbb2 gui=NONE
hi Terminal         guifg=fg      guibg=NONE    gui=NONE
hi TermCursor       guifg=fg      guibg=NONE    gui=reverse
hi TermCursorNC     guifg=fg      guibg=NONE    gui=NONE
hi Title            guifg=fg      guibg=NONE    gui=NONE
hi Todo             guifg=#fb4934 guibg=NONE    gui=NONE
hi Type             guifg=fg      guibg=NONE    gui=NONE
hi Underlined       guifg=fg      guibg=NONE    gui=underline
hi VertSplit        guifg=#ebdbb2 guibg=NONE    gui=NONE
hi Visual           guifg=fg      guibg=#3c3836 gui=NONE
hi VisualNOS        guifg=fg      guibg=#3c3836 gui=NONE
hi WarningMsg       guifg=fg      guibg=NONE    gui=NONE
hi Whitespace       guifg=#ebdbb2 guibg=NONE    gui=NONE
hi WildMenu         guifg=#ebdbb2 guibg=bg      gui=reverse

" Curiously, diff.vim links groups below to Identifier/Special/PreProc. Why?
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange

" LSP
hi DiagnosticError          guifg=#fb4934 guibg=NONE    gui=NONE
hi DiagnosticSignError      guifg=#fb4934 guibg=#3c3836 gui=NONE
hi DiagnosticWarn           guifg=#fabd2f guibg=NONE    gui=NONE
hi DiagnosticSignWarn       guifg=#fabd2f guibg=#3c3836 gui=NONE
hi DiagnosticInfo           guifg=#458588 guibg=NONE    gui=NONE
hi DiagnosticSignInfo       guifg=#458588 guibg=#3c3836 gui=NONE
hi DiagnosticHint           guifg=#458588 guibg=NONE    gui=NONE
hi DiagnosticSignHint       guifg=#458588 guibg=#3c3836 gui=NONE
hi LspReferenceText         guifg=#fabd2f guibg=NONE    gui=NONE
hi LspReferenceRead         guifg=#fabd2f guibg=NONE    gui=NONE
hi LspReferenceWrite        guifg=#fabd2f guibg=NONE    gui=NONE

" Don't highlight the code different, it becomes too difficult to read.
hi DiagnosticUnderlineError guifg=NONE    guibg=NONE    gui=NONE
hi DiagnosticUnderlineWarn  guifg=NONE    guibg=NONE    gui=NONE
hi DiagnosticUnderlineInfo  guifg=NONE    guibg=NONE    gui=NONE
hi DiagnosticUnderlineHint  guifg=NONE    guibg=NONE    gui=NONE

" Language additions
hi! link luaFunction Special

" Plugins
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
hi! link NvimTreeWindowPicker     TabLineSel

hi! link FocusedSymbol            TabLine

hi IndentBlanklineIndent          guifg=#3c3836 guibg=NONE gui=NONE
