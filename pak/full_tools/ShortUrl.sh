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
if [ -x ${HOME}/ShortUrl ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing ShortUrl... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/TermuxHacking000/ShortUrl
cd ShortUrl
chmod 777 install.sh
./install.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
