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
if [ -x ${HOME}/Optiva-Framework ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════════════┐
█ ${blanco}Installing Optiva-Framework... ${verde}█
└════════════════════════════════┘
"${blanco}
pkg install -y python2
pip2 install --upgrade pip
git clone https://github.com/joker25000/Optiva-Framework
cd Optiva-Framework
chmod 777 installer.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
