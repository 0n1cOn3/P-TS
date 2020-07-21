#!/bin/bash
#
#
# E-Mail:ethicalhackingzone@gmail.com
# Instagram ID:cyb3r_kn1ght_0ff1c1al
# Made By cYBER kNIGHT
# Code Optimized by 0n1cOn3 V2.0
#
# Activate Variables & Setup Environment
Termux_Env () { [ ! -d "/data/data/com.termux/home" ]; }
pause () { read -r "$@" }
shopt -s expand_aliases
alias goto="cat >/dev/null <<"
UNAME=$(uname)
export UNAME
#colors
# RED="\e[31m"
# RESTORE="\e[39"
# BOLD="\e[1m"
# NORMAL="\e[0m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
# Lightweigt Colors
LBLUE="\e[94m"
LCYAN="\e[96m"
LRED="\e[91m"
LYELLOW="\e[93m"
#
# Start Main Script
#
clear
echo -e "${CYAN}"
toilet -F border -f future Ethical-Hacking-Zone
echo -e "${BLUE}"
figlet -f standard Presents To You
echo -e "${LRED}"
figlet P-TS
echo -e "Press Enter To Continue"
pause
clear
sleep 0.5

if [[ ! -f core.installed || ! -f plugin.installed ]];
then
	goto 1_install_setup:;
else
	echo "Found All Requirements!"
	sleep 2
	goto start:;
fi
# Check OS for compatibility
1_install_setup:
# Start T-PS Installation
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing Requirements....."
    sleep 2
    sudo apt-get git install figlet toilet python curl -y | sudo tee core.installed
elif [[ -s plugins.installed ]];
    then
    echo "Additional Requirements installing....."
else
    python3 -m pip install requests bs4 html5lib lolcat | sudo tee plugins.installed
    toilet -F border -f future This Tool Was
	toilet -F border -f future Made By cYBER kNIGHT
	sleep 3
	echo "Installation Complete!"
	sleep 2
	clear
	goto start
fi
#
if [[ "$OSTYPE" == "darwin"* ]];
    then
    echo "Not Supported"
    pause
    exit 0
fi
if [[ "$OSTYPE" == "cygwin" ]];
    then
    echo "Not Supported"
    pause
    exit 0
fi
if [[ "$OSTYPE" == "msys" ]];
    then
    echo "Not Supported"
    pause
    exit 0
fi
if [[ "$OSTYPE" == "win32" ]];
    then
    echo "Not Supported"
    pause
    exit 0
fi
if [[ "$OSTYPE" == "termux" ]];
    then
    echo "Installing Requirements....."
    sleep 2
    apt install git figlet toilet python curl -y | tee core.installed
    if [[ -s plugins.installed ]];
        then
        echo "Additional Requirements installed!"
        pause 2
        goto start
    else
       	python3 -m pip install requests bs4 html5lib lolcat |  tee plugins.installed
       	toilet -F border -f future This Tool Was
		toilet -F border -f future Made By cYBER kNIGHT
		sleep 3
		echo "Installation Complete!"
		sleep 2
		clear
		goto start
    fi
fi
# Start T-PS Script
start:
selection=
until [ "$selection" = "0" ]; do
    echo -e "${CYAN}"
    toilet -F border -f standard P-TS
    echo -e "${LRED}Created By kNIGHT & Anandh"
    echo " "
    echo -e "${GREEN} For Any Questions Hit Me Up At"
    echo -e "${LBLUE}[-] ${LYELLOW} E-Mail:ethicalhackingzone@gmail.com"
    echo -e "${LBLUE}[-] ${MAGENTA} Instagram ID:cyb3r_kn1ght_0ff1c1al"
    echo -e "${LBLUE}[-] ${LCYAN} Contributors To This Tool Are:"
    echo -e "${LRED}	-->R4SH4N_PH1L1PP & R081N & 0n1cOn3"
    echo " "
    echo -e "${BLUE} Use The Tracker Wisely!!!"
    echo " "
    echo -e "${GREEN} Press Enter To Continue"
    pause
    echo -e "${LRED}[1] ${LBLUE} Search Info About Phone Number"
    echo " "
    echo -e "${LRED}[2] ${LBLUE} Track Location Of An IP & Search Info About Email"
    echo " "
    echo -e "${LRED}[3] ${LBLUE} Update"
    echo " "
    echo -e "${LRED}[4] ${LBLUE} Exit"
    echo " " 
    echo -e "${LRED}[*] ${LBLUE} Choose An Option:"
    echo -n "Enter Selection:"
    read selection
    echo ""
case $selection in
    1)
    clear
    echo -e "${LCYAN}"
    figlet -f future Install And Run Orbot For Unlimited Usage....
    python3 info.py
    figlet -f future Thanks For Using This Tool!!! | lolcat
    exit;;
        2) 
        clear
        echo -e "${LBLUE}"
        figlet -f future Install And Run Orbot For Unlimited Usage....
        python3 gain_info.py
        figlet -f future Thanks For Using This Tool!!! | lolcat
        exit;;
            3)
            clear
            echo -e "${BLUE} Downloading Latest Files...."
            git pull
            echo -e "${GREEN} P-TS Will Restart Now..."
            sleep 1
            echo -e "${GREEN} All The Required Packages gonna be checked"
            echo -e "${GREEN} and if needed upgraded or installed"
            sleep 1
            echo -e "${BLUE} Restart in 3 Seconds..."
            sleep 3
            bash P-TS.sh
            exit;;
                4)
                clear
                 echo -e "${YELLOW}"
                toilet -F border -f standard P-TS
                echo -e "${BLUE} Created By kNIGHT"
                exit;;
                    0)
                    exit;;
            * ) echo "Please enter option 1,2,3,4 or 0 for exit T-PS"
    esac
done
