# dotfiles
dot files for setting up a new computer

You might need build-essential before installing brew
```
export PATH="$HOME/.local/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export VIMRUNTIME="$HOME/.local/tmp/nvim-linux64/share/nvim/runtime"
alias vi="nvim"
alias nconf="nvim ~/.config/nvim/"
[ -f ~/.fzf.bash ] && source ~/.fzf.zsh
export ZSHRC="$HOME/.zshrc"
# Path to nconf
export NCONF="$HOME/.config/nvim/init.vim"
# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"
```

File structure
```
.
└── dotfiles
    ├── .config
    │   ├── coc
    │   │   ├── extensions
    │   │   │   ├── db.json
    │   │   │   ├── node_modules
    │   │   │   │   └── coc-json
    │   │   │   │       ├── Readme.md
    │   │   │   │       ├── esbuild.js
    │   │   │   │       ├── lib
    │   │   │   │       │   ├── index.js
    │   │   │   │       │   └── server.js
    │   │   │   │       ├── package.json
    │   │   │   │       └── sync.sh
    │   │   │   └── package.json
    │   │   ├── list-extensions-history.json
    │   │   ├── list-links-history.json
    │   │   ├── list-lists-history.json
    │   │   ├── list-symbols-history.json
    │   │   ├── lists
    │   │   └── memos.json
    │   ├── fish
    │   │   ├── fishd.martini
    │   │   └── functions
    │   │       ├── fish_user_key_bindings.fish
    │   │       └── fzf_key_bindings.fish -> /csehome/ytrtef/.fzf/shell/key-bindings.fish
    │   └── nvim
    │       ├── coc-settings.json
    │       ├── general
    │       │   ├── functions.vim
    │       │   └── settings.vim
    │       ├── init.vim
    │       ├── keys
    │       │   ├── mappings.vim
    │       │   └── which-key.vim
    │       └── vim-plug
    │           ├── auto-pair.vim
    │           ├── barbar.vim
    │           ├── coc.vim
    │           ├── editorconfig-vim.vim
    │           ├── fzf.vim
    │           ├── gitgutter_fugitive.vim
    │           ├── nerdtree.vim
    │           ├── plugins.vim
    │           └── theme.vim
    ├── .p10k.zsh
    ├── .tmux.conf
    ├── .zshrc
    ├── README.md
    ├── install_brew.sh
    ├── install_nvim.sh
    └── install_zsh.sh
    
```
