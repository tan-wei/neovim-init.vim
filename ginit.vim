" Enable Mouse
set mouse=a
if has("win64") || has("win32") || has("win16")
    source $VIMRUNTIME/mswin.vim
endif

" Set Editor Font
if exists(':GuiFont')
    if has("win64") || has("win32") || has("win16")
        " Use GuiFont! to ignore font errors
        " NOTE: DejaVuSansMono Nerd Font causes 'bad fixed pitch metrics'
        GuiFont! DejaVuSansMono Nerd Font:h8
    elseif has('mac')
        GuiFont! DejaVuSansMono Nerd Font:h12
    endif
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
    if has("win64") || has("win32") || has("win16")
      set guifont=DejaVuSansMono\ Nerd\ Font:h8   
    elseif has('mac')
	    " Allow copy paste in neovim on MacOS
	    set guifont=SauceCodePro\ Nerd\ Font
        let g:neovide_input_use_logo = 1
        map <D-v> "+p<CR>
        map! <D-v> <C-R>+
        tmap <D-v> <C-R>+
        vmap <D-c> "+y<CR>
    endif
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
