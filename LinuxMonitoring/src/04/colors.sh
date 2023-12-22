#!/bin/bash

#-example-------
# RED="\e[31m"
# ENDCOLOR="\e[0m"
#
# echo -e "${RED}Red text${ENDCOLOR}"
#---------------

# Colour designations:
# 1 - white
WHITE_FONT="\e[97m"
WHITE_BACKGROUND="\e[107m"

# 2 - red
RED_FONT="\e[31m"
RED_BACKGROUND="\e[41m"

# 3 - green
GREEN_FONT="\e[32m"
GREEN_BACKGROUND="\e[42m"

# 4 - blue
BLUE_FONT="\e[34m"
BLUE_BACKGROUND="\e[44m"

# 5 - purple
PURPLE_FONT="\e[35m"
PURPLE_BACKGROUND="\e[45m"

# 6 - black
BLACK_FONT="\e[30m"
BLACK_BACKGROUND="\e[40m"

END_COLOR="\e[0m"

function colorize {

# Parameter 1 is the background of the value names (HOSTNAME, TIMEZONE, USER etc.)
  case "$1" in
    "1")
      echo $WHITE_BACKGROUND
      ;;
    "2")
      echo $RED_BACKGROUND
      ;;
    "3")
      echo $GREEN_BACKGROUND
      ;;
    "4")
      echo $BLUE_BACKGROUND
      ;;
    "5")
      echo $PURPLE_BACKGROUND
      ;;
    "6")
      echo $BLACK_BACKGROUND
      ;;
  esac

# Parameter 2 is the font colour of the value names (HOSTNAME, TIMEZONE, USER etc.)
  case "$2" in
    "1")
      echo $WHITE_FONT
      ;;
    "2")
      echo $RED_FONT
      ;;
    "3")
      echo $GREEN_FONT
      ;;
    "4")
      echo $BLUE_FONT
      ;;
    "5")
      echo $PURPLE_FONT
      ;;
    "6")
      echo $BLACK_FONT
      ;;
  esac

# Parameter 3 is the background of the values (after the '=' sign)
  case "$3" in
    "1")
      echo $WHITE_BACKGROUND
      ;;
    "2")
      echo $RED_BACKGROUND
      ;;
    "3")
      echo $GREEN_BACKGROUND
      ;;
    "4")
      echo $BLUE_BACKGROUND
      ;;
    "5")
      echo $PURPLE_BACKGROUND
      ;;
    "6")
      echo $BLACK_BACKGROUND
      ;;
  esac
  
# Parameter 4 is the font colour of the values (after the '=' sign)
  case "$4" in
    "1")
      echo $WHITE_FONT
      ;;
    "2")
      echo $RED_FONT
      ;;
    "3")
      echo $GREEN_FONT
      ;;
    "4")
      echo $BLUE_FONT
      ;;
    "5")
      echo $PURPLE_FONT
      ;;
    "6")
      echo $BLACK_FONT
      ;;
  esac
}

# function scan_colors_from_config {
#   awk -F= '{ print $2}' setup.conf
# }

# function color_designation {
  
# }