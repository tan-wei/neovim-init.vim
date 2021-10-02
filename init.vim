""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings section

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
" Remap general commands section

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
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mhinz/vim-startify'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/vim-cursorword'
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'liuchengxu/eleline.vim'
Plug 'tpope/vim-repeat'

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

Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'rhysd/git-messenger.vim'
Plug 'gregsexton/gitv'
" }}}

" Markdown related plugins {{{
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'


let g:vim_markdown_math = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_disabled = 1

Plug 'mzlogin/vim-markdown-toc'

let g:vmt_auto_update_on_save = 0

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

let g:mkdp_path_to_chrome = "chrome"
let g:mkdp_markdown_css=''

Plug 'dhruvasagar/vim-table-mode'

" Markdown-compatible tables use
let g:table_mode_corner='|'

Plug 'dkarter/bullets.vim'

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \]

" Line spacing between bullets (1 = no blank lines, 2 = one blank line, etc.)
let g:bullets_line_spacing = 1
let g:bullets_pad_right    = 1
let g:bullets_pad_right    = 0
" }}}


" Snippet related plugins {{{
" }}}

" Comment related plugins {{{
Plug 'preservim/nerdcommenter'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Plug 'folke/todo-comments.nvim'
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
Plug 'rust-lang/rust.vim'
" }}}

" Color Scheme related plugins {{{
Plug 'overcache/NeoSolarized'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'as': 'dracula' }

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

let g:coc_global_extensions = [ 'coc-json',
                              \ 'coc-git', 
							  \ 'coc-markdown-preview-enhanced', 
							  \ 'coc-spell-checker',
							  \ 'coc-lists',
							  \ 'coc-snippets',
							  \ 'coc-yank' ]

" Config for 'coc-spell-checker'
" <leader>aap for current paragraph
" <leader>aw for current word

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

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

Plug 'tpope/vim-surround'

" }}}

" Finder {{{
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" }}}

" Menus related plugins {{{
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lambdalisue/nerdfont.vim'

Plug 'liuchengxu/vista.vim'
""" }}}

" Highligh related plugins {{{
Plug 't9md/vim-quickhl'

nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)

nmap <Space>w <Plug>(quickhl-manual-this-whole-word)
xmap <Space>w <Plug>(quickhl-manual-this-whole-word)

nmap <Space>c <Plug>(quickhl-manual-clear)
vmap <Space>c <Plug>(quickhl-manual-clear)

nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

nmap <Space>j <Plug>(quickhl-cword-toggle)
nmap <Space>] <Plug>(quickhl-tag-toggle)
map H <Plug>(operator-quickhl-manual-this-motion)

" }}}

" Indent related plugins {{{
Plug 'Yggdroot/indentLine'

let g:indentLine_char_list  = ['|', '¦', '┆', '┊']
" Keep our conceal setting
" let g:indentLine_setConceal = 0
" }}}

" Syntax checkers {{{
Plug 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list            = 1
let g:syntastic_check_on_open            = 0
let g:syntastic_check_on_wq              = 0
" Now disable all messages
let g:syntastic_quiet_messages           = { "type": "style" }
" }}}

" Comment related plugins {{{
Plug 'tyru/caw.vim'
" }}}

" Code refactor related plugins {{{
Plug 'AndrewRadev/splitjoin.vim'
" }}}

" Documentation generation related plugins {{{
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" }}}

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme settings here

if has("win64") || has("win32") || has("win16")
    colorscheme NeoSolarized
elseif has("mac") || has("unix")
    colorscheme molokai
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wilder.nvim settings here

call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Down>',
      \ 'reject_key': '<Up>',
      \ })

call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'highlighter': wilder#basic_highlighter(),
      \ 'left': [
      \   ' ', wilder#popupmenu_devicons(),
      \ ],
      \ 'right': [
      \   ' ', wilder#popupmenu_scrollbar(),
      \ ],
      \ }))

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wilder.nvim settings here

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'

" Set the executive for some filetypes explicitly. Use the explicit executive
" instead of the default one for these filetypes when using `:Vista` without
" specifying the executive.
let g:vista_executive_for = {
  \ 'cpp': 'vim_lsp',
  \ 'php': 'vim_lsp',
  \ }

" Declare the command including the executable and options used to generate ctags output
" for some certain filetypes.The file path will be appened to your custom command.
" For example:
let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }

" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
