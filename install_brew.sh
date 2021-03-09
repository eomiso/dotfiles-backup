mv $HOME
mkdir .local/homebrew/ && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ./local/homebrew


brew install nvim
brew install tmux
