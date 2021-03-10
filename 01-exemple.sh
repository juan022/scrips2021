#! /bin/bash
#
# @Juan Sánchez
#
# Feb 2021
#
# primer exemple script
# -------------------------------------
echo "Hello World"
echo "bon dia, avui plou"
nom="pere puig pou"
edat=25
echo $nom $edat
echo -e "nom: $nom\n edat: $edat"
echo -e 'nom: $nom\n edat: $edat'
uname -a
uptime
echo $SHELL
echo $SHLVL
echo $((4*32))
echo $((edat*2))
read data
echo $data
exit 0



