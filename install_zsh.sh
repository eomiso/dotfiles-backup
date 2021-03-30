#!/bin/zsh

installing "Zsh"
wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
mkdir zsh && unxz zsh.tar.xz && tar -xvf zsh.tar -C zsh — strip-components 1
cd zsh && ./configure — prefix=$HOME
make && make install


installing "Oh-my-zsh"
export RUNZSH=no
export KEEP_ZSHRC=yes
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc

installing "Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"

installing "fast-syntax-highlighting"
git clone --depth=1 https://github.com/zdharma/fast-syntax-highlighting.git "$ZSH_CUSTOM/plugins/fast-syntax-highlighting"

installing "zsh-autosuggestions"
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

installing "fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
printf 'y\ny\nn\n' | ~/.fzf/install # Enable fuzzy-autoompletion and key bindings. Do not modify .zshrc.

installing "autojump"
git clone --depth=1 https://github.com/wting/autojump.git ~/_autojump
~/_autojump/install.py
rm -rf ~/_autojump

installing "direnv"
curl -sfL https://direnv.net/install.sh | bin_path=~/.local/bin bashc
