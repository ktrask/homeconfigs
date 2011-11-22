#!/bin/sh

mkdir -p $HOME/.config

unison `pwd` $HOME \
    -path .vim/	    \
    -path .config/awesome/  \
    -path .oh-my-zsh \
    -path .unison.sh.swp \
    -path .vimrc \
    -path .Xdefaults \
    -path .zsh \
    -path .zshenv \
    -path .zshrc \
    -path .zsh-update \
