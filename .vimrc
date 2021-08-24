let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf'
call plug#end()
colorscheme gruvbox
set tabstop=4 softtabstop=4
set shiftwidth=4
set number
set nowrap
set smartindent
set incsearch
set scrolloff=5
set showmode
set cursorline
set history=1000
