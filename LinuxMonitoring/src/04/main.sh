#!/bin/bash

source colors.sh
source output_info.sh

config=setup.conf
source $config

number_of_parameters=$#

incorrect_input="No parameters needed. Use \"setup.conf\" to configurate."
Incorrect_colors="Please enter numbers from 1 to 6, 
use different, first and second, third and fourth, parameters,
or leave field blank to use default colors."
reg_ex_number='[1-6]'

# проверка на корректный ввод
for i in $column1_background $column1_font_color $column2_background $column2_font_color;
do
  if [[ "$i" != $reg_ex_number ]]
  then
    echo $Incorrect_colors;
    exit 1;
  fi
done

# проверка на запуск без аргументов
if [ $number_of_parameters -ge 1 ]
then
  echo $incorrect_input;
  exit 1;
fi

c1_bg=$column1_background
c1_f=$column1_font_color
c2_bg=$column2_background
c2_f=$column2_font_color

if [[ $column1_background == '' ]]
then
  column1_background="default"
  c1_bg=6
fi

if [[ $column1_font_color == '' ]]
then
  column1_font_color="default"
  c1_f=1
fi

if [[ $column2_background == '' ]]
then
  column2_background="default"
  c2_bg=6
fi

if [[ $column2_font_color == '' ]]
then
  column2_font_color="default"
  c2_f=1
fi

case $c1_bg in
  "1")
    c1_bg_cn='white'
    ;;
  "2")
    c1_bg_cn='red'
    ;;
  "3")
    c1_bg_cn='green'
    ;;
  "4")
    c1_bg_cn='blue'
    ;;
  "5")
    c1_bg_cn='purple'
    ;;
  "6")
    c1_bg_cn='black'
    ;;
esac

case $c1_f in
  "1")
    c1_f_cn='white'
    ;;
  "2")
    c1_f_cn='red'
    ;;
  "3")
    c1_f_cn='green'
    ;;
  "4")
    c1_f_cn='blue'
    ;;
  "5")
    c1_f_cn='purple'
    ;;
  "6")
    c1_f_cn='black'
    ;;
esac

case $c2_bg in
  "1")
    c2_bg_cn='white'
    ;;
  "2")
    c2_bg_cn='red'
    ;;
  "3")
    c2_bg_cn='green'
    ;;
  "4")
    c2_bg_cn='blue'
    ;;
  "5")
    c2_bg_cn='purple'
    ;;
  "6")
    c2_bg_cn='black'
    ;;
esac

case $c2_f in
  "1")
    c2_f_cn='white'
    ;;
  "2")
    c2_f_cn='red'
    ;;
  "3")
    c2_f_cn='green'
    ;;
  "4")
    c2_f_cn='blue'
    ;;
  "5")
    c2_f_cn='purple'
    ;;
  "6")
    c2_f_cn='black'
    ;;
esac



if [ $c1_bg -eq $c1_f ] || [ $c2_bg -eq $c2_f ]
then
  echo $Incorrect_colors;
  exit 1;
else
  # colors=$(colorize $1 $2 $3 $4)
  # system_research $colors
  colors=$(colorize $c1_bg $c1_f $c2_bg $c2_f)
  system_research $colors
  print_color_name
fi