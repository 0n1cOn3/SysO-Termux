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
if [ -x ${HOME}/TBomb ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
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
cd ${HOME}/SysO-Termux/full_tools
fi
