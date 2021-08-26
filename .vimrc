let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set termguicolors
set tabstop=4 softtabstop=4
set noexpandtab
set shiftwidth=4
set expandtab
set number
set nowrap
set smartindent
set autoindent
set incsearch
set scrolloff=5
set sidescrolloff=5
set noshowmode
set cursorline
set history=1000
set laststatus=2
set ttimeout ttimeoutlen=50
set clipboard=unnamedplus
set backspace=indent,eol,start

nmap <space> :FZF<CR>
call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" List of my favorite colorschemes: selenized_black, one, wombat, deus, dracula
let g:lightline = {
    \ 'colorscheme': 'selenized_black'
    \ }
let gruvbox_contrast_dark = 'hard'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9, 'highlight': 'Todo', 'border': 'sharp' } }
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
colorscheme gruvbox
