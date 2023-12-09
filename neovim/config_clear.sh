#!/bin/bash

echo "Clearing config"
sudo rm -rfv $HOME/.config/nvim

sudo rm -rfv $HOME/.local/share/nvim
sudo rm -rfv $HOME/.local/state/nvim
sudo rm -rfv $HOME/.cache/nvim

