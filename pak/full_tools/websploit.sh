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
if [ -x ${HOME}/websploit ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}Installing websploit... ${verde}█
└═════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/websploit/websploit
cd websploit
pip install -r requirements.txt
python setup.py install
cd
cd ${HOME}/SysO-Termux/full_tools
fi
