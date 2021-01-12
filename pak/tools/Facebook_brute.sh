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
if [ -x ${HOME}/Facebook_brute ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Installing Facebook_brute... ${verde}█
└══════════════════════════════┘
"${blanco}
pkg install -y python2
pip2 install --upgrade pip
pip2 install mechanize
git clone https://github.com/perjayro/Facebook_brute.git
cd Facebook_brute
chmod 777 brute.py
cd
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
