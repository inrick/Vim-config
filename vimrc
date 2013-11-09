set nocompatible   " No Vi-compatibility, changes other options so put it first
set nomodeline     " Security measure, do not apply file specific settings
set encoding=utf-8 " Force utf-8

" Setup plugins with vundle
filetype off
set runtimepath+=$HOME/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'ddollar/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'LaTeX-Box'
Bundle 'mikewest/vimroom'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'

" Prepend ~/.vim to rtp since vundle messes it up. We want ~/.vim first so that
" new words are added to the spell files in the correct path.
set runtimepath-=$HOME/.vim
set runtimepath^=$HOME/.vim

set ruler
set showcmd
set laststatus=2 " Always show the status bar
set history=10
set dir=~/.swp
set backspace=indent,eol,start
set number       " Show line numbers
set showmatch    " Highlight matching parenthesis/brackets/braces
set mouse=a      " Mouse support
set scrolloff=3  " Scroll when cursor is this near an edge
set cursorline   " Highlight current line
set spell spelllang=en

set incsearch
set hlsearch
set ignorecase " Ignore case when searching
set smartcase  " Override ignorecase if search string contains uppercase

set expandtab     " Insert spaces instead of tabs
set softtabstop=2 " Insert this many spaces when pressing tab
set shiftwidth=2  " Number of spaces to indent
set tabstop=8     " Show tab as this many spaces

set list
set listchars=tab:»\ 

set wrap
set showbreak=↳\ 
set formatoptions+=l
set linebreak
set textwidth=79      " Break lines at this width
set colorcolumn=+1    " Show vertical line after the textwidth
set display+=lastline " Show part of a long line if it does not fit

set foldmethod=marker " Fold between {{{ and }}}
" set foldlevel=0
" set foldnestmax=2

set wildmenu
set wildmode=list,full

syntax on
filetype plugin indent on
set novisualbell
set t_vb=
set t_Co=256 " Force 256 colors
set background=light
colorscheme solarized

if has("gui_running")
  set guioptions-=T " No toolbar
  set guioptions-=m " No menu
  set guioptions-=t " No tearoff menu
  set guioptions-=e " No gui tabs
  set guioptions-=L " No left scrollbar
  set guioptions-=r " No right scrollbar
  set winaltkeys=no " Do not let the menu steal the alt-key
  set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
endif

let mapleader      = ","
let maplocalleader = ","

" Fix navigation issues with wrapped lines
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

noremap  <silent> <C-S>      :update<CR>
inoremap <silent> <C-S>      <C-O>:update<CR>
inoremap <silent> <Del>      <C-O>x
noremap  <silent> <leader>nn :set number!<CR>
noremap           <leader>cd :cd %:p:h<CR>
noremap  <silent> <leader>ve :tabe ~/.vimrc<CR>
noremap           <leader>vu :source ~/.vimrc<CR>
nnoremap <silent> <CR>       :nohlsearch<CR><CR>
noremap           <leader>gt :cd %:p:h<CR>:noautocmd vimgrep /TODO\\|FIXME\\|XXX/j %<CR>:cw<CR>

" Plugin mappings
noremap  <silent> <leader>nt :NERDTreeToggle<CR>
noremap  <silent> <F4>       :NERDTreeToggle<CR>
nmap              <leader>r  <Plug>NERDCommenterComment
vmap              <leader>r  <Plug>NERDCommenterComment
nmap              <leader>t  <Plug>NERDCommenterUncomment
vmap              <leader>t  <Plug>NERDCommenterUncomment
nmap              <C-_>      <Plug>NERDCommenterToggle
vmap              <C-_>      <Plug>NERDCommenterToggle
nmap              <leader>a= :Tabularize /=<CR>
vmap              <leader>a= :Tabularize /=<CR>
nmap              <leader>a, :Tabularize /,\zs/l0l1<CR>
vmap              <leader>a, :Tabularize /,\zs/l0l1<CR>
nmap              <leader>a<space> :Tabularize /\S\ \zs/l0l1<CR>
vmap              <leader>a<space> :Tabularize /\S\ \zs/l0l1<CR>

" Plugin settings
let g:SuperTabDefaultCompletionType = "context"

let g:ctrlp_max_files = 5000

let g:airline_powerline_fonts = 1

let g:vimroom_width              = 105
let g:vimroom_navigation_keys    = 0
let g:vimroom_clear_line_numbers = 1
let g:vimroom_sidebar_height     = 0
let g:vimroom_scrolloff          = 5
let g:vimroom_guibackground      = '#fdf6e3'
let g:vimroom_ctermbackground    = 'bg'

" Highlight trailing whitespace
" Taken from https://github.com/bronson/vim-trailing-whitespace but changed the
" color to match solarized
highlight ExtraWhitespace ctermbg=darkred guibg=#CC4B43
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
