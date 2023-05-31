# !/bin/bash

#Install zsh
sudo apt install zsh

# Install helix with themes and config
sudo add-apt-repository --yes ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix 

# Insall helix theme 
mkdir ~/.config/helix && mkdir ~/.config/helix/themes
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/onedark.toml -O ~/.config/helix/themes/onedark.toml

# Install LSP's
npm install --location=global pyright
npm i -g vscode-langservers-extracted

# Setting helix config
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/config.toml -O ~/.config/helix/config.toml
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/languages.toml -O ~/.config/helix/languages.toml

# Install lazygit
wget https://github.com/jesseduffield/lazygit/releases/download/v0.38.2/lazygit_0.38.2_Linux_x86_64.tar.gz
tar -xvf lazygit_0.38.2_Linux_x86_64.tar.gz
sudo mv lazygit /usr/local/bin

# Install lf & it's config
wget https://github.com/gokcehan/lf/releases/download/r30/lf-linux-amd64.tar.gz
tar -xvf lf-linux-amd64.tar.gz
sudo mv ./lf /usr/local/bin

sudo apt install -y bat
mkdir ~/.config/lf
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/lfrc -O ~/.config/lf/lfrc
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/batter -O ~/.config/lf/batter


# Install ohmyzsh and powerlevel10k theme
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup dotfiles
cd ~
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/.p10k.zsh
rm .zshrc && wget https://gitlab.com/0xmzfr/mydots/-/raw/main/.zshrc ~/.zshrc
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/aliases.git.zsh -O ~/.oh-my-zsh/custom/aliases.git.zsh

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Cleanup
rm lazygit_0.38.2_Linux_x86_64.tar.gz  wkhtmltox_0.12.6.1-2.jammy_amd64.deb LICENSE README.md