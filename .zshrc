#-------------------------------------------------------------------
# Zsh and oh-my-zsh configs
#-------------------------------------------------------------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to .zshrc
export ZSHRC="$HOME/.zshrc"

# Path to nconf
export NCONF="$HOME/.config/nvim/init.vim"

# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Name of theme to load
ZSH_THEME=powerlevel10k/powerlevel10k

# Hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# Update without asking me
DISABLE_UPDATE_PROMPT="true"

# Oh-my-zsh plugins
plugins=(git fast-syntax-highlighting zsh-autosuggestions)

# Configure oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Language environment
export LANG=en_US.UTF-8

# Enable dircolors
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi

# Shell options
setopt nonomatch

# Zsh autosuggestion color
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#-------------------------------------------------------------------
# Powerlevel10k
#-------------------------------------------------------------------
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Powerlevel9k options override p10k
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="Default"
POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon host dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv anaconda time)

#-------------------------------------------------------------------
# Language-specific
#-------------------------------------------------------------------
source "$HOME/.dotmodules/zshrc/python-env.sh"

#-------------------------------------------------------------------
# Command-line tools
#-------------------------------------------------------------------

# The brew told me to add this path for ruby
export PATH="/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"

# I like keeping things here
export PATH="$HOME/.local/bin:$PATH"

# fzf

# autojump
[[ -s "$HOME/.autojump/etc/profile.d/autojump.sh" ]] &&
    source "$HOME/.autojump/etc/profile.d/autojump.sh"
autoload -U compinit && compinit -u

# direnv
eval "$(direnv hook zsh)"

#-------------------------------------------------------------------
# Aliases
#-------------------------------------------------------------------
# git
alias gcm='git commit -m'

# dotfile management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
compdef dotfiles=git
alias dst='dotfiles status'
alias da='dotfiles add'
alias dcm='dotfiles commit -m'
alias dco='dotfiles checkout'
alias dp='dotfiles push'
alias dl='dotfiles pull'
alias ddf='dotfiles difftool'
alias chrome="open -a 'Google Chrome'"

# nvim
alias nconf="nvim $HOME/.config/nvim/init.vim"
alias vi="~/.local/nvim-osx64/bin/nvim"

#-------------------------------------------------------------------
# Environment variables
#-------------------------------------------------------------------
# If you come from bash you might have to change your $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# /usr/local/lib should be in LD_LIBRARY_PATH
export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"

# nvim as editor
export EDITOR="nvim"

# nvim as manpage viewer
export MANPAGER="nvim +Man!"
export MANWIDTH=999

#-------------------------------------------------------------------
# Machine-specific
#-------------------------------------------------------------------
source "$HOME/.dotmodules/zshrc/machine-specific.sh"

# For conda
source ~/.bash_profile

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export OBSIDIAN_VAULTS="/Users/eomiso/Library/Mobile Documents/iCloud~md~obsidian/Documents/"
