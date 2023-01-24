# nvim Config

## Contents
- [Environment Setup](#Environment-Setup)
- [Terminal Customisation](#Terminal-Customisation)
- [Optional Packages](#Optional-Packages)

---
# Environment Setup
## Windows 10/11

Ensure WSL is enabled
```console
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
Update Package Repositories

## Install Dependencies

Install Dependencies
```console
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen gcc ripgrep fd-find gh
```
Install/Update nvm
```console
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```
Install npm
```console
nvm install --lts
```

## Install nvim

Clone Repo
```console
git clone https://github.com/neovim/neovim ~/neovim/
```
Make Build
```sh
cd ~/neovim/ && make CMAKE_BUILD_TYPE=RelWithDebInfo
```
Make Install
```console
sudo make install
```
Remove Repo
```console
cd ~ && rm -rf ~/neovim/
```
## Clone nvim config
```console
git clone https://github.com/Joshuahuahua/nvim.git ~/.config/nvim/
```  
Run `:so` and `:PackerSync` to sync libraries

---
# Terminal Customisation
## Install Font

Install desired font from [Nerd Fonts](https://www.nerdfonts.com/font-downloads)  
Current: [Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip)

## Install Starship
```console
curl -sS https://starship.rs/install.sh | sh
```
Append the following to your `.bashrc`  
```sh
eval "$(starship init bash)"
```

---
# Optional Packages
## Miniconda
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
```
```
bash Miniconda3-latest-Linux-x86_64.sh
```
## GitHub (gh)
```console
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
```
## LazyGit
```console
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
```
```console
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
```
```console
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
```
```console
rm lazygit.tar.gz
```
Add `.bashrc` alias
```console
alias lz='lazygit'
```
