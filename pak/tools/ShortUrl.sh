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
if [ -x ${HOME}/ShortUrl ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
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
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
