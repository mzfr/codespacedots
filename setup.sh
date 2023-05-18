# !/bin/bash

#Install zsh
sudo apt install zsh

#Install lazygit
wget https://github.com/jesseduffield/lazygit/releases/download/v0.38.2/lazygit_0.38.2_Linux_x86_64.tar.gz
tar -xvf lazygit_0.38.2_Linux_x86_64.tar.gz
sudo mv lazygit /usr/local/bin

# Install ohmyzsh and powerlevel10k theme
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup dotfiles
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/.p10k.zsh
rm .zshrc && wget https://gitlab.com/0xmzfr/mydots/-/raw/main/.zshrc ~/.zshrc
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/aliases.git.zsh -O ~/.oh-my-zsh/custom/aliases.git.zsh

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Cleanup
rm lazygit_0.38.2_Linux_x86_64.tar.gz  wkhtmltox_0.12.6.1-2.jammy_amd64.deb LICENSE README.md