# !/bin/bash

#Install zsh
sudo apt install zsh

#Install lazygit
wget https://github.com/jesseduffield/lazygit/releases/download/v0.38.2/lazygit_0.38.2_Linux_x86_64.tar.gz
tar -xvf lazygit_0.38.2_Linux_x86_64.tar.gz
sudo mv lazygit /usr/local/bin
rm LICENSE README.md


# Install wkhtmltopdf
wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb
sudo dpkg -i wkhtmltox_0.12.6.1-2.jammy_amd64.deb
sudo apt-get -f -y install

# Install ohmyzsh and powerlevel10k theme
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


wget https://gitlab.com/0xmzfr/mydots/-/raw/main/.zshrc ~/.zshrc
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/aliases.git.zsh -O ~/.oh-my-zsh/custom/aliases.git.zsh