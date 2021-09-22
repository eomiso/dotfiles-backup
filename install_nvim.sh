#install nvim
curl -LO https://github.com/neovim/neovim/releases/download/v0.5.0/nvim-macos.tar.gz
tar -xzvf nvim-osx64.tar.gz -C ~/.local

# you might have to set $VIMRUNTIME to .local/tmp/nvim-linux64/share/nvim/runtime/

#install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

#install vim plugins
installing "vim plugins"
nvim -E -s -u ~/.config/nvim/init.vim +PlugInstall +qall!

# you might have to set $VIMRUNTIME to nvim-linux64/share/nvim/runtime/
