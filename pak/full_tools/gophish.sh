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
if [ -x ${HOME}/go ]
then
cd ${HOME}/SysO-Termux/full_tools
else
cd
clear
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing gophish... ${verde}█
└═══════════════════════┘
"${blanco}
pkg install -y root-repo
pkg install -y unstable-repo
pkg install -y golang
pkg install -y apache2
go get github.com/gophish/gophish
cd go;cd src;cd github.com;cd gophish;cd gophish
go build
cd
cd ${HOME}/SysO-Termux/full_tools
fi
