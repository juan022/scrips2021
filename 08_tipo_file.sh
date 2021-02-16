#! /bin/bash
# @Juan Sánchez ASIX-M01 
# Feb 2021
# $ prog dir
# indicar el tipo de fil que es
# -------------------------------
# si num args no es correcte plegar

# Control

if [ $# -ne 1 ]
then
  echo "Error: numero de argumentos incorrecto"
  echo "usage: $0 arg"

elif [ ! -e $1 ];
then
    echo "Error: argumento $1 no valido, no existe"
    echo "Usage: $0 arg_existente"
    exit 1
fi


# Xixa
## Primero se verifica si es un link ya que tambien se identifica como regular file

doc=$1

if [ -h $doc ]; then 
  echo "$doc es un symbolic link"

elif [ -f $doc ]; then
  echo "$doc es un file"

elif [ -d $doc ]; then
  echo "$doc es un directorio"

else
  echo "$doc es otro tipo de archivo"
fi

exit 0
