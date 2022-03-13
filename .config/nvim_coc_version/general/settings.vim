" ============================================================================
" General and Micellaneous
" ============================================================================

" whitespace
set autoindent                  " Insert indent on newline
set cindent	                		" Autoindent for C
set smartindent		            	" Aware of {, }, etc
set scrolloff=2			            " Lines between cursor and screen
set softtabstop=2		            " Width of <Tab>
set tabstop=2	  	              " Width of interpretation of <Tab>
set shiftwidth=2	              " Width of >> and <<
set expandtab			              " <Tab> to spaces, <C-v><Tab> for real tab
set smarttab			              " <Tab> at line start obeys shiftwidth
set backspace=eol,start,indent	" Backspace same as other programs


" command mode
set wildmenu                    " Command mode autocompletion list
set wildmode=longest:full,full  " <Tab> spawns wildmenu, then <Tab> to cycle list
set ignorecase                  " Case-insensitive search
set smartcase                   " ... except when uppercase characters are typed
set incsearch                   " Search as I type

" file
set autoread                    " Auto load when current file is edited somewhere

" performance
set lazyredraw                  " Screen not updated during macros, etc

" vimdiff
set diffopt+=iwhite             " Ignore whitespace
set diffopt+=algorithm:patience " Use the patience algorithm
set diffopt+=indent-heuristic   " Internal diff lib for indents

" appearance
set showmatch                   " Highlight matching braces
set guicursor=                  " Use terminal-default cursor shape
"set background=dark             " Dark background
set number relativenumber       " Show relative line number



" misc
set iskeyword+=-		" treat dash separated words as a word text object
"set mouse=a                     " Mouses are useful for visual selection
set history=256                 " History for commands, searches, etc

" Embed lua syntax highlighting in vimscript
let g:vimsyn_embed = 'l'
set cursorline
augroup CursorLine
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter, * setlocal cursorline   " Enable when entering window
  autocmd WinLeave * setlocal nocursorline  " Disable when leaving window
augroup END

" Syntax highlighting
"if has("syntax")
syntax on
"endif

" Persistent undo
if has('persistent_undo')
  let &undodir = stdpath('data') . '/undodir' 
  set undofile
  if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
  endif
end


