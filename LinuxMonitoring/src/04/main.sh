#!/bin/bash

source colors.sh
source output_info.sh

config=setup.conf
source $config

list_of_parameters=$@
number_of_parameters=$#
incorrect_number_of_parameters="Enter four numeric parameters, from 1 to 6."
Incorrect_colors="Please enter different, first and second, third and fourth, parameters."
reg_ex_number='[1-6]'

# проверка на корректный ввод
if [ $number_of_parameters -ne 4 ]
then
  echo $incorrect_number_of_parameters;
  exit 1;
else
  for parameter in $list_of_parameters
  do
    if [[ "$parameter" != $reg_ex_number ]]
    then
      echo $incorrect_number_of_parameters;
      exit 1;
    fi
  done
fi

# првоерка на одинаковые цвета

if [ $1 -eq $2 ] || [ $3 -eq $4 ]
then
  echo $Incorrect_colors;
  exit 1;
else
  colors=$(colorize $1 $2 $3 $4)
  system_research $colors
fi
