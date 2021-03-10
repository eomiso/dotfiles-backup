mv $HOME
mkdir .local/homebrew/ && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ./local/homebrew


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
