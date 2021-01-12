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
if [ -x ${HOME}/Facebook_brute ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
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
cd ${HOME}/SysO-Termux/full_tools
fi
