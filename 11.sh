#! /bin/bash
# @ Juan Sánchez
# Feb 2021
# Descripcion: procesar nota a nota
# indicar si es sispendido, aprovad, notable o excelente
#
# prog notes[...]
# 
#   -  rep 1 o més arguments
#   -  per cada nota [0-10]
#   -  per cada nota dir si es suspes, aprovat, notable o excel·lent
#
# procesando errores en bucle:
#    a) errores irrecuperables --> msg error, plegar exit nº
#    b) error recuperable --> msg error stderr, continuar
#
# 1) Validar numero de args
#
# 2) Iterar por argumentos
     # 2.1) Validar la nota  (if/elif/else)
     # 2.2) determinar valor    "
# ----------------------------------------

# 1) Validar numero de argumentos
if [ $# -eq 0 ]
then
    echo "ERROR: num args incorrecto"
    echo "Usage: $0 nota[...]"
fi
exit 1

# 2) Iterar por argumento
for nota in $*
do
  if ! [ $nota -ge 0 -a $nota -le 10 ]
  then
    echo "ERROR: nota $nota no valida [0-10]" >> /dev/stderr
  elif [ $nota -lt 5 ]
  then
    echo "suspes"
  elif [ $nota -lt 7 ]
  then
    echo "aprovado"
  elif [ $nota -lt 9 ]
  then
    echo "notable"
  else
  then
    echo "excelente" 
  fi

done
exit 0



# 2.1) Validar la nota  (if/elif/else)
     # 2.2) determinar valor    " 
