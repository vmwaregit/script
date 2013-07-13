#!/bin/bash

OS=`uname`

function CreateBackUpFile()
{
    if [ -e ~/${1} ]; then
        mv ${1} ${1}.bak
    fi
}

CreateBackUpFile "~/.vim"
ln -s ~/.script/vim ~/.vim

CreateBackUpFile "~/.vimrc"
ln -s ~/.script/config/.vimrc ~/.vimrc

CreateBackUpFile "~/.bashrc"
ln -s ~/.script/config/.bashrc ~/.bashrc

CreateBackUpFile "~/.profile"
ln -s ~/.script/config/.profile ~/.profile

CreateBackUpFile "~/.gitconfig"
ln -s ~/.script/config/.gitconfig ~/.gitconfig

if [ ! -d ~/.cgdb ]; then
    mkdir ~/.cgdb
fi

ln -s ~/.script/config/cgdbrc ~/.cgdb/cgdbrc

CreateBackUpFile ".gdbinit"
ln -s .script/config/.gdbinit ~/.gdbinit
CreateBackUpFile ".gdbinit_stl"
ln -s .script/config/.gdbinit_stl ~/.gdbinit_stl

touch ~/.scd_bookmark
touch ~/.scd_list
