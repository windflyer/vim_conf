#!/bin/bash
cp ./vimrc ~/.vimrc

[ -e ~/.fonts ] || mkdir ~/.fonts
cd ~/.fonts/ && git clone https://github.com/scotu/ubuntu-mono-powerline.git && cd ~
