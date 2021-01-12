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
if [ -x ${HOME}/Gloom-Framework ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌═══════════════════════════════┐
█ ${blanco}Installing Gloom-Framework... ${verde}█
└═══════════════════════════════┘
"${blanco}
pkg install -y python2
pip2 install --upgrade pip
pip2 install scapy
pip2 install requests
pip2 install pythonwhois
pip2 install bs4
pip2 install email
pip2 install termcolor
pip2 install urllib2
pip2 install mechanize
git clone https://github.com/StreetSec/Gloom-Framework
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
