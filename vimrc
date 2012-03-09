" Use vim mode instead of vi mode.
" It changes other options so put it first.
set nocompatible
set nomodeline " Security measure

" Bundles
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

" Prepend ~/.vim to rtp since vundle messes it up
set runtimepath-=$HOME/.vim
set runtimepath^=$HOME/.vim

set ruler " Display cursor position
set history=10 " Remember 10 commands in command history
set backspace=2 " Good backspace setting
set dir=~/.swp " set .swp-file directory
set expandtab " Insert spaces when tab is pressed
set tabstop=4
set shiftwidth=4 " Auto-indent by this much
set softtabstop=4 " It kind of reads 4 spaces as a TAB character
set number " Line numbers
set showmatch " Hilight matching braces/parenthesis/brackets
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
set spell spelllang=en

" Wrap settings
set wrap " Wrap lines that are too long
set formatoptions+=l
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
set background=light
colors solarized

if has("gui_running")
    set guioptions-=T " No toolbar
    set guioptions-=m " No menu
    set guioptions-=t " No tearoff menu
    set guioptions-=e " No GUI tabs
    "set guioptions-=r " No right scrollbar
    set guioptions-=L " No left scrollbar
    set guifont=Ubuntu\ Mono\ 11.5
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
"noremap  <silent> <C-Tab>    :tabnext<CR>
"noremap  <silent> <C-S-Tab>  :tabprevious<CR>
noremap           <leader>nn :set number!<CR>
noremap           <leader>nm :call ToggleMouse()<CR>
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

function! ToggleMouse()
    if &mouse=='a'
        set mouse=
    else
        set mouse=a
    endif
endfunction

