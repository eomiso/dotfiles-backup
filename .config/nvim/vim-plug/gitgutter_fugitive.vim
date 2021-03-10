" =============================================================================
" vim-gitgutter
" =============================================================================
" Transparent git gutter backgrounds
let g:gitgutter_set_sign_backgrounds = 1

" The option above clears gutter icon foreground. Re-add.
autocmd VimEnter * highlight link GitGutterAdd Green
autocmd VimEnter * highlight link GitGutterChange Yellow
autocmd VimEnter * highlight link GitGutterChangeDelete Yellow
autocmd VimEnter * highlight link GitGutterDelete Red


" =============================================================================
" fugitive
" =============================================================================
nnoremap <Leader>gs :G<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiffsplit!<CR>


