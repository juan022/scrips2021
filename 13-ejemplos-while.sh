#! /bin/bash
# @ Juan Sánchez
# Feb 2021
# Desc: ejemplos bucle while
# -----------------------------------------------------
# while [ cond ]
# do
#    acciones
# done



# 3) mostrar los argumentos
while [ $# -gt 0 ]
do
  echo "$#: $*"
  shift
done
exit 0



# 2) mostrar de n a 0 countdown [n,0]
num=$1
while [ $num -ge 0 ]
do
  echo $num
  ((num--))
done
exit 0




# 1) mostrar numeros del 1 al 10
num=1
while [ $num -le 10 ]
do
  echo $num
  ((num++))
done
