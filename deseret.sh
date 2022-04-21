#!/bin/bash



clear #clear chat
echo -e "\e[1;33m" #color Yellow
if ! [ -x "$(command -v figlet)" ]; then
    echo :"   ·▄▄▄▄  ▄▄▄ ..▄▄ · ▄▄▄ .▄▄▄  ▄▄▄ .▄▄▄▄▄  ▄ •▄ ▄▄▄ . ▄· ▄▌▄▄▄▄·        ▄▄▄· ▄▄▄  ·▄▄▄▄
    ██▪ ██ ▀▄.▀·▐█ ▀. ▀▄.▀·▀▄ █·▀▄.▀·•██    █▌▄▌▪▀▄.▀·▐█▪██▌▐█ ▀█▪ ▄█▀▄ ▐█ ▀█ ▀▄ █·██▪ ██
    ▐█· ▐█▌▐▀▀▪▄▄▀▀▀█▄▐▀▀▪▄▐▀▀▄ ▐▀▀▪▄ ▐█.▪  ▐▀▀▄·▐▀▀▪▄▐█▌▐█▪▐█▀▀█▄▐█▌.▐▌▄█▀▀█ ▐▀▀▄ ▐█· ▐█▌
    ██. ██ ▐█▄▄▌▐█▄▪▐█▐█▄▄▌▐█•█▌▐█▄▄▌ ▐█▌·  ▐█.█▌▐█▄▄▌ ▐█▀·.██▄▪▐█▐█▌.▐▌▐█ ▪▐▌▐█•█▌██. ██
    ▀▀▀▀▀•  ▀▀▀  ▀▀▀▀  ▀▀▀ .▀  ▀ ▀▀▀  ▀▀▀   ·▀  ▀ ▀▀▀   ▀ • ·▀▀▀▀  ▀█▄▀▪ ▀  ▀ .▀  ▀▀▀▀▀▀•"
fi #end of intro


echo -n "Hi! to switch to Deseret click 'y' to return to default, simply press '𐑌'. [y/𐑌]"  #simple question print
read VAR # Read Variable from previous question
if [[ $VAR == y ]] #if variable "y" then it will switch to deseret
then
    xkbcomp -I. deseret.xkb $DISPLAY
    
else
    echo 'you are back to default :)'    #if any other, it will switch to default. ( it states '𐑌' simply for convinience.)
    setxkbmap -model pc104
    
fi #end of command and script.


