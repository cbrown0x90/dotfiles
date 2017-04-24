" custom leader
let mapleader = ","

" load plugins
call plug#begin()
	Plug 'Raimondi/delimitMate'
	Plug 'luochen1990/rainbow'
	Plug 'Shougo/deoplete.nvim'
	Plug 'chriskempson/base16-vim'
	Plug 'bling/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

" color parens
let g:rainbow_active = 1

" nerdtree control
map <C-n> :NERDTreeToggle<CR>

" airline conf
let g:airline_detect_crypt = 0
let g:airline_theme='base16_twilight'
" removes the mode notification from the bufferline
set noshowmode

" Autocomplete plugin
let g:deoplete#enable_at_startup = 1

" Python
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" copies everything to both clipboards
set clipboard+=unnamedplus
set clipboard+=unnamed

" general formatting shit
set number
set showbreak=+++
syntax on
set ruler
set undolevels=1000

" spaces per TAB
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" set colors
let base16colorspace=256
set background=dark
colorscheme base16-twilight

" search settings
set hlsearch
nnoremap <leader><Space> :nohlsearch<CR>

" better moving
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" remove whitespace at the end of line
augroup configgroup
	autocmd!
	autocmd BufWritePre * :%s/\s\+$//e
augroup END
