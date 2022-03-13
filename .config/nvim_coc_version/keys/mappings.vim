" =============================================================================
" Key mappings
" =============================================================================

" General
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Unhighlight all search highlights
" nnoremap <silent> <C-c> :noh<CR>

" Leader mappings
let mapleader = "\<space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <Leader>sp :sp<CR>
nnoremap <Leader>v :vsp<CR>
''
nnoremap <Leader>p :echo expand('%')<CR>

" Delete selected area and replace with yanked content
vnoremap <Leader>p "_dP

"Neovim terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" <C-c> and <ESC> are not the same
" inoremap <C-c> <ESC>

" Closing brackets
inoremap (<CR> (<CR>)<ESC>O
inoremap {<CR> {<CR>}<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap ({<CR> (<bar><bar><space>{<CR>})<ESC>O<ESC>k$hhi

" Surrounding with brackets
nnoremap (<CR> i(<CR><ESC>o)<ESC>k^
nnoremap {<CR> i{<CR><ESC>o}<ESC>k^
nnoremap [<CR> i[<CR><ESC>o]<ESC>k^

" Diff mappings
nnoremap <Leader>dg :diffget<CR>
nnoremap <Leader>dp :diffput<CR>
nnoremap <Leader>gh :diffget //2<CR>
nnoremap <Leader>gl :diffget //3<CR>

" Move visual selection up and down
function! MoveDown(count) abort range
  if visualmode() == 'V' && a:lastline != line('$')
    let amount = min([a:count, line('$')-a:lastline])
    exec "'<,'>move '>+" . amount
    call feedkeys('gv=', 'n')
  endif
  call feedkeys('gv', 'n')
endfunction

function! MoveUp(count) abort range
  if visualmode() == 'V' && a:firstline != 1
    let amount = min([a:count, a:firstline-1]) + 1
    exec "'<,'>move '<-" . amount
    call feedkeys('gv=', 'n')
  endif
  call feedkeys('gv', 'n')
endfunction

xnoremap J :call MoveDown(v:count1)<CR>
xnoremap K :call MoveUp(v:count1)<CR>


" <leader> + hjkl to resize windows
nnoremap <Leader>K :resize -2<CR>
nnoremap <Leader>J :resize +2<CR>
nnoremap <Leader>H :vertical resize -2<CR>
nnoremap <Leader>L :vertical resize +2<CR>

" To incease or decrease the window size by a factor of 1.5, and decrease the
" window size by 0.67
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


