#!/bin/bash
#
#
# E-Mail:ethicalhackingzone@gmail.com
# Instagram ID:cyb3r_kn1ght_0ff1c1al
# Made By cYBER kNIGHT
# Beta 1.5 + ported to Linux + WSL
# Contributer: R4SH4N_PH1L1PP & R081N & 0n1cOn3 & TheMasterCH & Fehl-X && mkaeser

# Set Variables & Setup Environment

source ./functions.sh
# Set OSTYPE Variable
OSTYPE="uname"
# Colors
GREEN="\e[32m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
# Light Colors
LBLUE="\e[94m"
LCYAN="\e[96m"
LRED="\e[91m"
LYELLOW="\e[93m"
#
# Welcome Script
#

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
    echo -e "${LRED}[ 1 ] ${LBLUE} Search Info About Phone Number"
    echo " "
    echo -e "${LRED}[ 2 ] ${LBLUE} Track Location Of An IP & Search Info About Email"
    echo " "
    echo -e "${LRED}[ 3 ] ${LBLUE} Update"
    echo " "
    echo -e "${LRED}[ 4 ] ${LBLUE} Exit"
    echo " "
    read -r selection || echo -e "${LRED}[ * ] ${LBLUE} Choose An Option: "
    echo ""
    case $selection in
        1 )
        clear
        echo -e "${LCYAN}"
        figlet -f future "Install And Run Orbot For Unlimited Usage...."
        python3 info.py
        figlet -f future "Thanks For Using This Tool!!!" | lolcat
	      bash P-TS.sh;;
          2 )
            clear
            echo -e "${LBLUE}"
            figlet -f future "Install And Run Orbot For Unlimited Usage...."
            python3 gain_info.py
            figlet -f future "Thanks For Using This Tool!!!" | lolcat
	          bash P-TS.sh;;
              3 )
                clear
                echo -e "${GREEN} Start Update of T-PS"
                sleep 1
                # python3 upd.py
                echo -e "${GREEN} Not yet implemented...Stay tuned!"
                sleep 2
                echo -e "${GREEN} P-TS Will Restart Now..."
                sleep 1
                bash P-TS.sh;;
                  4 )
                    clear
                    toilet -F border -f standard "P-TS"
                    echo -e "${BLUE} Created By kNIGHT"
                    figlet -f future "Thank You For Using This Tool :-)" | lolcat
                    echo "Terminate in 3 Seconds"
                    sleep 3
                    clear
                    exit;;
        0 )
          clear
          toilet -F border -f standard "P-TS"
          echo -e "${BLUE} Created By kNIGHT"
          figlet -f future "Thank You For Using This Tool :-)" | lolcat
          echo "Terminate in 3 Seconds"
          sleep 3
          clear
          exit;;
    esac
done
}
# Start T-PS Script
welcome
core
plugins
menu
