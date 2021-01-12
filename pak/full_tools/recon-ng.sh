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
if [ -x ${HOME}/recon-ng ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing recon-ng... ${verde}█
└════════════════════════┘
"${blanco}
pkg install -y python
pip install --upgrade pip
git clone https://github.com/lanmaster53/recon-ng
cd recon-ng
python -m pip install -r REQUIREMENTS
cd
cd ${HOME}/SysO-Termux/full_tools
fi
