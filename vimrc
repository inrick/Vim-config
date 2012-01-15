" Use vim mode instead of vi mode.
" It changes other options so put it first.
set nocompatible

" Add plugins in bundle/
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

" Bundles
filetype off
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'AutoClose--Alves'
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', '$': '$'}
" Bundle 'CSApprox'
Bundle 'LaTeX-Box'
Bundle 'The-NERD-tree'
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "context"
Bundle 'wincent/Command-T'
Bundle 'altercation/vim-colors-solarized'

set nomodeline " Some security measure
set ruler " Display cursor position
set history=10 " Remember 10 commands in command history
set backspace=2 " Good backspace setting
set dir=~/.swp " set .swp-file directory
set expandtab " Insert spaces when tab is pressed
set tabstop=4
set shiftwidth=4 " Auto-indent by this much
set softtabstop=4 " It kind of reads 4 spaces as a TAB character
set number " Line numbers
set showmatch " Hilight matching braces/parantheses/brackets
set mouse=a " Enable mouse support
set visualbell t_vb= " No beep
set novisualbell " Turn off visual bell
set noerrorbells " Don't make any noise
set scrolloff=3 " Scroll when cursor is near an edge
set showcmd " Show (partial) command in the last line of the screen
set wildmenu " Turn on completion menu
set wildmode=list,full " List first, then autocomplete
set incsearch " Incremental search
set ignorecase " Ignore case when searching
set smartcase " Case sensitive if search string contains upper case, otherwise not
" set hlsearch " Hilight search
" set cursorline " Highlight current line
set winaltkeys=no " Do not let the menu steal the alt-key
set list
set listchars=tab:»· " ,trail:·
set showbreak=↳\ 

" Wrap settings
set wrap " Wrap lines that are too long
set formatoptions=l
set linebreak " Wrap word instead of characters
set display+=lastline " Show part of a long line if it doesn't fit

" Folding setting
set foldmethod=marker " Automatically fold between {{{ and }}}
" set foldlevel=0
" set foldnestmax=2 " Don't fold too many levels
" Map F to change between fold all/none
" noremap F :let &foldenable = !&foldenable<CR>

syntax on
filetype plugin indent on
set t_Co=256 " Force 256 colors

if has("gui_running")
    set guioptions-=T " No toolbar
    set guioptions-=m " No menu
    " set guioptions-=r " No right scrollbar
    " set guioptions-=l " No left scrollbar
    set guifont=Consolas\ 11
    set background=light
    colors solarized
else
    set background=light
    let g:solarized_termcolors=256
    colors solarized
    " colors bclear_csapprox
endif

let mapleader = ","
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

" Other keyboard bindings
noremap  <silent> <C-S>      :update<CR>
inoremap <silent> <C-S>      <C-O>:update<CR>
inoremap <silent> <Del>      <C-O>x
noremap  <silent> <C-Tab>    :tabnext<CR>
noremap  <silent> <C-S-Tab>  :tabprevious<CR>
noremap  <silent> <leader>n  :set number!<CR>
noremap           <leader>cd :cd %:p:h<CR>
noremap  <silent> <leader>ve :tabe ~/.vimrc<CR>
noremap           <leader>vu :source ~/.vimrc<CR>
noremap  <silent> <F4>       :NERDTreeToggle<CR>
noremap  <silent> <leader>e  :CommandT<CR>
noremap  <silent> <leader>b  :CommandTBuffer<CR>

" Generic settings
if has("autocmd")
    autocmd FileType c         noremap <silent> <buffer> <F6> :!gcc -O2 -std=gnu99 -c -Wall %<CR>
    autocmd FileType cpp       noremap <silent> <buffer> <F6> :!g++ -O2 %<CR>
    autocmd FileType haskell   noremap <silent> <buffer> <F6> :!ghc %<CR>
    autocmd FileType haskell   noremap <silent> <buffer> <F7> :!ghci %<CR>
    autocmd FileType java      noremap <silent> <buffer> <F6> :!javac %<CR>
    autocmd FileType java      noremap <silent> <buffer> <F7> :!java %<.java<CR>

    " C/C++
    " autocmd FileType c,cpp     setlocal foldmethod=syntax
    " autocmd FileType c,cpp     setlocal foldnestmax=1

    " Different format options
    "autocmd FileType *          set formatoptions=tcql  nocindent
    autocmd FileType *         setlocal nocindent
    autocmd FileType *         setlocal nosmartindent
    autocmd FileType c,cpp,php setlocal cindent

    " Omnicompletion for some file types
    autocmd FileType *         setlocal omnifunc=syntaxcomplete#Complete 
endif

function! ToggleMouse()
    if &mouse=='a'
        set mouse=
    else
        set mouse=a
    endif
endfunction

" Haskell
" let g:haddock_browser="xdg-open"
" let g:haddock_docdir="/usr/share/doc/ghc/html/"
" let g:haddock_indexfiledir=$HOME."/.vim/"

