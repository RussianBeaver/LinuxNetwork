#!bin/bash

timer_start=$(date +%s.%N)

path=$1

if [ -z $path ]
then
  echo "enter the path to the directory";
  exit 1;
fi

if [ ! -d $path ]
then
  echo "enter valid directory path";
  exit 1;
fi

if  [[ ! $path == */ ]]
# if [ ${path: -1} != '/' ]
then
  echo "the path must end with \"/\"";
  exit 1;
fi

echo "Total number of folders (including all nested ones) =" $(find "$path" -type d | wc -l)

echo "TOP 5 folders of maximum size arranged in descending order (path and size):" 
du -h ../../src | sort -hr | head -n 5 | awk '{ print NR " - " $2 ", " $1 "B"}'

echo "Total number of files =" $(find $path -type f | wc -l)


#  = 10  
#  = 5
#  = 2  
# Archive files = 3  
# Symbolic links = 4  
echo "Number of:"  
echo "Configuration files (with the .conf extension) =" $(find $path -type f -name "*.conf" | wc -l)

echo "Text files =" $(find $path -type f -name "*.txt" | wc -l)

echo "Executable files =" $(find $path -type f -executable | wc -l)

echo "Log files (with the extension .log)" $(find $path -type f -name "*.log" | wc -l)



timer_end=$(date +%s.%N)

echo "Script execution time (in seconds) = " `echo "$timer_end $timer_start" | awk '{printf "%.3lf", $1-$2}'`
