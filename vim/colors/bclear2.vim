" Vim colorscheme
"
" Minor modifications of Ricky Cintron's bclear (version 20101017) found at:
" http://www.vim.org/scripts/script.php?script_id=2739
"
" Changed a few colors to be less aggressive and added 256 color terminal
" support by importing CSApprox's best effort.
"
" Name:    bclear2
" Version: 20180211

hi clear
set background=light
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "bclear2"

" GUI settings
hi SpecialKey   guifg=#969696   guibg=#f0f0f0
hi NonText      guifg=#969696   guibg=#f0f0f0   gui=none
hi Directory    guifg=#78681a
hi ErrorMsg     guifg=#ffffff   guibg=#a01010
hi IncSearch    guifg=#ffffff   guibg=#ff8000   gui=none
hi Search       guifg=#000000   guibg=#ffd073
hi MoreMsg      guifg=#ffffff   guibg=#3c960f   gui=none
hi ModeMsg      guifg=#323232                   gui=none
hi LineNr       guifg=#969696   guibg=#f0f0f0
hi Question     guifg=#000000   guibg=#ffde37   gui=none
hi StatusLine   guifg=#ffffff   guibg=#323232   gui=none
hi StatusLineNC guifg=#f0f0f0   guibg=#646464   gui=none
hi VertSplit    guifg=#f0f0f0   guibg=#646464   gui=none
hi Title        guifg=#323232                   gui=none
hi Visual       guifg=#ffffff   guibg=#1994d1
hi VisualNOS    guifg=#000000   guibg=#1994d1   gui=none
hi WarningMsg   guifg=#c8c8c8   guibg=#a01010
hi WildMenu     guifg=#ffffff   guibg=#1994d1
hi Folded       guifg=#969696   guibg=#f0f0f0
hi FoldColumn   guifg=#969696   guibg=#f0f0f0
hi DiffAdd                      guibg=#deffcd
hi DiffChange                   guibg=#dad7ff
hi DiffDelete   guifg=#c8c8c8   guibg=#ffffff   gui=none
hi DiffText     guifg=#ffffff   guibg=#767396   gui=none
hi SignColumn   guifg=#969696   guibg=#f0f0f0
hi Conceal      guifg=#969696   guibg=#f0f0f0
hi SpellBad                                     gui=undercurl
hi SpellCap                                     gui=undercurl
hi SpellRare                                    gui=undercurl
hi SpellLocal                                   gui=undercurl
hi Pmenu        guifg=#ffffff   guibg=#323232
hi PmenuSel     guifg=#ffffff   guibg=#1994d1
hi PmenuSbar    guifg=#323232   guibg=#323232
hi PmenuThumb   guifg=#646464   guibg=#646464   gui=none
hi TabLine      guifg=#f0f0f0   guibg=#646464   gui=none
hi TabLineSel   guifg=#ffffff   guibg=#323232   gui=none
hi TabLineFill  guifg=#646464   guibg=#646464   gui=none
hi CursorColumn                 guibg=#e1f5ff
hi CursorLine                   guibg=#e1f5ff   gui=none
hi ColorColumn                  guibg=#f0f0f0
hi Cursor       guifg=#ffffff   guibg=#323232
hi lCursor      guifg=#ffffff   guibg=#004364
hi MatchParen   guifg=#ffffff   guibg=#f00078
hi Normal       guifg=#323232   guibg=#ffffff
hi Comment      guifg=#969696
hi Constant     guifg=#1094a0
hi Special      guifg=#3c960f
hi Identifier   guifg=#3c960f
hi Statement    guifg=#3b6ac8                   gui=none
hi PreProc      guifg=#294a8c
hi Type         guifg=#a00050                   gui=none
hi Underlined   guifg=#323232                   gui=underline
hi Ignore       guifg=#c8c8c8
hi Error        guifg=#ffffff   guibg=#c81414
hi Todo         guifg=#c81414   guibg=#ffffff

" 256 color terminal settings. Generated using CSApprox then cleaned up.
if &t_Co > 255 && !has("gui_running")
  hi Normal        ctermfg=236  ctermbg=231
  hi SpecialKey    ctermfg=246  ctermbg=255
  hi NonText       ctermfg=246  ctermbg=255
  hi Directory     ctermfg=94   ctermbg=bg
  hi ErrorMsg      ctermfg=231  ctermbg=124
  hi IncSearch     ctermfg=231  ctermbg=208
  hi Search        ctermfg=16   ctermbg=221
  hi MoreMsg       ctermfg=231  ctermbg=64
  hi ModeMsg       ctermfg=236  ctermbg=bg
  hi LineNr        ctermfg=246  ctermbg=255
  hi Pmenu         ctermfg=231  ctermbg=236
  hi PmenuSel      ctermfg=231  ctermbg=32
  hi PmenuSbar     ctermfg=236  ctermbg=236
  hi PmenuThumb    ctermfg=241  ctermbg=241
  hi TabLine       ctermfg=255  ctermbg=241
  hi TabLineSel    ctermfg=231  ctermbg=236
  hi TabLineFill   ctermfg=241  ctermbg=241
  hi CursorColumn               ctermbg=195
  hi CursorLine                 ctermbg=195  cterm=none
  hi ColorColumn                ctermbg=255
  hi Cursor        ctermfg=231  ctermbg=236
  hi lCursor       ctermfg=231  ctermbg=23
  hi MatchParen    ctermfg=231  ctermbg=198
  hi Comment       ctermfg=246
  hi Constant      ctermfg=31
  hi Special       ctermfg=64
  hi Identifier    ctermfg=64
  hi Statement     ctermfg=62
  hi PreProc       ctermfg=24
  hi Underlined    ctermfg=236               cterm=underline
  hi Ignore        ctermfg=251
  hi Todo          ctermfg=160  ctermbg=231
  hi Error         ctermfg=231  ctermbg=160
  hi Type          ctermfg=125
  hi Question      ctermfg=16   ctermbg=221
  hi StatusLine    ctermfg=231  ctermbg=236
  hi StatusLineNC  ctermfg=255  ctermbg=241
  hi VertSplit     ctermfg=255  ctermbg=241
  hi Title         ctermfg=236
  hi Visual        ctermfg=231  ctermbg=32
  hi VisualNOS     ctermfg=16   ctermbg=32
  hi WarningMsg    ctermfg=251  ctermbg=124
  hi WildMenu      ctermfg=231  ctermbg=32
  hi Folded        ctermfg=246  ctermbg=255
  hi FoldColumn    ctermfg=246  ctermbg=255
  hi DiffAdd                    ctermbg=194
  hi DiffChange                 ctermbg=189
  hi DiffDelete    ctermfg=251  ctermbg=231
  hi DiffText      ctermfg=231  ctermbg=96
  hi SignColumn    ctermfg=246  ctermbg=255
  hi Conceal       ctermfg=246  ctermbg=255
  hi SpellLocal                              cterm=undercurl
  hi SpellBad                                cterm=undercurl
  hi SpellCap                                cterm=undercurl
  hi SpellRare                               cterm=undercurl
endif
