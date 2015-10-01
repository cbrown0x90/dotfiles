set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'Raimondi/delimitMate'
Plugin 'wlangstroth/vim-racket'

call vundle#end()
filetype plugin indent on

if has("autocmd")
    au BufReadPost *.rkt,*.rktl set filetype=racket
    au filetype racket set lisp
    au filetype racket set autoindent
endif

"let g:auto_save = 1

set updatetime=30000
autocmd CursorHold,CursorHoldI <buffer> silent update

map <C-n> :NERDTreeToggle<CR>
let g:syntastic_python_python_exec = '/usr/bin/python3.4'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:EasyMotion_do_mapping = 0
nmap f <Plug>(easymotion-s)
nmap F <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1

set number
set showbreak=+++
set textwidth=100
set showmatch

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set cindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set ruler

set undolevels=1000
set backspace=indent,eol,start

syntax on
highlight Normal ctermfg=grey ctermbg=black
highlight LineNr term=bold cterm=NONE ctermfg=White ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE