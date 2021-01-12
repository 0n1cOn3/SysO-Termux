#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
source ${HOME}/SysO-Termux/config/already
#
# Code
#
cd
if [ -x ${HOME}/Optiva-Framework ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
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
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
