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
if [ -x ${HOME}/hakkuframework ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Installing hakkuframework... ${verde}█
└══════════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
pip install distutils
pip install shutil
pip install getopt
git clone https://github.com/4shadoww/hakkuframework
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
