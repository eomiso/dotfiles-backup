" =============================================================================
" Colorscheme-specific configs
" =============================================================================

" Copy from another highlight group
function! CopyFrom(to, from, term, reset)
  let terms = execute('highlight ' . a:from)
  let target = matchstr(terms, a:term . '=\S*')
  if a:reset
    let command = 'highlight! '
  else
    let command = 'highlight '
  endif
  execute('silent ' . command . a:to . ' ' . target)
endfunction

" 24-bit RGB colors
set termguicolors

"" For Dracula
"set pyxversion=3
"
"let g:dracula_bold = 1
"let g:dracula_italic = 1
"let g:dracula_underline = 1
"let g:dracula_undercurl = 1
"let g:dracula_inverse = 1
"let g:dracula_colortermn = 1
"
"colorscheme dracula

" For gruvbox
" One function for one colorscheme
" I could reuse some parts, but I cannot care less.
function! Plain()
  colorscheme plain

  hi! link LspDiagnosticsDefaultError Constant
  hi! link LspDiagnosticsDefaultWarning Constant
  hi! link LspDiagnosticsDefaultInformation Constant
  hi! link LspDiagnosticsDefaultHint Constant

  let g:airline_theme = 'gruvbox_material'

  " Search matches (from gruvbox-community)
  highlight! Search     cterm=reverse ctermfg=214 ctermbg=235 gui=reverse guifg=#fabd2f guibg=#282828
  highlight! IncSearch  cterm=reverse ctermfg=208 ctermbg=235 gui=reverse guifg=#fe8019 guibg=#282828

  " Vimdiff (from gruvbox-community)
  highlight! DiffText   cterm=reverse ctermfg=214 ctermbg=235 gui=reverse guifg=#fabd2f guibg=#282828
  highlight! DiffAdd    cterm=reverse ctermfg=142 ctermbg=235 gui=reverse guifg=#b8bb26 guibg=#282828
  highlight! DiffDelete cterm=reverse ctermfg=167 ctermbg=235 gui=reverse guifg=#fb4934 guibg=#282828

  " Sneak (from gruvbox-material)
  highlight! link Sneak Search
  highlight! link SneakLabel Search
  highlight! link SneakScope DiffText
endfunction

"call Plain()

function! GruvboxMaterial()

  colorscheme gruvbox-material
  let g:gruvbox_material_enable_italic = 1
  let g:gruvbox_material_disable_italic_comment = 1
  let g:gruvbox_material_palette = 'original'
  let g:gruvbox_material_transparent_background = 1
  let g:gruvbox_material_statusline_style = 'original'

  

  let g:airline_theme = 'gruvbox_material'
  let g:gruvbox_material_background = 'soft'
  " Transparent tabline
  highlight! TabLineFill NONE

  " Search matches (from gruvbox-community)
  highlight! Search     cterm=reverse ctermfg=214 ctermbg=235 gui=reverse guifg=#fabd2f guibg=#282828
  highlight! IncSearch  cterm=reverse ctermfg=208 ctermbg=235 gui=reverse guifg=#fe8019 guibg=#282828

  " Vimdiff (from gruvbox-community)
  highlight! DiffText   cterm=reverse ctermfg=214 ctermbg=235 gui=reverse guifg=#fabd2f guibg=#282828
  highlight! DiffAdd    cterm=reverse ctermfg=142 ctermbg=235 gui=reverse guifg=#b8bb26 guibg=#282828
  highlight! DiffDelete cterm=reverse ctermfg=167 ctermbg=235 gui=reverse guifg=#fb4934 guibg=#282828

  " Current line number (fg from Yellow, bg from CursorLine)
  call CopyFrom('CursorLineNr', 'Yellow',     'ctermfg', 1)
  call CopyFrom('CursorLineNr', 'CursorLine', 'ctermbg', 0)
  call CopyFrom('CursorLineNr', 'Yellow',     'guifg',   0)
  call CopyFrom('CursorLineNr', 'CursorLine', 'guibg',   0)

  " Sneak (from gruvbox-material)
  highlight! link Sneak Search
  highlight! link SneakLabel Search
  highlight! link SneakScope DiffText
endfunction
call GruvboxMaterial()


