set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'Lokaltog/vim-powerline'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iCyMind/NeoSolarized'
Plug 'ycm-core/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/vim-cursorword' 
Plug 'APZelos/blamer.nvim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'elentok/plaintasks.vim'
Plug 'neoclide/coc.nvim', {'branch':'release'}

call plug#end()
filetype plugin indent on    " required

"
" Remember the position of cursor
set viminfo='800,<3000
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

set cursorline
"hi CursorLine ctermbg=darkgrey
set cursorcolumn
set autoindent
set wrap
set nu
set tabstop=2
set shiftwidth=2
set expandtab
set fileencodings=gb18030,gbk,gb2312,utf-8
set termencoding=utf-8
set encoding=utf-8
set incsearch " incremental search
set laststatus=2 
set list lcs=tab:\|\ 
syntax enable


colorscheme NeoSolarized
set termguicolors
set hlsearch
set nobackup

" Set Markdown Options
let g:vim_markdown_folding_disabled = 1

" Set Blamer Options
let g:blamer_enabled = 1

" Multi Cursor Default mapping
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
