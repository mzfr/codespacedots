# !/bin/bash

#Install zsh
sudo apt install zsh

# Install helix with themes and config
wget https://github.com/helix-editor/helix/releases/download/23.03/helix-23.03-x86_64-linux.tar.xz
tar -xvf helix-23.03-x86_64-linux.tar.xz
cd helix-23.03-x86_64-linux && sudo cp hx /usr/local/bin && mkdir ~/.config/helix && mkdir ~/.config/helix/themes/ && cp -r runtime/themes/ ~/.config/helix/themes/default

# Install pyright and get helix config files
npm install --location=global pyright
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/config.toml -O ~/.config/helix/config.toml
wget https://gitlab.com/0xmzfr/mydots/-/raw/main/languages.toml -O ~/.config/helix/languages.toml

# Install lazygit
wget https://github.com/jesseduffield/lazygit/releases/download/v0.38.2/lazygit_0.38.2_Linux_x86_64.tar.gz
tar -xvf lazygit_0.38.2_Linux_x86_64.tar.gz
sudo mv lazygit /usr/local/bin

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