#! /bin/bash
# @Juan Sánchez
# Feb 2021
# Indica cuantos dias tiene un mes
# -------------------------------------------

# errores

if [ $# != 1 ]
then
    echo "Error: num args erroneo"
    echo "Usage: $0 mes"
fi
exit 1

###
case $1 in
    "febrero")
        echo "tiene 28 dias";;

    "enero"|"marzo"|"mayo"|"julio"|"agosto"|"octubre"|"diciembre")
        echo "el mes de $1 tiene 31 dias";;
    "abril"|"junio"|"setiembre"|"noviembre")
        echo "el mes de $1 tiene 30 dias";;
    *)
        echo "$1 no es un mes"
esac
exit 0
