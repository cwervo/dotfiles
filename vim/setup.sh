#! /bin/sh

brew install neovim
mkdir -p ~/.config/nvim

pip3 install --user neovim # neovim Python 3 package
echo " ✨✨✨✨✨ \nPlease enter your system password (to install neovim Python 2.7 package): "
sudo easy_install neovim # neovim Python 2.7 package

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc

nvim "+PlugInstall" "+qall"
