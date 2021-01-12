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
if [ -x ${HOME}/Link-Ngrok ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════════┐
█ ${blanco}Installing Link-Ngrok... ${verde}█
└══════════════════════════┘
"${blanco}
git clone https://github.com/TermuxHacking000/Link-Ngrok
cd Link-Ngrok
chmod 777 Link-Ngrok.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
