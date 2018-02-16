set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set clipboard=unnamed
set nu
syntax on

" Line numbering
set number relativenumber

augroup numbertoggle
 autocmd!
 autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
 autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
