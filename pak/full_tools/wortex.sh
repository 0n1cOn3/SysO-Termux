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
if [ -x ${HOME}/wortex ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing wortex... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
cd ${HOME}/SysO-Termux/requirements_tools
unzip wortex.zip
mv wortex ${HOME}
cd
cd ${HOME}/SysO-Termux/full_tools
fi
