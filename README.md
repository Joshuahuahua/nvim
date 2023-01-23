# nvim Config

## Install Dependencies

Install Dependencies
```sh
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen gcc ripgrep fd-find
```
Install/Update nvm
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```
## Install nvim
Clone Repo
```
git clone https://github.com/neovim/neovim
```
Make Build
```
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
```
Make Install
```
sudo make install
```

Clone nvim repo to .config directory
```
git clone https://github.com/Joshuahuahua/nvim.git ~/.config/nvim/
```

