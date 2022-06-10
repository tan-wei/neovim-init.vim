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
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set fileencodings=utf-8,gb18030,gbk,gb2312
set termencoding=utf-8
set encoding=utf-8
set incsearch " incremental search

" always display statusline
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

Plug 'ntpeters/vim-better-whitespace'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'easymotion/vim-easymotion'

" Plug 'liuchengxu/eleline.vim'
" let g:eleline_powerline_fonts = 1

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

Plug 'tpope/vim-repeat'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-abolish'

Plug 'yegappan/mru'
let MRU_File = '~/.config/nvim/plugged/_nvim_mru_files'


" Tabline related plugins
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Configure of barbar.nvim
" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" New tabs are opened next to the currently selected tab.
" Enable to insert them in buffer number order.
let bufferline.add_in_buffer_number_order = v:false

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
" if set to 'buffer_number_with_icon', will show buffer number and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null

" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseAllButCurrentOrPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

Plug 'wellle/context.vim'
Plug 'junegunn/goyo.vim'

Plug 'junegunn/limelight.vim'
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'

" TODO: Disable siderbar.nvim, due to its error messages
" Plug 'sidebar-nvim/sidebar.nvim'


" }}}

" Git related plugins {{{
Plug 'airblade/vim-gitgutter'

Plug 'APZelos/blamer.nvim'

let g:blamer_enabled = 1

Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
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
let g:bullets_line_spacing             = 1
let g:bullets_pad_right                = 1
let g:bullets_pad_right                = 0
let g:bullets_checkbox_partials_toggle = 1
let g:bullets_checkbox_markers         = ' .oOX' " or '✗○◐●✓'

" markdown-drawer
Plug 'Scuilion/markdown-drawer'

let g:markdrawer_prefix            = " "
let g:markdrawer_goto              = "o"
let g:markdrawerDelete             = "D"
let g:markdrawer_width             = "25"
let g:markdrawer_paste_below       = "p"
let g:markdrawer_increase          = "+"
let g:markdrawer_decrease          = "-"
let g:markdrawer_to_delete_color   = "Red"

let g:markdrawer_drawer_max_levels = 4 " max levels to display
let g:markdrawer_toc               = 'index' " displays as a TOC
let g:markdrawer_toc               = 'full_index' " displays as a TOC, no index reset

nnoremap <Leader>md :MarkDrawer<cr>

" vim-markdown-toc
Plug 'mzlogin/vim-markdown-toc'

let g:vmt_auto_update_on_save     = 0
let g:vmt_dont_insert_fence       = 0
let g:vmt_cycle_list_item_markers = 1
let g:vmt_fence_text              = 'TOC'
let g:vmt_fence_closing_text      = '/TOC'
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

Plug 'numToStr/Comment.nvim'
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

" Random choice a color scheme
Plug 'Sammyalhashe/random_colorscheme.vim'

Plug 'overcache/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'

Plug 'tomasr/molokai'
let g:molokai_original = 1
let g:rehash256 = 1

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ajmwagar/vim-deus'
Plug 'joshdick/onedark.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'jacoborus/tender.vim'
Plug 'savq/melange'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'itchyny/landscape.vim'
Plug 'glepnir/zephyr-nvim'
Plug 'marko-cerovac/material.nvim'
Plug 'w0ng/vim-hybrid'
Plug 'junegunn/seoul256.vim'
Plug 'shaeinst/roshnivim-cs'

Plug 'Mofiqul/vscode.nvim'
let g:vscode_style = "dark"

Plug 'ray-x/aurora'

Plug 'srcery-colors/srcery-vim'
let g:srcery_italic = 1

Plug 'alessandroyorba/despacio'
" Dark Grey Background
" let g:despacio_Sunset = 1
" Even Darker Grey Background
" let g:despacio_Twilight = 1
" Almost Black Background
let g:despacio_Midnight = 1
" Black Background"
" let g:despacio_Pitch = 1

Plug 'sainnhe/everforest'
Plug 'cocopon/iceberg.vim'
Plug 'sainnhe/sonokai'
Plug 'fenetikm/falcon'
Plug 'jordwalke/flatlandia'
Plug 'cseelus/vim-colors-lucid'
Plug 'olimorris/onedarkpro.nvim'
Plug 'romainl/Apprentice'

Plug 'AlessandroYorba/Alduin'
" Almost Black Background
let g:alduin_Shout_Dragon_Aspect = 1
" Black Background
" let g:alduin_Shout_Become_Ethereal = 1

Plug 'tlhr/anderson.vim'

Plug 'sainnhe/gruvbox-material'
" let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_background    = 'medium'
let g:gruvbox_material_enable_bold   = 1
let g:gruvbox_material_enable_italic = 1

Plug 'sainnhe/edge'
" let g:edge_style = 'default'
" let g:edge_style = 'aura'
let g:edge_style         = 'neon'
let g:edge_enable_italic = 1

Plug 'ayu-theme/ayu-vim'
let ayucolor = "dark"

Plug 'NLKNguyen/papercolor-theme'

Plug 'chriskempson/base16-vim'
let base16colorspace = 256

Plug 'rebelot/kanagawa.nvim'
Plug 'Rigellute/rigel'

Plug 'KeitaNakamura/neodark.vim'
let g:neodark#italics = 1

Plug 'projekt0n/github-nvim-theme'
Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'flazz/vim-colorschemes'
Plug 'liuchengxu/space-vim-dark'
Plug 'jaredgorski/SpaceCamp'
Plug 'arzg/vim-substrata'
Plug 'mhinz/vim-janah'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'Rigellute/shades-of-purple.vim'
Plug 'kyazdani42/blue-moon'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'zacanger/angr.vim'

Plug 'tyrannicaltoucan/vim-quantum'
let g:quantum_black   = 1
let g:quantum_italics = 1

Plug 'jnurmine/zenburn'

Plug 'kvrohit/rasmus.nvim'
let g:rasmus_italic_functions = 1
let g:rasmus_bold_functions   = 1
let g:rasmus_variant          = "monochrome"

Plug 'sjl/badwolf'
" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
" Make the tab line:
"                   0 darker than the background
"                   1 the same color as the background.
"                   2 lighter than the background
"                   3 much lighter than the background
let g:badwolf_tabline    = 2

Plug 'jpo/vim-railscasts-theme'

Plug 'ackyshake/Spacegray.vim'
let g:spacegray_underline_search = 1
let g:spacegray_use_italics      = 1
let g:spacegray_low_contrast     = 1

Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tjdevries/colorbuddy.nvim'

Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
let g:gruvbox_baby_function_style   = "bold"
let g:gruvbox_baby_keyword_style    = "italic"
let g:gruvbox_baby_telescope_theme  = 1
let g:gruvbox_baby_transparent_mode = 1


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

" General Completion related plugins {{{
Plug 'neoclide/coc.nvim', {'branch':'release'}

let g:coc_global_extensions = [
                              \ 'coc-json',
                              \ 'coc-git',
                              \ 'coc-markdown-preview-enhanced',
                              \ 'coc-spell-checker',
                              \ 'coc-lists',
                              \ 'coc-snippets',
                              \ 'coc-yank'
                              \ ]

" Config for 'coc-spell-checker'
" <leader>aap for current paragraph
" <leader>aw for current word

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)


" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" " Use deoplete.
" let g:deoplete#enable_at_startup = 1

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
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
Plug 'LunarWatcher/auto-pairs'

let g:AutoPairs             = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '```':'```', '"""':'"""', "'''":"'''"}
let g:AutoPairsShortcutJump = '<C-n>'

Plug 'tpope/vim-surround'
Plug 'machakann/vim-sandwich'

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
Plug 'gfanto/fzf-lsp.nvim'
if has('mac') || has('unix')
    Plug 'antoinemadec/coc-fzf'
endif

Plug 'rhysd/clever-f.vim'
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


Plug 'mtdl9/vim-log-highlighting'

Plug 'nvim-lua/plenary.nvim'
Plug 'folke/todo-comments.nvim'

" }}}

" Indent related plugins {{{
Plug 'Yggdroot/indentLine'

let g:indentLine_char_list  = ['|', '¦', '┆', '┊']
" Keep our conceal setting
let g:indentLine_setConceal = 0
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
" Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
" }}}

" Undo management {{{

" Cuase some error messages when exit
if has("mac") || has("unix")
    Plug 'mbbill/undotree'

    nnoremap <F5> :UndotreeToggle<CR>

    if has("persistent_undo")
       let target_path = expand('~/.undodir')

        " create the directory and any parent directories
        " if the location does not exist.
        if !isdirectory(target_path)
            call mkdir(target_path, "p", 0700)
        endif

        let &undodir=target_path
        set undofile
    endif
elseif has("win64") || has("win32") || has("win16")
    Plug 'simnalamburt/vim-mundo'

    " Enable persistent undo so that undo history persists across vim sessions
    set undofile
    set undodir=~/.vim/undo

    nnoremap <F5> :MundoToggle<CR>
endif

" }}}

" Align related plugins {{{
Plug 'junegunn/vim-easy-align'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

" Note taking related plugins {{{
Plug 'jbyuki/venn.nvim'
" }}}

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme settings here
let g:random_scheme = 1
let g:random_disabled = 0

let g:available_colorschemes = [
                               \ 'NeoSolarized',
                               \ 'gruvbox',
                               \ 'deus',
                               \ 'onedark',
                               \ 'jellybeans',
                               \ 'tender',
                               \ 'melange',
                               \ 'molokai',
                               \ 'nord',
                               \ 'one',
                               \ 'OceanicNext',
                               \ 'palenight',
                               \ 'gotham',
                               \ 'gotham256',
                               \ 'landscape',
                               \ 'zephyr',
                               \ 'material',
                               \ 'hybrid',
                               \ 'seoul256',
                               \ 'rvcs',
                               \ 'vscode',
                               \ 'aurora',
                               \ 'srcery',
                               \ 'despacio',
                               \ 'everforest',
                               \ 'iceberg',
                               \ 'evening',
                               \ 'sonokai',
                               \ 'falcon',
                               \ 'flatlandia',
                               \ 'lucid',
                               \ 'onedarkpro',
                               \ 'apprentice',
                               \ 'alduin',
                               \ 'anderson',
                               \ 'gruvbox-material',
                               \ 'ayu',
                               \ 'PaperColor',
                               \ 'base16-default-dark',
                               \ 'base16-oceanicnext',
                               \ 'kanagawa',
                               \ 'rigel',
                               \ 'neodark',
                               \ 'github_dark',
                               \ 'github_dark_colorblind',
                               \ 'github_dark_default',
                               \ 'github_dimmed',
                               \ 'nightfox',
                               \ 'tokyonight',
                               \ 'dracula',
                               \ 'space-vim-dark',
                               \ 'spacecamp',
                               \ 'lizard256',
                               \ 'wombat256',
                               \ 'substrata',
                               \ 'janah',
                               \ 'embark',
                               \ 'shades_of_purple',
                               \ 'shades-of-teal',
                               \ 'blue-moon',
                               \ 'challenger_deep',
                               \ 'angr',
                               \ '0x7A69_dark',
                               \ 'quantum',
                               \ 'zenburn',
                               \ 'rasmus',
                               \ 'badwolf',
                               \ 'railscasts',
                               \ 'spacegray',
                               \ 'onehalfdark',
                               \ 'cobalt2',
                               \ 'gruvbox-baby',
                               \ ]

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
" vista.nvim settings here

" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" let g:vista_icon_indent = ["▸ ", ""]

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

" Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
let g:vista#renderer#enable_icon = 1

" The default icons can't be suitable for all the filetypes, you can extend it as you wish.
let g:vista#renderer#icons = {
                             \   "function": "\uf794",
                             \   "variable": "\uf71b",
                             \  }

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

nnoremap <silent><nowait> <space>m :<C-u>Vista!!<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configurations of todo-comments.nvim
lua << EOF
  require("todo-comments").setup({
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  })
EOF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configurations of Comment.nvim
lua require('Comment').setup()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configurations of sidebar.nvim
" TODO: Disable siderbar.nvim, due to its error messages
" lua << EOF
"   require("sidebar-nvim").setup({
"     disable_default_keybindings = 0,
"     bindings = nil,
"     open = false,
"     side = "left",
"     initial_width = 35,
"     hide_statusline = false,
"     update_interval = 1000,
"     sections = { "datetime", "git", "diagnostics" },
"     section_separator = {"", "-----", ""},
"     containers = {
"       attach_shell = "/bin/sh", show_all = true, interval = 5000,
"     },
"     datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
"     todos = { ignored_paths = { "~" } },
"   })
" EOF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""