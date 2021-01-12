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
if [ -x ${PREFIX}/bin/msfconsole ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌══════════════════════════┐
█ ${blanco}Installing metasploit... ${verde}█
└══════════════════════════┘
"${blanco}
pkg install -y ruby
pkg install -y unstable-repo
pkg install -y metasploit
cd ${HOME}/SysO-Termux/full_tools
fi
