call plug#begin('~/.vim/plugged')
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dracula/vim', {'as': 'dracula'}
    Plug 'Yggdroot/indentLine'
"    Plug 'Valloric/YouCompleteMe'
    Plug 'vim-syntastic/syntastic'
call plug#end()

let mapleader = ','
let g:airline_theme = 'jellybeans'
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '^tags$']
let g:syntastic_quiet_messages = {"!level": "errors"}

set encoding=UTF-8
set fileencoding=utf-8
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set hlsearch
set number relativenumber
set nu
set backspace=indent,eol,start
set nofoldenable
set foldmethod=indent
set clipboard=unnamedplus
set colorcolumn=80
set t_Co=256


syntax on
color dracula

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Mapping
map ! :nohl<cr>
map # *``
map <f3> :NERDTreeToggle<cr>
map <f4> :!~/scripts/tags.py<cr><cr>
map <f5> :w<cr>
imap <f5> <esc>:w<cr>
map <f9> <c-w><C-]><c-w>L
nnoremap <f10> viw"wy:!~/scripts/find_in_project.sh <c-r>w<cr><cr>
map <f12> @q
map <c-up> <c-y>
map <c-down> <c-e>
nmap D "_dd
xnoremap p pgvy
nmap \| 20k
nmap \ 20j


" Move visual block
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv


xnoremap a "_di

