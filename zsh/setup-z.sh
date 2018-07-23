#! /bin/zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

#for theme in `ls custom-themes`; do
#    ln -s ~/.zsh/$theme ~/.oh-my-zsh/themes/$theme
#done
