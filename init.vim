set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'iCyMind/NeoSolarized'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/vim-cursorword' 
Plugin 'APZelos/blamer.nvim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'elentok/plaintasks.vim'
Plugin 'neoclide/coc.nvim', {'branch':'release'}

call vundle#end()            " required
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
