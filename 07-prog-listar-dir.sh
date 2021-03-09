#! /bin/bash
# @Juan Sánchez  ASIX-M01
# Feb 2021
# Listar Directorios
# 	$ prog dir
# --------------------------------------

ERR_VALOR=2

# Validamos argumentos
if [ $# -ne 1 ]
then
    echo "ERROR: numero de argumentos incorrecto"
    echo "USAGE: $0 dir"
    exit 1
fi

# Validar si existe el directorio
mydir=$1
if ! [ -d $mydir ]
then
    echo "ERROR: $1 no es un directorio"
    echo "USAGE: $0 dir"
    exit 1
fi


# xixa
ls $mydir
exit 0
