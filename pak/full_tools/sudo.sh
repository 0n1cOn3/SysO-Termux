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
if [ -x ${HOME}/termux-sudo ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing sudo... ${verde}█
└════════════════════┘
"${blanco}
pkg install -y ncurses-utils
git clone https://gitlab.com/st42/termux-sudo
cd termux-sudo
cat sudo > /data/data/com.termux/files/usr/bin/sudo
chmod 700 /data/data/com.termux/files/usr/bin/sudo
cd
cd ${HOME}/SysO-Termux/full_tools
fi
