#!/bin/bash

set -Cue

function step1(){
    # homeディレクトリを英語表記にする
    LANG=C xdg-user-dirs-gtk-update
}

function step2(){
    sudo apt install gnome-shell gnome-tweak-tool
    sudo apt install chrome-gnome-shell
    sudo apt install libgtk-3-dev
}

#function step3(){
#    mkdir -p ${HOME}/repo.d
#    cd ${HOME}/repo.d
#    git clone https://github.com/rtlewis88/rtl88-Themes.git
#}


function step4(){

    cd ~/Downloads
    wget https://github.com/rtlewis88/rtl88-Themes/archive/1.0.tar.gz
    tar -zxvf 1.0.tar.gz

    cd ./rtl88-Themes-1.0
    tar -zxvf Solarized-Colors-gtk-theme-iconpack_1.0.tar.gz
    tar -zxvf solarized-dark-gtk-theme-colorpack_1.3.tar.gz

}


function step5(){

    mkdir -p ${HOME}/.themes
    cp -r ${HOME}/Downloads/rtl88-Themes-1.0/*-GTK ${HOME}/.themes/

}


function step6(){
    mkdir -p ${HOME}/.icons
    cp -r ${HOME}/Downloads/rtl88-Themes-1.0/*theme-iconpack ${HOME}/.icons

}

#step1
step2
#step3
step4
step5
step6
