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
if [ -x ${HOME}/Link-Ngrok ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌══════════════════════════┐
█ ${blanco}Installing Link-Ngrok... ${verde}█
└══════════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/Link-Ngrok
cd Link-Ngrok
chmod 777 Link-Ngrok.sh
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
