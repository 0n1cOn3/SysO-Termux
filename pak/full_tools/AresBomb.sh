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
if [ -x ${HOME}/AresBomb ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing AresBomb... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/MaksPV/AresBomb
cd ${HOME}/SysO-Termux/full_tools
fi
