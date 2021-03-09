#! /bin/bash
# @Juan Sánchez  ASIX-M01
# Feb 2021
# Primer ejemplo de script
# --------------------------------------

echo "Hello World"
echo "buenos dias, hoy llueve"
nom=Juan
edad=20
echo $nom $edad

# -e --> que se ejecute asi
## \t --> tabulacion
echo -e "nom: $nom\t edat: $edad"
echo -e 'nom: $nom\t edat: $edad'
## \n --> linea nueva
echo -e "nom: $nom\n edat: $edad"
echo -e 'nom: $nom\n edat: $edad'

uname -a
uptime
echo $SHELL
echo $SHLVL
echo $((4*32))
echo $(($edad * 2))



read data1 data2 
echo -e "$data1 \n $data2"

# Codigo de error o status
## si va bien es 0, cualuiqer otro es que algo ha ido mal
### Para verificarlo --> echo $?
exit 0
