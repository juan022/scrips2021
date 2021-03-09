#! /bin/bash
# @Juan Sánchez ASIX-M01
# Feb 2021
# Ejemplo de if: indica si es mayor de edad
# 	$ prog edad
# --------------------------------------

# Siempre espacio con los claudator
# Validamos argumentos
if [ $# -ne 1 ]
then
	echo "ERROR: nº argumentos incorrecto"
	echo "Usage: $0 edad"
	exit 1
fi

# XIXA
edad=$1
if [ $edad -ge 18 ]
then
    echo "Con $edad es mayor de edad"
fi

exit 0
