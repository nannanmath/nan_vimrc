#!/bin/sh
set -e

cd ~/.nan_vimrc

echo 'set runtimepath+=~/.nan_vimrc/.vundle/Vundle.vim

source ~/.nan_vimrc/conf/setup.vim
source ~/.nan_vimrc/conf/basic_conf.vim
source ~/.nan_vimrc/conf/key_mappings.vim
source ~/.nan_vimrc/conf/plugins_conf.vim

' > ~/.vimrc

echo "Install Plugins ..."

vim -u conf/setup.vim +PluginInstall +qall

echo "Install successfully!"
