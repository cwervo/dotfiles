#!/usr/bin/env bash
#
# # Set ANSI color codes
# CYAN='\033[1;36m'
# YELLOW='\033[1;33m'
# BLUE='\033[0;34m'
# GREEN='\033[0;32m'
# NC='\033[0m' # No Color
#
# # Create necessary directories
# echo "Creating directories..."
# brew install neovim || true # Ignore if already installed
# mkdir -p ~/.config/nvim
# mkdir -p ~/.vim/.backup ~/.vim/.tmp ~/.vim/.undo
#
# # Setup Python for Neovim
# echo "Setting up Python for Neovim..."
# if command -v python3 -m venv &> /dev/null; then
#   # Create a Python virtual environment for Neovim if it doesn't exist
#   if [ ! -d ~/.config/nvim/py_env ]; then
#     python3 -m venv ~/.config/nvim/py_env
#     ~/.config/nvim/py_env/bin/pip install pynvim
#     echo "Created Python virtual environment for Neovim"
#   else
#     echo "Python virtual environment already exists"
#   fi
# else
#   echo "Warning: python3 venv module not available. Using system Python."
#   pip3 install --user pynvim || pip3 install --break-system-packages --user pynvim
# fi
#
# # Download and install Powerline fonts
# echo "Installing Powerline fonts..."
# git clone https://github.com/powerline/fonts.git --depth=1 /tmp/powerline-fonts
# cd /tmp/powerline-fonts
# ./install.sh
# cd - > /dev/null
# rm -rf /tmp/powerline-fonts
#
# # Install vim-plug
# echo "Installing vim-plug..."
# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
#   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#
# # Create symlinks if they don't exist
# echo "Creating symlinks..."
# ln -sf ~/dotfiles/vim ~/.vim
# ln -sf ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim
# ln -sf ~/dotfiles/vim/vimrc ~/.vimrc
#
# # Install plugins
# echo "Installing Neovim plugins..."
# nvim "+PlugInstall" "+UpdateRemotePlugins" "+qall"

# Print reminder to set terminal font
echo ""
echo -e "${CYAN}============================================================${NC}"
echo -e "${CYAN} ✅  VIM SETUP COMPLETE!${NC}"
echo -e "${CYAN}============================================================${NC}"
echo ""
echo -e "${YELLOW}⚠️  IMPORTANT: Set your terminal font to a Powerline font${NC}"
echo ""
echo -e "${BLUE}Recommended fonts:${NC}"
echo -e "  • ${GREEN}Meslo LG M for Powerline${NC}"
echo -e "  • ${GREEN}Source Code Pro for Powerline${NC}"
echo -e "  • ${GREEN}Ubuntu Mono derivative Powerline${NC}"
echo ""
echo -e "${BLUE}How to change font:${NC}"
echo -e "  • ${GREEN}iTerm2:${NC} Preferences → Profiles → Text → Font"
echo -e "  • ${GREEN}Terminal:${NC} Preferences → Profiles → Text → Change..."
echo ""
