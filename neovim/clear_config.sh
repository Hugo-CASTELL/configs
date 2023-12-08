#!/bin/bash

config_path="~/.config/nvim" 

if [ -e "$config_path" ]; then
	echo "Clearing config"
	sudo rm -rf $config_path
else
	echo "Config doesn't exist ($config_path)"
fi

