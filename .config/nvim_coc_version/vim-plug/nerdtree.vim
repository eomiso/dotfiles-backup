" =============================================================================
" NERDTree
" =============================================================================
nnoremap <silent> <C-f> :NERDTreeFind<CR>

" NERDTreeToggle but does not move focus
function! NERDTreeToggleNoFocus()
  if (exists("g:NERDTree") && g:NERDTree.IsOpen() == 1)
    NERDTreeClose
  else
    NERDTreeFind
    wincmd p
  endif
endfunction
nnoremap <Leader>n :call NERDTreeToggleNoFocus()<CR>

" Open NERDTree on startup
function! NERDTreeStartup()
  if (&diff == 0 && &columns > 125)
    call NERDTreeToggleNoFocus()
  endif
endfunction
if argc() > 0 
  autocmd VimEnter * silent call NERDTreeStartup()
endif

" Quit NERDTree when its the only window open
function! NERDTreeAutoQuit()
  if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
    q
  endif
endfunction
autocmd BufEnter * silent call NERDTreeAutoQuit()

" Key mappings
let NERDTreeMapOpenInTab='<C-g>'
let NERDTreeMapOpenSplit='<C-s>'
let NERDTreeMapOpenVSplit='<C-v>'
let NERDTreeShowHidden=1

" For systems without pretty arrows
" let g:NERDTreeDirArrowExpandable = '>'
" let g:NERDTreeDirArrowCollapsible = 'v'
