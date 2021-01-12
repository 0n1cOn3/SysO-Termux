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
if [ -x ${HOME}/fbi ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}Installing fbi... ${verde}█
└═══════════════════┘
"${blanco}
pkg install -y python2
git clone https://github.com/xHak9x/fbi
cd fbi
pip2 install -r requirements.txt
cd
cd ${HOME}/SysO-Termux/full_tools
fi
