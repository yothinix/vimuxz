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
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" JavaScript configuration
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

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
