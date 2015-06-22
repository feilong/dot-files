#!/bin/bash

dir=$(pwd)
cd $HOME
if [ -f .bashrc ]; then
    mv .bashrc .bashrc_backup
elif [ -h .bashrc ]; then
    rm .bashrc
fi
ln -s $dir/bashrc .bashrc

if [ -f .bash_profile ]; then
    mv .bash_profile .bash_profile_backup
elif [ -h .bash_profile ]; then
    rm .bash_profile
fi
ln -s $dir/bash_profile .bash_profile

if [ -f .bashrc_os ]; then
    mv .bashrc_os .bashrc_os_backup
elif [ -h .bashrc_os ]; then
    rm .bashrc_os
fi
if [ "$(uname)" == "Darwin" ]; then
    ln -s $dir/bashrc_mac .bashrc_os
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    ln -s $dir/bashrc_linux .bashrc_os
fi
