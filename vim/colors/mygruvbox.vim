" Vim colorscheme
"
" A quieter colorscheme based on the gruvbox palette. I like the gruvbox colors
" but found the vim theme a bit too noisy and made this alternative. It might
" need to be brought down even more, time will tell.
"
hi clear
set background=light
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'mygruvbox'

hi ColorColumn      guifg=fg      guibg=#ebdbb2 gui=NONE
hi Comment          guifg=#504945 guibg=NONE    gui=NONE
hi Conceal          guifg=fg      guibg=NONE    gui=NONE
hi Constant         guifg=#427b58 guibg=NONE    gui=NONE
hi Number           guifg=#8f3f71 guibg=NONE    gui=NONE
hi String           guifg=#427b58 guibg=NONE    gui=NONE
hi lCursor          guifg=NONE    guibg=NONE    gui=NONE
hi Cursor           guifg=NONE    guibg=NONE    gui=NONE
hi CursorIM         guifg=NONE    guibg=NONE    gui=NONE
hi CursorColumn     guifg=fg      guibg=#ebdbb2 gui=NONE
hi CursorLine       guifg=fg      guibg=#ebdbb2 gui=NONE
hi DiffAdd          guifg=#79740e guibg=NONE    gui=reverse
hi DiffChange       guifg=#8f3f71 guibg=NONE    gui=reverse
hi DiffDelete       guifg=#9d0006 guibg=NONE    gui=reverse
hi DiffText         guifg=fg      guibg=NONE    gui=reverse
hi Directory        guifg=fg      guibg=NONE    gui=NONE
hi EndOfBuffer      guifg=#928374 guibg=NONE    gui=NONE
hi Error            guifg=fg      guibg=NONE    gui=NONE
hi ErrorMsg         guifg=fg      guibg=NONE    gui=NONE
hi FoldColumn       guifg=fg      guibg=NONE    gui=NONE
hi Folded           guifg=fg      guibg=#ebdbb2 gui=NONE
hi Identifier       guifg=fg      guibg=NONE    gui=NONE
hi Ignore           guifg=fg      guibg=NONE    gui=NONE
hi IncSearch        guifg=#ebdbb2 guibg=#504945 gui=NONE
hi LineNr           guifg=#928374 guibg=NONE    gui=NONE
hi CursorLineNr     guifg=fg      guibg=NONE    gui=NONE
hi MatchParen       guifg=fg      guibg=#ebdbb2 gui=NONE
hi ModeMsg          guifg=fg      guibg=NONE    gui=NONE
hi MoreMsg          guifg=fg      guibg=NONE    gui=NONE
hi NonText          guifg=#928374 guibg=NONE    gui=NONE
hi Normal           guifg=#000000 guibg=#fbf1c7 gui=NONE
hi NormalFloat      guifg=fg      guibg=#ebdbb2 gui=NONE
hi NormalNC         guifg=fg      guibg=NONE    gui=NONE
hi Pmenu            guifg=fg      guibg=#ebdbb2 gui=NONE
hi PmenuSbar        guifg=fg      guibg=#ebdbb2 gui=NONE
hi PmenuSel         guifg=#ebdbb2 guibg=#504945 gui=NONE
hi PmenuThumb       guifg=fg      guibg=#504945 gui=NONE
hi PreProc          guifg=#504945 guibg=NONE    gui=NONE
hi Question         guifg=fg      guibg=NONE    gui=NONE
hi QuickFixLine     guifg=fg      guibg=#ebdbb2 gui=NONE
hi Search           guifg=fg      guibg=#ebdbb2 gui=NONE
hi SignColumn       guifg=fg      guibg=#ebdbb2 gui=NONE
hi Special          guifg=#9d0006 guibg=NONE    gui=NONE
hi SpecialKey       guifg=#9d0006 guibg=NONE    gui=NONE
hi SpellBad         guifg=fg      guibg=NONE    gui=underline
hi SpellCap         guifg=fg      guibg=NONE    gui=underline
hi SpellLocal       guifg=fg      guibg=NONE    gui=underline
hi SpellRare        guifg=#8f3f71 guibg=NONE    gui=underline
hi Statement        guifg=#9d0006 guibg=NONE    gui=NONE
hi StatusLine       guifg=fg      guibg=#ebdbb2 gui=NONE
hi StatusLineNC     guifg=#928374 guibg=#ebdbb2 gui=NONE
hi StatusLineTerm   guifg=fg      guibg=#ebdbb2 gui=NONE
hi StatusLineTermNC guifg=#928374 guibg=#ebdbb2 gui=NONE
hi Substitute       guifg=fg      guibg=#928374 gui=NONE
hi TabLine          guifg=#504945 guibg=#ebdbb2 gui=NONE
hi TabLineFill      guifg=fg      guibg=#ebdbb2 gui=NONE
hi TabLineSel       guifg=#ebdbb2 guibg=#928374 gui=NONE
hi Terminal         guifg=fg      guibg=NONE    gui=NONE
hi TermCursor       guifg=fg      guibg=NONE    gui=reverse
hi TermCursorNC     guifg=fg      guibg=NONE    gui=NONE
hi Title            guifg=fg      guibg=NONE    gui=NONE
hi Todo             guifg=#9d0006 guibg=NONE    gui=NONE
hi Type             guifg=fg      guibg=NONE    gui=NONE
hi Underlined       guifg=fg      guibg=NONE    gui=underline
hi VertSplit        guifg=#928374 guibg=NONE    gui=NONE
hi Visual           guifg=fg      guibg=#ebdbb2 gui=NONE
hi VisualNOS        guifg=fg      guibg=#ebdbb2 gui=NONE
hi WarningMsg       guifg=fg      guibg=NONE    gui=NONE
hi Whitespace       guifg=#928374 guibg=NONE    gui=NONE
hi WildMenu         guifg=#928374 guibg=bg      gui=reverse

" Curiously, diff.vim links groups below to Identifier/Special/PreProc. Why?
hi! link diffAdded   DiffAdd
hi! link diffRemoved DiffDelete
hi! link diffChanged DiffChange

" LSP
hi DiagnosticError          guifg=#9d0006 guibg=NONE    gui=NONE
hi DiagnosticSignError      guifg=#9d0006 guibg=#ebdbb2 gui=NONE
hi DiagnosticWarn           guifg=#b57614 guibg=NONE    gui=NONE
hi DiagnosticSignWarn       guifg=#b57614 guibg=#ebdbb2 gui=NONE
hi DiagnosticInfo           guifg=#458588 guibg=NONE    gui=NONE
hi DiagnosticSignInfo       guifg=#458588 guibg=#ebdbb2 gui=NONE
hi DiagnosticHint           guifg=#458588 guibg=NONE    gui=NONE
hi DiagnosticSignHint       guifg=#458588 guibg=#ebdbb2 gui=NONE
hi LspReferenceText         guifg=#b57614 guibg=NONE    gui=NONE
hi LspReferenceRead         guifg=#b57614 guibg=NONE    gui=NONE
hi LspReferenceWrite        guifg=#b57614 guibg=NONE    gui=NONE

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
