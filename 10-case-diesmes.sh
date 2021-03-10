#! /bin/bash 
#
# @Juan Sánchez 
#
# Feb 2021 
#
# Descripcio: dir els dies que té un més 
# Synopsis: prog mes 
# --------------------------------- 

ERR_NARGS=1
ERR_ARGVL=2
OK=0
#1) Validar existeix un arg
if [ $# -ne 1 ]
then
  echo "Error, numero d'arguments no valid"
  echo "Usage: $0 mes"
  exit $ERR_NARGS
fi
#2 validar si help
if [ "$1" = "-h" -o "$1" = "--help" ]
then
  echo "Escola del treball"
  echo "@edt ASIX-M01"
  echo "Usage: $0 mes"
  exit $OK
fi
#3) Validar arg pren valors [1-12]
mes=$1
if ! [ $mes -ge 1 -a $mes -le 12 ]
then
  echo "Error, mes no vàlid"
  echo "Mes pren valors del [1-12]"
  echo "Usage: $0 mes"
  exit $ERR_ARGVL
fi
#4) xixa: determinar numero de dies
case "$mes" in
  "2") 
    dies=28;;
  "4"|"6"|"9"|"11")
    dies=30;;
  *)
    dies=31;;
esac
echo "El mes: $mes, te $dies dies"
exit $OK

