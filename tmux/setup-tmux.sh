#! /bin/zsh


ln -s ~/dotfiles/tmux ~/.tmux
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

# Set up Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
