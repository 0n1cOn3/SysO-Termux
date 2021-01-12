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
if [ -x ${HOME}/ofusca ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing ofusca... ${verde}█
└══════════════════════┘
"${blanco}
git clone https://github.com/Anonymous-Zpt/ofusca
cd ofusca
chmod 777 ofusca
cd
cd ${HOME}/SysO-Termux/full_tools
fi
