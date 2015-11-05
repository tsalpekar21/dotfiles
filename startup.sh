#!/bin/bash

if [ -f ~/.vimrc ]; then 
    cp ~/.vimrc ~/dotfiles/.backup-vimrc
    unlink ~/.vimrc
    rm ~/.vimrc
    echo 'Found and removed .vimrc file'
fi

ln -sf ~/dotfiles/.vimrc ~/.vimrc 
