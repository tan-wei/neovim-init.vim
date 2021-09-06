""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Genral settings section

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on     " required

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin related section

call plug#begin('~/.config/nvim/plugged')


" General settings {{{
if has('mac')
    let g:python3_host_prog = '/usr/local/bin/python3'
endif
" }}}


" General {{{
Plug '907th/vim-auto-save'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/vim-cursorword'
Plug 'terryma/vim-multiple-cursors'

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
" }}}

" Git related plugins {{{
Plug 'airblade/vim-gitgutter'
Plug 'APZelos/blamer.nvim'

let g:blamer_enabled = 1
" }}}

" Markdown related plugins {{{
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

let g:vim_markdown_math = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_disabled = 1


Plug 'mzlogin/vim-markdown-toc'

let g:vmt_auto_update_on_save = 0

Plug 'iamcco/markdown-preview.nvim'

let g:mkdp_path_to_chrome = "/usr/bin/google-chrome-stable"
let g:mkdp_markdown_css=''
" }}}


" Snippet related plugins {{{
" }}}


" C++ retlated plugins  {{{
Plug 'ycm-core/YouCompleteMe'

let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
let g:ycm_disable_for_files_larger_than_kb = 1000000
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }
" }}}

" Rust related plugins {{{
Plug 'wting/rust.vim'
" }}}

" Color Scheme related plugins {{{
Plug 'overcache/NeoSolarized'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'

let g:molokai_original = 1
let g:rehash256 = 1

set termguicolors
set hlsearch
set nobackup

"""""""""""""""""""""""""""""""""""""""
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized
" set background=dark
" colorscheme NeoSolarized
"""""""""""""""""""""""""""""""""""""""

" }}}

" PlainTasks {{{
Plug 'elentok/plaintasks.vim'
" }}}

" Coc {{{
Plug 'neoclide/coc.nvim', {'branch':'release'}
" }}}

" Search tools {{{
Plug 'mhinz/vim-grepper'

nnoremap <leader>g :Grepper -tool git<cr>
nnoremap <leader>G :Grepper -tool ag<cr>

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Optional. The default behaviour should work for most users.
let g:grepper               = {}
let g:grepper.tools         = ['git', 'rg', 'ag']
let g:grepper.jump          = 1
let g:grepper.next_tool     = '<leader>g'
let g:grepper.simple_prompt = 1
let g:grepper.quickfix      = 0
" }}}

" Auto Pairs {{{
Plug 'jiangmiao/auto-pairs'

let g:AutoPairs             = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '```':'```', '"""':'"""', "'''":"'''"}
let g:AutoPairsShortcutJump = '<C-n>'
" }}}

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme settings here

if has("win64") || has("win32") || has("win16")
    colorscheme NeoSolarized
else has("mac") || has("unix")
    colorscheme molokai
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
