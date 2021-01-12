#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
source ${HOME}/SysO-Termux/config/already
#
# Code
#
cd
if [ -x ${HOME}/SysO-Termux/config/verify_commands ]
then
EXISTE
sleep 1
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
else
echo -e "${verde}
┌═════════════════════════════┐
█ ${blanco}Installing SysO-Commands... ${verde}█
└═════════════════════════════┘
"${blanco}
pkg install -y fish
cd ${HOME}/SysO-Termux/config
mkdir verify_commands
cd
echo -e "fish" >> ${PREFIX}/etc/bash.bashrc
echo -e "alias salir='exit;exit'" >> ${PREFIX}/etc/bash.bashrc
echo -e "salir" >> ${PREFIX}/etc/bash.bashrc

#####################################################################

echo -e "alias SysO-Help='clear && bash ${HOME}/SysO-Termux/config/SysO-Help.sh'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-Update='cd && rm -rf SysO-Termux && git clone https://github.com/TermuxHacking000/SysO-Termux && cd SysO-Termux && unzip install.zip && rm install.zip && chmod 777 *.sh && cd tools && chmod 777 *.sh && cd .. && cd config && chmod 777 *.sh && cd .. && cd full_tools && chmod 777 *.sh && cd .. && cd config && mkdir Font && mkdir NgrokTH && mkdir verify && mkdir verify_commands && cd .. && ./SysO-Termux.sh'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-Lock='clear && login'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-Sudo='clear && sudo su'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-Root='clear && proot -0 -w ~ /data/data/com.termux/files/usr/bin/bash'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-BeEF='clear && cd && cd beef && ./beef -x'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-Msf='clear && msfconsole'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-GoPh='clear && cd /data/data/com.termux/files/home/go/src/github.com/gophish/gophish && sudo ./gophish'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-Bot='termux-open-url https://t.me/Termux_Hacking_bot'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-Rsf='clear && cd /data/data/com.termux/files/home/routersploit && sudo python rsf.py'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-IP='shodan myip'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-Pass='cd && bash ${HOME}/SysO-Termux/config/SysO-Pass.sh'" >> ${PREFIX}/etc/fish/config.fish
echo -e "alias SysO-Tool='cd ${HOME}/SysO-Termux && ./SysO-Tool.sh'" >> ${PREFIX}/etc/fish/config.fish
cd ${HOME}/SysO-Termux
source ${HOME}/SysO-Termux/SysO-Tool.sh
fi
