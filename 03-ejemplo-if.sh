#! /bin/bash
# @Juan Sánchez ASIX-M01
# Feb 2021
# Ejemplo de if
# 	$ prog edad
# --------------------------------------

## Siempre espacio con los claudator
if [ $# -ne 1 ];
	echo "ERROR: nº argumentos incorrecto"
	echo "Usage: $0 edad"
	exit 1
fi

echo $1
exit 0
