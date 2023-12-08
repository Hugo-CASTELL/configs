#!/bin/bash

echo "Initialisation"
mkdir neovim_install
cd ./neovim_install

echo "Downloading last image"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x ./nvim.appimage
./nvim.appimage --appimage-extract

echo "Adding to global bash"
mv ./squashfs-root ./neovim
sudo mv ./neovim /
sudo ln -s /neovim/AppRun /usr/bin/nvim

echo "Finalisation"
cd ..
sudo rm -rf ./neovim_install
