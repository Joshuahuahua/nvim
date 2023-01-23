# nvim Config

## Install Dependencies

Install Dependencies
```console
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen gcc ripgrep fd-find
```
Install/Update nvm
```console
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

## Install nvim

Clone Repo
```console
git clone https://github.com/neovim/neovim
```
Make Build
```sh
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
```
Make Install
```console
sudo make install
```
Clone nvim repo to .config directory
```console
git clone https://github.com/Joshuahuahua/nvim.git ~/.config/nvim/
```

## Install Font

Install desired font from [Nerd Fonts](https://www.nerdfonts.com/font-downloads)  
[Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/latest/Hack.zip)
