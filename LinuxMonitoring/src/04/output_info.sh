#!/bin/bash

function system_research {
  echo -e "$1 $2 HOSTNAME $END_COLOR = $3 $4 $(hostname) $END_COLOR";
  echo -e "$1 $2 TIMEZONE $END_COLOR = $3 $4 $(cat /etc/timezone) UTC $(date +%-:::z) $END_COLOR";
  echo -e "$1 $2 USER $END_COLOR = $3 $4 $(whoami) $END_COLOR";
  echo -e "$1 $2 OS $END_COLOR = $3 $4 $(uname -s) $(cat /etc/issue | egrep -o '^[^\]+') $END_COLOR";
  echo -e "$1 $2 DATE $END_COLOR = $3 $4 $(date +"%d %B %Y y. %T") $END_COLOR";
  echo -e "$1 $2 UPTIME $END_COLOR = $3 $4 $(uptime -p | sed 's/up//') $END_COLOR";
  echo -e "$1 $2 UPTIME_SEC $END_COLOR = $3 $4 $(awk '{ printf "%.0f", $1 }' /proc/uptime) $END_COLOR";
  echo -e "$1 $2 IP $END_COLOR = $3 $4 $(hostname -I) $END_COLOR";
  echo -e "$1 $2 MASK $END_COLOR = $3 $4 $(ifconfig | grep netmask | awk 'NR==1 { print $4 }') $END_COLOR";
  echo -e "$1 $2 GATEWAY $END_COLOR = $3 $4 $(ip route show default | awk '{ print $3 }') $END_COLOR";
  echo -e "$1 $2 RAM_TOTAL $END_COLOR = $3 $4 $(free --mega | awk 'NR==2 { printf "%.3f GB", $2 / 1024}') $END_COLOR";
    # grep MemTotal /proc/meminfo | awk '{ printf "%.3f GB", $2 / 1024 /1024 }'
  echo -e "$1 $2 RAM_USED $END_COLOR = $3 $4 $(free --mega | awk 'NR==2 { printf "%.3f GB", $3 / 1024}') $END_COLOR";
  echo -e "$1 $2 RAM_FREE $END_COLOR = $3 $4 $(free --mega | awk 'NR==2 { printf "%.3f GB", $4 / 1024}') $END_COLOR";
  echo -e "$1 $2 SPACE_ROOT $END_COLOR = $3 $4 $(df / | awk 'NR==2 { printf "%.2f MB", $2 / 1024}') $END_COLOR";
  echo -e "$1 $2 SPACE_ROOT_USED $END_COLOR = $3 $4 $(df / | awk 'NR==2 { printf "%.2f MB", $3 / 1024 }') $END_COLOR" ;
  echo -e "$1 $2 SPACE_ROOT_FREE $END_COLOR = $3 $4 $(df / | awk 'NR==2 { printf "%.2f MB", $4 / 1024 }') $END_COLOR";
}

function print_color_name {
  echo "Column 1 background = $column1_background ($c1_bg_cn)"
  echo "Column 1 font color = $column1_font_color ($c1_f_cn)"
  echo "Column 2 background = $column2_background ($c2_bg_cn)"
  echo "Column 2 font color = $column2_font_color ($c2_f_cn)"
}