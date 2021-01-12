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
if [ -x ${HOME}/quack ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
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
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
