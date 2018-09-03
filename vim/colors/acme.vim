" Vim colorscheme
"
" Inspired by acme. Assuming 256 color terminal with appropriate bg/fg color.
" Gives comments a separate color, use :syntax off if undesirable.
"
" Name: acme

hi clear
set background=light
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'acme'

" light yellow:   #ffffea  230  (bg)
" darker yellow:  #eeee9e  186  (bg select)
" light blue:     #eaffff  195  (status)
" darker blue:    #9eeeee  81   (status select)
" darkest yellow: #99994c  101  (scrollbar bg)
" purple:         #8888cc  104  (layout box)
" red:            #aa0000  124  (2nd button select)
" green:          #006600  22   (3rd button select)

hi ColorColumn      guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi Comment          guifg=#006600 guibg=#ffffea gui=none      ctermfg=22   ctermbg=none cterm=none
hi Conceal          guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Constant         guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi lCursor          guifg=#ffffea guibg=#000000 gui=none      ctermfg=none ctermbg=none cterm=none
hi Cursor           guifg=#ffffea guibg=#000000 gui=none      ctermfg=none ctermbg=none cterm=none
hi CursorIM         guifg=#ffffea guibg=#000000 gui=none      ctermfg=none ctermbg=none cterm=none
hi CursorColumn     guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi CursorLine       guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi DiffAdd          guifg=#006600 guibg=#ffffea gui=none      ctermfg=22   ctermbg=none cterm=none
hi DiffChange       guifg=#000000 guibg=#8888cc gui=none      ctermfg=none ctermbg=104  cterm=none
hi DiffDelete       guifg=#aa0000 guibg=#ffffea gui=none      ctermfg=124  ctermbg=none cterm=none
hi DiffText         guifg=#000000 guibg=#eaffff gui=none      ctermfg=none ctermbg=195  cterm=none
hi Directory        guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Error            guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi ErrorMsg         guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi FoldColumn       guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Folded           guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi Identifier       guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Ignore           guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi IncSearch        guifg=#000000 guibg=#9eeeee gui=none      ctermfg=none ctermbg=81   cterm=none
hi LineNr           guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi CursorLineNr     guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi MatchParen       guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi ModeMsg          guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi MoreMsg          guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi NonText          guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Normal           guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Pmenu            guifg=#000000 guibg=#eaffff gui=none      ctermfg=none ctermbg=195  cterm=none
hi PmenuSbar        guifg=#000000 guibg=#99994c gui=none      ctermfg=none ctermbg=101  cterm=none
hi PmenuSel         guifg=#000000 guibg=#9eeeee gui=none      ctermfg=none ctermbg=81   cterm=none
hi PmenuThumb       guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi PreProc          guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Question         guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi QuickFixLine     guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi Search           guifg=#000000 guibg=#eaffff gui=none      ctermfg=none ctermbg=195  cterm=none
hi SignColumn       guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Special          guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi SpecialKey       guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi SpellBad         guifg=#000000 guibg=#ffffea gui=undercurl ctermfg=104  ctermbg=none cterm=undercurl
hi SpellCap         guifg=#000000 guibg=#ffffea gui=undercurl ctermfg=104  ctermbg=none cterm=undercurl
hi SpellLocal       guifg=#000000 guibg=#ffffea gui=undercurl ctermfg=104  ctermbg=none cterm=undercurl
hi SpellRare        guifg=#000000 guibg=#ffffea gui=undercurl ctermfg=104  ctermbg=none cterm=undercurl
hi Statement        guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi StatusLine       guifg=#000000 guibg=#eaffff gui=none      ctermfg=none ctermbg=195  cterm=none
hi StatusLineNC     guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi StatusLineTerm   guifg=#000000 guibg=#eaffff gui=none      ctermfg=none ctermbg=195  cterm=none
hi StatusLineTermNC guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi TabLine          guifg=#000000 guibg=#eaffff gui=none      ctermfg=none ctermbg=195  cterm=none
hi TabLineFill      guifg=#000000 guibg=#eaffff gui=none      ctermfg=none ctermbg=195  cterm=none
hi TabLineSel       guifg=#000000 guibg=#9eeeee gui=none      ctermfg=none ctermbg=81   cterm=none
hi Terminal         guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Title            guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Todo             guifg=#006600 guibg=#ffffea gui=none      ctermfg=22   ctermbg=none cterm=none
hi Type             guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi Underlined       guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi VertSplit        guifg=#99994c guibg=#ffffea gui=none      ctermfg=101  ctermbg=none cterm=none
hi Visual           guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi VisualNOS        guifg=#000000 guibg=#eeee9e gui=none      ctermfg=none ctermbg=186  cterm=none
hi WarningMsg       guifg=#000000 guibg=#ffffea gui=none      ctermfg=none ctermbg=none cterm=none
hi WildMenu         guifg=#000000 guibg=#9eeeee gui=none      ctermfg=none ctermbg=81   cterm=none
