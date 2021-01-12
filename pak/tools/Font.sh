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
if [ -x ${HOME}/SysO-Termux/config/Font ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing Font... ${verde}█
└════════════════════┘
"${blanco}
mkdir .termux
cd ${HOME}/SysO-Termux/config
mkdir Font
cp font.ttf ${HOME}/.termux
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
