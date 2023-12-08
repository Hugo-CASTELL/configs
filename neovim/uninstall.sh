#!/bin/bash

mkdir neovim_install
cd ./neovim_install

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x ./nvim.appimage
./nvim.appimage --appimage-extract

mv ./squashfs-root ./neovim
sudo mv ./neovim /
sudo ln -s /neovim /usr/bin/nvim

cd ..
sudo rm -rf ./neovim_install
