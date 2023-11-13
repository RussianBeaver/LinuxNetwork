#!/bin/bash

echo "HOSTNAME = $(hostname)";
echo "TIMEZONE = $(cat /etc/timezone) UTC $(date +%-:::z)";
echo "USER = $(whoami)";
echo "OS = $(uname -s) $(cat /etc/issue | egrep -o '^[^\]+')";
echo "DATE = $(date +"%d %B %Y y. %T")";
echo "UPTIME = $(uptime -p | sed 's/up//')";
echo "UPTIME_SEC = $(awk '{ printf "%.0f", $1 }' /proc/uptime)";
echo "IP = $(hostname -I)";
echo "MASK = $(ifconfig | grep netmask | awk 'NR==1 { print $4 }')";
echo "GATEWAY = $(ip route show default | awk '{ print $3 }')";
echo "RAM_TOTAL = $(free --mega | awk 'NR==2 { printf "%.3f GB", $2 / 1024}')";
  # grep MemTotal /proc/meminfo | awk '{ printf "%.3f GB", $2 / 1024 /1024 }'
echo "RAM_USED = $(free --mega | awk 'NR==2 { printf "%.3f GB", $3 / 1024}')";
echo "RAM_FREE = $(free --mega | awk 'NR==2 { printf "%.3f GB", $4 / 1024}')";
echo "SPACE_ROOT = $(df / | awk 'NR==2 { printf "%.2f MB", $2 / 1024}')";
echo "SPACE_ROOT_USED = $(df / | awk 'NR==2 { printf "%.2f MB", $3 / 1024 }')" ;
echo "SPACE_ROOT_FREE = $(df / | awk 'NR==2 { printf "%.2f MB", $4 / 1024 }')";