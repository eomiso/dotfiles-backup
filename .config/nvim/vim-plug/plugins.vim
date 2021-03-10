call plug#begin(stdpath('data') . 'plugged')
" editing
" Plug 'editorconfig/editorconfig-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'kiteco/vim-plugin'
  Plug 'jiangmiao/auto-pairs'
  Plug 'FooSoft/vim-argwrap'
" appearance
  Plug 'vim-airline/vim-airline'
" Plug 'dracula/vim',{'as':'dracula'}
  Plug 'kyazdani42/nvim-web-devicons'
" Plug 'sainnhe/sonokai'
  Plug 'sainnhe/gruvbox-material'
" Plug 'gruvbox-community/gruvbox'
  Plug 'andreypopp/vim-colors-plain'
  Plug 'romgrk/barbar.nvim'
" git integration
" Plug 'tpope/vim-fugitive' 
" Plug 'airblade/vim-gitgutter'
" navigation
  Plug 'scrooloose/nerdtree', {'on': ['NERDTreeToggle', 'NERDTreeFind']}
  Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
call plug#end()

" =============================================================================
" editorconfig-vim
" =============================================================================
"let g:EditorConfig_exclude_patterns = ['fugitive://.*'] " for compatibility with vim-fugitive
"let g:EditorConfig_verbose = 1


