call plug#begin('~/.local/share/nvim/plugged')
Plug 'https://github.com/NerdyPepper/vim-colors-plain.git'
Plug 'mhinz/vim-janah'
Plug 'luochen1990/rainbow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/neoinclude.vim'
Plug 'jsfaint/coc-neoinclude'
Plug 'Yggdroot/indentLine'
Plug 'dylanaraps/wal.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

set t_Co=256
autocmd ColorScheme janah highlight LineNr ctermbg=256
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
set number
set nonu
set noru
set ls=0
set shortmess+=c
set signcolumn=yes


" coc
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


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

" indentLine
 "let g:indentLine_setColors = 0
 let g:indentLine_char      = '┊'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_bgcolor_term = 256
let g:indentLine_color_term = 1

" rainbow
let g:rainbow_active = 0

autocmd CursorHold * silent call CocActionAsync('highlight')
