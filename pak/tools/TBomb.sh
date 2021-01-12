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
if [ -x ${HOME}/TBomb ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing TBomb... ${verde}█
└═════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/TheSpeedX/TBomb.git
cd TBomb
chmod +x TBomb.sh
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
