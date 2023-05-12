# !/bin/bash

#sudo apt update && sudo apt -y upgrade

#Install zsh
#sudo apt install zsh

# Install Neovim latest version
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar -xvf nvim-linux64.tar.gz
sudo mv ./nvim-linux64/bin/nvim /home/gitpod/.local/bin

#Install lunarvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k