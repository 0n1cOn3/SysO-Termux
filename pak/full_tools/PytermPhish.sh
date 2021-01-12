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
if [ -x ${HOME}/PytermPhish ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}Installing PytermPhish... ${verde}█
└═══════════════════════════┘
"${blanco}
git clone https://github.com/Fabr1x/PytermPhish
cd PytermPhish
chmod 777 install.sh
chmod 777 PytermPhish.py
chmod 777 Fix-PytermPhish.py
bash install.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
