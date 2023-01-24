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
