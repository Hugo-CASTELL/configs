#!/bin/bash

echo "Creating config's folders"
mkdir -pv $HOME/.config/nvim

mkdir -pv $HOME/.local/share/nvim
mkdir -pv $HOME/.local/state/nvim
mkdir -pv $HOME/.local/state/nvim/swap
mkdir -pv $HOME/.local/state/nvim/shada
mkdir -pv $HOME/.cache/nvim

chmod -R 777 $HOME/.local/share/nvim
chmod -R 777 $HOME/.local/state/nvim
chmod -R 777 $HOME/.cache/nvim

