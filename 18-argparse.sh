#! /bin/bash
# @edt ASIX M01-ISO Curs 2019-20120
# 
# prog -a file -b -c -d num -f arg[...]
# -------------------------------------
opcions=""
arguments=""
fitxer=""
num=""
while [ -n "$1" ]
do
  case $1 in
  "-a")
      opcions="$opcions $1"
      fitxer=$2
      shift;;
  "-d")
      opcions="$opcions $1"
      edat=$2
      shift;;    
  "-b"|"-c"|"-f")
      opcions="$opcions $1";;
  *)
      arguments="$arguments $1";;
  esac
  shift
done
echo $opcions
echo $arguments
echo $fitxer
echo $edat
