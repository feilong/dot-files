#!/bin/bash

dir=$(pwd)
cd $HOME

function pipeline() {
    # parameters
    local source=${1}
    if [ -n "${2}" ]; then
	local target=${2}
    else
	local target=.${1}
    fi

    # clean up old file
    if [ -f $target ]; then
	mv $target ${target}_backup
    elif [ -h $target ]; then
	rm $target
    fi
    ln -s $dir/$source $target
}

pipeline bash_profile
pipeline bashrc
if [ "$(uname)" == "Darwin" ]; then
    pipeline bashrc_mac .bashrc_os
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    pipeline bashrc_linux .bashrc_os
fi
touch $dir/bashrc_machine
pipeline bashrc_machine
