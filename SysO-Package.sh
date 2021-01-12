#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# SysO-Package
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
source ${HOME}/SysO-Termux/config/Termux
#
# CÓDIGO
#
sleep 0.1
clear
Termux
cd
if [ -x ${PREFIX}/bin/git ]
then
cd
else
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}Installing git... ${verde}█
└═══════════════════┘"
pkg install -y git > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/python ]
then
cd
else
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing python... ${verde}█
└══════════════════════┘"
pkg install -y python > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/python2 ]
then
cd
else
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing python2... ${verde}█
└═══════════════════════┘"
pkg install -y python2 > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/wget ]
then
cd
else
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing wget... ${verde}█
└════════════════════┘"
pkg install -y wget > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/pv ]
then
cd
else
echo -e "${verde}
┌══════════════════┐
█ ${blanco}Installing pv... ${verde}█
└══════════════════┘"
pkg install -y pv > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/axel ]
then
cd
else
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing axel... ${verde}█
└════════════════════┘"
pkg install -y axel > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/ssh ]
then
cd
else
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing openssh... ${verde}█
└═══════════════════════┘"
pkg install -y openssh > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/php ]
then
cd
else
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}Installing php... ${verde}█
└═══════════════════┘"
pkg install -y php > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/vim ]
then
cd
else
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}Installing vim... ${verde}█
└═══════════════════┘"
pkg install -y vim > /dev/null 2>&1
fi
if [ -x ${PREFIX}/share/doc/root-repo ]
then
cd
else
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}Installing root-repo... ${verde}█
└═════════════════════════┘"
pkg install -y root-repo > /dev/null 2>&1
fi
if [ -x ${PREFIX}/share/doc/unstable-repo ]
then
cd
else
echo -e "${verde}
┌═════════════════════════════┐
█ ${blanco}Installing unstable-repo... ${verde}█
└═════════════════════════════┘"
pkg install -y unstable-repo > /dev/null 2>&1
fi
if [ -x ${PREFIX}/share/doc/x11-repo ]
then
cd
else
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing x11-repo... ${verde}█
└════════════════════════┘"
pkg install -y x11-repo > /dev/null 2>&1
fi
if [ -x ${PREFIX}/share/doc/termux-api ]
then
cd
else
echo -e "${verde}
┌══════════════════════════┐
█ ${blanco}Installing termux-api... ${verde}█
└══════════════════════════┘"
pkg install -y termux-api > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/clang ]
then
cd
else
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing clang... ${verde}█
└═════════════════════┘"
pkg install -y clang > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/fish ]
then
cd
else
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing fish... ${verde}█
└════════════════════┘"
pkg install -y fish > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/ruby ]
then
cd
else
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing ruby... ${verde}█
└════════════════════┘"
pkg install -y ruby > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/w3m ]
then
cd
else
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}Installing w3m... ${verde}█
└═══════════════════┘"
pkg install -y w3m > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/figlet ]
then
cd
else
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing figlet... ${verde}█
└══════════════════════┘"
pkg install -y figlet > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/cowsay ]
then
cd
else
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing cowsay... ${verde}█
└══════════════════════┘"
pkg install -y cowsay > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/zip ]
then
cd
else
echo -e "${verde}
┌═══════════════════┐
█ ${blanco}Installing zip... ${verde}█
└═══════════════════┘"
pkg install -y zip > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/wcalc ]
then
cd
else
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing wcalc... ${verde}█
└═════════════════════┘"
pkg install -y wcalc > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/bmon ]
then
cd
else
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing bmon... ${verde}█
└════════════════════┘"
pkg install -y bmon > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/unrar ]
then
cd
else
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing unrar... ${verde}█
└═════════════════════┘"
pkg install -y unrar > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/toilet ]
then
cd
else
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing toilet... ${verde}█
└══════════════════════┘"
pkg install -y toilet > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/proot ]
then
cd
else
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing proot... ${verde}█
└═════════════════════┘"
pkg install -y proot > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/go ]
then
cd
else
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing golang... ${verde}█
└══════════════════════┘"
pkg install -y golang > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/macchanger ]
then
cd
else
echo -e "${verde}
┌══════════════════════════┐
█ ${blanco}Installing macchanger... ${verde}█
└══════════════════════════┘"
pkg install -y macchanger > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/httrack ]
then
cd
else
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing httrack... ${verde}█
└═══════════════════════┘"
pkg install -y httrack > /dev/null 2>&1
fi
if [ -x ${PREFIX}/share/doc/wireless-tools ]
then
cd
else
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}Installing wireless-tools... ${verde}█
└══════════════════════════════┘"
pkg install -y wireless-tools > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/tree ]
then
cd
else
echo -e "${verde}
┌════════════════════┐
█ ${blanco}Installing tree... ${verde}█
└════════════════════┘"
pkg install -y tree > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/locate ]
then
cd
else
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing mlocate... ${verde}█
└═══════════════════════┘"
pkg install -y mlocate > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/apachectl ]
then
cd
else
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing apache2... ${verde}█
└═══════════════════════┘"
pkg install -y apache2 > /dev/null 2>&1
fi
if [ -x ${PREFIX}/share/doc/nodejs ]
then
cd
else
echo -e "${verde}
┌══════════════════════┐
█ ${blanco}Installing nodejs... ${verde}█
└══════════════════════┘"
pkg install -y nodejs > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/neofetch ]
then
cd
else
echo -e "${verde}
┌════════════════════════┐
█ ${blanco}Installing neofetch... ${verde}█
└════════════════════════┘"
pkg install -y neofetch > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/weechat ]
then
cd
else
echo -e "${verde}
┌═══════════════════════┐
█ ${blanco}Installing weechat... ${verde}█
└═══════════════════════┘"
pkg install -y weechat > /dev/null 2>&1
fi
if [ -x ${PREFIX}/bin/irssi ]
then
cd
else
echo -e "${verde}
┌═════════════════════┐
█ ${blanco}Installing irssi... ${verde}█
└═════════════════════┘"
pkg install -y irssi > /dev/null 2>&1
fi
