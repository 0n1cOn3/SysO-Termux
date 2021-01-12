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
if [ -x ${HOME}/PytermPhish ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
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
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
