let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf'
Plug 'itchyny/lightline.vim'
call plug#end()
let gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set termguicolors
set tabstop=4 softtabstop=4
set noexpandtab
set shiftwidth=4
set expandtab
set number
set nowrap
set smartindent
set incsearch
set scrolloff=5
set sidescrolloff=5
set noshowmode
set cursorline
set history=1000
set laststatus=2
set ttimeout ttimeoutlen=50
