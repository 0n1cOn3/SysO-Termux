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
if [ -x ${HOME}/SysO-Termux/config/Font ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
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
cd ${HOME}/SysO-Termux/full_tools
fi
