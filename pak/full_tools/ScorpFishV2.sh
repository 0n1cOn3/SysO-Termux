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
if [ -x ${HOME}/ScorpFishV2 ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}Installing ScorpFishV2... ${verde}█
└═══════════════════════════┘
"${blanco}
pkg install -y php
pkg install -y wget
pkg install -y openssh
git clone https://github.com/error404-notfound/ScorpFishV2
cd ScorpFishV2
chmod 777 ScorFishTermux.sh
cd
cd ${HOME}/SysO-Termux/full_tools
fi
