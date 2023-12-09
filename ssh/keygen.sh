#!/bin/bash

type=$(echo "$1" | tr '[:upper:]' '[:lower:]')
passphrase=$(echo "$2")

ssh_path="$HOME/.ssh"
current_directory=$(pwd)
error() {
	echo $1
	cd "$current_directory"
	exit 1
}

if [ ! -e "$ssh_path" ]; then
	echo "Creating missing directory ($ssh_path)."
	mkdir -p $ssh_path
fi

if [ -z "$type" ]; then
	echo "No keygen type specified."
	echo "Setting type to RSA by default."
	type="rsa"
fi

key_predicted_path="$ssh_path/id_$type"
if [ -e "$key_predicted_path" ]; then
	error "Key already exists: consider using it."
fi

echo "Generating key"
cd $ssh_path
ssh-keygen -t "$type" -f "$key_predicted_path" -N "$passphrase"
ssh_exit_code=$?
if [ ! "$ssh_exit_code" -eq 0 ]; then
	error "Problem with ssh-keygen."
fi

echo "Adding to identity"
eval $(ssh-agent -s)
ssh-add

echo "Finalisation"
cd $current_directory
