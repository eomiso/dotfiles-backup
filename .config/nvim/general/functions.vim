" Toggle relativenumber
function! s:toggle_relnum() abort
  if &relativenumber
    set norelativenumber
  else
    set relativenumber
  endif
endfunction

nnoremap <silent> <Leader>r :call <SID>toggle_relnum()<CR>


" =============================================================================
" Autocommands
" =============================================================================
" Highlight search results only in command mode
"augroup vimrc-incsearch-highlight
"  autocmd!
"  autocmd CmdlineEnter /,\? :set hlsearch
"  autocmd CmdlineLeave /,\? :set nohlsearch
"augroup END

" Pick up where I left off
autocmd BufReadPost *
  \   if line("'\"") > 0 && line("'\"") <= line("$")
  \ |   exe "norm g`\""
  \ | endif

" Fix autoread
autocmd FocusGained,BufEnter * :checktime

" Tmux window renaming
if exists('$TMUX')
  autocmd BufEnter,FocusGained * call system("tmux rename-window " . expand("%:t"))
  autocmd VimLeave * call system("tmux rename-window zsh")
endif

" Resize splits when vim size changes
autocmd VimResized * execute "normal! \<c-w>="

" Highlight yanked text
autocmd TextYankPost * lua require'vim.highlight'.on_yank({"Substitute", 300})

" After this pressing gr on the local variable will bring you to 
" :s command where you simply should enter new_variable_name and press Enter
" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
