let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'gruvbox-community/gruvbox'                    " colorscheme
Plug 'kaicataldo/material.vim'                      " colorscheme
Plug 'dracula/vim', { 'as': 'dracula' }             " colorscheme
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy file finder
Plug 'junegunn/fzf.vim'                             " fuzzy file finder
Plug 'itchyny/lightline.vim'                        " statusline
Plug 'tpope/vim-fugitive'                           " git integration
Plug 'airblade/vim-gitgutter'                       " git gutter
Plug 'davidhalter/jedi-vim'                         " autocomplete
Plug 'mattn/emmet-vim'                              " emmet for vim
Plug 'preservim/nerdtree'                           " file tree
Plug 'Xuyuanp/nerdtree-git-plugin'                  " git status in nerdtree
Plug 'tpope/vim-commentary'                         " commenter
Plug 'vimwiki/vimwiki'                              " notes
Plug 'ryanoasis/vim-devicons'                       " file icons
call plug#end()

" List of my favorite lightline colorschemes: selenized_black, one, wombat, deus, dracula
let g:lightline = {
          \ 'colorscheme': 'one',
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             ['FugitiveHead', 'readonly', 'filename', 'modified' ] ]
          \ },
      \ }
let gruvbox_contrast_dark = 'hard'
let g:fzf_layout = { 'window': { 'width': 0.75, 'height': 0.8, 'highlight': 'Todo', 'border': 'rounded' } }
let NERDTreeIgnore=['.git', '\.swp', '\~$']
let NERDTreeShowHidden=1
let mapleader = " "

filetype plugin on
syntax on
colorscheme gruvbox
autocmd BufWritePre * :%s/\s\+$//e

set termguicolors
set background=dark
set tabstop=4 softtabstop=4
set expandtab
set shiftwidth=4
set expandtab
set number
set relativenumber
set nowrap
set noerrorbells
set smartindent
set smartcase
set ignorecase
set autoindent
set incsearch
set scroll=5
set scrolloff=5
set sidescroll=1
set sidescrolloff=5
set noshowmode
set cursorline
set history=1000
set laststatus=2
set clipboard=unnamedplus
set ttimeout ttimeoutlen=50
set backspace=indent,eol,start
set nocompatible
set textwidth=0

nnoremap <C-p> :FZF<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-t> :tabedit .<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>ga :Git add %<CR>
nnoremap <leader>gd :Git diff HEAD<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>
" TODO: Add home and end keymaps in insert mode
