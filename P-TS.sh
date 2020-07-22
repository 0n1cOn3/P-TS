#!/bin/bash
#
#
# E-Mail:ethicalhackingzone@gmail.com
# Instagram ID:cyb3r_kn1ght_0ff1c1al
# Made By cYBER kNIGHT
# Beta 1.5 + ported to Linux + WSL
# Contributer: R4SH4N_PH1L1PP & R081N & 0n1cOn3 & TheMasterCH & Fehl-X && mkaeser

# Set Variables & Setup Environment
function termux_env {
    [ ! -d "/data/data/com.termux/home" ]
    }

function Pause {
    read -p "$*"
}

OSTYPE= uname

#colors
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
# Light Colors
LBLUE="\e[94m"
LCYAN="\e[96m"
LRED="\e[91m"
LYELLOW="\e[93m"
#
# Start Welcome Script
#

function welcome {
    clear
    echo -e "${CYAN}"
    toilet -F border -f future "Ethical-Hacking-Zone"
    echo -e "${BLUE}"
    figlet -f standard "Presents To You"
    echo -e "${LRED}"
    figlet P-TS
    sleep 3
    clear
    if [ ! -f ./core.installed ] && [ ! -f ./plugin.installed ];  then
    echo -e "Starting Installation"
    sleep 2
    install_setup
    else
    echo "Found All Requirements!"
    sleep 2
    clear
    menu
    fi
}

# Check OS for compatibility

function install_setup {

    # Start T-PS Installation
    if [[ "${OSTYPE}" == "linux-gnu"* ]];
    then
        echo "Installing Linux Core Packages"
        sleep 2
        sudo apt-get install git figlet toilet python python3 curl -y | sudo tee core.installed
        clear
    elif [[ ! -f plugins.installed ]];
    then
      echo "Additional Dependencies already installed."
      sleep 2
      clear
      menu
    else
      echo "Additional Dependencies missing...installing them now"
      sleep 2
      clear
      python3 -m pip install requests bs4 html5lib urllib3 lolcat | sudo tee plugins.installed
      clear
      toilet -F border -f future "This Tool Was"
      toilet -F border -f future "Made By cYBER kNIGHT"
      sleep 3
      echo "Installation Complete!"
      sleep 2
      clear
      menu
fi

    if [[ "$OSTYPE" == "darwin"* ]];
     then
         echo "Not Supported"
         Pause 'Press Enter To Continue'
         exit 0
fi
     if [[ "$OSTYPE" == "cygwin" ]];
     then
         echo "Not Supported"
         Pause 'Press Enter To Continue'
         exit 0
fi
     if [[ "$OSTYPE" == "msys" ]];
     then
         echo "Not Supported"
         Pause 'Press Enter To Continue'
         exit 0
fi
     if [[ "$OSTYPE" == "win32" ]];
     then
         echo "Not Supported"
         Pause 'Press Enter To Continue'
         exit 0
fi
    if [[ "$OSTYPE" == "termux" ]];
    then
      echo "Installing Requirements....."
      sleep 2
      apt install git figlet toilet python3 curl -y | tee core.installed
      elif [[ -f plugins.installed ]]; then
      echo "Additional Dependencies already installed."
      sleep 2
      clear
      menu
      else
      echo "Additional Dependencies missing...installing them now"
      sleep 2
      python3 -m pip install requests bs4 html5lib urllib3 lolcat | sudo tee plugins.installed
      toilet -F border -f future "This Tool Was"
      toilet -F border -f future "Made By cYBER kNIGHT"
      sleep 3
      echo "Installation Complete!"
      sleep 2
      clear
      menu
fi
}

function menu {
selection=0
while [ $selection = 0 ]
do
    echo -e "${CYAN}"
    toilet -F border -f standard "P-TS"
    echo -e "${LRED}Created By kNIGHT & Anandh"
    echo ""
    echo -e "${GREEN} For Any Questions Hit Me Up At"
    echo -e "${LBLUE}[-] ${LYELLOW} E-Mail:ethicalhackingzone@gmail.com"
    echo -e "${LBLUE}[-] ${MAGENTA} Instagram ID:cyb3r_kn1ght_0ff1c1al"
    echo -e "${LBLUE}[-] ${LCYAN} Contributors To This Tool Are:"
    echo -e "${LRED}	-->R4SH4N_PH1L1PP & R081N & 0n1cOn3"
    echo -e "${LRED}  -->TheMasterCH & Fehl-X & mkaeser"
    echo " "
    echo -e "${BLUE}Use The Tracker Wisely!!!"
    echo " "
    echo -e "\n\n\n"
    echo -e "${LRED}[1] ${LBLUE} Search Info About Phone Number"
    echo " "
    echo -e "${LRED}[2] ${LBLUE} Track Location Of An IP & Search Info About Email"
    echo " "
    echo -e "${LRED}[3] ${LBLUE} Update"
    echo " "
    echo -e "${LRED}[4] ${LBLUE} Exit"
    echo " "
    echo -n "${LRED}[*] ${LBLUE} Choose An Option:"
    read selection
    echo ""
    case $selection in
        1)
        clear
        echo -e "${LCYAN}"
        figlet -f future "Install And Run Orbot For Unlimited Usage...."
        python3 info.py
        figlet -f future "Thanks For Using This Tool!!!" | lolcat
	bash P-TS.sh
        selection=1
        ;;
        2)
        clear
        echo -e "${LBLUE}"
        figlet -f future "Install And Run Orbot For Unlimited Usage...."
        python3 gain_info.py
        figlet -f future "Thanks For Using This Tool!!!" | lolcat
	bash P-TS.sh
        selection 1
        ;;
        3)
        clear
        echo -e "${BLUE} Start Update of T-PS"
        python3 upd.py
        echo -e "${GREEN} P-TS Will Restart Now..."
        sleep 1
        bash P-TS.sh
        selection=1
        ;;
        4)
        clear
        echo -e "${YELLOW}"
        toilet -F border -f standard "P-TS"
        echo -e "${BLUE} Created By kNIGHT"
        selection=1
        exit
        ;;
        0)
        selection=1
        clear
        toilet -F border -f standard "P-TS"
        echo -e "${BLUE} Created By kNIGHT"
        figlet -f future "Thank You For Using This Tool :-)" | lolcat
        echo "Terminate in 3 Seconds"
        sleep 3
        clear
        exit
        ;;
        *)
        echo "Please enter option 1,2,3,4 or 0 for exit T-PS"
        selection=0
        ;;
    esac
done
}
# Start T-PS Script
welcome
install_setup
menu
