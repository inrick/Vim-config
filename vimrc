set nocompatible   " No Vi-compatibility, changes other options so put it first
set nomodeline     " Security measure, do not apply file specific settings
set encoding=utf-8
set noruler
set showcmd
set showmode
set laststatus=2
set statusline=%f\ %(%M\ %)%(%R\ %)%(\ \ %{&ft}\ %)%(%{&paste?'\ \ PASTE':''}%)%=\ %l,%c
set history=100
set backspace=indent,eol,start
set number
set norelativenumber
set noshowmatch
set mouse=a
set scrolloff=3
set nospell
set spelllang=en
set incsearch
set hlsearch
set ignorecase
set smartcase
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=8
set virtualedit=all
set nolist
set listchars=tab:→\ ,trail:~,nbsp:+
set wrap
set linebreak
set breakindent
set showbreak=→
set formatoptions+=ljr
set nojoinspaces
set textwidth=79
set display+=lastline
set nofoldenable
set foldmethod=manual
set foldnestmax=2
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set wildcharm=<C-Z>
set splitbelow
set splitright
set tags=./tags;
set completeopt=menuone,preview
set omnifunc=syntaxcomplete#Complete
if has('unix')
  set clipboard=unnamedplus
endif
set hidden
set updatetime=1000

set ttymouse=sgr
packadd! matchit

syntax on
filetype plugin indent on
set novisualbell
set t_vb=
set t_Co=256 " Force 256 colors
set termguicolors
set background=light
colorscheme mygruvbox

if has('gui_running')
  set guioptions-=T " No toolbar
  set guioptions-=m " No menu
  set guioptions-=t " No tearoff menu
  set guioptions-=e " No gui tabs
  set guioptions-=L " No left scrollbar
  set guioptions-=r " No right scrollbar
  set winaltkeys=no " Do not let the menu steal the alt-key
  set guicursor+=a:blinkon0 " Disable cursor blinking
  set guifont=Source\ Code\ Pro\ 11
  set columns=86
  set lines=40
  colorscheme mygruvbox
endif

if executable('rg')
  set grepprg=rg\ -i\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
endif

" Open quickfix/location window across the bottom after running a command
" populating them
autocmd QuickFixCmdPost [^l]* botright cwindow
autocmd QuickFixCmdPost l*    botright lwindow

let mapleader      = ','
let maplocalleader = '\'

" Easier ex mode navigation. Mostly taken from :help tcsh-style.
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>p <Up>
cnoremap <Esc>n <Down>
cnoremap <Esc><BS> <C-W>

noremap           j          gj
noremap           k          gk
noremap           gj         j
noremap           gk         k
noremap           ¤          $
noremap           <up>       <C-y>
noremap           <down>     <C-e>
nnoremap          Q          gqip
vnoremap          Q          gq
xnoremap          p          pgvy
inoremap <silent> <Del>      <C-O>x
nnoremap <silent> <BS>       :nohlsearch<CR>
nnoremap <silent> <F2>       :call <SID>ToggleHints()<CR>
nnoremap          <F5>       :make! debug<CR>
nnoremap          <F6>       :make! test<CR>
nnoremap          <F7>       :make! run<CR>
nnoremap          <F8>       :make!<CR>
nnoremap          <leader>cd :cd %:p:h<CR>
nnoremap          <leader>gt :vimgrep /TODO\\|FIXME\\|XXX/j %<CR>
nnoremap          <leader>l  :Grep<space>
nnoremap          <leader>w  :update<CR>
nnoremap          <C-s>      :update<CR>
nnoremap          <C-q>      :close<CR>
nnoremap          <F12>      :%y<CR>

" Terminal mode bindings
tnoremap          <Esc>      <C-\><C-n>

function! s:ToggleHints()
  if &colorcolumn == ''
    set colorcolumn=+1
    set list
  else
    set colorcolumn=
    set nolist
  endif
endfunction

" :help special-buffers
function! s:CreateSplitScratch(split)
  if a:split == 1
    split
  elseif a:split == 2
    vsplit
  end
  enew
  setlocal buftype=nofile
  setlocal bufhidden=hide
  setlocal noswapfile
endfunction

command! -nargs=+ -complete=file -bar Grep silent! grep! <args> | redraw!
command! Scratch  call <SID>CreateSplitScratch(0)
command! HScratch call <SID>CreateSplitScratch(1)
command! VScratch call <SID>CreateSplitScratch(2)
command! Hints    call <SID>ToggleHints()
command! RemoveTrailing %s/\s\+$//
command! O :!xdg-open %:p:h

runtime! ftplugin/man.vim " For :Man and <leader>K

silent! helptags ALL
