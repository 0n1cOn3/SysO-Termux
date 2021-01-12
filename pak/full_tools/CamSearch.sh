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
if [ -x ${HOME}/CamSearch ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}Installing CamSearch... ${verde}█
└═════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/TermuxHacking000/CamSearch
cd CamSearch
chmod 777 CamSearch.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
