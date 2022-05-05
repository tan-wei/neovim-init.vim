" Enable Mouse
set mouse=a
if has("win64") || has("win32") || has("win16")
    source $VIMRUNTIME/mswin.vim
endif

" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
	" NOTE: DejaVuSansMono Nerd Font cauases 'bad fixed pitch metrics'
    GuiFont! DejaVuSansMono Nerd Font:h8
endif

" Set Ligatures
if exists(':GuiRenderLigatures')
    GuiRenderLigatures 1
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 1
endif

" Settings for neovide
if exists('g:neovide')
    set guifont=SauceCodePro\ Nerd\ Font

    " Allow copy paste in neovim
    let g:neovide_input_use_logo = 1
    map <D-v> "+p<CR>
    map! <D-v> <C-R>+
    tmap <D-v> <C-R>+
    vmap <D-c> "+y<CR>
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
