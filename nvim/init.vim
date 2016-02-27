" custom leader
let mapleader = ","

" load plugins
call plug#begin()
    Plug 'scrooloose/nerdtree'
    Plug 'Raimondi/delimitMate'
    Plug 'luochen1990/rainbow'
    Plug 'Shougo/deoplete.nvim'
call plug#end()

" color parens
let g:rainbow_active = 1

" nerdtree control
map <C-n> :NERDTreeToggle<CR>

" Autocomplete plugin
let g:deoplete#enable_at_startup = 1

" copies everything to both clipboards
set clipboard+=unnamedplus
set clipboard+=unnamed

" general formatting shit
set number
set showbreak=+++
syntax on
set ruler
set undolevels=1000

" wrap at 80
set fo+=aw
set tw=80

" spaces per TAB
set tabstop=4
set softtabstop=4

" search settings
set hlsearch
nnoremap <leader><Space> :nohlsearch<CR>

" better moving
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
inoremap jk <esc>

" remove whitespace at the end of line
augroup configgroup
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
augroup END
