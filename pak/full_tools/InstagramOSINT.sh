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
if [ -x ${HOME}/InstagramOSINT ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Installing InstagramOSINT... ${verde}█
└══════════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/sc1341/InstagramOSINT
cd InstagramOSINT
python -m pip install -r requirements.txt
cd
cd ${HOME}/SysO-Termux/full_tools
fi
