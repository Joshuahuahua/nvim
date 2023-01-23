# nvim Config

## Install Dependencies

Install Dependencies
```sh
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen gcc ripgrep fd-find
```
Install/Update nvm
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

## Install nvim

Clone Repo
```sh
git clone https://github.com/neovim/neovim
```
Make Build
```sh
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
```
Make Install
```sh
sudo make install
```
Clone nvim repo to .config directory
```sh
git clone https://github.com/Joshuahuahua/nvim.git ~/.config/nvim/
```

## Install Font

Install desired font from [Nerd Fonts](https://www.nerdfonts.com/font-downloads)  
[Hack Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.0/Hack.zip)
