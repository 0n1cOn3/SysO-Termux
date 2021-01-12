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
if [ -x ${HOME}/ScorpFish ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}Installing ScorpFish... ${verde}█
└═════════════════════════┘
"${blanco}
git clone https://github.com/error404-notfound/ScorpFish
cd ScorpFish
chmod 711 ScorpFish.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
