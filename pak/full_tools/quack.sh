#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# Code
#
if [ -x ${HOME}/quack ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing quack... ${verde}█
└═════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
pip install requests
pip install colorama
git clone https://github.com/TermuxHacking000/quack
cd quack
chmod 777 quack.sh
./quack.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
