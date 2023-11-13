#!/bin/bash

# http://www.gnu.org/software/bash/manual/bashref.html#Conditional-Constructs

#логические операторы:

# -z # строка пуста
# -n # строка не пуста
# =, (==) # строки равны
# != # строки неравны
# -eq # равно
# -ne # неравно
# -lt,(< ) # меньше
# -le,(<=) # меньше или равно
# -gt,(>) #больше
# -ge,(>=) #больше или равно
# ! #отрицание логического выражения
# -a,(&&) #логическое «И»
# -o,(||) # логическое «ИЛИ»

# зарезервированные переменные:

# $DIRSTACK - содержимое вершины стека каталогов
# $EDITOR - текстовый редактор по умолчанию
# $EUID - Эффективный UID. Если вы использовали программу su для выполнения команд от другого пользователя, то эта переменная содержит UID этого пользователя, в то время как...
# $UID - ...содержит реальный идентификатор, который устанавливается только при логине.
# $FUNCNAME - имя текущей функции в скрипте.
# $GROUPS - массив групп к которым принадлежит текущий пользователь
# $HOME - домашний каталог пользователя
# $HOSTNAME - ваш hostname
# $HOSTTYPE - архитектура машины.
# $LC_CTYPE - внутренняя переменная, котороя определяет кодировку символов
# $OLDPWD - прежний рабочий каталог
# $OSTYPE - тип ОС
# $PATH - путь поиска программ
# $PPID - идентификатор родительского процесса
# $SECONDS - время работы скрипта(в сек.)
# $# - общее количество параметров переданных скрипту
# $* - все аргументы переданыне скрипту(выводятся в строку)
# $@ - тоже самое, что и предыдущий, но параметры выводятся в столбик
# $! - PID последнего запущенного в фоне процесса
# $$ - PID самого скрипта
#ниже регулярное выражение ищет числа которые могут начинаться со знаков, многозначные и у которых может быть дробная часть

reg_ex_number='^[a-z]+$'


error_too_many_parameters="Too many parameters, you must use only one parameter."
error_incorrect_input="Incorrect input, use non number parameter."
parameter_1=$1
number_of_parameters=$#

if [ $number_of_parameters -gt 1 ]
then
  echo $error_too_many_parameters;
  exit 1;
elif [ $number_of_parameters -lt 1 ]
then
  echo "Enter non number parameter.";
  exit 1;
elif [[ "$parameter_1" =~ $reg_ex_number ]]
# [ is an "alias" for test, ( is just a grouping parenthesis, [[ is another form of conditional construct. 
then
  echo $error_incorrect_input;
  exit 1;
else
  echo $parameter_1;
fi