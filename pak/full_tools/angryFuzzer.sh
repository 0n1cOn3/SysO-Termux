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
if [ -x ${HOME}/angryFuzzer ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}Installing angryFuzzer... ${verde}█
└═══════════════════════════┘
"${blanco}
pkg install -y python2
pip2 install --upgrade pip
git clone https://github.com/ihebski/angryFuzzer
cd angryFuzzer
python2 -m pip install -r requirements.txt
cd
cd ${HOME}/SysO-Termux/full_tools
fi
