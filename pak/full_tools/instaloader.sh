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
if [ -x ${HOME}/instaloader ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}Installing instaloader... ${verde}█
└═══════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/instaloader/instaloader
cd instaloader
python setup.py install
cd
cd ${HOME}/SysO-Termux/full_tools
fi
