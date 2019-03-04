call plug#begin('~/.vim/plugged')
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    "Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dracula/vim', {'as': 'dracula'}
    Plug 'Yggdroot/indentLine'
"    Plug 'Valloric/YouCompleteMe'
    Plug 'vim-syntastic/syntastic'
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'mattn/emmet-vim'
    Plug 'jdonaldson/vaxe'
    Plug 'lambdalisue/vim-django-support'
    Plug 'posva/vim-vue'
call plug#end()

syntax on
color dracula

set encoding=UTF-8
set fileencoding=utf-8
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set hlsearch
"set number relativenumber
set nu
set backspace=indent,eol,start
set nofoldenable
"set foldmethod=indent
"set foldnestmax=1
set clipboard=unnamedplus
set colorcolumn=80
set t_Co=256
set conceallevel=0


let mapleader = ','
let g:airline_theme = 'jellybeans'

let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '^tags$']
let NERDTreeMapOpenInTab='<space>'
if argc() == 0
    autocmd VimEnter * NERDTree
    au VimEnter * if exists(':NERDTree') | wincmd l | endif
    au VimEnter * if exists(':NERDTree') | wincmd c | endif
endif

let g:syntastic_quiet_messages = {"!level": "errors"}


autocmd BufNewFile,BufRead *.sp    set syntax=cpp

"augroup numbertoggle
    "autocmd!
    "autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    "autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END


" search highlight
map ! :nohl<cr>
map # *``

map <f1> viw"_s
imap <f1> <esc>viw"_s

" folding
map <f2> Viizf


" nerdtree
map <f3> :NERDTreeToggle<cr>

" create tags
map <f4> :!~/scripts/tags.py<cr><cr>

" save file
map <f5> :w<cr>
imap <f5> <esc>:w<cr>

map <f8> let @q="/^[^ }/\t].*{$<cr>kdk2kdK4"

" go to definition
"map <f9> <c-w><C-]><c-w>L
map <f9> *``<c-w>]<c-w>T<cr>

" find in project
nnoremap <f10> *``viw"wy:!PATH=/bin ~/scripts/find_in_project.sh <c-r>w<cr><cr>


map <f11> n<down><f2>
map <f12> @q


" scrolling
nmap \| 20k
nmap \ 20j
map <c-up> <c-y>
map <c-down> <c-e>


" tabs
map <c-s-left> gT
map <c-s-right> gt


" move line
"nnoremap <c-,> :m-2<cr>
"nnoremap <c-.> :m+1<cr>


" avoid cut
nnoremap C "_C
"nnoremap d "_d
nnoremap D "_dd
nnoremap s "_s
nnoremap x "_x

vnoremap s "_s

xnoremap p pgvy


" Move visual block
"vnoremap J :m '>+1<cr>gv=gv
"vnoremap K :m '<-2<cr>gv=gv

