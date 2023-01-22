mv $HOME
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/eomiso/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/eomiso/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install nvim
brew install tmux

"install fuzzy"
brew install fzf

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

brew install ripgrep

brew install --HEAD universal-ctags/universal-ctags/universal-ctags

brew install the_silver_searcher

brew install fd

brew install node
