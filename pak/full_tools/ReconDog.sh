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
if [ -x ${HOME}/ReconDog ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing ReconDog... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
pkg install -y nmap
git clone https://github.com/s0md3v/ReconDog
cd ReconDog
python -m pip install -r requirements.txt
cd
cd ${HOME}/SysO-Termux/full_tools
fi
