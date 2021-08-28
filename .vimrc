let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set termguicolors
set background=dark
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
set nocompatible
filetype plugin on
syntax on

nmap <C-p> :FZF<CR>
nmap <C-t> :tabedit .<CR>
nmap <C-w> :wq<CR>
call plug#begin()
Plug 'gruvbox-community/gruvbox'                    " colorscheme
Plug 'kaicataldo/material.vim'                      " colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }             " colorscheme
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fzf
Plug 'junegunn/fzf.vim'                             " fzf
Plug 'itchyny/lightline.vim'                        " statusline
Plug 'tpope/vim-fugitive'                           " git integration
Plug 'airblade/vim-gitgutter'                       " git gutter
Plug 'ycm-core/YouCompleteMe'                       " autocomplete and language support
Plug 'mattn/emmet-vim'                              " emmet for vim
Plug 'preservim/nerdtree'                           " file tree
Plug 'tpope/vim-commentary'                         " commenter
Plug 'vimwiki/vimwiki'                              " notes
call plug#end()

" List of my favorite lightline colorschemes: selenized_black, one, wombat, deus, dracula
let g:lightline = {
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
          \ },
          \ 'component_function': {
          \   'gitbranch': 'FugitiveHead'
          \ },
      \ }
let gruvbox_contrast_dark = 'hard'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9, 'highlight': 'Todo', 'border': 'sharp' } }
colorscheme gruvbox
