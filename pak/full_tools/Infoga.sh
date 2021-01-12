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
if [ -x ${HOME}/Infoga ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing Infoga... ${verde}█
└══════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/m4ll0k/Infoga
cd Infoga
python setup.py install
cd
cd ${HOME}/SysO-Termux/full_tools
fi
