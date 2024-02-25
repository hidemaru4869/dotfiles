#!/bin/bash

# Check if the dotbackup directory
if [ ! -d "$HOME/.dotbackup" ];then
echo "$HOME/.dotbackup not found. Auto Make it"
mkdir "$HOME/.dotbackup"
fi

# Check if the .bashrc exists
if [ -f "$HOME/.bashrc" ]; then
    echo "bashrc already exists"
    mv $HOME/.bashrc $HOME/.dotbackup/.bashrc
else
    echo "bashrc not found"
fi
ln ln -snf $HOME/dotfiles/.bashrc $HOME/.bashrc
