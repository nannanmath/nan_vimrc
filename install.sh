#!/bin/sh
set -e

cd ~/.nan_vimrc

echo 'set runtimepath+=~/.nan_vimrc

source ~/.nan_vimrc/conf/basic_conf.vim
source ~/.nan_vimrc/conf/plugins_conf.vim

' > ~/.vimrc

echo "Install successfully!"
