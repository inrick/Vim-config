set nocompatible " use vim mode instead of vi mode, changes other options so put it first
set nomodeline   " security measure

" bundles
filetype off
set runtimepath+=$HOME/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ddollar/nerdcommenter'
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "context"
Bundle 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPBuffer'
Bundle 'LaTeX-Box'
Bundle 'mikewest/vimroom'
let g:vimroom_width = 105
let g:vimroom_navigation_keys = 0
let g:vimroom_clear_line_numbers = 1
let g:vimroom_sidebar_height = 0
let g:vimroom_scrolloff = 5
let g:vimroom_guibackground = '#fdf6e3'
let g:vimroom_ctermbackground = 'bg'
Bundle 'scrooloose/nerdtree'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'

" prepend ~/.vim to rtp since vundle messes it up
set runtimepath-=$HOME/.vim
set runtimepath^=$HOME/.vim

set ruler              " show cursor position
set history=10
set backspace=2        " good backspace setting
set dir=~/.swp         " .swp-file directory
set expandtab          " spaces instead of tabs
set tabstop=8          " show tab as this many spaces
set shiftwidth=2       " number of spaces to indent
set softtabstop=2      " insert this many spaces when pressing tab
set number             " show line numbers
set showmatch          " hilight matching braces/parenthesis/brackets
set mouse=a            " mouse support
set visualbell t_vb=   " no beep or flash
set scrolloff=3        " scroll when cursor is this near an edge
set showcmd
set wildmenu           " enhanced completion
set wildmode=list,full " list first, then autocomplete
set incsearch          " incremental search
set ignorecase         " ignore case when searching
set smartcase          " override ignorecase if search string contains uppercase
set hlsearch
" set cursorline         " highlight current line
set winaltkeys=no      " do not let the menu steal the alt-key
set list
set listchars=tab:»·,trail:·
set spell spelllang=en
set wrap
set formatoptions+=l
set linebreak          " wrap at characters in 'breakat'
set showbreak=↳\ 
set display+=lastline  " show part of a long line if it does not fit
set foldmethod=marker  " fold between {{{ and }}}
" set foldlevel=0
" set foldnestmax=2

syntax on
filetype plugin indent on
set t_Co=256           " force 256 colors
set background=light
colorscheme solarized

if has("gui_running")
    set guioptions-=T  " no toolbar
    set guioptions-=m  " no menu
    set guioptions-=t  " no tearoff menu
    set guioptions-=e  " no gui tabs
    set guioptions-=L  " no left scrollbar
    "set guioptions-=r  " no right scrollbar
    set guifont=Ubuntu\ Mono\ 11.5
endif

let mapleader = ","
let maplocalleader = ","

" fix navigation issues with wrapped lines
noremap  <silent> k      gk
noremap  <silent> j      gj
noremap  <silent> <Up>   gk
noremap  <silent> <Down> gj
noremap  <silent> <Home> g^
noremap  <silent> <End>  g<End>
inoremap <silent> <Up>   <C-O>g<Up>
inoremap <silent> <Down> <C-O>g<Down>
inoremap <silent> <Home> <C-O>g^
inoremap <silent> <End>  <C-O>g<End>

" other keyboard bindings
noremap  <silent> <C-S>      :update<CR>
inoremap <silent> <C-S>      <C-O>:update<CR>
inoremap <silent> <Del>      <C-O>x
noremap  <silent> <leader>nn :set number!<CR>
noremap           <leader>cd :cd %:p:h<CR>
noremap  <silent> <leader>ve :tabe ~/.vimrc<CR>
noremap           <leader>vu :source ~/.vimrc<CR>
noremap  <silent> <leader>nt :NERDTreeToggle<CR>
noremap  <silent> <F4>       :NERDTreeToggle<CR>
nmap              <leader>r  <Plug>NERDCommenterComment
vmap              <leader>r  <Plug>NERDCommenterComment
nmap              <leader>t  <Plug>NERDCommenterUncomment
vmap              <leader>t  <Plug>NERDCommenterUncomment
nmap              <C-_>      <Plug>NERDCommenterToggle
vmap              <C-_>      <Plug>NERDCommenterToggle
nnoremap <silent> <CR>       :nohlsearch<CR><CR>

