# !/bin/bash

#sudo apt update && sudo apt -y upgrade

#Install zsh
#sudo apt install zsh

# Install Neovim latest version
sudo apt-get install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
git checkout stable
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install 

#Install lunarvim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k