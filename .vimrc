call plug#begin('~/.vim/plugged')
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
call plug#end()

let mapleader = ','

set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
"set hlsearch
"set clipboard=unnamed
set number relativenumber
set nu
set backspace=indent,eol,start

syntax on

augroup numbertoggle
 autocmd!
 autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
 autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Plugin config
let NERDTreeShowHidden=1


" Mapping
nnoremap # :set hlsearch!<CR>
map <F3> :NERDTreeToggle<CR>

