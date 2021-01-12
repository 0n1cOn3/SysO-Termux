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
if [ -x ${HOME}/UrlWeb ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing UrlWeb... ${verde}█
└══════════════════════┘
"${blanco}
git clone https://github.com/Anonymous-Zpt/UrlWeb
cd UrlWeb
chmod 777 Urlweb
cd
cd ${HOME}/SysO-Termux/full_tools
fi
