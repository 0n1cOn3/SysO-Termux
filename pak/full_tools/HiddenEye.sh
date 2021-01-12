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
if [ -x ${HOME}/HiddenEye ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}Installing HiddenEye... ${verde}█
└═════════════════════════┘
"${blanco}
pkg install -y php
pkg install -y openssh
pkg install -y wget
pkg install -y python
pip install --upgrade pip
git clone https://github.com/DarkSecDevelopers/HiddenEye
cd HiddenEye
python -m pip install -r requirements.txt
cd
cd ${HOME}/SysO-Termux/full_tools
fi
