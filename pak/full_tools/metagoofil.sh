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
if [ -x ${HOME}/metagoofil ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════════┐
█ ${blanco}Installing metagoofil... ${verde}█
└══════════════════════════┘
"${blanco}
pkg install -y python2
pip2 install --upgrade pip
git clone https://github.com/kurobeats/metagoofil
cd ${HOME}/SysO-Termux/full_tools
fi
