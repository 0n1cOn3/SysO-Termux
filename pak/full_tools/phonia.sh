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
if [ -x ${HOME}/phonia ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing phonia... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/TermuxHacking000/phonia
cd phonia
chmod 777 phonia.sh
./phonia.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
