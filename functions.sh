#!/bin/bash
#
#
# E-Mail:ethicalhackingzone@gmail.com
# Instagram ID:cyb3r_kn1ght_0ff1c1al
# Made By cYBER kNIGHT
# Beta 1.5 + ported to Linux + WSL
# Contributer: R4SH4N_PH1L1PP & R081N & 0n1cOn3 & TheMasterCH & Fehl-X && mkaeser

function install_core_linux {

    if ! [ -f "core.installed" ];then
      echo -e "Install Linux Core Packages"
      sleep 2
      sudo apt-get install git figlet toilet python python3 curl -y | sudo tee core.installed
      clear
      echo "Installed..."
      sleep 2
    else
      echo "Linux Core Packages are already installed."
      pause 2
      clear
fi
}

function install_core_termux {
    if ! [ -f core.installed ];then
      echo "Install Termux Core Packages"
      sleep 2
      apt install git figlet toilet python3 curl -y | tee core.installed
      clear
      echo "Installed..."
      sleep 2
    else
      echo "Termux Core Packages are already installed."
      pause 2
      clear
fi
}

function install_plugins {

    if ! [ -f "plugins.installed" ];then
      clear
      echo -e "Starting Plugins Installation"
      sleep 2
      clear
      python3 -m pip install requests bs4 html5lib urllib3 lolcat | sudo tee plugins.installed
      clear
      echo "Installation Complete!"
      sleep 2
      clear
      greeting
    else
      toilet -F border -f future "Found All Requirements!"
      sleep 2
      greeting
      clear
fi
}

function greeting {
  toilet -F border -f future "This Tool Was"
  toilet -F border -f future "Made By cYBER kNIGHT"
  sleep 2
  clear

}
function termux_env {
    [ ! -d "/data/data/com.termux/home" ]
}

function Pause {
    read -r -p "$*"
}

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
}

function core {

    if ! [ -f "core.installed" ];then
    echo -e "Starting Core Installation"
    sleep 2
    check_OS
    Pause
   else
     echo "Core Files already installed..."
     sleep 2
   fi
}

 function plugins {
  if ! [ -f "plugins.installed" ];then
   echo -e "Checking Environment..."
   sleep 2
   install_plugins
 else
   echo "Plugin Files already installed..."
   sleep 2
   clear
  fi
}
# Check OS for compatibility

function check_OS {

    # Start T-PS Installation
    if [[ "${OSTYPE}" == "linux-gnu" ]];then
        echo "Check Linux and Plugins Core Packages"
        sleep 2
        clear
        install_core_linux
fi
        if [[ "${OSTYPE}" == "Linux-gnu" ]];then
        echo "Check Linux and Plugins Core Packages"
        sleep 2
        clear
        install_core_linux
fi
    if [[ "${OSTYPE}" == "linux" ]];then
        echo "Check Linux and Plugins Core Packages"
        sleep 2
        clear
        install_core_linux
fi
    if [[ "${OSTYPE}" == "Linux" ]];then
        echo "Check Linux and Plugins Core Packages"
        sleep 2
        clear
        install_core_linux
fi

    if [[ "$OSTYPE" == "Darwin" ]];then
         echo "Not yet Supported"
         Pause 'Press Enter To Continue'
         exit 0
fi
    if [[ "$OSTYPE" == "Cygwin" ]];then
         echo "Not Supported"
         Pause 'Press Enter To Continue'
         exit 0
fi
    if [[ "$OSTYPE" == "Msys" ]];then
         echo "Not Supported"
         Pause 'Press Enter To Continue'
         exit 0
fi
    if [[ "$OSTYPE" == "Win32" ]];then
         echo "Not Supported"
         Pause 'Press Enter To Continue'
         exit 0
fi
    if [[ "$OSTYPE" == "Linux-android" ]];then
      echo "Check Termux Core Packages"
      sleep 2
      install_core_termux
fi
}
