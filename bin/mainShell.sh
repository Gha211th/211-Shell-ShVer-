#!/bin/bash

USER_NAME=$(whoami)
HOST_NAME=$(hostname)

# color section
PROMT_Color="\e[1;32m"
RESET_Color="\e[0m"
GREEN='\e[1;32m'
BLUE='\e[1;34m'
CYAN='\e[1;36m'
YELLOW='\e[1;33m'
RESET='\e[0m'

# greet
function Greetings_User() {
  clear
  echo " "
  echo -e "${CYAN}================================================${RESET}"
  echo -e "${CYAN}=========-WELCOME-TO-211Shell(ShVer)-==========${RESET}"
  echo -e "${CYAN}=======---Type exit to end the program---=======${RESET}"
  echo -e "${CYAN}================================================${RESET}"
  echo " "
}

Greetings_User

# program---m
while true; do
  current_direct=$(basename "")

  echo -ne "${RESET}${USER_NAME}@${CYAN}${HOST_NAME}${current_direct}${RESET_Color}$ "

  read -r user_input

  case $user_input in
  "exit")
    echo "GOOD BYE!"
    break
    ;;
  "--help")
    echo "this shell is build for linux system, just use it like a normal"
    continue
    ;;
  "")
    echo "please type some command or exit"
    continue
    ;;
  esac

  eval "$user_input"
done
