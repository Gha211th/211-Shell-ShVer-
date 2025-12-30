#!/bin/bash

USER_NAME=$(whoami)
HOST_NAME=$(hostname)
PROMT_Color="\e[1;32m"
RESET_Color="\e[0m"

function Greetings_User() {
  clear
  echo "================================================"
  echo "==========-WELCOME-TO-211Shell(ShVer)-=========="
  echo "=======---Type exit to end the program---======="
  echo "================================================"
}

Greetings_User

while true; do
  echo -ne "${PROMT_Color}${USER_NAME}@${HOST_NAME}${RESET_Color}$"

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
