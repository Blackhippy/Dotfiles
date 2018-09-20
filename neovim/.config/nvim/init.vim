call plug#begin('~/.vim/plugged')

Plug 'dylanaraps/wal.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'raimondi/delimitmate'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'zchee/deoplete-jedi'
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/hail2u/vim-css3-syntax'
call plug#end()

colorscheme wal

filetype indent plugin on
syntax on
set nocompatible
set encoding=utf8
set hidden
set noswapfile
set autoindent
set wrap
set linebreak
set breakindent
set backspace=indent,eol,start
set expandtab
set softtabstop=0
set shiftwidth=4
set tabstop=4
set shiftround
set hlsearch
set incsearch
set ignorecase
set smartcase
set noruler
set nonumber
set mouse=a
set shortmess=atI
set hidden
set noshowmode
set laststatus=0
set cmdheight=2
set nobackup
set nowritebackup
set dir=/tmp

" vim-better-whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" vim-gitgutter
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
" let g:gitgutter_sign_added = ''
" let g:gitgutter_sign_modified = ''
" let g:gitgutter_sign_removed = ''

" deoplete
let g:deoplete#enable_at_startup = 1
let g:neotags#python#order = 'mfc'
let g:python3_host_prog = '/usr/bin/python3'
let g:deoplete= 1
