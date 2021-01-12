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
if [ -x ${HOME}/ ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌════════════════════════════════════┐
█ Installing... █
└════════════════════════════════════┘
"${blanco}

cd ${HOME}/SysO-Termux/full_tools
fi
