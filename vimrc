execute pathogen#infect()
" list of usage plugin
"kien/ctrlp.vim
"Lokaltog/vim-easymotion
"yearofmoo/Vim-Darkmate #colorscheme
"Raimondi/delimitMate
"ervandew/supertab
"jelera/vim-javascript-syntax
"scrooloose/nerdcommenter
"tomasr/molokai #colorscheme
"nanotech/jellybeans.vim #colorscheme
"scrooloose/nerdtree
"groenewege/vim-less
"mattn/emmet-vim
"klen/python-mode
"elixir-lang/vim-elixir
"nanotech/jellybeans.vim


" set line number
set number

" set search
set incsearch hlsearch
filetype plugin indent on

" Remove top toolbar, left/right hand scroll bar
set guioptions-=T
set guioptions-=r
set go-=L

" Autosave when not focus on GVIM
au FocusLost * silent! wa

" Easy motion setting
let mapleader = " "
let g:EasyMotion_leader_key = '<Leader>'
let g:ctrlp_map = '<c-p>'

" color scheme configuration
colorscheme darkmate
set t_Co=256

" set color scheme for vimdiff
if &diff
    colorscheme jellybeans
endif

" set tab configuration
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" set turn off swap
set nobackup
set nowb
set noswapfile

" set autoreload buffer
set autoread

" html configuration
autocmd FileType html setlocal shiftwidth=4 tabstop=4

" JavaScript configuration
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" JavaScript Syntax enhance
au FileType javascript call JavaScriptFold()

" NERDTree configuration
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
	\ '\.o$', '\.so$', '\.egg$', '^\.git$' ]

" set ignore compiled files
set wildignore=*.o,*~,*.pyc

" set navigation between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" airline font configuration
let g:airline_powerline_fonts = 1
"let g:airliine_symbols = 'fancy'
let g:airline_theme = 'light'
set encoding=utf-8
set laststatus=2


" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" set new lead key for emmet-vim
" FORNOW use default lead key which is ctrl + y + ,
" let g:user_emmet_leader_key='<C-Z>'

" Settings for python-mode
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 1
let g:pymode_syntax_builtin_funcs = 1
let g:pymode_folding = 0
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_lint = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
