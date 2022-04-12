#!/usr/bin/bash

#################################################
# File Name install.sh
# Version 1.0
# Author aaron
# Email wzj020109@163.com
# Created Time 2022-02-15
# Desc Vim 安装脚本
#################################################

# 安装依赖
function install_rely() {
    #function_body
    yay -S yarn ctags
}

# 下载配置文件
function download_config() {
    #function_body
    git clone git@github.com:AhDumb/vim.git $HOME/.vim
    ln -s $HOME/.vim/vimrc $HOEM/.vimrc
}

function install_YCM() {
    #function_body
    # YCM
    yay -S vim-youcompleteme-git
    # Python 补全
    yay -S python-jedi python-numpydoc python-regex
    # Java 补全
    yay -S jdtls
}

function install_vim_plug() {
    #function_body
    vim -c "PlugInstall" -c "q" -c "q"
}

function main() {
    #function_body
    install_rely
    download_config
    install_YCM
    install_vim_plug
}

main
