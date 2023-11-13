#!/bin/bash

number_of_parameters=$#
error_too_many_parameters="You don't need any parameter." 
system_research=$(./output_info.sh)
create_file=$(date +"%d_%m_%y_%H_%M_%S").status


if [ $number_of_parameters -ge 1 ]
then
  echo $error_too_many_parameters;
  exit 1;
else
  echo "$system_research";
  echo "Do you want writing the data to a file? (Y/N)";
  read input;
  if [[ "$input" =~ [yY] ]]
  then
    echo "$system_research" > $create_file | echo "Data was be saved in the "$create_file"  file.";
  fi
fi
