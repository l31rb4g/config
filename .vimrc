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
    Plug 'Valloric/YouCompleteMe'
call plug#end()


let mapleader = ','
let g:airline_theme = 'jellybeans'

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '^tags$']


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
set clipboard^=unnamed,unnamedplus
set colorcolumn=80

syntax on
color dracula


augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Mapping
map ! :nohl<CR>
map # *``
map <F3> :NERDTreeToggle<CR>
map <F4> :!~/scripts/tags.py<CR>
map <F9> <C-w><C-]><C-w>L
map <F12> @q
map <C-Up> <C-y>
map <C-Down> <C-e>

nmap z 20j


"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
