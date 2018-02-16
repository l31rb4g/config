call plug#begin('~/.vim/plugged')
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
call plug#end()

let mapleader = ','

set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set clipboard=unnamed
set nu
syntax on

map <F3> :NERDTreeToggle<CR>

" Line numbering
set number relativenumber

augroup numbertoggle
 autocmd!
 autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
 autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

