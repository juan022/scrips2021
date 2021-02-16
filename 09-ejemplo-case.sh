#! /bin/bash
# @Juan Sánchez
# Feb 2021
# Ejemplos case
# -------------------------------------------



case $1 in
    ["dl"|"dt"|"dc"|"dj"|"dv"])
        echo "es laborable";;
    ["ds"|"dm"])
        echo "es festivo";;
    *)
        echo "no es un dia";;
esac
exit 0


# Consonante, vocal o otra cosa
case $1 in
    [aeiou])
        echo "es una vocal";;
    [bcdfghjklmnpqrstvwxyz])
        echo "es una consaonante";;
    *)
        echo "es una otra cosa"
esac
exit 0

# 1) ejemplo nombres
case $1 in
    "pere"|"pau"|"joan")
        echo "es un nen";;

    "marta"|"anna"|"julia")
        echo "es una nena"
	;;
    *)
        echo "indefinit";;
esac
exit 0
