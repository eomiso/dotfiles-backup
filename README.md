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
