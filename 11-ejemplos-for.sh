#! /bin/bash
# @ Juan Sánchez
# Feb 2021
# Descripcion: ejemplos for
# -----------------------------------------------

# for var in lista-de-valores
# do
#	acciones
# done

# $* $@ se diferencian en que "$@" se expande igualemnte

# 6) listar numerados todos los logins
logins=$(cut -d: -f1 /etc/passwd)
num=1
for elem in $logins
do
    echo "$num: $elem"
    ((num++))
done
exit 0



# 5) listado de nombres del directorio activo numerado linea a linea
lista_nombres=$(ls)
num=1
for elem in $lista_nombres
do
    echo "$num: $elem"
    ((num++))
done
exit 0




# 4) lista los argumentos numerados
num=0
for arg in $*
do
    num=$((num+1))
    echo "$num: $arg"
done
exit 0




# 3) itera por una lista de nombres de ficheros que genera ls

lista_noms=$(ls)
for elem in $lista_noms
do
    echo $elem
done
exit 0


# 2b) iterar por argumento recibido
## Si encapsulamos "$@" se exapnde igualmente
for arg in $@
do
 echo $arg
done
exit 0



# 2a) iterar por argumento recibido
## Si encapsulamos "$*" los args se vuelven 1
for arg in $*
do
 echo $arg
done
exit 0





# 1b) Iterar una lista de nombres
for nom in pere marta anna ramon
do      
    echo $nom
done
exit 0



# 1a) Iterar una lista de nombres
for nom in "pere" "marta" "anna" "ramon"
do
    echo $nom
done
exit 0
