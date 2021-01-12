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
if [ -x ${HOME}/hakkuframework ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
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
cd ${HOME}/SysO-Termux/full_tools
fi
